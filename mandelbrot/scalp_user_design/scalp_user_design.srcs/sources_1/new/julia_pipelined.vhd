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
    
    signal s0_x, s0_y                   : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s0_c_re, s0_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s0_active                    : std_logic := '0';
    signal s0_addr                      : unsigned(18 downto 0);
    signal s0_count                     : unsigned(7 downto 0);

    signal s1_x_carre_full, s1_y_carre_full, s1_xy_full : sfixed(7 downto -JULIA_NEGATIVE_DEPTH*2);
    signal s1_c_re, s1_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s1_active                    : std_logic := '0';
    signal s1_addr                      : unsigned(18 downto 0);
    signal s1_count                     : unsigned(7 downto 0);

    -- Force DSPs
    attribute use_dsp : string;
    attribute use_dsp of s1_x_carre_full : signal is "yes";
    attribute use_dsp of s1_y_carre_full : signal is "yes";
    attribute use_dsp of s1_xy_full      : signal is "yes";
    
    -- STAGE 2: Resizing / Trimming 
    signal s2_x_carre, s2_y_carre, s2_xy : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_c_re, s2_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s2_active                    : std_logic := '0';
    signal s2_addr                      : unsigned(18 downto 0);
    signal s2_count                     : unsigned(7 downto 0);

    -- STAGE 3: Additions
    signal s3_sum_sq                    : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s3_Z_re, s3_Z_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s3_c_re, s3_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s3_active                    : std_logic := '0';
    signal s3_addr                      : unsigned(18 downto 0);
    signal s3_count                     : unsigned(7 downto 0);

    -- STAGE 4: Escape Check
    signal s4_Z_re, s4_Z_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s4_c_re, s4_c_im             : sfixed(3 downto -JULIA_NEGATIVE_DEPTH);
    signal s4_active                    : std_logic := '0';
    signal s4_addr                      : unsigned(18 downto 0);
    signal s4_count                     : unsigned(7 downto 0);
    signal s4_pixel_escaped             : std_logic := '0';

begin

   process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                s0_active <= '0'; s1_active <= '0'; s2_active <= '0'; 
                s3_active <= '0'; s4_active <= '0';
                done <= '0';
            else
                done <= '0';

                -------------------------------------------------------
                -- STAGE 0: Input Latch
                -------------------------------------------------------
                -- We now check Stage 4 to see if the pixel needs to loop
                if s4_active = '1' and s4_pixel_escaped = '0' then 
                    s0_x      <= s4_Z_re;
                    s0_y      <= s4_Z_im;
                    s0_addr   <= s4_addr;
                    s0_c_re   <= s4_c_re;
                    s0_c_im   <= s4_c_im;
                    s0_count  <= s4_count + 1;
                    s0_active <= '1';
                elsif start = '1' then 
                    s0_x      <= x;
                    s0_y      <= y;
                    s0_addr   <= ram_addr;
                    s0_c_re   <= c_re;
                    s0_c_im   <= c_im;
                    s0_count  <= (others => '0');
                    s0_active <= '1';
                else
                    s0_active <= '0';
                end if;

                -------------------------------------------------------
                -- STAGE 1: Pure Math 
                -------------------------------------------------------
                s1_active  <= s0_active;
                s1_addr    <= s0_addr;
                s1_c_re    <= s0_c_re;
                s1_c_im    <= s0_c_im;
                s1_count   <= s0_count;
                
                -- No resizing here. The DSPs just crunch the numbers.
                s1_x_carre_full <= s0_x * s0_x;
                s1_y_carre_full <= s0_y * s0_y;
                s1_xy_full      <= s0_x * s0_y;

                -------------------------------------------------------
                -- STAGE 2: Resize 
                -------------------------------------------------------
                s2_active  <= s1_active;
                s2_addr    <= s1_addr;
                s2_c_re    <= s1_c_re;
                s2_c_im    <= s1_c_im;
                s2_count   <= s1_count;

                s2_x_carre <= resize(s1_x_carre_full, 3, -JULIA_NEGATIVE_DEPTH);
                s2_y_carre <= resize(s1_y_carre_full, 3, -JULIA_NEGATIVE_DEPTH);
                s2_xy      <= resize(s1_xy_full, 3, -JULIA_NEGATIVE_DEPTH);

                -------------------------------------------------------
                -- STAGE 3: Additions
                -------------------------------------------------------
                s3_active  <= s2_active;
                s3_addr    <= s2_addr;
                s3_c_re    <= s2_c_re;
                s3_c_im    <= s2_c_im;
                s3_count   <= s2_count;

                -- Carry chains handle the additions here
                s3_sum_sq  <= resize(s2_x_carre + s2_y_carre, 3, -JULIA_NEGATIVE_DEPTH);
                s3_Z_re    <= resize((s2_x_carre - s2_y_carre) + s2_c_re, 3, -JULIA_NEGATIVE_DEPTH);
                s3_Z_im    <= resize(shift_left(s2_xy, 1) + s2_c_im, 3, -JULIA_NEGATIVE_DEPTH);

                -------------------------------------------------------
                -- STAGE 4: Escape Check and Output
                -------------------------------------------------------
                s4_active  <= s3_active;
                s4_addr    <= s3_addr;
                s4_c_re    <= s3_c_re;
                s4_c_im    <= s3_c_im;
                s4_count   <= s3_count;
                s4_Z_re    <= s3_Z_re;
                s4_Z_im    <= s3_Z_im;
                
                if s3_active = '1' then
                    if (s3_sum_sq > 4.0) or (s3_count >= 99) then
                        s4_pixel_escaped <= '1'; 
                        done <= '1';             
                        addr_done <= s3_addr;
                        n_iteration <= std_logic_vector(s3_count);
                    else
                        s4_pixel_escaped <= '0'; 
                    end if;
                else
                    s4_pixel_escaped <= '0';
                end if;
                
            end if;
        end if;
    end process;
    
    -- Update the busy flag 
    julia_busy <= '1' when (s4_active = '1' and s4_pixel_escaped = '0') else '0';
    
end Behavioral;