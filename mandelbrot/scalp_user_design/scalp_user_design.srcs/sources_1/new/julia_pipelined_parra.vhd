library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.fixed_pkg.all;

entity JuliaPipelinedParallel is
  generic (
    N_WORKERS : integer := 4
  );
  Port (
    clk: in std_logic;
    rst: in std_logic;
    start: in std_logic;

    x:   in sfixed(3 downto -15);
    y:   in sfixed(3 downto -15);
    ram_addr: in unsigned(18 downto 0);

    c_re: in sfixed(3 downto -15);
    c_im: in sfixed(3 downto -15);

    n_iteration: out std_logic_vector(7 downto 0);
    done: out std_logic;
    addr_done: out unsigned(18 downto 0);

    julia_busy: out std_logic
  );
end JuliaPipelinedParallel;

architecture Behavioral of JuliaPipelinedParallel is

    component JuliaPipelined is
      Port (
        clk: in std_logic;
        rst: in std_logic;
        start: in std_logic;
        x:   in sfixed(3 downto -15);
        y:   in sfixed(3 downto -15);
        ram_addr: in unsigned(18 downto 0);
        c_re: in sfixed(3 downto -15);
        c_im: in sfixed(3 downto -15);
        n_iteration: out std_logic_vector(7 downto 0);
        done: out std_logic;
        addr_done: out unsigned(18 downto 0);
        julia_busy: out std_logic
      );
    end component;

    type iter_arr    is array (0 to N_WORKERS-1) of std_logic_vector(7 downto 0);
    type addr_arr    is array (0 to N_WORKERS-1) of unsigned(18 downto 0);
    type sfx_arr     is array (0 to N_WORKERS-1) of sfixed(3 downto -15);

    signal w_start     : std_logic_vector(N_WORKERS-1 downto 0) := (others => '0');
    signal w_busy      : std_logic_vector(N_WORKERS-1 downto 0);
    signal w_done      : std_logic_vector(N_WORKERS-1 downto 0);
    signal w_addr_done : addr_arr;
    signal w_n_iter    : iter_arr;
    signal w_inflight  : std_logic_vector(N_WORKERS-1 downto 0) := (others => '0');

    -- Per-worker latched inputs (captured at dispatch time)
    signal w_x       : sfx_arr;
    signal w_y       : sfx_arr;
    signal w_addr_in : addr_arr;

    -- Tiny output FIFO so simultaneous worker completions are never lost
    constant FIFO_DEPTH : integer := N_WORKERS + 1;
    type fifo_iter_t is array (0 to FIFO_DEPTH-1) of std_logic_vector(7 downto 0);
    type fifo_addr_t is array (0 to FIFO_DEPTH-1) of unsigned(18 downto 0);
    signal fifo_iter : fifo_iter_t := (others => (others => '0'));
    signal fifo_addr : fifo_addr_t := (others => (others => '0'));
    signal head, tail : integer range 0 to FIFO_DEPTH-1 := 0;
    signal count      : integer range 0 to FIFO_DEPTH   := 0;

begin

    gen_workers: for i in 0 to N_WORKERS-1 generate
        worker_inst: JuliaPipelined
        port map (
            clk         => clk,
            rst         => rst,
            start       => w_start(i),
            x           => w_x(i),
            y           => w_y(i),
            ram_addr    => w_addr_in(i),
            c_re        => c_re,
            c_im        => c_im,
            n_iteration => w_n_iter(i),
            done        => w_done(i),
            addr_done   => w_addr_done(i),
            julia_busy  => w_busy(i)
        );
    end generate;

    -- Route the external start pulse to the lowest-indexed free worker
    dispatch_proc: process(clk)
        variable dispatched : boolean;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                w_start    <= (others => '0');
                w_inflight <= (others => '0');
            else
                w_start <= (others => '0');

                for i in 0 to N_WORKERS-1 loop
                    if w_done(i) = '1' then
                        w_inflight(i) <= '0';
                    end if;
                end loop;

                if start = '1' then
                    dispatched := false;
                    for i in 0 to N_WORKERS-1 loop
                        if (not dispatched) and w_inflight(i) = '0' and w_busy(i) = '0' then
                            w_start(i)    <= '1';
                            w_inflight(i) <= '1';
                            w_x(i)        <= x;
                            w_y(i)        <= y;
                            w_addr_in(i)  <= ram_addr;
                            dispatched    := true;
                        end if;
                    end loop;
                end if;
            end if;
        end if;
    end process;

    -- julia_busy = '1' only when every worker is full
    busy_proc: process(w_inflight, w_busy)
        variable v : std_logic;
    begin
        v := '1';
        for i in 0 to N_WORKERS-1 loop
            v := v and (w_inflight(i) or w_busy(i));
        end loop;
        julia_busy <= v;
    end process;

    -- Push every worker that signals done; pop one entry per cycle to outputs
    collect_proc: process(clk)
        variable v_count : integer range 0 to FIFO_DEPTH;
        variable v_head, v_tail : integer range 0 to FIFO_DEPTH-1;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                head <= 0; tail <= 0; count <= 0;
                done <= '0';
            else
                v_count := count;
                v_head  := head;
                v_tail  := tail;
                done <= '0';

                for i in 0 to N_WORKERS-1 loop
                    if w_done(i) = '1' then
                        fifo_iter(v_tail) <= w_n_iter(i);
                        fifo_addr(v_tail) <= w_addr_done(i);
                        if v_tail = FIFO_DEPTH-1 then
                            v_tail := 0;
                        else
                            v_tail := v_tail + 1;
                        end if;
                        v_count := v_count + 1;
                    end if;
                end loop;

                -- Pop only if FIFO was already non-empty (avoids reading stale signal on same-cycle push)
                if count > 0 then
                    n_iteration <= fifo_iter(v_head);
                    addr_done   <= fifo_addr(v_head);
                    done        <= '1';
                    if v_head = FIFO_DEPTH-1 then
                        v_head := 0;
                    else
                        v_head := v_head + 1;
                    end if;
                    v_count := v_count - 1;
                end if;

                count <= v_count;
                head  <= v_head;
                tail  <= v_tail;
            end if;
        end if;
    end process;

end Behavioral;