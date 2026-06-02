-------------------------------------------------------------------------------
-- (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Advanced Micro Devices, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--
-------------------------------------------------------------------------------

--***************************** Module Declaration ****************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;

entity aurora_8b10b_SCRAMBLER_TOP is

port
(
  DATA_OUT                        : out   std_logic_vector(31 downto 0);
  CHAR_IS_K_OUT                   : out   std_logic_vector(3 downto 0);

  DATA                            : in    std_logic_vector(31 downto 0);
  CHAR_IS_K                       : in    std_logic_vector(3 downto 0);

  ----------------------  System Interface ----------------------------
  CLEAR                           : in    std_logic;
  RESET                           : in    std_logic;
  USER_CLK                        : in    std_logic 
);

end aurora_8b10b_SCRAMBLER_TOP;

architecture BEHAVIORAL of aurora_8b10b_SCRAMBLER_TOP is

--***********************************Parameter Declarations***************************

    constant DLY             : time      := 1 ns;

--**************************************Signal Declarations***************************

    signal  en_scrambler         : std_logic_vector(1 downto 0);    
    signal  bypass_w             : std_logic_vector(1 downto 0);    
    signal  bypass_r             : std_logic_vector(1 downto 0);    
    signal  seed_lfsr            : std_logic;    
    signal  user_data            : std_logic_vector(31 downto 0);    
    signal  scrambled_data       : std_logic_vector(31 downto 0);    
    signal  clear_nxt            : std_logic;    
    signal  clear_nxt2           : std_logic;    
    signal  data_nxt             : std_logic_vector(31 downto 0);    

   component aurora_8b10b_SCRAMBLER is

   generic
   (
     C_SEED : std_logic_vector :=   X"FFFF"
   );

   port
   (
     DOUT                            : out   std_logic_vector(15 downto 0);

     DIN                             : in    std_logic_vector(15 downto 0);
     BYPASS                          : in    std_logic;
     EN                              : in    std_logic;

     ----------------------  System Interface ----------------------------
     CLEAR                           : in    std_logic;
     RESET                           : in    std_logic;
     CLK                             : in    std_logic 
   );

   end component;


begin

--*********************************Main Body of Code**********************************

    -- data pipeline
   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       data_nxt     <=  DATA after DLY; 
     end if;
   end process;  

   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       bypass_r     <=  bypass_w after DLY; 
     end if;
   end process;

    --  register clear to reset scrambler when CC is being sent from SYM_GEN
   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       clear_nxt     <=  CLEAR after DLY; 
       clear_nxt2    <=  clear_nxt after DLY; 
     end if;
   end process;

   seed_lfsr    <= clear_nxt2;

   bypass_w(0)  <= '1' when (RESET = '1') else
		   '1' when ((OR_REDUCE(CHAR_IS_K(1 downto 0))) = '1') else
		   '0';

   bypass_w(1)  <= '1' when (RESET = '1') else
		   '1' when ((OR_REDUCE(CHAR_IS_K(3 downto 2))) = '1') else
		   '0';

   user_data(15 downto 0)   <= X"0000" when (bypass_w(0) = '1') else
                               DATA(15 downto 0);

   user_data(31 downto 16) <=  X"0000" when (bypass_w(1) = '1') else
                               DATA(31 downto 16);

   en_scrambler(0)  <= NOT bypass_w(0);

   en_scrambler(1)  <= NOT bypass_w(1); 

    aurora_8b10b_scrambler0_i : aurora_8b10b_SCRAMBLER
    generic map
    (
       C_SEED      =>  X"FFFF"
    )
    port map
    (
        DOUT     => scrambled_data(15 downto 0),
        DIN      => user_data(15 downto 0),
        EN       => en_scrambler(0),
        BYPASS   => bypass_w(0),
        CLEAR    => seed_lfsr,
        RESET    => RESET,
        CLK      => USER_CLK
    );

    aurora_8b10b_scrambler1_i : aurora_8b10b_SCRAMBLER
    generic map
    (
       C_SEED      =>  X"FFFF"
    )
    port map
    (
        DOUT     => scrambled_data(31 downto 16),
        DIN      => user_data(31 downto 16),
        EN       => en_scrambler(1),
        BYPASS   => bypass_w(1),
        CLEAR    => seed_lfsr,
        RESET    => RESET,
        CLK      => USER_CLK
    );

  -- Outputs

   DATA_OUT(15 downto 0) <= data_nxt(15 downto 0) when (bypass_r(0) = '1') else
                            scrambled_data(15 downto 0);

   DATA_OUT(31 downto 16) <= data_nxt(31 downto 16) when (bypass_r(1) = '1') else
                             scrambled_data(31 downto 16);

    --  CHAR_IS_K pipeline
   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       CHAR_IS_K_OUT     <=  CHAR_IS_K after DLY; 
     end if;
   end process;
   
end BEHAVIORAL;
