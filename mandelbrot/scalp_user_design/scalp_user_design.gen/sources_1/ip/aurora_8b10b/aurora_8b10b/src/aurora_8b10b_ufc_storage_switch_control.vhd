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
--  UFC_STORAGE_SWITCH_CONTROL
--
--
--
--  Description: UFC_STORAGE_SWITCH_CONTROL selects the input chunk for each ufc storage chunk mux
--
--              This module supports 2 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use WORK.AURORA_PKG.all;

entity aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL is

    port (

            BARREL_SHIFTED_COUNT : in std_logic_vector(0 to 1);
            UFC_STORAGE_COUNT    : in std_logic_vector(0 to 1);
            UFC_START            : in std_logic;
            USER_CLK             : in std_logic;
            UFC_STORAGE_SELECT   : out std_logic_vector(0 to 5)

         );

end aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL;

architecture RTL of aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations

    signal UFC_STORAGE_SELECT_Buffer : std_logic_vector(0 to 5);

-- Internal Register Declarations --

    signal ufc_storage_select_c : std_logic_vector(0 to 5);

-- Wire Declarations --

    signal sum_c            : std_logic_vector(0 to 3);
    signal overflow_c       : std_logic;
    signal overflow_value_c : std_logic_vector(0 to 7);

begin

    UFC_STORAGE_SELECT <= UFC_STORAGE_SELECT_Buffer;

-- Main Body of Code --

    sum_c      <= "0000" + BARREL_SHIFTED_COUNT + UFC_STORAGE_COUNT;
    overflow_c <= std_bool(sum_c > conv_std_logic_vector(2,3)) and not UFC_START;


    -- Generate switch signals --

    -- Select for Lane 0

    overflow_value_c(0 to 3) <= conv_std_logic_vector(2,4) - UFC_STORAGE_COUNT;

    process (overflow_c, overflow_value_c)

    begin

        if (overflow_c = '1') then

            ufc_storage_select_c(0 to 2) <= overflow_value_c(1 to 3);

        else

            ufc_storage_select_c(0 to 2) <= conv_std_logic_vector(0,3);

        end if;

    end process;


    -- Select for Lane 1

    overflow_value_c(4 to 7) <= conv_std_logic_vector(3,4) - UFC_STORAGE_COUNT;

    process (overflow_c, overflow_value_c)

    begin

        if (overflow_c = '1') then

            ufc_storage_select_c(3 to 5) <= overflow_value_c(5 to 7);

        else

            ufc_storage_select_c(3 to 5) <= conv_std_logic_vector(1,3);

        end if;

    end process;


    -- Register the storage selection.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            UFC_STORAGE_SELECT_Buffer <= ufc_storage_select_c after DLY;

        end if;

    end process;

end RTL;
