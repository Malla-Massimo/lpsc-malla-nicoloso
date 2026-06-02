library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity color_palette_index is
    Port ( 
        iteration     : in  std_logic_vector(7 downto 0);
        palette_index : out std_logic_vector(4 downto 0)
    );
end color_palette_index;

-- transform number of iterations into a color in 5 bits (32 colors)
architecture Behavioral of color_palette_index is
begin
    process(iteration)
        variable n : integer;
    begin
        n := to_integer(unsigned(iteration));
        
        -- Use std_logic_vector literals (quotes) for assignment
        if    n >= 93 then palette_index <= "11111"; -- 31
        elsif n >= 90 then palette_index <= "11110"; -- 30
        elsif n >= 87 then palette_index <= "11101"; -- 29
        elsif n >= 84 then palette_index <= "11100"; -- 28
        elsif n >= 81 then palette_index <= "11011"; -- 27
        elsif n >= 78 then palette_index <= "11010"; -- 26
        elsif n >= 75 then palette_index <= "11001"; -- 25
        elsif n >= 72 then palette_index <= "11000"; -- 24
        elsif n >= 69 then palette_index <= "10111"; -- 23
        elsif n >= 66 then palette_index <= "10110"; -- 22
        elsif n >= 63 then palette_index <= "10101"; -- 21
        elsif n >= 60 then palette_index <= "10100"; -- 20
        elsif n >= 57 then palette_index <= "10011"; -- 19
        elsif n >= 54 then palette_index <= "10010"; -- 18
        elsif n >= 51 then palette_index <= "10001"; -- 17
        elsif n >= 48 then palette_index <= "10000"; -- 16
        elsif n >= 45 then palette_index <= "01111"; -- 15
        elsif n >= 42 then palette_index <= "01110"; -- 14
        elsif n >= 39 then palette_index <= "01101"; -- 13
        elsif n >= 36 then palette_index <= "01100"; -- 12
        elsif n >= 33 then palette_index <= "01011"; -- 11
        elsif n >= 30 then palette_index <= "01010"; -- 10
        elsif n >= 27 then palette_index <= "01001"; -- 9
        elsif n >= 24 then palette_index <= "01000"; -- 8
        elsif n >= 21 then palette_index <= "00111"; -- 7
        elsif n >= 18 then palette_index <= "00110"; -- 6
        elsif n >= 15 then palette_index <= "00101"; -- 5
        elsif n >= 12 then palette_index <= "00100"; -- 4
        elsif n >= 9  then palette_index <= "00011"; -- 3
        elsif n >= 6  then palette_index <= "00010"; -- 2
        elsif n >= 3  then palette_index <= "00001"; -- 1
        else               palette_index <= "00000"; -- 0
        end if;
    end process;

end Behavioral;