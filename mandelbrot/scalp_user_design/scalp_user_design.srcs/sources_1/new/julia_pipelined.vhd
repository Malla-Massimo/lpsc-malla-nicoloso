library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Required for 'unsigned' math
use ieee.fixed_pkg.all;

entity JuliaPipelined is
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
end JuliaPipelined;

architecture Behavioral of JuliaPipelined is
    -- Stage 1 Signals: Multiplication
    signal s1_x_carre, s1_y_carre, s1_xy : sfixed(3 downto -15);
    signal s1_c_re, s1_c_im             : sfixed(3 downto -15);
    signal s1_active                    : std_logic := '0';
    signal s1_addr: unsigned(18 downto 0);

    -- Stage 2 Signals: Squaring & Part 1 of Addition
    signal s2_sum_sq                    : sfixed(3 downto -15);
    signal s2_diff_sq                   : sfixed(3 downto -15);
    signal s2_2xy                       : sfixed(3 downto -15);
    signal s2_c_re, s2_c_im             : sfixed(3 downto -15);
    signal s2_active                    : std_logic := '0';
    signal s2_addr: unsigned(18 downto 0);

    -- Stage 3 Signals: Final Addition & Feedback
    signal s3_Z_re, s3_Z_im             : sfixed(3 downto -15);
    signal s3_count                     : unsigned(7 downto 0) := (others => '0');
    signal s3_active                    : std_logic := '0';
    signal s3_addr: unsigned(18 downto 0);

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
               s1_active <= '0'; s2_active <= '0'; s3_active <= '0';
                done <= '0';
                s3_count <= (others => '0');
            else
                done <= '0';

                -------------------------------------------------------
                -- STAGE 1: Initialize and load data into pipeline
                -------------------------------------------------------
               if s3_active = '1' and (s2_sum_sq <= 4 and s3_count < 99) then 
                    -- FEEDBACK: Loop the current pixel back for next iteration
                    s1_x_carre <= resize(s3_Z_re * s3_Z_re, 3, -15);
                    s1_y_carre <= resize(s3_Z_im * s3_Z_im, 3, -15);
                    s1_xy      <= resize(s3_Z_re * s3_Z_im, 3, -15);
                    s1_addr    <= s3_addr;
                    s1_active  <= '1';
                
                elsif s3_active = '0' and start = '1' then 
                   -- NEW PIXEL: load 
                    s1_x_carre <= resize(x * x, 3, -15);
                    s1_y_carre <= resize(y * y, 3, -15);
                    s1_xy      <= resize(x * y, 3, -15);
                    s1_c_re    <= c_re;
                    s1_c_im    <= c_im;
                    s1_addr    <= ram_addr;
                    s1_active  <= '1';
                    s3_count   <= (others => '0'); -- Reset count for new pixel
                else
                    s1_active  <= '0';
                end if;

                -------------------------------------------------------
                -- STAGE 2: Continue adding
                -------------------------------------------------------
                s2_active  <= s1_active;
                s2_sum_sq  <= resize(s1_x_carre + s1_y_carre, 3, -15);
                s2_diff_sq <= resize(s1_x_carre - s1_y_carre, 3, -15);
                s2_2xy     <= resize(shift_left(s1_xy, 1), 3, -15);
                s2_c_re    <= s1_c_re;
                s2_c_im    <= s1_c_im;
                s2_addr <= s1_addr;

                -------------------------------------------------------
                -- STAGE 3: Finale add and check
                -------------------------------------------------------
                s3_active  <= s2_active;
                s3_Z_re    <= resize(s2_diff_sq + s2_c_re, 3, -15);
                s3_Z_im    <= resize(s2_2xy + s2_c_im, 3, -15);
                s3_addr <= s2_addr;
                
                -- Manage Active State and Counter
                if s2_active = '1' then
                    s3_count <= s3_count + 1;
                    
                    -- Check if this iteration escaped or reached max
                    if (s2_sum_sq > 4.0) or (s3_count >= 99) then
                        done <= '1';
                        addr_done <= s2_addr;
                        n_iteration <= std_logic_vector(s3_count);
                        s3_active <= '0'; -- Stop the feedback loop
                    else
                        s3_active <= '1'; -- Continue iterating
                    end if;
                else
                    s3_active <= '0';
                end if;
                
                julia_busy <= s1_active or s2_active or s3_active;

            end if;
        end if;
    end process;

end Behavioral;