library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.fixed_pkg.all;

entity JuliaPipelinedParallel is
  generic (
    N_WORKERS : integer := 4;
    JULIA_NEGATIVE_DEPTH : integer := 20
  );
  Port (
    clk: in std_logic;
    rst: in std_logic;
    start: in std_logic;

    x:   in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    y:   in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    ram_addr: in unsigned(18 downto 0);

    c_re: in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    c_im: in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

    n_iteration: out std_logic_vector(7 downto 0);
    done: out std_logic;
    addr_done: out unsigned(18 downto 0);

    julia_busy: out std_logic
  );
end JuliaPipelinedParallel;

architecture Behavioral of JuliaPipelinedParallel is    
    component JuliaPipelined is
        generic(
            JULIA_NEGATIVE_DEPTH : integer
        );
      Port (
        clk: in std_logic;
        rst: in std_logic;
        start: in std_logic;

        -- pixels and memory
        x:   in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        y:   in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        ram_addr: in unsigned(18 downto 0);

        -- real and imaginary constants for julia
        c_re: in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        c_im: in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

        -- outputs
        n_iteration: out std_logic_vector(7 downto 0);
        done: out std_logic;
        addr_done: out unsigned(18 downto 0);

        -- are all workers busy ?
        julia_busy: out std_logic
      );
    end component;

    type iter_arr    is array (0 to N_WORKERS-1) of std_logic_vector(7 downto 0);
    type addr_arr    is array (0 to N_WORKERS-1) of unsigned(18 downto 0);
    type sfx_arr     is array (0 to N_WORKERS-1) of sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

    -- workers signals
    signal w_start     : std_logic_vector(N_WORKERS-1 downto 0) := (others => '0');
    signal w_busy      : std_logic_vector(N_WORKERS-1 downto 0);
    signal w_done      : std_logic_vector(N_WORKERS-1 downto 0);
    signal w_addr_done : addr_arr;
    signal w_n_iter    : iter_arr;
    signal w_inflight  : std_logic_vector(N_WORKERS-1 downto 0) := (others => '0');

    -- per workers latch
    -- dispatcher copy x, y and ram_addr in the slot of the worker
    signal w_x       : sfx_arr;
    signal w_y       : sfx_arr;
    signal w_addr_in : addr_arr;

    -- if multiple workers finish in the same cycle
    -- depth = 4
    -- without this, finishing on the same cycle loses information
    constant FIFO_DEPTH : integer := N_WORKERS + 1;

    type fifo_iter_t is array (0 to FIFO_DEPTH-1) of std_logic_vector(7 downto 0);
    type fifo_addr_t is array (0 to FIFO_DEPTH-1) of unsigned(18 downto 0);

    signal fifo_iter : fifo_iter_t := (others => (others => '0'));
    signal fifo_addr : fifo_addr_t := (others => (others => '0'));
    signal head, tail : integer range 0 to FIFO_DEPTH-1 := 0;
    signal count      : integer range 0 to FIFO_DEPTH   := 0;

begin
    -- 3 processes are running: dispatch_proc, busy_proc, collect_proc

    -- each worker is an instance of JuliaPipelined
    -- so generate the workers here based on an index "i"
    gen_workers: for i in 0 to N_WORKERS-1 generate
        worker_inst: JuliaPipelined
        generic map (
            JULIA_NEGATIVE_DEPTH => JULIA_NEGATIVE_DEPTH
        )
        port map ( -- route the workers 
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

    -- route the start to the worker with the lowest index
    dispatch_proc: process(clk)
        variable dispatched : boolean;
    begin
        if rising_edge(clk) then
            if rst = '1' then -- reset
                w_start    <= (others => '0');
                w_inflight <= (others => '0');
            else -- start
                w_start <= (others => '0');

                -- for all workers
                for i in 0 to N_WORKERS-1 loop
                    -- has the current worker finished ?
                    if w_done(i) = '1' then
                        -- push the result in the FIFO
                        w_inflight(i) <= '0';
                    end if;
                end loop;

                -- start assigning to the first worker that is not inflight and not busy
                if start = '1' then
                    dispatched := false;
                    -- for all workers
                    for i in 0 to N_WORKERS-1 loop
                        -- if the current worker is not inflight and not busy, dispatch to it
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

    -- sets the status of julia_busy based on the status of the workers
    -- julia_busy is "1" only when every worker is full
    busy_proc: process(w_inflight, w_busy)
        variable v : std_logic;
    begin
        v := '1';
        for i in 0 to N_WORKERS-1 loop
            v := v and (w_inflight(i) or w_busy(i));
        end loop;
        julia_busy <= v;
    end process;

    -- each cycle, push every worker that signals done
    -- also pop one entry per cycle to outputs
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

                -- pop only if FIFO was already not empty 
                -- tis avoid reading bad signal on same cycle push
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