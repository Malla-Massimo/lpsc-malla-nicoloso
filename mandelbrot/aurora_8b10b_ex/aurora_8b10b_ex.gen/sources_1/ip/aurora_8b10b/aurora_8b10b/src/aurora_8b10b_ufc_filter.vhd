------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------
--
--  UFC_FILTER
--
--
--
--  Description: The UFC module separates data into UFC data and regular data.
--
--               This module supports 2 4-byte lane designs.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use WORK.AURORA_PKG.all;

entity aurora_8b10b_UFC_FILTER is

    port (

    -- Aurora Channel Interface

RX_PAD            : in std_logic_vector(0 to 1);
RX_PE_DATA        : in std_logic_vector(0 to 31);
RX_PE_DATA_V      : in std_logic_vector(0 to 1);
RX_SCP            : in std_logic_vector(0 to 1);
RX_ECP            : in std_logic_vector(0 to 1);
RX_SUF            : in std_logic_vector(0 to 1);
RX_FC_NB          : in std_logic_vector(0 to 7);

    -- PDU Datapath Interface

PDU_DATA          : out std_logic_vector(0 to 31);
PDU_DATA_V        : out std_logic_vector(0 to 1);
PDU_PAD           : out std_logic_vector(0 to 1);
PDU_SCP           : out std_logic_vector(0 to 1);
PDU_ECP           : out std_logic_vector(0 to 1);

    -- UFC Datapath Interface

UFC_DATA          : out std_logic_vector(0 to 31);
UFC_DATA_V        : out std_logic_vector(0 to 1);
UFC_MESSAGE_START : out std_logic_vector(0 to 1);
            UFC_START         : out std_logic;

    -- System Interface

            USER_CLK          : in std_logic;
            RESET             : in std_logic

         );

end aurora_8b10b_UFC_FILTER;

architecture RTL of aurora_8b10b_UFC_FILTER is

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

signal PDU_DATA_Buffer          : std_logic_vector(0 to 31);
signal PDU_DATA_V_Buffer        : std_logic_vector(0 to 1);
signal PDU_PAD_Buffer           : std_logic_vector(0 to 1);
signal PDU_SCP_Buffer           : std_logic_vector(0 to 1);
signal PDU_ECP_Buffer           : std_logic_vector(0 to 1);
signal UFC_DATA_Buffer          : std_logic_vector(0 to 31);
signal UFC_DATA_V_Buffer        : std_logic_vector(0 to 1);
signal UFC_MESSAGE_START_Buffer : std_logic_vector(0 to 1);
    signal UFC_START_Buffer         : std_logic;

-- Internal Register Declarations --

    signal stage_1_lane_mask_0_c           : std_logic_vector(0 to 1);
    signal stage_1_count_value_0_c         : std_logic_vector(0 to 3);
    signal stage_1_lane_mask_1_c           : std_logic_vector(0 to 1);
    signal stage_1_count_value_1_c         : std_logic_vector(0 to 3);
signal stage_1_lane_mask_r             : std_logic_vector(0 to 1);
    signal stage_1_count_value_r           : std_logic_vector(0 to 3);
    signal load_ufc_control_code_r         : std_logic;
signal rx_data_v_r                     : std_logic_vector(0 to 1);
signal rx_suf_r                        : std_logic_vector(0 to 1);
signal rx_pad_r                        : std_logic_vector(0 to 1);
signal rx_pe_data_r                    : std_logic_vector(0 to 31);
signal rx_scp_r                        : std_logic_vector(0 to 1);
signal rx_ecp_r                        : std_logic_vector(0 to 1);
    signal stage_2_count_value_r           : std_logic_vector(0 to 3);
signal stage_2_lane_mask_c             : std_logic_vector(0 to 1);
    signal stage_2_count_value_c           : std_logic_vector(0 to 3);
    signal save_start_r                    : std_logic;

begin

    PDU_DATA          <= PDU_DATA_Buffer;
    PDU_DATA_V        <= PDU_DATA_V_Buffer;
    PDU_PAD           <= PDU_PAD_Buffer;
    PDU_SCP           <= PDU_SCP_Buffer;
    PDU_ECP           <= PDU_ECP_Buffer;
    UFC_DATA          <= UFC_DATA_Buffer;
    UFC_DATA_V        <= UFC_DATA_V_Buffer;
    UFC_MESSAGE_START <= UFC_MESSAGE_START_Buffer;
    UFC_START         <= UFC_START_Buffer;

-- Main Body of Code --

    -- Stage 1 --

    -- Decode a lane mask value for each lane.  The lane mask indicates which lanes in the
    -- current cycle contain UFC data.

    -- Lane mask for lane 0.

    process (RX_FC_NB(0 to 2))

    begin

        case RX_FC_NB(0 to 2) is

            when "000" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "001" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "010" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "011" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "100" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "101" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "110" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when "111" =>

stage_1_lane_mask_0_c <= conv_std_logic_vector(1,2);

            when others =>

                stage_1_lane_mask_0_c <= (others => '0');

        end case;

    end process;


    -- Lane mask for lane 1.

    process (RX_FC_NB(4 to 6))

    begin

        case RX_FC_NB(4 to 6) is

            when "000" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "001" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "010" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "011" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "100" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "101" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "110" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when "111" =>

stage_1_lane_mask_1_c <= conv_std_logic_vector(0,2);

            when others =>

                stage_1_lane_mask_1_c <= (others => '0');

        end case;

    end process;


    -- Decode a count value for each lane.  The count value indicates the number of lanes in
    -- the cycles that will follow will contain UFC data, based on the current FC_NB value
    -- and its lane position.

    -- Count value for lane 0.

    process (RX_FC_NB(0 to 2))

    begin

        case RX_FC_NB(0 to 2) is

            when "000" =>

stage_1_count_value_0_c <= conv_std_logic_vector(0,4);

            when "001" =>

stage_1_count_value_0_c <= conv_std_logic_vector(1,4);

            when "010" =>

stage_1_count_value_0_c <= conv_std_logic_vector(2,4);

            when "011" =>

stage_1_count_value_0_c <= conv_std_logic_vector(3,4);

            when "100" =>

stage_1_count_value_0_c <= conv_std_logic_vector(4,4);

            when "101" =>

stage_1_count_value_0_c <= conv_std_logic_vector(5,4);

            when "110" =>

stage_1_count_value_0_c <= conv_std_logic_vector(6,4);

            when "111" =>

stage_1_count_value_0_c <= conv_std_logic_vector(7,4);

            when others =>

                stage_1_count_value_0_c <= "0000";

        end case;

    end process;


    -- Count value for lane 1.

    process (RX_FC_NB(4 to 6))

    begin

        case RX_FC_NB(4 to 6) is

            when "000" =>

stage_1_count_value_1_c <= conv_std_logic_vector(1,4);

            when "001" =>

stage_1_count_value_1_c <= conv_std_logic_vector(2,4);

            when "010" =>

stage_1_count_value_1_c <= conv_std_logic_vector(3,4);

            when "011" =>

stage_1_count_value_1_c <= conv_std_logic_vector(4,4);

            when "100" =>

stage_1_count_value_1_c <= conv_std_logic_vector(5,4);

            when "101" =>

stage_1_count_value_1_c <= conv_std_logic_vector(6,4);

            when "110" =>

stage_1_count_value_1_c <= conv_std_logic_vector(7,4);

            when "111" =>

stage_1_count_value_1_c <= conv_std_logic_vector(8,4);

            when others =>

                stage_1_count_value_1_c <= "0000";

        end case;

    end process;


    -- Select and store the lane mask from the lane that contained the UFC message header.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                stage_1_lane_mask_r <= (others => '0') after DLY;

            else

                if (RX_SUF(0) = '1') then

                    stage_1_lane_mask_r <= stage_1_lane_mask_0_c after DLY;

                elsif (RX_SUF(1) = '1') then

                    stage_1_lane_mask_r <= stage_1_lane_mask_1_c after DLY;

                else

                    stage_1_lane_mask_r <= (others => '0') after DLY;

                end if;

            end if;

        end if;

    end process;


    -- Select and store the count value from the lane that contained the UFC message header.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                stage_1_count_value_r <= "0000" after DLY;

            else

                if (RX_SUF(1) = '1') then

                    stage_1_count_value_r <= stage_1_count_value_1_c after DLY;

                elsif (RX_SUF(0) = '1') then

                    stage_1_count_value_r <= stage_1_count_value_0_c after DLY;

                else

                    stage_1_count_value_r <= "0000" after DLY;

                end if;

            end if;

        end if;

    end process;


    -- Register a load flag if any of the SUF flags are high.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                load_ufc_control_code_r <= '0' after DLY;

            else

if (RX_SUF /= "00") then

                    load_ufc_control_code_r <= '1' after DLY;

                else

                    load_ufc_control_code_r <= '0' after DLY;

                end if;

            end if;

        end if;

    end process;


    -- Pipeline the data valid signal and the RX_SUF signal: they need reset.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                rx_data_v_r <= (others => '0') after DLY;
                rx_suf_r    <= (others => '0') after DLY;

            else

                rx_data_v_r <= RX_PE_DATA_V after DLY;
                rx_suf_r    <= RX_SUF after DLY;

            end if;

        end if;

    end process;


    -- Pipeline the remaining signals.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            rx_pad_r     <= RX_PAD after DLY;
            rx_pe_data_r <= RX_PE_DATA after DLY;
            rx_scp_r     <= RX_SCP after DLY;
            rx_ecp_r     <= RX_ECP after DLY;

        end if;

    end process;


    -- Stage 2 --

    -- If a new message was started in the previous cycle, load the new message size value into a
    -- counter.  Otherwise, continue to process the previous count.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                stage_2_count_value_r <= "0000" after DLY;

            else

                if (load_ufc_control_code_r = '1') then

                    stage_2_count_value_r <= stage_1_count_value_r after DLY;

                else

                    stage_2_count_value_r <= stage_2_count_value_c after DLY;

                end if;

            end if;

        end if;

    end process;


    -- Generate a lane mask based on previous count.

    process (stage_2_count_value_r)

    begin

        case stage_2_count_value_r is

            when "0001" =>

stage_2_lane_mask_c <= conv_std_logic_vector(2,2);

            when "0010" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "0011" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "0100" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "0101" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "0110" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "0111" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when "1000" =>

stage_2_lane_mask_c <= conv_std_logic_vector(3,2);

            when others =>

                stage_2_lane_mask_c <= (others => '0');

        end case;

    end process;


    -- Generate a new lane count based on previous count.

    process (stage_2_count_value_r)

    begin

        case stage_2_count_value_r is

            when "0001" =>

stage_2_count_value_c <= conv_std_logic_vector(0,4);

            when "0010" =>

stage_2_count_value_c <= conv_std_logic_vector(0,4);

            when "0011" =>

stage_2_count_value_c <= conv_std_logic_vector(1,4);

            when "0100" =>

stage_2_count_value_c <= conv_std_logic_vector(2,4);

            when "0101" =>

stage_2_count_value_c <= conv_std_logic_vector(3,4);

            when "0110" =>

stage_2_count_value_c <= conv_std_logic_vector(4,4);

            when "0111" =>

stage_2_count_value_c <= conv_std_logic_vector(5,4);

            when "1000" =>

stage_2_count_value_c <= conv_std_logic_vector(6,4);

            when others =>

                stage_2_count_value_c <= "0000";

        end case;

    end process;


    -- For each lane, mask the valid bit based on the incoming valid signal and the stage 1 and stage 2 lane masks.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                PDU_DATA_V_Buffer <= (others => '0') after DLY;

            else

                PDU_DATA_V_Buffer <= rx_data_v_r and (not stage_1_lane_mask_r and not stage_2_lane_mask_c) after DLY;

            end if;

        end if;

    end process;


    -- For each lane, the lane mask serves as a data valid signal for the UFC data.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                UFC_DATA_V_Buffer <= (others => '0') after DLY;

            else

                UFC_DATA_V_Buffer <= stage_1_lane_mask_r or stage_2_lane_mask_c after DLY;

            end if;

        end if;

    end process;


    -- Save start signals from ufc headers that appeared at the end of previous cycles.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                save_start_r <= '0' after DLY;

            else

                save_start_r <= rx_suf_r(1) after DLY;

            end if;

        end if;

    end process;


    -- Generate the UFC_MESSAGE_START and the UFC_START signals

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            if (RESET = '1') then

                UFC_MESSAGE_START_Buffer <= (others => '0') after DLY;
                UFC_START_Buffer         <= '0' after DLY;

            else

                UFC_MESSAGE_START_Buffer <= rx_suf_r after DLY;

if (rx_suf_r(0 to 0) & save_start_r /= "00") then

                    UFC_START_Buffer <= '1' after DLY;

                else

                    UFC_START_Buffer <= '0' after DLY;

                end if;

            end if;

        end if;

    end process;


    -- Pipeline the remaining signals.

    process (USER_CLK)

    begin

        if (USER_CLK 'event and USER_CLK = '1') then

            PDU_PAD_Buffer  <= rx_pad_r after DLY;
            PDU_DATA_Buffer <= rx_pe_data_r after DLY;
            UFC_DATA_Buffer <= rx_pe_data_r after DLY;
            PDU_SCP_Buffer  <= rx_scp_r after DLY;
            PDU_ECP_Buffer  <= rx_ecp_r after DLY;

        end if;

    end process;

end RTL;
