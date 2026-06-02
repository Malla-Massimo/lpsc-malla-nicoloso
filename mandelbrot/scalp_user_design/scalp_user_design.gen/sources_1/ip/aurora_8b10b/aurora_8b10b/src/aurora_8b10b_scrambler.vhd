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

entity aurora_8b10b_SCRAMBLER is

generic
(
   C_SEED : std_logic_vector :=   X"FFFF"
);
port
(
  DOUT                            : out   std_logic_vector(15 downto 0) := X"0000";

  DIN                             : in    std_logic_vector(15 downto 0);
  BYPASS                          : in    std_logic;
  EN                              : in    std_logic;

  ----------------------  System Interface ----------------------------
  CLEAR                           : in    std_logic;
  RESET                           : in    std_logic;
  CLK                             : in    std_logic 
);

end aurora_8b10b_SCRAMBLER;

architecture BEHAVIORAL of aurora_8b10b_SCRAMBLER is

--***********************************Parameter Declarations***************************

    constant DLY             : time      := 1 ns;

--**************************************Signal Declarations***************************

    signal   dataNext               : std_logic_vector(15 downto 0);
    signal   lfsrNext               : std_logic_vector(15 downto 0);
    signal   lfsr                   : std_logic_vector(15 downto 0) :=X"0000";
    signal   dout_temp              : std_logic_vector(15 downto 0);

begin

--*********************************Main Body of Code**********************************

  dout_temp    <= DIN when (BYPASS = '1') else
		  dataNext;
	
  -----------------------------------------------------------------------------
  -- Scrambler / De-Scrambler Register
  -----------------------------------------------------------------------------
   process(CLK)
   begin
     if(CLK'event and CLK='1') then
       if(EN = '1') then
         DOUT     <=  dout_temp after DLY; 
       end if;
     end if;
   end process;

  -----------------------------------------------------------------------------
  -- 16-bit LFSR
  -----------------------------------------------------------------------------
   process(CLK)
   begin
     if(CLK'event and CLK='1') then
       if((RESET OR CLEAR)= '1') then
         lfsr     <=  C_SEED; 
       elsif(EN = '1') then
         lfsr     <=  lfsrNext; 
       end if;
     end if;
   end process;

  -----------------------------------------------------------------------------
  -- LFSR XORs
  -----------------------------------------------------------------------------
  lfsrNext(0)  <= lfsr(8) ;
  lfsrNext(1)  <= lfsr(9) ;
  lfsrNext(2)  <= lfsr(10) ;
  lfsrNext(3)  <= lfsr(8) XOR lfsr(11) ;
  lfsrNext(4)  <= lfsr(8) XOR lfsr(9) XOR lfsr(12) ;
  lfsrNext(5)  <= lfsr(8) XOR lfsr(9) XOR lfsr(10) XOR lfsr(13) ;
  lfsrNext(6)  <= lfsr(9) XOR lfsr(10) XOR lfsr(11) XOR lfsr(14) ;
  lfsrNext(7)  <= lfsr(10) XOR lfsr(11) XOR lfsr(12) XOR lfsr(15) ;
  lfsrNext(8)  <= lfsr(0) XOR lfsr(11) XOR lfsr(12) XOR lfsr(13) ;
  lfsrNext(9)  <= lfsr(1) XOR lfsr(12) XOR lfsr(13) XOR lfsr(14) ;
  lfsrNext(10) <= lfsr(2) XOR lfsr(13) XOR lfsr(14) XOR lfsr(15) ;
  lfsrNext(11) <= lfsr(3) XOR lfsr(14) XOR lfsr(15) ;
  lfsrNext(12) <= lfsr(4) XOR lfsr(15) ;
  lfsrNext(13) <= lfsr(5) ;
  lfsrNext(14) <= lfsr(6) ;
  lfsrNext(15) <= lfsr(7) ;

  -----------------------------------------------------------------------------
  -- Additive Scrambler / De-Scrambler XORs
  -----------------------------------------------------------------------------
  dataNext(0)  <= EN AND (DIN(0)  XOR lfsr(15))   ;
  dataNext(1)  <= EN AND (DIN(1)  XOR lfsr(14))   ;
  dataNext(2)  <= EN AND (DIN(2)  XOR lfsr(13))   ;
  dataNext(3)  <= EN AND (DIN(3)  XOR lfsr(12))   ;
  dataNext(4)  <= EN AND (DIN(4)  XOR lfsr(11))   ;
  dataNext(5)  <= EN AND (DIN(5)  XOR lfsr(10))   ;
  dataNext(6)  <= EN AND (DIN(6)  XOR lfsr(9))   ;
  dataNext(7)  <= EN AND (DIN(7)  XOR lfsr(8))   ;
  dataNext(8)  <= EN AND (DIN(8)  XOR lfsr(7))   ;
  dataNext(9)  <= EN AND (DIN(9)  XOR lfsr(6))   ;
  dataNext(10)  <= EN AND (DIN(10)  XOR lfsr(5))   ;
  dataNext(11)  <= EN AND (DIN(11)  XOR lfsr(4))   ;
  dataNext(12)  <= EN AND (DIN(12)  XOR lfsr(3))   ;
  dataNext(13)  <= EN AND (DIN(13)  XOR lfsr(2))   ;
  dataNext(14)  <= EN AND (DIN(14)  XOR lfsr(1))   ;
  dataNext(15)  <= EN AND (DIN(15)  XOR lfsr(0))   ;

end BEHAVIORAL;
