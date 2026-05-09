library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Required for 'unsigned' math
use ieee.fixed_pkg.all;

entity Julia_n_calculator is
  Port ( 
    clk: in std_logic;
    rst: in std_logic;
    start: in std_logic;
    x:   in sfixed(3 downto -15);
    y:   in sfixed(3 downto -15);
    c_re: in sfixed(3 downto -15);
    c_im: in sfixed(3 downto -15);
    n_iteration: out std_logic_vector(7 downto 0);
    done: out std_logic
  );
end Julia_n_calculator;

architecture Behavioral of Julia_n_calculator is

    signal Z_re    : sfixed(3 downto -15) := (others => '0');
    signal Z_im    : sfixed(3 downto -15) := (others => '0');
    signal n_count : unsigned(7 downto 0) := (others => '0'); 
    
    signal x_carre : sfixed(3 downto -15) := (others => '0');
    signal y_carre : sfixed(3 downto -15) := (others => '0');
    signal xy: sfixed(3 downto -15) := (others => '0');
    signal sum_sq :  sfixed(3 downto -15) := (others => '0');

    type state_t is (IDLE, CALCULATE_0, CALCULATE_1, CALCULATE_2, DONE_STATE);
    signal state : state_t := IDLE;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                done <= '0';
                n_count <= (others => '0');
                state <= IDLE;
            else
                case state is
                    when IDLE =>
                        done <= '0';
                        if start = '1' then
                            Z_re <= x;
                            Z_im <= y;
                            n_count <= (others => '0');
                            sum_sq  <= (others => '0');
                            state <= CALCULATE_0;
                        end if;

                    when CALCULATE_0 =>
                        -- With sum_sq we check one step late, we check till 99 iteration
                        if sum_sq <= to_sfixed(4, 3, -15) and (n_count < 99) then
                            x_carre <= resize(Z_re * Z_re, 3, -15);
                            y_carre <= resize(Z_im * Z_im, 3, -15);
                            xy <= resize(Z_re * Z_im, 3, -15);

                            state   <= CALCULATE_1;
                            
                        else
                            state   <= DONE_STATE;
                        end if;
                    
                    when CALCULATE_1 =>
                        Z_im <= resize(shift_left(xy, 1), 3, -15);
                        sum_sq <= resize(x_carre + y_carre, 3, -15);
                        state <= CALCULATE_2;

                    when CALCULATE_2 =>
                        Z_re <= resize(x_carre - y_carre + c_re, 3, -15);
                        Z_im <= resize(Z_im + c_im, 3, -15);
                        
                        n_count <= n_count + 1;
                        state   <= CALCULATE_0; 

                    when DONE_STATE =>
                        done <= '1';
                  
                        if start = '0' then
                            state <= IDLE;
                        end if;
                        
                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

    n_iteration <= std_logic_vector(n_count);

end Behavioral;