library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.fixed_pkg.all;

entity JuliaRegion is
  generic (
    REGION_HEIGHT : integer := 180;
    REGION_WIDTH  : integer := 720;
    N_WORKERS     : integer := 4;
    JULIA_NEGATIVE_DEPTH : integer := 20
  );
  Port (
    clk          : in  std_logic;
    rst          : in  std_logic;
    frame_start  : in  std_logic;

    c_re         : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    c_im         : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    julia_x_step : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    julia_y_step : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    x_coord_init : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    y_coord_init : in  sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

    ram_we      : out std_logic_vector(0 downto 0);
    ram_addr    : out std_logic_vector(16 downto 0);
    ram_data    : out std_logic_vector(4 downto 0);

    region_done : out std_logic
  );
end JuliaRegion;

architecture Behavioral of JuliaRegion is

    component JuliaPipelinedParallel is
      generic ( 
        N_WORKERS : integer := 4;
        JULIA_NEGATIVE_DEPTH : integer
        );
      Port (
        clk         : in std_logic;
        rst         : in std_logic;
        start       : in std_logic;
        x           : in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        y           : in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        ram_addr    : in unsigned(18 downto 0);
        c_re        : in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        c_im        : in sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
        n_iteration : out std_logic_vector(7 downto 0);
        done        : out std_logic;
        addr_done   : out unsigned(18 downto 0);
        julia_busy  : out std_logic
      );
    end component;

    component color_palette_index is
      Port (
        iteration     : in  std_logic_vector(7 downto 0);
        palette_index : out std_logic_vector(4 downto 0)
      );
    end component;

    type state_t is (IDLE, CALCULATE, FINISHED);
    signal state : state_t := IDLE;

    constant TOTAL_PIXELS : integer := REGION_WIDTH * REGION_HEIGHT;

    signal cur_x             : unsigned(9 downto 0)  := (others => '0');
    signal cur_y             : unsigned(9 downto 0)  := (others => '0');
    signal addr_counter      : unsigned(18 downto 0) := (others => '0');
    signal pixels_dispatched : unsigned(18 downto 0) := (others => '0');
    signal pixels_done       : unsigned(18 downto 0) := (others => '0');

    signal jpp_start     : std_logic := '0';
    signal jpp_busy      : std_logic;
    signal jpp_done      : std_logic;
    signal jpp_addr_done : unsigned(18 downto 0);
    signal jpp_n_iter    : std_logic_vector(7 downto 0);
    signal palette_idx   : std_logic_vector(4 downto 0);

    signal julia_x_coord : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal julia_y_coord : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);

begin

    jpp_inst : JuliaPipelinedParallel
      generic map ( 
        N_WORKERS => N_WORKERS ,
        JULIA_NEGATIVE_DEPTH => JULIA_NEGATIVE_DEPTH
        )
      port map (
        clk         => clk,
        rst         => rst,
        start       => jpp_start,
        x           => julia_x_coord,
        y           => julia_y_coord,
        ram_addr    => addr_counter,
        c_re        => c_re,
        c_im        => c_im,
        n_iteration => jpp_n_iter,
        done        => jpp_done,
        addr_done   => jpp_addr_done,
        julia_busy  => jpp_busy
      );

    palette_inst : color_palette_index
      port map (
        iteration     => jpp_n_iter,
        palette_index => palette_idx
      );

    fsm_proc : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state             <= IDLE;
                jpp_start         <= '0';
                region_done       <= '0';
                ram_we            <= "0";
                pixels_dispatched <= (others => '0');
                pixels_done       <= (others => '0');
            else
                region_done <= '0';
                ram_we      <= "0";

                -- BRAM write on every completed pixel, regardless of state
                if jpp_done = '1' then
                    ram_we      <= "1";
                    ram_addr    <= std_logic_vector(jpp_addr_done(16 downto 0));
                    ram_data    <= palette_idx;
                    pixels_done <= pixels_done + 1;
                end if;

                case state is
                    when IDLE =>
                        cur_x             <= (others => '0');
                        cur_y             <= (others => '0');
                        addr_counter      <= (others => '0');
                        pixels_dispatched <= (others => '0');
                        pixels_done       <= (others => '0');
                        julia_x_coord     <= x_coord_init;
                        julia_y_coord     <= y_coord_init;
                        jpp_start         <= '0';
                        if frame_start = '1' then
                            state <= CALCULATE;
                        end if;

                    when CALCULATE =>
                        -- Two-phase dispatch: pulse start, then advance coords
                        if jpp_start = '1' then
                            jpp_start         <= '0';
                            pixels_dispatched <= pixels_dispatched + 1;
                            if cur_x < REGION_WIDTH - 1 then
                                cur_x         <= cur_x + 1;
                                julia_x_coord <= resize(julia_x_coord + julia_x_step, 3, -JULIA_NEGATIVE_DEPTH);
                                addr_counter  <= addr_counter + 1;
                            else
                                cur_x         <= (others => '0');
                                cur_y         <= cur_y + 1;
                                julia_x_coord <= x_coord_init;
                                julia_y_coord <= resize(julia_y_coord + julia_y_step, 3, -JULIA_NEGATIVE_DEPTH);
                                addr_counter  <= addr_counter + 1;
                            end if;
                        elsif jpp_busy = '0' and pixels_dispatched < TOTAL_PIXELS then
                            jpp_start <= '1';
                        end if;

                        if pixels_dispatched >= TOTAL_PIXELS and pixels_done >= TOTAL_PIXELS then
                            state <= FINISHED;
                        end if;

                    when FINISHED =>
                        region_done <= '1';
                        if frame_start = '0' then
                            state <= IDLE;
                        end if;
                end case;
            end if;
        end if;
    end process;

end Behavioral;