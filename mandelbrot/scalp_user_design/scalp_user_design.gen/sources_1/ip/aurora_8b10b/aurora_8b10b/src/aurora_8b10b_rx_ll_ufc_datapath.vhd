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
--  RX_LL_UFC_DATAPATH
--
--
--
--  Description: the RX_LL_UFC_DATAPATH module takes UFC data in Aurora format
--               and transforms it to LocalLink formatted data
--
--               This module supports 2 4-byte lane designs
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity aurora_8b10b_RX_LL_UFC_DATAPATH is

    port (

    --Traffic Separator Interface

UFC_DATA          : in std_logic_vector(0 to 31);
UFC_DATA_V        : in std_logic_vector(0 to 1);
UFC_MESSAGE_START : in std_logic_vector(0 to 1);
            UFC_START         : in std_logic;

    --LocalLink UFC Interface

UFC_RX_DATA       : out std_logic_vector(0 to 31);
UFC_RX_REM        : out std_logic_vector(0 to 1);
            UFC_RX_SRC_RDY_N  : out std_logic;
            UFC_RX_SOF_N      : out std_logic;
            UFC_RX_EOF_N      : out std_logic;

    --System Interface

            USER_CLK          : in std_logic;
            RESET             : in std_logic

         );

end aurora_8b10b_RX_LL_UFC_DATAPATH;

architecture RTL of aurora_8b10b_RX_LL_UFC_DATAPATH is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

signal UFC_RX_DATA_Buffer      : std_logic_vector(0 to 31);
signal UFC_RX_REM_Buffer       : std_logic_vector(0 to 1);
    signal UFC_RX_SRC_RDY_N_Buffer : std_logic;
    signal UFC_RX_SOF_N_Buffer     : std_logic;
    signal UFC_RX_EOF_N_Buffer     : std_logic;

-- Internal Register Declarations --

    -- Stage 1

    signal  stage_1_data_r         : std_logic_vector(0 to 31);
    signal  stage_1_ufc_start_r    : std_logic;

    -- Stage 1

    signal  barrel_shifter_control_r : std_logic_vector(0 to 1);
    signal  barrel_shifted_count_r   : std_logic_vector(0 to 1);

    -- Stage 2

    signal  barrel_shifted_data_r    : std_logic_vector(0 to 31);
    signal  ufc_storage_count_r      : std_logic_vector(0 to 1);
    signal  ufc_storage_select_r     : std_logic_vector(0 to 5);
    signal  ufc_output_select_r      : std_logic_vector(0 to 5);
    signal  stage_2_ufc_src_rdy_n_r  : std_logic;
    signal  stage_2_ufc_sof_n_r      : std_logic;
    signal  stage_2_ufc_eof_n_r      : std_logic;
    signal  stage_2_ufc_rem_r        : std_logic_vector(0 to 1);

    -- Stage 3

    signal  ufc_storage_data_r       : std_logic_vector(0 to 31);


-- Component Declarations

    component aurora_8b10b_UFC_BARREL_SHIFTER_CONTROL

        port (

                UFC_MESSAGE_START      : in std_logic_vector(0 to 1);
                USER_CLK               : in std_logic;
                BARREL_SHIFTER_CONTROL : out std_logic_vector(0 to 1)

             );

    end component;


    component aurora_8b10b_VALID_DATA_COUNTER

        port (

                PREVIOUS_STAGE_VALID : in std_logic_vector(0 to 1);
                USER_CLK             : in std_logic;
                RESET                : in std_logic;
                COUNT                : out std_logic_vector(0 to 1)
             );

    end component;


    component aurora_8b10b_UFC_BARREL_SHIFTER

        port (

        -- Input interface to the muxes

                RAW_DATA               : in std_logic_vector(0 to 31);
                BARREL_SHIFTER_CONTROL : in std_logic_vector(0 to 1);
                USER_CLK               : in std_logic;
                RESET                  : in std_logic;

        -- Mux output

                SHIFTED_DATA           : out std_logic_vector(0 to 31)

             );

    end component;


    component aurora_8b10b_UFC_STORAGE_COUNT_CONTROL

        port (

                BARREL_SHIFTED_COUNT : in std_logic_vector(0 to 1);
                UFC_START            : in std_logic;
                USER_CLK             : in std_logic;
                RESET                : in std_logic;
                UFC_STORAGE_COUNT    : out std_logic_vector(0 to 1)

             );

    end component;


    component aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL

        port (

                BARREL_SHIFTED_COUNT : in std_logic_vector(0 to 1);
                UFC_STORAGE_COUNT    : in std_logic_vector(0 to 1);
                UFC_START            : in std_logic;
                USER_CLK             : in std_logic;
                UFC_STORAGE_SELECT   : out std_logic_vector(0 to 5)

             );

    end component;


    component aurora_8b10b_UFC_OUTPUT_SWITCH_CONTROL

        port (

                UFC_STORAGE_COUNT : in std_logic_vector(0 to 1);
                USER_CLK          : in std_logic;
                UFC_OUTPUT_SELECT : out std_logic_vector(0 to 5)

             );

    end component;


    component aurora_8b10b_UFC_SIDEBAND_OUTPUT

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

    end component;


    component aurora_8b10b_UFC_STORAGE_MUX

        port (

        -- Input interface to the muxes

                RAW_DATA   : in std_logic_vector(0 to 31);
                MUX_SELECT : in std_logic_vector(0 to 5);
                USER_CLK   : in std_logic;

        -- Mux output

                MUXED_DATA : out std_logic_vector(0 to 31)

             );

    end component;


    component aurora_8b10b_UFC_OUTPUT_MUX

        port (

        -- Input interface to the muxes

                UFC_STORAGE_DATA    : in std_logic_vector(0 to 31);
                BARREL_SHIFTED_DATA : in std_logic_vector(0 to 31);
                MUX_SELECT          : in std_logic_vector(0 to 5);
                USER_CLK            : in std_logic;
                MUXED_DATA          : out std_logic_vector(0 to 31)

             );

    end component;

begin

    UFC_RX_DATA      <= UFC_RX_DATA_Buffer;
    UFC_RX_REM       <= UFC_RX_REM_Buffer;
    UFC_RX_SRC_RDY_N <= UFC_RX_SRC_RDY_N_Buffer;
    UFC_RX_SOF_N     <= UFC_RX_SOF_N_Buffer;
    UFC_RX_EOF_N     <= UFC_RX_EOF_N_Buffer;

-- Main Body of Code --

    -- Stage 1: Shifter Control and Count --

    -- Instantiate a barrel shifter control module.

    ufc_barrel_shifter_control_i : aurora_8b10b_UFC_BARREL_SHIFTER_CONTROL

        port map (

                    UFC_MESSAGE_START      => UFC_MESSAGE_START,
                    USER_CLK               => USER_CLK,
                    BARREL_SHIFTER_CONTROL => barrel_shifter_control_r

                 );


    -- Instantiate a Valid Data counter to count the number of valid UFC data lanes
    -- that will be barrel-shifted in the cycle.

    ufc_valid_data_counter : aurora_8b10b_VALID_DATA_COUNTER

        port map (

                    PREVIOUS_STAGE_VALID => UFC_DATA_V,
                    USER_CLK             => USER_CLK,
                    RESET                => RESET,
                    COUNT                => barrel_shifted_count_r

                 );


    -- Pipeline the data.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            stage_1_data_r <= UFC_DATA after DLY;

        end if;

    end process;


    -- Pipeline the UFC_START signal.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                stage_1_ufc_start_r <= '0' after DLY;

            else

                stage_1_ufc_start_r <= UFC_START after DLY;

            end if;

        end if;

    end process;


    -- Stage 2: Barrel Shifter, control for storage and output --

    -- Instantiate a barrel shifter for the UFC data.

    ufc_barrel_shifter_i : aurora_8b10b_UFC_BARREL_SHIFTER

        port map (

                    RAW_DATA               => stage_1_data_r,
                    BARREL_SHIFTER_CONTROL => barrel_shifter_control_r,
                    USER_CLK               => USER_CLK,
                    RESET                  => RESET,
                    SHIFTED_DATA           => barrel_shifted_data_r

                 );


    -- Instantiate a ufc_storage_count controller.

    ufc_storage_count_control_i : aurora_8b10b_UFC_STORAGE_COUNT_CONTROL

        port map (

                    BARREL_SHIFTED_COUNT => barrel_shifted_count_r,
                    UFC_START            => stage_1_ufc_start_r,
                    USER_CLK             => USER_CLK,
                    RESET                => RESET,
                    UFC_STORAGE_COUNT    => ufc_storage_count_r

                 );


    -- Instantiate a control module for the storage switch.

    ufc_storage_switch_control_i : aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL

        port map (

                    BARREL_SHIFTED_COUNT => barrel_shifted_count_r,
                    UFC_STORAGE_COUNT    => ufc_storage_count_r,
                    UFC_START            => stage_1_ufc_start_r,
                    USER_CLK             => USER_CLK,
                    UFC_STORAGE_SELECT   => ufc_storage_select_r

                 );


    -- Instantiate a control module for the output switch.

    ufc_output_switch_control_i:aurora_8b10b_UFC_OUTPUT_SWITCH_CONTROL

        port map (

                    UFC_STORAGE_COUNT => ufc_storage_count_r,
                    USER_CLK          => USER_CLK,
                    UFC_OUTPUT_SELECT => ufc_output_select_r

                 );


    -- Instantiate a control module for the sideband signals.

    ufc_sideband_output_i : aurora_8b10b_UFC_SIDEBAND_OUTPUT

        port map (

                    BARREL_SHIFTED_COUNT => barrel_shifted_count_r,
                    UFC_STORAGE_COUNT    => ufc_storage_count_r,
                    UFC_START            => stage_1_ufc_start_r,
                    UFC_SRC_RDY_N        => stage_2_ufc_src_rdy_n_r,
                    UFC_SOF_N            => stage_2_ufc_sof_n_r,
                    UFC_EOF_N            => stage_2_ufc_eof_n_r,
                    UFC_REM              => stage_2_ufc_rem_r,
                    USER_CLK             => USER_CLK,
                    RESET                => RESET

                 );


    -- Stage 3:Storage and Output --

    -- Instantiate the storage mux.

    ufc_storage_mux_i : aurora_8b10b_UFC_STORAGE_MUX

        port map (

                    RAW_DATA   => barrel_shifted_data_r,
                    MUX_SELECT => ufc_storage_select_r,
                    USER_CLK   => USER_CLK,
                    MUXED_DATA => ufc_storage_data_r

                 );


    -- Instantiate the output mux.

    ufc_output_mux_i : aurora_8b10b_UFC_OUTPUT_MUX

        port map (

                    UFC_STORAGE_DATA    => ufc_storage_data_r,
                    BARREL_SHIFTED_DATA => barrel_shifted_data_r,
                    MUX_SELECT          => ufc_output_select_r,
                    USER_CLK            => USER_CLK,
                    MUXED_DATA          => UFC_RX_DATA_Buffer

                 );


    -- Pipeline the LocalLink SRC_RDY_N output.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                UFC_RX_SRC_RDY_N_Buffer <= '1' after DLY;

            else

                UFC_RX_SRC_RDY_N_Buffer <= stage_2_ufc_src_rdy_n_r after DLY;

            end if;

        end if;

    end process;


    -- Pipeline the remaining LocalLink signals.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            UFC_RX_SOF_N_Buffer <= stage_2_ufc_sof_n_r after DLY;
            UFC_RX_EOF_N_Buffer <= stage_2_ufc_eof_n_r after DLY;
            UFC_RX_REM_Buffer   <= stage_2_ufc_rem_r after DLY;

        end if;

    end process;

end RTL;
