library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use ieee.fixed_pkg.all;

entity JuliaPipelined is
generic (
    REGION_HEIGHT : integer := 180;
    REGION_WIDTH  : integer := 720;
    N_WORKERS     : integer := 4;
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
    
    -- Now means "Is the pipeline completely full?"
    julia_busy: out std_logic 
  );
end JuliaPipelined;

architecture Behavioral of JuliaPipelined is
    
    -- Stage 1 Signals
    signal s1_x_carre, s1_y_carre, s1_xy : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s1_c_re, s1_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s1_active                    : std_logic := '0';
    signal s1_addr                      : unsigned(18 downto 0);
    signal s1_count                     : unsigned(7 downto 0);

    attribute use_dsp : string;
    attribute use_dsp of s1_x_carre : signal is "yes";
    attribute use_dsp of s1_y_carre : signal is "yes";
    attribute use_dsp of s1_xy      : signal is "yes";
    
    -- Stage 2 Signals
    signal s2_sum_sq                    : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_diff_sq                   : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_2xy                       : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_c_re, s2_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_active                    : std_logic := '0';
    signal s2_addr                      : unsigned(18 downto 0);
    signal s2_count                     : unsigned(7 downto 0);

    -- Stage 3 Signals
    signal s3_Z_re, s3_Z_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s3_c_re, s3_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s3_active                    : std_logic := '0';
    signal s3_addr                      : unsigned(18 downto 0);
    signal s3_count                     : unsigned(7 downto 0);
    signal s3_pixel_escaped             : std_logic := '0';

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                s1_active <= '0'; s2_active <= '0'; s3_active <= '0';
                done <= '0';
            else
                -- Default pulse
                done <= '0';

                -------------------------------------------------------
                -- STAGE 1: Feed Coordinator
                -------------------------------------------------------
                -- Scenario A: A pixel in S3 is still looping
                if s3_active = '1' and s3_pixel_escaped = '0' then 
                    s1_x_carre <= resize(s3_Z_re * s3_Z_re, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_y_carre <= resize(s3_Z_im * s3_Z_im, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_xy      <= resize(s3_Z_re * s3_Z_im, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_addr    <= s3_addr;
                    s1_c_re    <= s3_c_re;
                    s1_c_im    <= s3_c_im;
                    s1_count   <= s3_count + 1; -- Increment looping pixel
                    s1_active  <= '1';
                
                -- Scenario B: S3 is empty or its pixel just escaped! We can inject a new pixel.
                elsif start = '1' then 
                    s1_x_carre <= resize(x * x, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_y_carre <= resize(y * y, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_xy      <= resize(x * y, 3, -JULIA_NEGATIVE_DEPTH);
                    s1_addr    <= ram_addr;
                    s1_c_re    <= c_re;
                    s1_c_im    <= c_im;
                    s1_count   <= (others => '0'); -- Brand new pixel
                    s1_active  <= '1';
                else
                    s1_active  <= '0';
                end if;

                -------------------------------------------------------
                -- STAGE 2: Additions & Squaring
                -------------------------------------------------------
                s2_active  <= s1_active;
                s2_sum_sq  <= resize(s1_x_carre + s1_y_carre, 3, -JULIA_NEGATIVE_DEPTH);
                s2_diff_sq <= resize(s1_x_carre - s1_y_carre, 3, -JULIA_NEGATIVE_DEPTH);
                s2_2xy     <= resize(shift_left(s1_xy, 1), 3, -JULIA_NEGATIVE_DEPTH);
                s2_c_re    <= s1_c_re;
                s2_c_im    <= s1_c_im;
                s2_addr    <= s1_addr;
                s2_count   <= s1_count;

                -------------------------------------------------------
                -- STAGE 3: Escape Check & Output
                -------------------------------------------------------
                s3_active  <= s2_active;
                s3_Z_re    <= resize(s2_diff_sq + s2_c_re, 3, -JULIA_NEGATIVE_DEPTH);
                s3_Z_im    <= resize(s2_2xy + s2_c_im, 3, -JULIA_NEGATIVE_DEPTH);
                s3_c_re    <= s2_c_re;
                s3_c_im    <= s2_c_im;
                s3_addr    <= s2_addr;
                s3_count   <= s2_count;
                
                if s2_active = '1' then
                    -- Check if it escapes right now
                    if (s2_sum_sq > 4.0) or (s2_count >= 99) then
                        s3_pixel_escaped <= '1'; -- Tell Stage 1 NOT to loop this
                        done <= '1';             -- Tell FSM to write to RAM
                        addr_done <= s2_addr;
                        n_iteration <= std_logic_vector(s2_count);
                    else
                        s3_pixel_escaped <= '0'; -- Tell Stage 1 to keep looping
                    end if;
                else
                    s3_pixel_escaped <= '0';
                end if;
                
            end if;
        end if;
    end process;
    julia_busy <= '1' when (s3_active = '1' and s3_pixel_escaped = '0') else '0';
end Behavioral;