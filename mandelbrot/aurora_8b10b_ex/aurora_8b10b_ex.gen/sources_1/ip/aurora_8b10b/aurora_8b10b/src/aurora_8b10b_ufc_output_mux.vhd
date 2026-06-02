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
--  UFC_OUTPUT_MUX
--
--
--
--  Description: the UFC_OUTPUT mux moves selected data from ufc storage and the
--               ufc barrel shifter to the ufc LocalLink output register. It
--               is made up of a series of muxes, one set for each lane. The
--               number of selections available for each mux increments with
--               lane position. The first lane has only one possible input, the
--               nth lane has N inputs.
--               Note that the 0th selection for each mux is connected to the
--               UFC storage input, and the remaining selections are connected
--               to the barrel-shifted input lanes in incrementing order.
--
--               This module supports 2 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

entity aurora_8b10b_UFC_OUTPUT_MUX is

    port (

    -- Input interface to the muxes

            UFC_STORAGE_DATA    : in std_logic_vector(0 to 31);
            BARREL_SHIFTED_DATA : in std_logic_vector(0 to 31);
            MUX_SELECT          : in std_logic_vector(0 to 5);
            USER_CLK            : in std_logic;
            MUXED_DATA          : out std_logic_vector(0 to 31)

         );

end aurora_8b10b_UFC_OUTPUT_MUX;

architecture RTL of aurora_8b10b_UFC_OUTPUT_MUX is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal MUXED_DATA_Buffer : std_logic_vector(0 to 31);

-- Internal Register Declarations --

    signal muxed_data_c : std_logic_vector(0 to 31);

begin

    MUXED_DATA <= MUXED_DATA_Buffer;

-- Main Body of Code --

    -- We create a set of muxes for each lane.

    -- Lane 0 needs no mux, it is always connected to the storage lane.

    -- Mux for lane 1

    process (MUX_SELECT(3 to 5), UFC_STORAGE_DATA, BARREL_SHIFTED_DATA)

    begin

        case MUX_SELECT(3 to 5) is

when "000" =>

                muxed_data_c(16 to 31) <= UFC_STORAGE_DATA(16 to 31);

when "001" =>

                muxed_data_c(16 to 31) <= BARREL_SHIFTED_DATA(0 to 15);

            when others =>

                muxed_data_c(16 to 31) <= (others => '0');

        end case;

    end process;


    -- Register the data.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            MUXED_DATA_Buffer <= UFC_STORAGE_DATA(0 to 15) & muxed_data_c(16 to 31) after DLY;

        end if;

    end process;

end RTL;
