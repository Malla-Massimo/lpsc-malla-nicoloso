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
--  UFC_SIDEBAND_OUTPUT
--
--
--
--  Description: UFC_SIDEBAND_OUTPUT generates the UFC_SRC_RDY_N, UFC_EOF_N,
--               UFC_SOF_N and UFC_REM signals for the RX localLink interface.
--
--               This module supports 2 4-byte lane designs.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use WORK.AURORA_PKG.all;

entity aurora_8b10b_UFC_SIDEBAND_OUTPUT is

    port (

            BARREL_SHIFTED_COUNT : in std_logic_vector(0 to 1);
            UFC_STORAGE_COUNT    : in std_logic_vector(0 to 1);
            UFC_START            : in std_logic;
            UFC_SRC_RDY_N        : out std_logic;
            UFC_SOF_N            : out std_logic;
            UFC_EOF_N            : out std_logic;
            UFC_REM              : out std_logic_vector(0 to 1);
            USER_CLK             : in std_logic;
            RESET                : in std_logic

         );

end aurora_8b10b_UFC_SIDEBAND_OUTPUT;

architecture RTL of aurora_8b10b_UFC_SIDEBAND_OUTPUT is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal UFC_SRC_RDY_N_Buffer : std_logic;
    signal UFC_SOF_N_Buffer     : std_logic;
    signal UFC_EOF_N_Buffer     : std_logic;
    signal UFC_REM_Buffer       : std_logic_vector(0 to 1);

-- Internal Register Declarations --

    signal  ufc_sof_early_r    : std_logic;

-- Wire Declarations --

    signal  sum_c                  : std_logic_vector(0 to 2);
    signal  storage_count_2x_c     : std_logic_vector(0 to 2);
    signal  sum_2x_c               : std_logic_vector(0 to 2);
    signal  back_to_back_rem_c     : std_logic_vector(0 to 2);
    signal  non_back_to_back_rem_c : std_logic_vector(0 to 2);
    signal  storage_empty_c        : std_logic;
    signal  message_finished_c     : std_logic;
    signal  back_to_back_ufc_c     : std_logic;

begin

    UFC_SRC_RDY_N <= UFC_SRC_RDY_N_Buffer;
    UFC_SOF_N     <= UFC_SOF_N_Buffer;
    UFC_EOF_N     <= UFC_EOF_N_Buffer;
    UFC_REM       <= UFC_REM_Buffer;

-- Main Body of Code --

    -- Calculate the output --

    -- Assert ufc_src_rdy_n whenever data is moved to the output.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                UFC_SRC_RDY_N_Buffer <= '1' after DLY;

            else

                UFC_SRC_RDY_N_Buffer <= not std_bool(UFC_STORAGE_COUNT > conv_std_logic_vector(0,2)) after DLY;

            end if;

        end if;

    end process;


    -- Assert ufc_sof one cycle after a new frame is delivered to storage.

    process(USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            ufc_sof_early_r <= UFC_START after DLY;

            UFC_SOF_N_Buffer <= not ufc_sof_early_r after DLY;

        end if;

    end process;


    sum_c <= conv_std_logic_vector(0,3) + UFC_STORAGE_COUNT + BARREL_SHIFTED_COUNT;


    -- Detect empty storage.

    storage_empty_c <= std_bool(not (UFC_STORAGE_COUNT > conv_std_logic_vector(0,2)));


    -- Detect back to back ufc messages.

    back_to_back_ufc_c <= not storage_empty_c and UFC_START;


    -- Detect messages that are finishing.

    message_finished_c <= not storage_empty_c and (std_bool(sum_c <= conv_std_logic_vector(2,3)) or UFC_START);


    -- Assert eof_n when the storage will empty or a new frame arrives.

    process(USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            UFC_EOF_N_Buffer <= not message_finished_c after DLY;

        end if;

    end process;


    -- REM calculations

    storage_count_2x_c <= UFC_STORAGE_COUNT & '0';

    sum_2x_c <= sum_c(1 to 2) & '0';

    back_to_back_rem_c <= storage_count_2x_c - conv_std_logic_vector(1,3);

    non_back_to_back_rem_c <= sum_2x_c - conv_std_logic_vector(1,3);


    -- Rem depends on the number of valid bytes being transferred to output
    -- on the eof cycle.

    process(USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (back_to_back_ufc_c = '1') then

                UFC_REM_Buffer <= back_to_back_rem_c(1 to 2) after DLY;

            else

                UFC_REM_Buffer <= non_back_to_back_rem_c(1 to 2) after DLY;

            end if;

        end if;

    end process;

end RTL;
