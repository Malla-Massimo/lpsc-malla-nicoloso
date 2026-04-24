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
use WORK.AURORA_PKG.all;

entity aurora_8b10b_DESCRAMBLER_TOP is

    port (

    -- RX_LL Interface

            RX_PAD           : out std_logic_vector(0 to 1);     -- LSByte is PAD.
            RX_PE_DATA       : out std_logic_vector(0 to 31);    -- Word aligned data from channel partner.
            RX_PE_DATA_V     : out std_logic_vector(0 to 1);      -- Data is valid data and not a control character.
            RX_SCP           : out std_logic_vector(0 to 1);      -- SCP symbol received.
            RX_ECP           : out std_logic_vector(0 to 1);      -- ECP symbol received.
            RX_SNF           : out std_logic_vector(0 to 1);      -- SNF symbol received.
            RX_FC_NB         : out std_logic_vector(0 to 7);     -- Flow Control size code.  Valid with RX_SNF or RX_SUF.

            RX_PAD_IN           : in std_logic_vector(0 to 1);      -- LSByte is PAD.
            RX_PE_DATA_IN       : in std_logic_vector(0 to 31);    -- Word aligned data from channel partner.
            RX_PE_DATA_V_IN     : in std_logic_vector(0 to 1);      -- Data is valid data and not a control character.
            RX_SCP_IN           : in std_logic_vector(0 to 1);      -- SCP symbol received.
            RX_ECP_IN           : in std_logic_vector(0 to 1);      -- ECP symbol received.
            RX_SNF_IN           : in std_logic_vector(0 to 1);      -- SNF symbol received.
            RX_FC_NB_IN         : in std_logic_vector(0 to 7);     -- Flow Control size code.  Valid with RX_SNF or RX_SUF.

    -- Lane Init SM Interface

            RX_SP            : out std_logic;                    -- SP sequence received with positive or negative data.
            RX_SPA           : out std_logic;                    -- SPA sequence received.
            RX_NEG           : out std_logic;                    -- Inverted data for SP or SPA received.

            RX_SP_IN            : in std_logic;                    -- SP sequence received with positive or negative data.
            RX_SPA_IN           : in std_logic;                    -- SPA sequence received.
            RX_NEG_IN           : in std_logic;                    -- Inverted data for SP or SPA received.

    -- Global Logic Interface

            GOT_A            : out std_logic_vector(0 to 3);     -- A character received on indicated byte(s).
            GOT_V            : out std_logic;                    -- V sequence received.

            RX_CC            : out std_logic;                    -- CC sequence received.

            GOT_A_IN            : in std_logic_vector(0 to 3);     -- A character received on indicated byte(s).
            GOT_V_IN           : in std_logic;                    -- V sequence received.

            RX_CC_IN           : in std_logic;                    -- CC sequence received.

    -- System Interface

            USER_CLK         : in std_logic;                     -- System clock for all non-GTX Aurora Logic.
            CLEAR            : in std_logic;   
            RESET            : in std_logic

         );

end aurora_8b10b_DESCRAMBLER_TOP;

architecture BEHAVIORAL of aurora_8b10b_DESCRAMBLER_TOP is

--***********************************Parameter Declarations***************************

    constant DLY             : time      := 1 ns;

--**************************************Signal Declarations***************************

    signal  en_scrambler         : std_logic_vector(1 downto 0);    
    signal  bypass_w             : std_logic_vector(1 downto 0);    
    signal  bypass_r             : std_logic_vector(1 downto 0);    
    signal  user_data            : std_logic_vector(31 downto 0);    
    signal  scrambled_data       : std_logic_vector(31 downto 0);    
    signal  data_nxt2            : std_logic_vector(0 to 31);    
    signal  RX_PE_DATA_Buffer    : std_logic_vector(0 to 31);    
    signal  RX_SNF_Buffer    : std_logic_vector(0 to 1);    

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

    -- pipeline all SYM DEC inputs
   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       RX_PAD     <=  RX_PAD_IN after DLY; 
       data_nxt2     <=  RX_PE_DATA_IN after DLY; 
       RX_PE_DATA_V     <=  RX_PE_DATA_V_IN after DLY; 
       RX_SCP     <=  RX_SCP_IN after DLY; 
       RX_ECP     <=  RX_ECP_IN after DLY; 
       RX_SNF_Buffer   <=  RX_SNF_IN after DLY; 
       RX_FC_NB   <=  RX_FC_NB_IN after DLY; 
       RX_SP     <=  RX_SP_IN after DLY; 
       RX_SPA     <=  RX_SPA_IN after DLY; 
       RX_NEG     <=  RX_NEG_IN after DLY; 
       GOT_A     <=  GOT_A_IN after DLY; 
       GOT_V     <=  GOT_V_IN after DLY; 
       RX_CC     <=  RX_CC_IN after DLY; 
     end if;
   end process;  

   process(USER_CLK)
   begin
     if(USER_CLK'event and USER_CLK='1') then
       bypass_r   <=  bypass_w; 
     end if;
   end process;

   bypass_w(0)  <= '1' when ((NOT RX_PE_DATA_V_IN(0) or RX_PAD_IN(0) or GOT_V_IN or RESET) = '1') else
		   '0';

   bypass_w(1)  <= '1' when ((NOT RX_PE_DATA_V_IN(1) or RX_PAD_IN(1) or GOT_V_IN or RESET) = '1') else
		   '0';

   user_data(15 downto 0)   <= X"0000" when (bypass_w(0) = '1') else
                               RX_PE_DATA_IN(0 to 15);

   user_data(31 downto 16)  <= X"0000" when (bypass_w(1) = '1') else
                               RX_PE_DATA_IN(16 to 31);

   en_scrambler(0)  <= NOT bypass_w(0);

   en_scrambler(1)  <= NOT bypass_w(1); 

    aurora_8b10b_descrambler0_i : aurora_8b10b_SCRAMBLER
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
        CLEAR    => RX_CC_IN,
        RESET    => RESET,
        CLK      => USER_CLK
    );

    aurora_8b10b_descrambler1_i : aurora_8b10b_SCRAMBLER
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
        CLEAR    => RX_CC_IN,
        RESET    => RESET,
        CLK      => USER_CLK
    );


   -- Outputs

   RX_PE_DATA_Buffer(0 to 15)  <= data_nxt2(0 to 15) when (bypass_r(0) = '1') else
                                  scrambled_data(15 downto 0);

   RX_PE_DATA_buffer(16 to 31) <= data_nxt2(16 to 31) when (bypass_r(1) = '1') else
                                  scrambled_data(31 downto 16);

   RX_PE_DATA(0 to 15)  <=  RX_PE_DATA_Buffer(0 to 15);

   RX_PE_DATA(16 to 31) <=  RX_PE_DATA_Buffer(16 to 31);

   RX_SNF               <=  RX_SNF_Buffer;

end BEHAVIORAL;
