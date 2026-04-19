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

--
--  UFC_BARREL_SHIFTER
--
--
--
--  Description: the UFC_BARREL shifter is a barrel shifter that takes UFC
--               message data from the Aurora channel and left aligns it.
--
--               This module supports 2 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

entity aurora_8b10b_UFC_BARREL_SHIFTER is

    port (

    -- Input interface to the muxes

            RAW_DATA               : in std_logic_vector(0 to 31);
            BARREL_SHIFTER_CONTROL : in std_logic_vector(0 to 1);
            USER_CLK               : in std_logic;
            RESET                  : in std_logic;

    -- Mux output

            SHIFTED_DATA           : out std_logic_vector(0 to 31)

         );

end aurora_8b10b_UFC_BARREL_SHIFTER;

architecture RTL of aurora_8b10b_UFC_BARREL_SHIFTER is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal SHIFTED_DATA_Buffer : std_logic_vector(0 to 31);

-- Internal Register Declarations --

    signal ufc_select_c   : std_logic_vector(0 to 1);
    signal shifted_data_c : std_logic_vector(0 to 31);

begin

    SHIFTED_DATA <= SHIFTED_DATA_Buffer;

-- Main Body of Code --

    -- Muxes for barrel shifting --

    -- Mux for lane 0

    process (BARREL_SHIFTER_CONTROL, RAW_DATA)

    begin

        case BARREL_SHIFTER_CONTROL is

when "00" =>

                shifted_data_c(0 to 15) <= RAW_DATA(0 to 15);

when "01" =>

                shifted_data_c(0 to 15) <= RAW_DATA(16 to 31);

            when others =>

                shifted_data_c(0 to 15) <= (others => '0');

        end case;

    end process;


    -- Mux for lane 1

    process (BARREL_SHIFTER_CONTROL, RAW_DATA)

    begin

        case BARREL_SHIFTER_CONTROL is

when "00" =>

                shifted_data_c(16 to 31) <= RAW_DATA(16 to 31);

            when others =>

                shifted_data_c(16 to 31) <= (others => '0');

        end case;

    end process;


    -- Register the output.

    process(USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            SHIFTED_DATA_Buffer <=  shifted_data_c after DLY;

        end if;

    end process;

end RTL;
