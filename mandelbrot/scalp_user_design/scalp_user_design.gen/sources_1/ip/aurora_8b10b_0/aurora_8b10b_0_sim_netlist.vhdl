-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Tue Apr 14 19:13:21 2026
-- Host        : LAPTOP-E00F6MUN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/MA_LPSC/lpsc-malla-nicoloso/mandelbrot/scalp_user_design/scalp_user_design.gen/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_sim_netlist.vhdl
-- Design      : aurora_8b10b_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_AXI_TO_LL is
  port (
    new_pkt_r_reg_0 : out STD_LOGIC;
    new_pkt_r : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0_AXI_TO_LL;

architecture STRUCTURE of aurora_8b10b_0_AXI_TO_LL is
begin
new_pkt_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => new_pkt_r,
      Q => new_pkt_r_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_CHANNEL_ERR_DETECT is
  port (
    HARD_ERR : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    SOFT_ERR : out STD_LOGIC;
    hard_err_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    LANE_UP : in STD_LOGIC;
    soft_err_flop_r0 : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC
  );
end aurora_8b10b_0_CHANNEL_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_0_CHANNEL_ERR_DETECT is
  signal RESET_CHANNEL_Buffer_i_1_n_0 : STD_LOGIC;
  signal hard_err_r : STD_LOGIC;
  signal lane_up_r : STD_LOGIC;
  signal soft_err_r_reg_srl3_n_0 : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of soft_err_r_reg_srl3 : label is "U0/\global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 ";
begin
CHANNEL_HARD_ERR_Buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => hard_err_r,
      Q => HARD_ERR,
      R => '0'
    );
CHANNEL_SOFT_ERR_Buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => soft_err_r_reg_srl3_n_0,
      Q => SOFT_ERR,
      R => '0'
    );
RESET_CHANNEL_Buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => POWER_DOWN,
      I1 => lane_up_r,
      O => RESET_CHANNEL_Buffer_i_1_n_0
    );
RESET_CHANNEL_Buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => RESET_CHANNEL_Buffer_i_1_n_0,
      Q => reset_channel_i,
      R => '0'
    );
hard_err_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => hard_err_i,
      Q => hard_err_r,
      R => '0'
    );
lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => LANE_UP,
      Q => lane_up_r,
      R => '0'
    );
soft_err_r_reg_srl3: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => soft_err_flop_r0,
      Q => soft_err_r_reg_srl3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_CHANNEL_INIT_SM is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_ver_i : out STD_LOGIC;
    CHANNEL_UP : out STD_LOGIC;
    start_rx_i : out STD_LOGIC;
    gtrxreset_i : out STD_LOGIC;
    begin_r0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    D1_out : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    \gtrxreset_extend_r_reg[0]_0\ : in STD_LOGIC;
    \txver_count_r_reg[7]_0\ : in STD_LOGIC;
    hard_err_reset_i : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC;
    did_ver_i : in STD_LOGIC
  );
end aurora_8b10b_0_CHANNEL_INIT_SM;

architecture STRUCTURE of aurora_8b10b_0_CHANNEL_INIT_SM is
  signal \^channel_up\ : STD_LOGIC;
  signal D : STD_LOGIC;
  signal GTRXRESET_OUT_i_1_n_0 : STD_LOGIC;
  signal GTRXRESET_OUT_i_2_n_0 : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal START_RX_Buffer0 : STD_LOGIC;
  signal all_lanes_v_r : STD_LOGIC;
  signal bad_v_r : STD_LOGIC;
  signal bad_v_r0 : STD_LOGIC;
  signal \free_count_r[13]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_5_n_0\ : STD_LOGIC;
  signal free_count_r_reg : STD_LOGIC_VECTOR ( 0 to 13 );
  signal \free_count_r_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \^gen_ver_i\ : STD_LOGIC;
  signal got_first_v_r : STD_LOGIC;
  signal got_first_v_r_i_1_n_0 : STD_LOGIC;
  signal gtrxreset_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_3_in : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal ready_r2 : STD_LOGIC;
  signal rxver_count_r0 : STD_LOGIC;
  signal \rxver_count_r_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \rxver_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \txver_count_r_reg[6]_srl7_n_0\ : STD_LOGIC;
  signal \txver_count_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_count_r_reg[30]_srl31_n_0\ : STD_LOGIC;
  signal \v_count_r_reg_n_0_[31]\ : STD_LOGIC;
  signal verify_watchdog_r0 : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_2_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_3_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg_n_0_[15]\ : STD_LOGIC;
  signal wait_for_lane_up_r : STD_LOGIC;
  signal \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \free_count_r_reg[13]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \free_count_r_reg[1]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \free_count_r_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \free_count_r_reg[9]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gen_v_flop_0_i_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of got_first_v_r_i_1 : label is "soft_lutpair28";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtreset_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gtreset_flop_0_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of gtreset_flop_0_i : label is "VCC:CE GND:R";
  attribute SOFT_HLUTNM of gtreset_flop_0_i_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ready_r_i_1__0\ : label is "soft_lutpair30";
  attribute BOX_TYPE of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of reset_lanes_flop_i : label is "VCC:CE GND:R";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rxver_count_r_reg[1]_srl2\ : label is "U0/\global_logic_i/channel_init_sm_i/rxver_count_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \rxver_count_r_reg[1]_srl2\ : label is "U0/\global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 ";
  attribute srl_bus_name of \txver_count_r_reg[6]_srl7\ : label is "U0/\global_logic_i/channel_init_sm_i/txver_count_r_reg ";
  attribute srl_name of \txver_count_r_reg[6]_srl7\ : label is "U0/\global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 ";
  attribute srl_bus_name of \v_count_r_reg[30]_srl31\ : label is "U0/\global_logic_i/channel_init_sm_i/v_count_r_reg ";
  attribute srl_name of \v_count_r_reg[30]_srl31\ : label is "U0/\global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 ";
  attribute SOFT_HLUTNM of \v_count_r_reg[30]_srl31_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of verify_r_i_2 : label is "soft_lutpair30";
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "U0/\global_logic_i/channel_init_sm_i/verify_watchdog_r_reg ";
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "U0/\global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  CHANNEL_UP <= \^channel_up\;
  SR(0) <= \^sr\(0);
  gen_ver_i <= \^gen_ver_i\;
CHANNEL_UP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ready_r2,
      Q => \^channel_up\,
      R => '0'
    );
GTRXRESET_OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gtrxreset_extend_r(2),
      I1 => gtrxreset_extend_r(3),
      I2 => gtrxreset_extend_r(0),
      I3 => gtrxreset_extend_r(1),
      I4 => GTRXRESET_OUT_i_2_n_0,
      O => GTRXRESET_OUT_i_1_n_0
    );
GTRXRESET_OUT_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gtrxreset_extend_r(5),
      I1 => gtrxreset_extend_r(4),
      I2 => gtrxreset_extend_r(7),
      I3 => gtrxreset_extend_r(6),
      O => GTRXRESET_OUT_i_2_n_0
    );
GTRXRESET_OUT_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GTRXRESET_OUT_i_1_n_0,
      Q => gtrxreset_i,
      R => '0'
    );
START_RX_Buffer_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_for_lane_up_r,
      O => START_RX_Buffer0
    );
START_RX_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => START_RX_Buffer0,
      Q => start_rx_i,
      R => \gtrxreset_extend_r_reg[0]_0\
    );
align_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => hard_err_reset_i,
      O => begin_r0
    );
all_lanes_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => got_v_i,
      Q => all_lanes_v_r,
      R => '0'
    );
bad_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => all_lanes_v_r,
      I1 => got_first_v_r,
      I2 => \v_count_r_reg_n_0_[31]\,
      O => bad_v_r0
    );
bad_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => bad_v_r0,
      Q => bad_v_r,
      R => '0'
    );
data_eof_1_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^channel_up\,
      O => p_0_in
    );
\free_count_r[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(10),
      O => \free_count_r[13]_i_2_n_0\
    );
\free_count_r[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(11),
      O => \free_count_r[13]_i_3_n_0\
    );
\free_count_r[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(12),
      O => \free_count_r[13]_i_4_n_0\
    );
\free_count_r[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(13),
      O => \free_count_r[13]_i_5_n_0\
    );
\free_count_r[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(0),
      O => \free_count_r[1]_i_2_n_0\
    );
\free_count_r[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(1),
      O => \free_count_r[1]_i_3_n_0\
    );
\free_count_r[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(2),
      O => \free_count_r[5]_i_2_n_0\
    );
\free_count_r[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(3),
      O => \free_count_r[5]_i_3_n_0\
    );
\free_count_r[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(4),
      O => \free_count_r[5]_i_4_n_0\
    );
\free_count_r[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(5),
      O => \free_count_r[5]_i_5_n_0\
    );
\free_count_r[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(6),
      O => \free_count_r[9]_i_2_n_0\
    );
\free_count_r[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(7),
      O => \free_count_r[9]_i_3_n_0\
    );
\free_count_r[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(8),
      O => \free_count_r[9]_i_4_n_0\
    );
\free_count_r[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(9),
      O => \free_count_r[9]_i_5_n_0\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_6\,
      Q => free_count_r_reg(0),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_4\,
      Q => free_count_r_reg(10),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_5\,
      Q => free_count_r_reg(11),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_6\,
      Q => free_count_r_reg(12),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_7\,
      Q => free_count_r_reg(13),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_count_r_reg[13]_i_1_n_0\,
      CO(2) => \free_count_r_reg[13]_i_1_n_1\,
      CO(1) => \free_count_r_reg[13]_i_1_n_2\,
      CO(0) => \free_count_r_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[13]_i_1_n_4\,
      O(2) => \free_count_r_reg[13]_i_1_n_5\,
      O(1) => \free_count_r_reg[13]_i_1_n_6\,
      O(0) => \free_count_r_reg[13]_i_1_n_7\,
      S(3) => \free_count_r[13]_i_2_n_0\,
      S(2) => \free_count_r[13]_i_3_n_0\,
      S(1) => \free_count_r[13]_i_4_n_0\,
      S(0) => \free_count_r[13]_i_5_n_0\
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_7\,
      Q => free_count_r_reg(1),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \free_count_r_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \free_count_r_reg[1]_i_1_n_6\,
      O(0) => \free_count_r_reg[1]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \free_count_r[1]_i_2_n_0\,
      S(0) => \free_count_r[1]_i_3_n_0\
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_4\,
      Q => free_count_r_reg(2),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_5\,
      Q => free_count_r_reg(3),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_6\,
      Q => free_count_r_reg(4),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_7\,
      Q => free_count_r_reg(5),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[9]_i_1_n_0\,
      CO(3) => \free_count_r_reg[5]_i_1_n_0\,
      CO(2) => \free_count_r_reg[5]_i_1_n_1\,
      CO(1) => \free_count_r_reg[5]_i_1_n_2\,
      CO(0) => \free_count_r_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[5]_i_1_n_4\,
      O(2) => \free_count_r_reg[5]_i_1_n_5\,
      O(1) => \free_count_r_reg[5]_i_1_n_6\,
      O(0) => \free_count_r_reg[5]_i_1_n_7\,
      S(3) => \free_count_r[5]_i_2_n_0\,
      S(2) => \free_count_r[5]_i_3_n_0\,
      S(1) => \free_count_r[5]_i_4_n_0\,
      S(0) => \free_count_r[5]_i_5_n_0\
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_4\,
      Q => free_count_r_reg(6),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_5\,
      Q => free_count_r_reg(7),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_6\,
      Q => free_count_r_reg(8),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_7\,
      Q => free_count_r_reg(9),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[13]_i_1_n_0\,
      CO(3) => \free_count_r_reg[9]_i_1_n_0\,
      CO(2) => \free_count_r_reg[9]_i_1_n_1\,
      CO(1) => \free_count_r_reg[9]_i_1_n_2\,
      CO(0) => \free_count_r_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[9]_i_1_n_4\,
      O(2) => \free_count_r_reg[9]_i_1_n_5\,
      O(1) => \free_count_r_reg[9]_i_1_n_6\,
      O(0) => \free_count_r_reg[9]_i_1_n_7\,
      S(3) => \free_count_r[9]_i_2_n_0\,
      S(2) => \free_count_r[9]_i_3_n_0\,
      S(1) => \free_count_r[9]_i_4_n_0\,
      S(0) => \free_count_r[9]_i_5_n_0\
    );
gen_v_flop_0_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => did_ver_i,
      O => D1_out
    );
got_first_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => got_first_v_r,
      I2 => all_lanes_v_r,
      O => got_first_v_r_i_1_n_0
    );
got_first_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => got_first_v_r_i_1_n_0,
      Q => got_first_v_r,
      R => '0'
    );
gtreset_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_3_in,
      Q => Q,
      R => '0'
    );
gtreset_flop_0_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \verify_watchdog_r_reg_n_0_[15]\,
      I1 => bad_v_r,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => \^gen_ver_i\,
      O => p_3_in
    );
\gtrxreset_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(1),
      Q => gtrxreset_extend_r(0),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(2),
      Q => gtrxreset_extend_r(1),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(3),
      Q => gtrxreset_extend_r(2),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(4),
      Q => gtrxreset_extend_r(3),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(5),
      Q => gtrxreset_extend_r(4),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(6),
      Q => gtrxreset_extend_r(5),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(7),
      Q => gtrxreset_extend_r(6),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
\gtrxreset_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => Q,
      Q => gtrxreset_extend_r(7),
      R => \gtrxreset_extend_r_reg[0]_0\
    );
ready_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ready_r,
      Q => ready_r2,
      R => '0'
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \txver_count_r_reg_n_0_[7]\,
      I1 => \rxver_count_r_reg_n_0_[2]\,
      I2 => \^gen_ver_i\,
      I3 => ready_r,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => ready_r,
      R => wait_for_lane_up_r0
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => \^sr\(0),
      R => '0'
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \gtrxreset_extend_r_reg[0]_0\,
      I1 => reset_channel_i,
      I2 => wait_for_lane_up_r,
      I3 => p_3_in,
      O => D
    );
\rxver_count_r_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => rxver_count_r0,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \rxver_count_r_reg[1]_srl2_n_0\
    );
\rxver_count_r_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \v_count_r_reg_n_0_[31]\,
      I1 => all_lanes_v_r,
      I2 => \^gen_ver_i\,
      O => rxver_count_r0
    );
\rxver_count_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => rxver_count_r0,
      D => \rxver_count_r_reg[1]_srl2_n_0\,
      Q => \rxver_count_r_reg_n_0_[2]\,
      R => '0'
    );
\txver_count_r_reg[6]_srl7\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => \txver_count_r_reg[7]_0\,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \txver_count_r_reg[6]_srl7_n_0\
    );
\txver_count_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \txver_count_r_reg[7]_0\,
      D => \txver_count_r_reg[6]_srl7_n_0\,
      Q => \txver_count_r_reg_n_0_[7]\,
      R => '0'
    );
\v_count_r_reg[30]_srl31\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => user_clk,
      D => p_2_out(31),
      Q => \v_count_r_reg[30]_srl31_n_0\,
      Q31 => \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\
    );
\v_count_r_reg[30]_srl31_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => got_first_v_r,
      I1 => all_lanes_v_r,
      I2 => \^gen_ver_i\,
      I3 => \v_count_r_reg_n_0_[31]\,
      O => p_2_out(31)
    );
\v_count_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \v_count_r_reg[30]_srl31_n_0\,
      Q => \v_count_r_reg_n_0_[31]\,
      R => '0'
    );
verify_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => \txver_count_r_reg_n_0_[7]\,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => wait_for_lane_up_r,
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => wait_for_lane_up_r0
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => verify_watchdog_r0,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \verify_watchdog_r_reg[14]_srl15_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0200FFFF"
    )
        port map (
      I0 => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\,
      I1 => free_count_r_reg(12),
      I2 => free_count_r_reg(13),
      I3 => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\,
      I4 => \^gen_ver_i\,
      O => verify_watchdog_r0
    );
\verify_watchdog_r_reg[14]_srl15_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => free_count_r_reg(9),
      I1 => free_count_r_reg(8),
      I2 => free_count_r_reg(11),
      I3 => free_count_r_reg(10),
      I4 => free_count_r_reg(6),
      I5 => free_count_r_reg(7),
      O => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => free_count_r_reg(3),
      I1 => free_count_r_reg(2),
      I2 => free_count_r_reg(5),
      I3 => free_count_r_reg(4),
      I4 => free_count_r_reg(0),
      I5 => free_count_r_reg(1),
      O => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => verify_watchdog_r0,
      D => \verify_watchdog_r_reg[14]_srl15_n_0\,
      Q => \verify_watchdog_r_reg_n_0_[15]\,
      R => '0'
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => wait_for_lane_up_r0,
      Q => wait_for_lane_up_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_ERR_DETECT is
  port (
    hard_err_reset_i : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    soft_err_flop_r0 : out STD_LOGIC;
    bucket_full_r_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    \soft_err_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    enable_err_detect_i : in STD_LOGIC
  );
end aurora_8b10b_0_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_0_ERR_DETECT is
  signal bucket_full_r_i_1_n_0 : STD_LOGIC;
  signal \count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \good_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \good_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \good_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \^hard_err_reset_i\ : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal soft_err_r : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \soft_err_r_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \good_count_r[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \good_count_r[1]_i_1\ : label is "soft_lutpair0";
begin
  hard_err_reset_i <= \^hard_err_reset_i\;
HARD_ERR_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \^hard_err_reset_i\,
      Q => hard_err_i,
      R => SR
    );
bucket_full_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C080C880C880C080"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => p_0_in1_in,
      I2 => soft_err_r(1),
      I3 => \soft_err_r_reg_n_0_[1]\,
      I4 => \good_count_r_reg_n_0_[1]\,
      I5 => p_0_in12_in,
      O => bucket_full_r_i_1_n_0
    );
bucket_full_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => bucket_full_r_i_1_n_0,
      Q => bucket_full_r_reg_0,
      R => SR
    );
\count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEECE8CFFEEEE8C"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => p_0_in1_in,
      I2 => p_0_in12_in,
      I3 => \soft_err_r_reg_n_0_[1]\,
      I4 => soft_err_r(1),
      I5 => \good_count_r_reg_n_0_[1]\,
      O => \count_r[0]_i_1_n_0\
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDAD4AEEDDDD4A"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => p_0_in1_in,
      I2 => p_0_in12_in,
      I3 => \soft_err_r_reg_n_0_[1]\,
      I4 => soft_err_r(1),
      I5 => \good_count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \count_r[0]_i_1_n_0\,
      Q => p_0_in1_in,
      R => SR
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \count_r[1]_i_1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => SR
    );
\good_count_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in12_in,
      I1 => \soft_err_r_reg_n_0_[1]\,
      I2 => soft_err_r(1),
      I3 => enable_err_detect_i,
      O => \good_count_r[0]_i_1_n_0\
    );
\good_count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3200"
    )
        port map (
      I0 => \good_count_r_reg_n_0_[1]\,
      I1 => \soft_err_r_reg_n_0_[1]\,
      I2 => soft_err_r(1),
      I3 => enable_err_detect_i,
      O => \good_count_r[1]_i_1_n_0\
    );
\good_count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \good_count_r[0]_i_1_n_0\,
      Q => p_0_in12_in,
      R => '0'
    );
\good_count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \good_count_r[1]_i_1_n_0\,
      Q => \good_count_r_reg_n_0_[1]\,
      R => '0'
    );
hard_err_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => hard_err_flop_r0,
      Q => \^hard_err_reset_i\,
      R => SR
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(1),
      Q => soft_err_r(1),
      R => SR
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(0),
      Q => \soft_err_r_reg_n_0_[1]\,
      R => SR
    );
soft_err_r_reg_srl3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => soft_err_r(1),
      I1 => \soft_err_r_reg_n_0_[1]\,
      O => soft_err_flop_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_IDLE_AND_VER_GEN is
  port (
    gen_v_flop_0_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    gen_k_flop_0_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_r_flop_0_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    did_ver_i : out STD_LOGIC;
    gen_ver_word_2_r_reg_0 : out STD_LOGIC;
    lfsr_taps_i_0 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    D1_out : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC
  );
end aurora_8b10b_0_IDLE_AND_VER_GEN;

architecture STRUCTURE of aurora_8b10b_0_IDLE_AND_VER_GEN is
  signal D : STD_LOGIC;
  signal D0_out : STD_LOGIC;
  signal D2_out : STD_LOGIC;
  signal \^did_ver_i\ : STD_LOGIC;
  signal \downcounter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[3]\ : STD_LOGIC;
  signal gen_k_flop_0_i_i_1_n_0 : STD_LOGIC;
  signal gen_r_flop_0_i_i_1_n_0 : STD_LOGIC;
  signal gen_r_flop_1_i_i_1_n_0 : STD_LOGIC;
  signal gen_v_flop_1_i_i_1_n_0 : STD_LOGIC;
  signal lfsr_last_flop_r : STD_LOGIC;
  signal \lfsr_shift_register_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal lfsr_taps_i_i_1_n_0 : STD_LOGIC;
  signal lfsr_taps_r : STD_LOGIC;
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal ver_counter_r_0 : STD_LOGIC;
  signal ver_counter_r_1 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of gen_a_flop_0_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_k_flop_0_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_k_flop_1_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_r_flop_0_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_r_flop_1_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_v_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_0_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_v_flop_0_i : label is "VCC:CE GND:R";
  attribute BOX_TYPE of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of gen_v_flop_1_i : label is "VCC:CE GND:R";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gen_v_flop_1_i_i_1 : label is "soft_lutpair31";
  attribute BOX_TYPE of lfsr_last_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_last_flop_i : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of lfsr_last_flop_i : label is "VCC:CE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "U0/\global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "U0/\global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 ";
  attribute BOX_TYPE of lfsr_taps_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_taps_i : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of lfsr_taps_i : label is "VCC:CE";
  attribute BOX_TYPE of ver_counter_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_0_i : label is "SRL16";
  attribute XILINX_TRANSFORM_PINMAP of ver_counter_0_i : label is "VCC:CE";
  attribute srl_name of ver_counter_0_i : label is "U0/\global_logic_i/idle_and_ver_gen_i/ver_counter_0_i ";
  attribute SOFT_HLUTNM of ver_counter_0_i_i_1 : label is "soft_lutpair31";
  attribute BOX_TYPE of ver_counter_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_1_i : label is "SRL16";
  attribute XILINX_TRANSFORM_PINMAP of ver_counter_1_i : label is "VCC:CE";
  attribute srl_name of ver_counter_1_i : label is "U0/\global_logic_i/idle_and_ver_gen_i/ver_counter_1_i ";
begin
  did_ver_i <= \^did_ver_i\;
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444441"
    )
        port map (
      I0 => lfsr_taps_i_0,
      I1 => \downcounter_r_reg_n_0_[0]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[3]\,
      O => \downcounter_r[0]_i_1_n_0\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E1E1E1E0"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[2]\,
      I1 => \downcounter_r_reg_n_0_[3]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => lfsr_taps_r,
      I4 => \downcounter_r_reg_n_0_[0]\,
      I5 => lfsr_taps_i_0,
      O => \downcounter_r[1]_i_1_n_0\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0000FE"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => D,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[3]\,
      I5 => lfsr_taps_i_0,
      O => \downcounter_r[2]_i_1_n_0\
    );
\downcounter_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => lfsr_taps_i_0,
      I1 => \downcounter_r_reg_n_0_[3]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      I4 => \downcounter_r_reg_n_0_[2]\,
      I5 => lfsr_last_flop_r,
      O => \downcounter_r[3]_i_1_n_0\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[0]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[0]\,
      R => '0'
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[1]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[1]\,
      R => '0'
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[2]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[2]\,
      R => '0'
    );
\downcounter_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \downcounter_r[3]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[3]\,
      R => '0'
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D2_out,
      Q => gen_a_i,
      R => '0'
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[3]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      I4 => ver_counter_r_0,
      O => D2_out
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_k_flop_0_i_i_1_n_0,
      Q => gen_k_flop_0_i_0(1),
      R => '0'
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => lfsr_taps_r,
      I1 => \downcounter_r_reg_n_0_[0]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[3]\,
      I5 => ver_counter_r_0,
      O => gen_k_flop_0_i_i_1_n_0
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => gen_k_flop_0_i_0(0),
      R => '0'
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_0_i_i_1_n_0,
      Q => gen_r_flop_0_i_0(1),
      R => '0'
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => lfsr_taps_r,
      I1 => ver_counter_r_0,
      I2 => \downcounter_r_reg_n_0_[3]\,
      I3 => \downcounter_r_reg_n_0_[2]\,
      I4 => \downcounter_r_reg_n_0_[1]\,
      I5 => \downcounter_r_reg_n_0_[0]\,
      O => gen_r_flop_0_i_i_1_n_0
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_r_flop_1_i_i_1_n_0,
      Q => gen_r_flop_0_i_0(0),
      R => '0'
    );
gen_r_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D,
      O => gen_r_flop_1_i_i_1_n_0
    );
gen_v_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D1_out,
      Q => gen_v_flop_0_i_0(1),
      R => '0'
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gen_v_flop_1_i_i_1_n_0,
      Q => gen_v_flop_0_i_0(0),
      R => '0'
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => ver_counter_r_0,
      I1 => \^did_ver_i\,
      I2 => gen_ver_i,
      O => gen_v_flop_1_i_i_1_n_0
    );
gen_ver_word_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ver_counter_r_0,
      Q => \^did_ver_i\,
      R => '0'
    );
lfsr_last_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D,
      Q => lfsr_last_flop_r,
      R => lfsr_taps_i_0
    );
\lfsr_shift_register_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => lfsr_taps_r,
      Q => \lfsr_shift_register_r_reg[2]_srl3_n_0\
    );
\lfsr_shift_register_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \lfsr_shift_register_r_reg[2]_srl3_n_0\,
      Q => D,
      R => '0'
    );
lfsr_taps_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => lfsr_taps_i_i_1_n_0,
      Q => lfsr_taps_r,
      R => lfsr_taps_i_0
    );
lfsr_taps_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => lfsr_last_flop_r,
      I1 => D,
      O => lfsr_taps_i_i_1_n_0
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => '0'
    );
\txver_count_r_reg[6]_srl7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^did_ver_i\,
      I1 => gen_ver_i,
      O => gen_ver_word_2_r_reg_0
    );
ver_counter_0_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => D0_out,
      Q => ver_counter_r_1
    );
ver_counter_0_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => prev_cycle_gen_ver_r,
      I1 => \^did_ver_i\,
      I2 => gen_ver_i,
      O => D0_out
    );
ver_counter_1_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => ver_counter_r_1,
      Q => ver_counter_r_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_LANE_INIT_SM is
  port (
    LANE_UP : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    align_r_reg_0 : out STD_LOGIC;
    ack_r : out STD_LOGIC;
    enable_err_detect_i : out STD_LOGIC;
    \counter2_r_reg[0]_0\ : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_k_i : out STD_LOGIC;
    ack_r_reg_0 : out STD_LOGIC;
    ENABLE_ERR_DETECT_Buffer_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    begin_r0 : in STD_LOGIC;
    counter4_r0 : in STD_LOGIC;
    \counter3_r_reg[3]_0\ : in STD_LOGIC;
    RX_NEG_Buffer : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    RXDISPERR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXNOTINTABLE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_CHAR_IS_COMMA_R_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0_LANE_INIT_SM;

architecture STRUCTURE of aurora_8b10b_0_LANE_INIT_SM is
  signal \^d_0\ : STD_LOGIC;
  signal ENABLE_ERR_DETECT_Buffer0 : STD_LOGIC;
  signal RX_CHAR_IS_COMMA_R : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ack_r\ : STD_LOGIC;
  signal ack_r_i_2_n_0 : STD_LOGIC;
  signal \^align_r_reg_0\ : STD_LOGIC;
  signal begin_r : STD_LOGIC;
  signal begin_r_i_2_n_0 : STD_LOGIC;
  signal comma_over_two_cycles_r : STD_LOGIC;
  signal comma_over_two_cycles_r0 : STD_LOGIC;
  signal counter1_r0 : STD_LOGIC;
  signal \counter1_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \^counter2_r_reg[0]_0\ : STD_LOGIC;
  signal \counter2_r_reg[14]_srl14_n_0\ : STD_LOGIC;
  signal \counter2_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter3_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \counter3_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter4_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter4_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter5_r_reg[14]_srl15_i_1_n_0\ : STD_LOGIC;
  signal \counter5_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter5_r_reg_n_0_[15]\ : STD_LOGIC;
  signal do_watchdog_count_r : STD_LOGIC;
  signal do_watchdog_count_r0 : STD_LOGIC;
  signal \^enable_err_detect_i\ : STD_LOGIC;
  signal inc_count_c : STD_LOGIC;
  signal inc_count_c1 : STD_LOGIC;
  signal next_ack_c : STD_LOGIC;
  signal next_ack_c12_in : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_begin_c : STD_LOGIC;
  signal next_polarity_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_realign_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal odd_word_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal polarity_r : STD_LOGIC;
  signal prev_char_was_comma_r : STD_LOGIC;
  signal prev_count_128d_done_r : STD_LOGIC;
  signal realign_r : STD_LOGIC;
  signal reset_count_r : STD_LOGIC;
  signal reset_count_r0 : STD_LOGIC;
  signal reset_count_r_i_2_n_0 : STD_LOGIC;
  signal \^rx_polarity_i\ : STD_LOGIC;
  signal rx_polarity_r_i_1_n_0 : STD_LOGIC;
  signal std_bool : STD_LOGIC;
  signal std_bool0_in : STD_LOGIC;
  signal std_bool6_in : STD_LOGIC;
  signal tx_reset_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENABLE_ERR_DETECT_Buffer_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of comma_over_two_cycles_r_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter1_r[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter1_r[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter1_r[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter1_r[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter1_r[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1_r[6]_i_1\ : label is "soft_lutpair6";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \counter2_r_reg[14]_srl14\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter2_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \counter2_r_reg[14]_srl14\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 ";
  attribute srl_bus_name of \counter3_r_reg[2]_srl3\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter3_r_reg ";
  attribute srl_name of \counter3_r_reg[2]_srl3\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 ";
  attribute srl_bus_name of \counter4_r_reg[14]_srl15\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter4_r_reg ";
  attribute srl_name of \counter4_r_reg[14]_srl15\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter5_r_reg[14]_srl15\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter5_r_reg ";
  attribute srl_name of \counter5_r_reg[14]_srl15\ : label is "U0/\aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of gen_k_fsm_r_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_sp_data_r[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_sp_data_r[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_spa_data_r[0]_i_1\ : label is "soft_lutpair8";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of lane_up_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of lane_up_flop_i : label is "VCC:CE";
  attribute SOFT_HLUTNM of odd_word_r_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of prev_char_was_comma_r_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of reset_count_r_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rst_r_i_1 : label is "soft_lutpair1";
begin
  D_0 <= \^d_0\;
  ack_r <= \^ack_r\;
  align_r_reg_0 <= \^align_r_reg_0\;
  \counter2_r_reg[0]_0\ <= \^counter2_r_reg[0]_0\;
  enable_err_detect_i <= \^enable_err_detect_i\;
  rx_polarity_i <= \^rx_polarity_i\;
ENABLE_ERR_DETECT_Buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ack_r\,
      I1 => \^d_0\,
      O => ENABLE_ERR_DETECT_Buffer0
    );
ENABLE_ERR_DETECT_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => ENABLE_ERR_DETECT_Buffer0,
      Q => \^enable_err_detect_i\,
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \RX_CHAR_IS_COMMA_R_reg[1]_0\(0),
      Q => RX_CHAR_IS_COMMA_R(0),
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \RX_CHAR_IS_COMMA_R_reg[1]_0\(1),
      Q => RX_CHAR_IS_COMMA_R(1),
      R => '0'
    );
ack_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040404FF040404"
    )
        port map (
      I0 => RX_NEG_Buffer,
      I1 => polarity_r,
      I2 => odd_word_r,
      I3 => ack_r_i_2_n_0,
      I4 => \^ack_r\,
      I5 => \counter5_r_reg_n_0_[15]\,
      O => next_ack_c
    );
ack_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter2_r_reg_n_0_[15]\,
      I1 => \counter3_r_reg_n_0_[3]\,
      O => ack_r_i_2_n_0
    );
ack_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_ack_c,
      Q => \^ack_r\,
      R => begin_r0
    );
align_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => std_bool0_in,
      I1 => tx_reset_i,
      I2 => std_bool,
      I3 => \^align_r_reg_0\,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_align_c,
      Q => \^align_r_reg_0\,
      R => begin_r0
    );
begin_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => polarity_r,
      I1 => RX_NEG_Buffer,
      I2 => begin_r_i_2_n_0,
      O => next_begin_c
    );
begin_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \counter4_r_reg_n_0_[15]\,
      I1 => \^d_0\,
      I2 => \^ack_r\,
      I3 => \counter5_r_reg_n_0_[15]\,
      I4 => rx_realign_i,
      I5 => realign_r,
      O => begin_r_i_2_n_0
    );
begin_r_reg: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => next_begin_c,
      Q => begin_r,
      S => begin_r0
    );
comma_over_two_cycles_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56FF"
    )
        port map (
      I0 => prev_char_was_comma_r,
      I1 => RX_CHAR_IS_COMMA_R(0),
      I2 => RX_CHAR_IS_COMMA_R(1),
      I3 => \^align_r_reg_0\,
      O => comma_over_two_cycles_r0
    );
comma_over_two_cycles_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => comma_over_two_cycles_r0,
      Q => comma_over_two_cycles_r,
      R => '0'
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_count_r,
      I1 => \^d_0\,
      O => counter1_r0
    );
\counter1_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => RX_CHAR_IS_COMMA_R(1),
      I1 => RX_CHAR_IS_COMMA_R(0),
      I2 => \^align_r_reg_0\,
      O => inc_count_c
    );
\counter1_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[1]\,
      I1 => \counter1_r[0]_i_4_n_0\,
      I2 => std_bool,
      O => p_0_in(7)
    );
\counter1_r[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      I1 => \counter1_r_reg_n_0_[5]\,
      I2 => \counter1_r_reg_n_0_[7]\,
      I3 => \counter1_r_reg_n_0_[6]\,
      I4 => std_bool0_in,
      I5 => std_bool6_in,
      O => \counter1_r[0]_i_4_n_0\
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter1_r[0]_i_4_n_0\,
      I1 => \counter1_r_reg_n_0_[1]\,
      O => p_0_in(6)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      I1 => \counter1_r_reg_n_0_[5]\,
      I2 => \counter1_r_reg_n_0_[7]\,
      I3 => \counter1_r_reg_n_0_[6]\,
      I4 => std_bool0_in,
      I5 => std_bool6_in,
      O => p_0_in(5)
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => std_bool0_in,
      I1 => \counter1_r_reg_n_0_[6]\,
      I2 => \counter1_r_reg_n_0_[7]\,
      I3 => \counter1_r_reg_n_0_[5]\,
      I4 => \counter1_r_reg_n_0_[3]\,
      O => p_0_in(4)
    );
\counter1_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[5]\,
      I1 => \counter1_r_reg_n_0_[7]\,
      I2 => \counter1_r_reg_n_0_[6]\,
      I3 => std_bool0_in,
      O => p_0_in(3)
    );
\counter1_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[6]\,
      I1 => \counter1_r_reg_n_0_[7]\,
      I2 => \counter1_r_reg_n_0_[5]\,
      O => p_0_in(2)
    );
\counter1_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      O => p_0_in(1)
    );
\counter1_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      O => p_0_in(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(7),
      Q => std_bool,
      R => counter1_r0
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(6),
      Q => \counter1_r_reg_n_0_[1]\,
      R => counter1_r0
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(5),
      Q => std_bool6_in,
      R => counter1_r0
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(4),
      Q => \counter1_r_reg_n_0_[3]\,
      R => counter1_r0
    );
\counter1_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(3),
      Q => std_bool0_in,
      R => counter1_r0
    );
\counter1_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(2),
      Q => \counter1_r_reg_n_0_[5]\,
      R => counter1_r0
    );
\counter1_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(1),
      Q => \counter1_r_reg_n_0_[6]\,
      R => counter1_r0
    );
\counter1_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(0),
      Q => \counter1_r_reg_n_0_[7]\,
      S => counter1_r0
    );
\counter2_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \^ack_r\,
      Q => \^counter2_r_reg[0]_0\,
      R => '0'
    );
\counter2_r_reg[14]_srl14\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => \^counter2_r_reg[0]_0\,
      Q => \counter2_r_reg[14]_srl14_n_0\
    );
\counter2_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \counter2_r_reg[14]_srl14_n_0\,
      Q => \counter2_r_reg_n_0_[15]\,
      R => '0'
    );
\counter3_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \counter3_r_reg[3]_0\,
      CLK => user_clk,
      D => \^ack_r\,
      Q => \counter3_r_reg[2]_srl3_n_0\
    );
\counter3_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \counter3_r_reg[3]_0\,
      D => \counter3_r_reg[2]_srl3_n_0\,
      Q => \counter3_r_reg_n_0_[3]\,
      R => '0'
    );
\counter4_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter4_r0,
      CLK => user_clk,
      D => \^d_0\,
      Q => \counter4_r_reg[14]_srl15_n_0\
    );
\counter4_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => counter4_r0,
      D => \counter4_r_reg[14]_srl15_n_0\,
      Q => \counter4_r_reg_n_0_[15]\,
      R => '0'
    );
\counter5_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => \counter5_r_reg[14]_srl15_i_1_n_0\,
      CLK => user_clk,
      D => \^ack_r\,
      Q => \counter5_r_reg[14]_srl15_n_0\
    );
\counter5_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => do_watchdog_count_r,
      I1 => \^ack_r\,
      O => \counter5_r_reg[14]_srl15_i_1_n_0\
    );
\counter5_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \counter5_r_reg[14]_srl15_i_1_n_0\,
      D => \counter5_r_reg[14]_srl15_n_0\,
      Q => \counter5_r_reg_n_0_[15]\,
      R => '0'
    );
do_watchdog_count_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => std_bool,
      I1 => prev_count_128d_done_r,
      O => do_watchdog_count_r0
    );
do_watchdog_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => do_watchdog_count_r0,
      Q => do_watchdog_count_r,
      R => '0'
    );
gen_k_fsm_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^ack_r\,
      I1 => \^d_0\,
      I2 => odd_word_r,
      O => gen_k_i
    );
\gen_sp_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d_0\,
      I1 => \^ack_r\,
      I2 => odd_word_r,
      O => D(1)
    );
\gen_sp_data_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d_0\,
      I1 => \^ack_r\,
      O => D(0)
    );
\gen_spa_data_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ack_r\,
      I1 => odd_word_r,
      O => ack_r_reg_0
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \^d_0\,
      Q => LANE_UP,
      R => SR(0)
    );
odd_word_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => odd_word_r,
      O => next_ack_c12_in
    );
odd_word_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => next_ack_c12_in,
      Q => odd_word_r,
      R => '0'
    );
polarity_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040FF404040"
    )
        port map (
      I0 => RX_NEG_Buffer,
      I1 => odd_word_r,
      I2 => polarity_r,
      I3 => realign_r,
      I4 => std_bool6_in,
      I5 => rx_realign_i,
      O => next_polarity_c
    );
polarity_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_polarity_c,
      Q => polarity_r,
      R => begin_r0
    );
prev_char_was_comma_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RX_CHAR_IS_COMMA_R(0),
      I1 => RX_CHAR_IS_COMMA_R(1),
      O => inc_count_c1
    );
prev_char_was_comma_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => inc_count_c1,
      Q => prev_char_was_comma_r,
      R => '0'
    );
prev_count_128d_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool,
      Q => prev_count_128d_done_r,
      R => '0'
    );
ready_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => \counter2_r_reg_n_0_[15]\,
      I1 => \counter3_r_reg_n_0_[3]\,
      I2 => \^ack_r\,
      I3 => \counter5_r_reg_n_0_[15]\,
      I4 => \counter4_r_reg_n_0_[15]\,
      I5 => \^d_0\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => \^d_0\,
      R => begin_r0
    );
realign_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => realign_r,
      I1 => rx_realign_i,
      I2 => std_bool6_in,
      I3 => std_bool,
      I4 => \^align_r_reg_0\,
      O => next_realign_c
    );
realign_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_realign_c,
      Q => realign_r,
      R => begin_r0
    );
reset_count_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3331"
    )
        port map (
      I0 => comma_over_two_cycles_r,
      I1 => tx_reset_i,
      I2 => RXDISPERR(1),
      I3 => RXNOTINTABLE(1),
      I4 => reset_count_r_i_2_n_0,
      I5 => SR(0),
      O => reset_count_r0
    );
reset_count_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFAAFC"
    )
        port map (
      I0 => std_bool0_in,
      I1 => RXNOTINTABLE(0),
      I2 => RXDISPERR(0),
      I3 => tx_reset_i,
      I4 => begin_r,
      O => reset_count_r_i_2_n_0
    );
reset_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => reset_count_r0,
      Q => reset_count_r,
      R => '0'
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => std_bool0_in,
      I1 => tx_reset_i,
      I2 => begin_r,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => next_rst_c,
      Q => tx_reset_i,
      R => begin_r0
    );
rx_polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => polarity_r,
      I1 => RX_NEG_Buffer,
      I2 => \^rx_polarity_i\,
      O => rx_polarity_r_i_1_n_0
    );
rx_polarity_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_polarity_r_i_1_n_0,
      Q => \^rx_polarity_i\,
      R => '0'
    );
\soft_err_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enable_err_detect_i\,
      O => ENABLE_ERR_DETECT_Buffer_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  port (
    FRAME_ERR : out STD_LOGIC;
    in_frame_r_reg_0 : out STD_LOGIC;
    storage_v_r : out STD_LOGIC;
    M_AXI_RX_TVALID : out STD_LOGIC;
    M_AXI_RX_TDATA : out STD_LOGIC_VECTOR ( 0 to 15 );
    M_AXI_RX_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RX_TLAST : out STD_LOGIC;
    RX_EOF_N_Buffer_reg_0 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    rx_pad_i : in STD_LOGIC;
    rx_scp_i : in STD_LOGIC;
    rx_ecp_i : in STD_LOGIC;
    RX_SRC_RDY_N_Buffer_reg_inv_0 : in STD_LOGIC;
    in_frame_r_reg_1 : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_rx_i : in STD_LOGIC
  );
end aurora_8b10b_0_RX_LL_PDU_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  signal \FRAME_ERR_Buffer0__0\ : STD_LOGIC;
  signal RX_REM_Buffer_i_1_n_0 : STD_LOGIC;
  signal \^in_frame_r_reg_0\ : STD_LOGIC;
  signal pad_in_storage_r : STD_LOGIC;
  signal rx_eof : STD_LOGIC;
  signal rx_rem : STD_LOGIC;
  signal storage_ce_c : STD_LOGIC;
  signal storage_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^storage_v_r\ : STD_LOGIC;
  signal storage_v_r_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \M_AXI_RX_TKEEP[1]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of M_AXI_RX_TLAST_INST_0 : label is "soft_lutpair90";
  attribute inverted : string;
  attribute inverted of RX_SRC_RDY_N_Buffer_reg_inv : label is "yes";
begin
  in_frame_r_reg_0 <= \^in_frame_r_reg_0\;
  storage_v_r <= \^storage_v_r\;
FRAME_ERR_Buffer0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACEC"
    )
        port map (
      I0 => rx_scp_i,
      I1 => rx_ecp_i,
      I2 => \^in_frame_r_reg_0\,
      I3 => \^storage_v_r\,
      O => \FRAME_ERR_Buffer0__0\
    );
FRAME_ERR_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \FRAME_ERR_Buffer0__0\,
      Q => FRAME_ERR,
      R => '0'
    );
\M_AXI_RX_TKEEP[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_rem,
      I1 => rx_eof,
      O => M_AXI_RX_TKEEP(0)
    );
M_AXI_RX_TLAST_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_eof,
      O => M_AXI_RX_TLAST
    );
\RX_D_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(0),
      Q => M_AXI_RX_TDATA(0),
      R => '0'
    );
\RX_D_Buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(10),
      Q => M_AXI_RX_TDATA(10),
      R => '0'
    );
\RX_D_Buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(11),
      Q => M_AXI_RX_TDATA(11),
      R => '0'
    );
\RX_D_Buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(12),
      Q => M_AXI_RX_TDATA(12),
      R => '0'
    );
\RX_D_Buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(13),
      Q => M_AXI_RX_TDATA(13),
      R => '0'
    );
\RX_D_Buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(14),
      Q => M_AXI_RX_TDATA(14),
      R => '0'
    );
\RX_D_Buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(15),
      Q => M_AXI_RX_TDATA(15),
      R => '0'
    );
\RX_D_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(1),
      Q => M_AXI_RX_TDATA(1),
      R => '0'
    );
\RX_D_Buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(2),
      Q => M_AXI_RX_TDATA(2),
      R => '0'
    );
\RX_D_Buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(3),
      Q => M_AXI_RX_TDATA(3),
      R => '0'
    );
\RX_D_Buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(4),
      Q => M_AXI_RX_TDATA(4),
      R => '0'
    );
\RX_D_Buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(5),
      Q => M_AXI_RX_TDATA(5),
      R => '0'
    );
\RX_D_Buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(6),
      Q => M_AXI_RX_TDATA(6),
      R => '0'
    );
\RX_D_Buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(7),
      Q => M_AXI_RX_TDATA(7),
      R => '0'
    );
\RX_D_Buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(8),
      Q => M_AXI_RX_TDATA(8),
      R => '0'
    );
\RX_D_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_r(9),
      Q => M_AXI_RX_TDATA(9),
      R => '0'
    );
RX_EOF_N_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_EOF_N_Buffer_reg_0,
      Q => rx_eof,
      R => '0'
    );
RX_REM_Buffer_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pad_in_storage_r,
      O => RX_REM_Buffer_i_1_n_0
    );
RX_REM_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_REM_Buffer_i_1_n_0,
      Q => rx_rem,
      R => '0'
    );
RX_SRC_RDY_N_Buffer_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => RX_SRC_RDY_N_Buffer_reg_inv_0,
      Q => M_AXI_RX_TVALID,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => in_frame_r_reg_1,
      Q => \^in_frame_r_reg_0\,
      R => '0'
    );
pad_in_storage_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in_frame_r_reg_0\,
      I1 => rx_pe_data_v_i,
      O => storage_ce_c
    );
pad_in_storage_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => rx_pad_i,
      Q => pad_in_storage_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(15),
      Q => storage_r(0),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(5),
      Q => storage_r(10),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(4),
      Q => storage_r(11),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(3),
      Q => storage_r(12),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(2),
      Q => storage_r(13),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(1),
      Q => storage_r(14),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(0),
      Q => storage_r(15),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(14),
      Q => storage_r(1),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(13),
      Q => storage_r(2),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(12),
      Q => storage_r(3),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(11),
      Q => storage_r(4),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(10),
      Q => storage_r(5),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(9),
      Q => storage_r(6),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(8),
      Q => storage_r(7),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(7),
      Q => storage_r(8),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(6),
      Q => storage_r(9),
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80000"
    )
        port map (
      I0 => \^in_frame_r_reg_0\,
      I1 => rx_pe_data_v_i,
      I2 => \^storage_v_r\,
      I3 => rx_ecp_i,
      I4 => start_rx_i,
      O => storage_v_r_i_1_n_0
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => storage_v_r_i_1_n_0,
      Q => \^storage_v_r\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_STANDARD_CC_MODULE is
  port (
    Q : out STD_LOGIC;
    \cc_count_r_reg[5]_0\ : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0_STANDARD_CC_MODULE;

architecture STRUCTURE of aurora_8b10b_0_STANDARD_CC_MODULE is
  signal DO_CC0_n_0 : STD_LOGIC;
  signal DO_CC_i_1_n_0 : STD_LOGIC;
  signal \cc_count_r_reg_n_0_[5]\ : STD_LOGIC;
  signal cc_idle_count_done_c : STD_LOGIC;
  signal count_13d_flop_r_reg_r_n_0 : STD_LOGIC;
  signal \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\ : STD_LOGIC;
  signal count_13d_srl_r_reg_gate_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_0_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_1_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_2_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_3_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_4_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_5_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_6_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_7_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_8_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_9_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_n_0 : STD_LOGIC;
  signal count_16d_flop_r : STD_LOGIC;
  signal count_16d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_16d_srl_r0 : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal count_24d_flop_r : STD_LOGIC;
  signal count_24d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_24d_srl_r0 : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\ : STD_LOGIC;
  signal \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\ : STD_LOGIC;
  signal prepare_count_r_reg_gate_n_0 : STD_LOGIC;
  signal reset_r : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "U0/\standard_cc_module_i/count_13d_srl_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "U0/\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of count_16d_flop_r_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of count_24d_flop_r_i_1 : label is "soft_lutpair91";
  attribute srl_bus_name of \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5\ : label is "U0/\standard_cc_module_i/prepare_count_r_reg ";
  attribute srl_name of \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5\ : label is "U0/\standard_cc_module_i/prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5 ";
  attribute SOFT_HLUTNM of \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_i_1\ : label is "soft_lutpair91";
begin
DO_CC0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \cc_count_r_reg_n_0_[5]\,
      I2 => p_2_in(0),
      I3 => p_2_in(3),
      I4 => p_2_in(2),
      I5 => p_2_in(4),
      O => DO_CC0_n_0
    );
DO_CC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => DO_CC0_n_0,
      I1 => p_3_out(5),
      I2 => reset_r,
      O => DO_CC_i_1_n_0
    );
DO_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => DO_CC_i_1_n_0,
      Q => Q,
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_3_out(5),
      Q => p_2_in(4),
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(4),
      Q => p_2_in(3),
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(3),
      Q => p_2_in(2),
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(1),
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(0),
      R => \cc_count_r_reg[5]_0\
    );
\cc_count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => p_2_in(0),
      Q => \cc_count_r_reg_n_0_[5]\,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_flop_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => '1',
      Q => count_13d_flop_r_reg_r_n_0,
      R => \cc_count_r_reg[5]_0\
    );
\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\,
      Q => \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      R => '0'
    );
\count_13d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_gate_n_0,
      Q => count_16d_srl_r0,
      R => \cc_count_r_reg[5]_0\
    );
\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\,
      Q => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\
    );
\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_16d_srl_r0,
      I1 => reset_r,
      O => \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\
    );
count_13d_srl_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      I1 => count_13d_srl_r_reg_r_9_n_0,
      O => count_13d_srl_r_reg_gate_n_0
    );
count_13d_srl_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_flop_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_0_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_0_n_0,
      Q => count_13d_srl_r_reg_r_1_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_1_n_0,
      Q => count_13d_srl_r_reg_r_2_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_2_n_0,
      Q => count_13d_srl_r_reg_r_3_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_3_n_0,
      Q => count_13d_srl_r_reg_r_4_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_4_n_0,
      Q => count_13d_srl_r_reg_r_5_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_5_n_0,
      Q => count_13d_srl_r_reg_r_6_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_6_n_0,
      Q => count_13d_srl_r_reg_r_7_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_7_n_0,
      Q => count_13d_srl_r_reg_r_8_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_13d_srl_r_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_13d_srl_r_reg_r_8_n_0,
      Q => count_13d_srl_r_reg_r_9_n_0,
      R => \cc_count_r_reg[5]_0\
    );
count_16d_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => count_16d_srl_r0,
      I2 => reset_r,
      I3 => count_16d_flop_r,
      O => count_16d_flop_r_i_1_n_0
    );
count_16d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_16d_flop_r_i_1_n_0,
      Q => count_16d_flop_r,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => count_16d_flop_r,
      Q => \count_16d_srl_r_reg_n_0_[0]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[9]\,
      Q => \count_16d_srl_r_reg_n_0_[10]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[10]\,
      Q => \count_16d_srl_r_reg_n_0_[11]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[11]\,
      Q => \count_16d_srl_r_reg_n_0_[12]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[12]\,
      Q => \count_16d_srl_r_reg_n_0_[13]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[13]\,
      Q => \count_16d_srl_r_reg_n_0_[14]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[0]\,
      Q => \count_16d_srl_r_reg_n_0_[1]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[1]\,
      Q => \count_16d_srl_r_reg_n_0_[2]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[2]\,
      Q => \count_16d_srl_r_reg_n_0_[3]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[3]\,
      Q => \count_16d_srl_r_reg_n_0_[4]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[4]\,
      Q => \count_16d_srl_r_reg_n_0_[5]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[5]\,
      Q => \count_16d_srl_r_reg_n_0_[6]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[6]\,
      Q => \count_16d_srl_r_reg_n_0_[7]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[7]\,
      Q => \count_16d_srl_r_reg_n_0_[8]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_16d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[8]\,
      Q => \count_16d_srl_r_reg_n_0_[9]\,
      R => \cc_count_r_reg[5]_0\
    );
count_24d_flop_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[22]\,
      I1 => count_16d_srl_r0,
      I2 => \count_16d_srl_r_reg_n_0_[14]\,
      I3 => reset_r,
      I4 => count_24d_flop_r,
      O => count_24d_flop_r_i_1_n_0
    );
count_24d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => count_24d_flop_r_i_1_n_0,
      Q => count_24d_flop_r,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_16d_srl_r0,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      O => count_24d_srl_r0
    );
\count_24d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => count_24d_flop_r,
      Q => \count_24d_srl_r_reg_n_0_[0]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[9]\,
      Q => \count_24d_srl_r_reg_n_0_[10]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[10]\,
      Q => \count_24d_srl_r_reg_n_0_[11]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[11]\,
      Q => \count_24d_srl_r_reg_n_0_[12]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[12]\,
      Q => \count_24d_srl_r_reg_n_0_[13]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[13]\,
      Q => \count_24d_srl_r_reg_n_0_[14]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[14]\,
      Q => \count_24d_srl_r_reg_n_0_[15]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[15]\,
      Q => \count_24d_srl_r_reg_n_0_[16]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[16]\,
      Q => \count_24d_srl_r_reg_n_0_[17]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[17]\,
      Q => \count_24d_srl_r_reg_n_0_[18]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[18]\,
      Q => \count_24d_srl_r_reg_n_0_[19]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[0]\,
      Q => \count_24d_srl_r_reg_n_0_[1]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[19]\,
      Q => \count_24d_srl_r_reg_n_0_[20]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[20]\,
      Q => \count_24d_srl_r_reg_n_0_[21]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[21]\,
      Q => \count_24d_srl_r_reg_n_0_[22]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[1]\,
      Q => \count_24d_srl_r_reg_n_0_[2]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[2]\,
      Q => \count_24d_srl_r_reg_n_0_[3]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[3]\,
      Q => \count_24d_srl_r_reg_n_0_[4]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[4]\,
      Q => \count_24d_srl_r_reg_n_0_[5]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[5]\,
      Q => \count_24d_srl_r_reg_n_0_[6]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[6]\,
      Q => \count_24d_srl_r_reg_n_0_[7]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[7]\,
      Q => \count_24d_srl_r_reg_n_0_[8]\,
      R => \cc_count_r_reg[5]_0\
    );
\count_24d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[8]\,
      Q => \count_24d_srl_r_reg_n_0_[9]\,
      R => \cc_count_r_reg[5]_0\
    );
\prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => cc_idle_count_done_c,
      Q => \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\
    );
\prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => count_16d_srl_r0,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => \count_24d_srl_r_reg_n_0_[22]\,
      O => cc_idle_count_done_c
    );
\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0\,
      Q => \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\,
      R => '0'
    );
\prepare_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => prepare_count_r_reg_gate_n_0,
      Q => p_3_out(5),
      R => \cc_count_r_reg[5]_0\
    );
prepare_count_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0\,
      I1 => count_13d_srl_r_reg_r_6_n_0,
      O => prepare_count_r_reg_gate_n_0
    );
reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \cc_count_r_reg[5]_0\,
      Q => reset_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_SYM_DEC is
  port (
    RX_NEG_Buffer : out STD_LOGIC;
    rx_pad_i : out STD_LOGIC;
    rx_scp_i : out STD_LOGIC;
    RX_ECP_Buffer_reg_0 : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    left_aligned_r_reg_0 : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    counter4_r0 : out STD_LOGIC;
    RX_ECP_Buffer_reg_1 : out STD_LOGIC;
    RX_PE_DATA_V_Buffer_reg_0 : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    RX_SPA_Buffer_reg_0 : out STD_LOGIC;
    \RX_PE_DATA_Buffer_reg[0]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[1]_0\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_0 : in STD_LOGIC;
    left_aligned_r_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena_comma_align_i : in STD_LOGIC;
    left_aligned_r_reg_2 : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    ack_r : in STD_LOGIC;
    \word_aligned_data_r_reg[8]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end aurora_8b10b_0_SYM_DEC;

architecture STRUCTURE of aurora_8b10b_0_SYM_DEC is
  signal \EXP_IN_inferred__0/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__1/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__14/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__15/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__16/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__17/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__18/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__19/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__2/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__20/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__21/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__23/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__27/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__28/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__4/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__6/i__n_0\ : STD_LOGIC;
  signal \EXP_IN_inferred__7/i__n_0\ : STD_LOGIC;
  signal EXP_IN_n_0 : STD_LOGIC;
  signal RX_CC_Buffer_i_1_n_0 : STD_LOGIC;
  signal RX_ECP_Buffer0 : STD_LOGIC;
  signal \^rx_ecp_buffer_reg_0\ : STD_LOGIC;
  signal RX_NEG_Buffer0 : STD_LOGIC;
  signal RX_PE_DATA_V_Buffer_i_1_n_0 : STD_LOGIC;
  signal RX_SCP_Buffer0 : STD_LOGIC;
  signal RX_SPA_Buffer0 : STD_LOGIC;
  signal first_v_received_r : STD_LOGIC;
  signal first_v_received_r_i_1_n_0 : STD_LOGIC;
  signal got_v_c : STD_LOGIC;
  signal left_aligned_r_i_1_n_0 : STD_LOGIC;
  signal \^left_aligned_r_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal prev_beat_sp_r : STD_LOGIC;
  signal prev_beat_spa_r : STD_LOGIC;
  signal prev_beat_v_d_r : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prev_beat_v_r : STD_LOGIC;
  signal rx_cc_r : STD_LOGIC_VECTOR ( 1 to 3 );
  signal \rx_ecp_d_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_ecp_d_r_reg_n_0_[3]\ : STD_LOGIC;
  signal rx_pad_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_pe_control_r_reg_n_0_[1]\ : STD_LOGIC;
  signal rx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^rx_pe_data_v_i\ : STD_LOGIC;
  signal \rx_scp_d_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^rx_scp_i\ : STD_LOGIC;
  signal rx_sp_c : STD_LOGIC;
  signal rx_sp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_sp_i : STD_LOGIC;
  signal rx_sp_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_spa_d_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal rx_spa_i : STD_LOGIC;
  signal rx_spa_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_spa_neg_d_r[0]_i_1_n_0\ : STD_LOGIC;
  signal rx_v_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal std_bool10_in : STD_LOGIC;
  signal std_bool11_out : STD_LOGIC;
  signal std_bool12_out : STD_LOGIC;
  signal std_bool13_out : STD_LOGIC;
  signal std_bool24_out : STD_LOGIC;
  signal std_bool3_out : STD_LOGIC;
  signal std_bool4_in : STD_LOGIC;
  signal std_bool7_in : STD_LOGIC;
  signal std_bool9_out : STD_LOGIC;
  signal word_aligned_control_bits_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \word_aligned_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \word_aligned_data_r_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EXP_IN : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__0/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__1/i_\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__10/i_\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__11/i_\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__12/i_\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__14/i_\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__15/i_\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__16/i_\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__17/i_\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__18/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__19/i_\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__2/i_\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__21/i_\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__23/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__27/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__3/i_\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__4/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__6/i_\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__7/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \EXP_IN_inferred__9/i_\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of RX_EOF_N_Buffer_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of RX_PAD_Buffer_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of RX_SP_Buffer_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of RX_SRC_RDY_N_Buffer_inv_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_sp_d_r[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_sp_d_r[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_spa_neg_d_r[0]_i_1\ : label is "soft_lutpair10";
begin
  RX_ECP_Buffer_reg_0 <= \^rx_ecp_buffer_reg_0\;
  left_aligned_r_reg_0 <= \^left_aligned_r_reg_0\;
  rx_pe_data_v_i <= \^rx_pe_data_v_i\;
  rx_scp_i <= \^rx_scp_i\;
EXP_IN: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[14]\,
      I2 => \word_aligned_data_r_reg_n_0_[12]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => EXP_IN_n_0
    );
\EXP_IN_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(1),
      O => \EXP_IN_inferred__0/i__n_0\
    );
\EXP_IN_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[5]\,
      I1 => \word_aligned_data_r_reg_n_0_[6]\,
      I2 => \word_aligned_data_r_reg_n_0_[4]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => \EXP_IN_inferred__1/i__n_0\
    );
\EXP_IN_inferred__10/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[15]\,
      I1 => \word_aligned_data_r_reg_n_0_[13]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[12]\,
      O => std_bool9_out
    );
\EXP_IN_inferred__11/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => std_bool10_in
    );
\EXP_IN_inferred__12/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      O => std_bool12_out
    );
\EXP_IN_inferred__14/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[12]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => \EXP_IN_inferred__14/i__n_0\
    );
\EXP_IN_inferred__15/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      O => \EXP_IN_inferred__15/i__n_0\
    );
\EXP_IN_inferred__16/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[0]\,
      I1 => \word_aligned_data_r_reg_n_0_[2]\,
      I2 => \word_aligned_data_r_reg_n_0_[1]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => \EXP_IN_inferred__16/i__n_0\
    );
\EXP_IN_inferred__17/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[15]\,
      I1 => \word_aligned_data_r_reg_n_0_[13]\,
      I2 => \word_aligned_data_r_reg_n_0_[12]\,
      I3 => \word_aligned_data_r_reg_n_0_[14]\,
      O => \EXP_IN_inferred__17/i__n_0\
    );
\EXP_IN_inferred__18/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[6]\,
      I1 => \word_aligned_data_r_reg_n_0_[5]\,
      I2 => \word_aligned_data_r_reg_n_0_[4]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => \EXP_IN_inferred__18/i__n_0\
    );
\EXP_IN_inferred__19/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[2]\,
      I1 => \word_aligned_data_r_reg_n_0_[3]\,
      I2 => \word_aligned_data_r_reg_n_0_[1]\,
      I3 => \word_aligned_data_r_reg_n_0_[0]\,
      O => \EXP_IN_inferred__19/i__n_0\
    );
\EXP_IN_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[3]\,
      I1 => \word_aligned_data_r_reg_n_0_[1]\,
      I2 => \word_aligned_data_r_reg_n_0_[0]\,
      I3 => \word_aligned_data_r_reg_n_0_[2]\,
      O => \EXP_IN_inferred__2/i__n_0\
    );
\EXP_IN_inferred__20/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \EXP_IN_inferred__20/i__n_0\
    );
\EXP_IN_inferred__21/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[1]\,
      I1 => \word_aligned_data_r_reg_n_0_[0]\,
      I2 => \word_aligned_data_r_reg_n_0_[2]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => \EXP_IN_inferred__21/i__n_0\
    );
\EXP_IN_inferred__23/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[13]\,
      I1 => \word_aligned_data_r_reg_n_0_[12]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => \EXP_IN_inferred__23/i__n_0\
    );
\EXP_IN_inferred__27/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[12]\,
      I1 => \word_aligned_data_r_reg_n_0_[13]\,
      I2 => \word_aligned_data_r_reg_n_0_[14]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => \EXP_IN_inferred__27/i__n_0\
    );
\EXP_IN_inferred__28/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[4]\,
      I1 => \word_aligned_data_r_reg_n_0_[5]\,
      I2 => \word_aligned_data_r_reg_n_0_[6]\,
      I3 => \word_aligned_data_r_reg_n_0_[7]\,
      O => \EXP_IN_inferred__28/i__n_0\
    );
\EXP_IN_inferred__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[1]\,
      I1 => \word_aligned_data_r_reg_n_0_[0]\,
      I2 => \word_aligned_data_r_reg_n_0_[2]\,
      I3 => \word_aligned_data_r_reg_n_0_[3]\,
      O => std_bool4_in
    );
\EXP_IN_inferred__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[6]\,
      I1 => \word_aligned_data_r_reg_n_0_[7]\,
      I2 => \word_aligned_data_r_reg_n_0_[5]\,
      I3 => \word_aligned_data_r_reg_n_0_[4]\,
      O => \EXP_IN_inferred__4/i__n_0\
    );
\EXP_IN_inferred__6/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[14]\,
      I1 => \word_aligned_data_r_reg_n_0_[15]\,
      I2 => \word_aligned_data_r_reg_n_0_[13]\,
      I3 => \word_aligned_data_r_reg_n_0_[12]\,
      O => \EXP_IN_inferred__6/i__n_0\
    );
\EXP_IN_inferred__7/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      O => \EXP_IN_inferred__7/i__n_0\
    );
\EXP_IN_inferred__9/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[12]\,
      I1 => \word_aligned_data_r_reg_n_0_[14]\,
      I2 => \word_aligned_data_r_reg_n_0_[13]\,
      I3 => \word_aligned_data_r_reg_n_0_[15]\,
      O => std_bool7_in
    );
GOT_V_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => prev_beat_v_r,
      I1 => rx_v_d_r(0),
      I2 => rx_v_d_r(1),
      I3 => rx_v_d_r(3),
      I4 => rx_v_d_r(2),
      I5 => p_0_in9_in,
      O => got_v_c
    );
GOT_V_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => got_v_c,
      Q => got_v_i,
      R => '0'
    );
RX_CC_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_3_in,
      I1 => \rx_pe_control_r_reg_n_0_[1]\,
      I2 => \rx_ecp_d_r_reg_n_0_[2]\,
      I3 => rx_cc_r(3),
      I4 => rx_cc_r(1),
      I5 => p_14_in,
      O => RX_CC_Buffer_i_1_n_0
    );
RX_CC_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_CC_Buffer_i_1_n_0,
      Q => D(0),
      R => '0'
    );
RX_ECP_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      I2 => p_1_in,
      I3 => p_14_in,
      I4 => \rx_ecp_d_r_reg_n_0_[3]\,
      I5 => \rx_ecp_d_r_reg_n_0_[2]\,
      O => RX_ECP_Buffer0
    );
RX_ECP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_ECP_Buffer0,
      Q => \^rx_ecp_buffer_reg_0\,
      R => '0'
    );
RX_EOF_N_Buffer_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_ecp_buffer_reg_0\,
      O => RX_ECP_Buffer_reg_1
    );
RX_NEG_Buffer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => rx_spa_neg_d_r(1),
      I1 => rx_spa_neg_d_r(0),
      I2 => rx_sp_neg_d_r(1),
      I3 => rx_sp_neg_d_r(0),
      I4 => \rx_pe_control_r_reg_n_0_[1]\,
      O => RX_NEG_Buffer0
    );
RX_NEG_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_NEG_Buffer0,
      Q => RX_NEG_Buffer,
      R => '0'
    );
RX_PAD_Buffer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rx_pad_d_r(0),
      I1 => rx_pad_d_r(1),
      I2 => p_3_in,
      I3 => \rx_pe_control_r_reg_n_0_[1]\,
      O => std_bool24_out
    );
RX_PAD_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool24_out,
      Q => rx_pad_i,
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(0),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(15),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(10),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(5),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(11),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(4),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(12),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(3),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(13),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(2),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(14),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(1),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(15),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(0),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(1),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(14),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(2),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(13),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(3),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(12),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(4),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(11),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(5),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(10),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(6),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(9),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(7),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(8),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(8),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(7),
      R => '0'
    );
\RX_PE_DATA_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(9),
      Q => \RX_PE_DATA_Buffer_reg[0]_0\(6),
      R => '0'
    );
RX_PE_DATA_V_Buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => got_v_c,
      I1 => rx_sp_c,
      I2 => p_3_in,
      O => RX_PE_DATA_V_Buffer_i_1_n_0
    );
RX_PE_DATA_V_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_PE_DATA_V_Buffer_i_1_n_0,
      Q => \^rx_pe_data_v_i\,
      R => '0'
    );
RX_SCP_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      I2 => p_0_in17_in,
      I3 => p_16_in,
      I4 => \rx_scp_d_r_reg_n_0_[3]\,
      I5 => \rx_ecp_d_r_reg_n_0_[2]\,
      O => RX_SCP_Buffer0
    );
RX_SCP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_SCP_Buffer0,
      Q => \^rx_scp_i\,
      R => '0'
    );
RX_SPA_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => prev_beat_spa_r,
      I1 => rx_spa_d_r(0),
      I2 => p_0_in17_in,
      I3 => rx_pad_d_r(1),
      I4 => rx_spa_d_r(2),
      I5 => p_0_in9_in,
      O => RX_SPA_Buffer0
    );
RX_SPA_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => RX_SPA_Buffer0,
      Q => rx_spa_i,
      R => '0'
    );
RX_SP_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => prev_beat_sp_r,
      I1 => rx_sp_d_r(0),
      I2 => rx_sp_d_r(1),
      I3 => rx_sp_d_r(3),
      I4 => rx_sp_d_r(2),
      I5 => p_0_in9_in,
      O => rx_sp_c
    );
RX_SP_Buffer_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      O => p_0_in9_in
    );
RX_SP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_sp_c,
      Q => rx_sp_i,
      R => '0'
    );
RX_SRC_RDY_N_Buffer_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => \^rx_pe_data_v_i\,
      I1 => in_frame_r,
      I2 => \^rx_ecp_buffer_reg_0\,
      I3 => storage_v_r,
      I4 => start_rx_i,
      O => RX_PE_DATA_V_Buffer_reg_0
    );
\counter3_r_reg[2]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_spa_i,
      I1 => ack_r,
      O => RX_SPA_Buffer_reg_0
    );
\counter4_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_sp_i,
      I1 => D_0,
      O => counter4_r0
    );
first_v_received_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => got_v_c,
      I1 => first_v_received_r,
      O => first_v_received_r_i_1_n_0
    );
first_v_received_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => first_v_received_r_i_1_n_0,
      Q => first_v_received_r,
      R => SR(0)
    );
\in_frame_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => in_frame_r,
      I1 => \^rx_ecp_buffer_reg_0\,
      I2 => \^rx_scp_i\,
      I3 => start_rx_i,
      O => in_frame_r_reg
    );
left_aligned_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFF22200000"
    )
        port map (
      I0 => left_aligned_r_reg_1(0),
      I1 => first_v_received_r,
      I2 => ena_comma_align_i,
      I3 => D_0,
      I4 => left_aligned_r_reg_2,
      I5 => \^left_aligned_r_reg_0\,
      O => left_aligned_r_i_1_n_0
    );
left_aligned_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => left_aligned_r_i_1_n_0,
      Q => \^left_aligned_r_reg_0\,
      R => SR(0)
    );
prev_beat_sp_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      I2 => rx_sp_d_r(2),
      I3 => rx_sp_d_r(3),
      I4 => p_0_in17_in,
      I5 => prev_beat_v_d_r(0),
      O => std_bool13_out
    );
prev_beat_sp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool13_out,
      Q => prev_beat_sp_r,
      R => '0'
    );
prev_beat_spa_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      I2 => rx_spa_d_r(2),
      I3 => rx_pad_d_r(1),
      I4 => p_0_in17_in,
      I5 => prev_beat_v_d_r(0),
      O => std_bool11_out
    );
prev_beat_spa_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool11_out,
      Q => prev_beat_spa_r,
      R => '0'
    );
\prev_beat_v_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool4_in,
      Q => prev_beat_v_d_r(0),
      R => '0'
    );
prev_beat_v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \rx_pe_control_r_reg_n_0_[1]\,
      I1 => p_3_in,
      I2 => rx_v_d_r(2),
      I3 => rx_v_d_r(3),
      I4 => p_0_in17_in,
      I5 => prev_beat_v_d_r(0),
      O => std_bool3_out
    );
prev_beat_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool3_out,
      Q => prev_beat_v_r,
      R => '0'
    );
\rx_cc_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__28/i__n_0\,
      Q => rx_cc_r(1),
      R => '0'
    );
\rx_cc_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__27/i__n_0\,
      Q => rx_cc_r(3),
      R => '0'
    );
\rx_ecp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__19/i__n_0\,
      Q => p_14_in,
      R => '0'
    );
\rx_ecp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__18/i__n_0\,
      Q => p_1_in,
      R => '0'
    );
\rx_ecp_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__15/i__n_0\,
      Q => \rx_ecp_d_r_reg_n_0_[2]\,
      R => '0'
    );
\rx_ecp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__17/i__n_0\,
      Q => \rx_ecp_d_r_reg_n_0_[3]\,
      R => '0'
    );
\rx_pad_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__7/i__n_0\,
      Q => rx_pad_d_r(0),
      R => '0'
    );
\rx_pad_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__6/i__n_0\,
      Q => rx_pad_d_r(1),
      R => '0'
    );
\rx_pe_control_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => word_aligned_control_bits_r(0),
      Q => p_3_in,
      R => '0'
    );
\rx_pe_control_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => word_aligned_control_bits_r(1),
      Q => \rx_pe_control_r_reg_n_0_[1]\,
      R => '0'
    );
\rx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[0]\,
      Q => rx_pe_data_r(0),
      R => '0'
    );
\rx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(1),
      Q => rx_pe_data_r(10),
      R => '0'
    );
\rx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(0),
      Q => rx_pe_data_r(11),
      R => '0'
    );
\rx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[12]\,
      Q => rx_pe_data_r(12),
      R => '0'
    );
\rx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[13]\,
      Q => rx_pe_data_r(13),
      R => '0'
    );
\rx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[14]\,
      Q => rx_pe_data_r(14),
      R => '0'
    );
\rx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[15]\,
      Q => rx_pe_data_r(15),
      R => '0'
    );
\rx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[1]\,
      Q => rx_pe_data_r(1),
      R => '0'
    );
\rx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[2]\,
      Q => rx_pe_data_r(2),
      R => '0'
    );
\rx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[3]\,
      Q => rx_pe_data_r(3),
      R => '0'
    );
\rx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[4]\,
      Q => rx_pe_data_r(4),
      R => '0'
    );
\rx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[5]\,
      Q => rx_pe_data_r(5),
      R => '0'
    );
\rx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[6]\,
      Q => rx_pe_data_r(6),
      R => '0'
    );
\rx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg_n_0_[7]\,
      Q => rx_pe_data_r(7),
      R => '0'
    );
\rx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(3),
      Q => rx_pe_data_r(8),
      R => '0'
    );
\rx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_0_in(2),
      Q => rx_pe_data_r(9),
      R => '0'
    );
\rx_scp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__16/i__n_0\,
      Q => p_16_in,
      R => '0'
    );
\rx_scp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__4/i__n_0\,
      Q => p_0_in17_in,
      R => '0'
    );
\rx_scp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__14/i__n_0\,
      Q => \rx_scp_d_r_reg_n_0_[3]\,
      R => '0'
    );
\rx_sp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[3]\,
      I1 => \word_aligned_data_r_reg_n_0_[2]\,
      I2 => \word_aligned_data_r_reg_n_0_[0]\,
      I3 => \word_aligned_data_r_reg_n_0_[1]\,
      O => p_4_out(3)
    );
\rx_sp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \word_aligned_data_r_reg_n_0_[5]\,
      I1 => \word_aligned_data_r_reg_n_0_[7]\,
      I2 => \word_aligned_data_r_reg_n_0_[6]\,
      I3 => \word_aligned_data_r_reg_n_0_[4]\,
      O => p_4_out(2)
    );
\rx_sp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_4_out(3),
      Q => rx_sp_d_r(0),
      R => '0'
    );
\rx_sp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => p_4_out(2),
      Q => rx_sp_d_r(1),
      R => '0'
    );
\rx_sp_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool12_out,
      Q => rx_sp_d_r(2),
      R => '0'
    );
\rx_sp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool9_out,
      Q => rx_sp_d_r(3),
      R => '0'
    );
\rx_sp_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool10_in,
      Q => rx_sp_neg_d_r(0),
      R => '0'
    );
\rx_sp_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => std_bool7_in,
      Q => rx_sp_neg_d_r(1),
      R => '0'
    );
\rx_spa_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__21/i__n_0\,
      Q => rx_spa_d_r(0),
      R => '0'
    );
\rx_spa_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__20/i__n_0\,
      Q => rx_spa_d_r(2),
      R => '0'
    );
\rx_spa_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      O => \rx_spa_neg_d_r[0]_i_1_n_0\
    );
\rx_spa_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \rx_spa_neg_d_r[0]_i_1_n_0\,
      Q => rx_spa_neg_d_r(0),
      R => '0'
    );
\rx_spa_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__23/i__n_0\,
      Q => rx_spa_neg_d_r(1),
      R => '0'
    );
\rx_v_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__2/i__n_0\,
      Q => rx_v_d_r(0),
      R => '0'
    );
\rx_v_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__1/i__n_0\,
      Q => rx_v_d_r(1),
      R => '0'
    );
\rx_v_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \EXP_IN_inferred__0/i__n_0\,
      Q => rx_v_d_r(2),
      R => '0'
    );
\rx_v_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => EXP_IN_n_0,
      Q => rx_v_d_r(3),
      R => '0'
    );
\word_aligned_control_bits_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_control_bits_r_reg[0]_0\,
      Q => word_aligned_control_bits_r(0),
      R => '0'
    );
\word_aligned_control_bits_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_control_bits_r_reg[1]_0\,
      Q => word_aligned_control_bits_r(1),
      R => '0'
    );
\word_aligned_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(7),
      Q => \word_aligned_data_r_reg_n_0_[0]\,
      R => '0'
    );
\word_aligned_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(5),
      Q => p_0_in(1),
      R => '0'
    );
\word_aligned_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(4),
      Q => p_0_in(0),
      R => '0'
    );
\word_aligned_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(3),
      Q => \word_aligned_data_r_reg_n_0_[12]\,
      R => '0'
    );
\word_aligned_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(2),
      Q => \word_aligned_data_r_reg_n_0_[13]\,
      R => '0'
    );
\word_aligned_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(1),
      Q => \word_aligned_data_r_reg_n_0_[14]\,
      R => '0'
    );
\word_aligned_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(0),
      Q => \word_aligned_data_r_reg_n_0_[15]\,
      R => '0'
    );
\word_aligned_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(6),
      Q => \word_aligned_data_r_reg_n_0_[1]\,
      R => '0'
    );
\word_aligned_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(5),
      Q => \word_aligned_data_r_reg_n_0_[2]\,
      R => '0'
    );
\word_aligned_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(4),
      Q => \word_aligned_data_r_reg_n_0_[3]\,
      R => '0'
    );
\word_aligned_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(3),
      Q => \word_aligned_data_r_reg_n_0_[4]\,
      R => '0'
    );
\word_aligned_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(2),
      Q => \word_aligned_data_r_reg_n_0_[5]\,
      R => '0'
    );
\word_aligned_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(1),
      Q => \word_aligned_data_r_reg_n_0_[6]\,
      R => '0'
    );
\word_aligned_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[0]_0\(0),
      Q => \word_aligned_data_r_reg_n_0_[7]\,
      R => '0'
    );
\word_aligned_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(7),
      Q => p_0_in(3),
      R => '0'
    );
\word_aligned_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \word_aligned_data_r_reg[8]_0\(6),
      Q => p_0_in(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_SYM_GEN is
  port (
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gen_pad_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    \gen_spa_data_r_reg[0]_0\ : in STD_LOGIC;
    tx_pe_data_v_i : in STD_LOGIC;
    gen_k_i : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    gen_ecp_i : in STD_LOGIC;
    gen_scp_i : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_v_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_r_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_k_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \TX_CHAR_IS_K_Buffer_reg[0]_0\ : in STD_LOGIC
  );
end aurora_8b10b_0_SYM_GEN;

architecture STRUCTURE of aurora_8b10b_0_SYM_GEN is
  signal TX_CHAR_IS_K_Buffer_reg0 : STD_LOGIC;
  signal TX_CHAR_IS_K_Buffer_reg04_out : STD_LOGIC;
  signal \TX_DATA_Buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[10]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[12]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[13]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[13]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[14]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[14]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_5_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_6_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[15]_i_7_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[2]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[4]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[5]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[6]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[6]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[7]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[7]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA_Buffer[9]_i_2_n_0\ : STD_LOGIC;
  signal TX_DATA_Buffer_reg0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal gen_ecp_r : STD_LOGIC;
  signal gen_k_fsm_r : STD_LOGIC;
  signal \gen_k_r_reg_n_0_[1]\ : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal \gen_r_r_reg_n_0_[1]\ : STD_LOGIC;
  signal gen_scp_r : STD_LOGIC;
  signal \gen_sp_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_pe_data_v_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K_Buffer[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[12]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[14]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[15]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[15]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[15]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[15]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[4]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \TX_DATA_Buffer[6]_i_2\ : label is "soft_lutpair23";
begin
\TX_CHAR_IS_K_Buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCFCCCD"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => gen_cc_r,
      I2 => p_3_in,
      I3 => \TX_CHAR_IS_K_Buffer_reg[0]_0\,
      I4 => gen_pad_r,
      I5 => \gen_sp_data_r_reg_n_0_[1]\,
      O => TX_CHAR_IS_K_Buffer_reg0
    );
\TX_CHAR_IS_K_Buffer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => gen_cc_r,
      I1 => p_0_in1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_2_in,
      I4 => p_1_in,
      O => TX_CHAR_IS_K_Buffer_reg04_out
    );
\TX_CHAR_IS_K_Buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => TX_CHAR_IS_K_Buffer_reg0,
      Q => TXCHARISK(1),
      R => '0'
    );
\TX_CHAR_IS_K_Buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => TX_CHAR_IS_K_Buffer_reg04_out,
      Q => TXCHARISK(0),
      R => '0'
    );
\TX_DATA_Buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAEAAFFAAAA"
    )
        port map (
      I0 => gen_scp_r,
      I1 => \tx_pe_data_r_reg_n_0_[15]\,
      I2 => gen_pad_r,
      I3 => gen_ecp_r,
      I4 => gen_cc_r,
      I5 => tx_pe_data_v_r,
      O => \TX_DATA_Buffer[0]_i_1_n_0\
    );
\TX_DATA_Buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8B88"
    )
        port map (
      I0 => data0(2),
      I1 => tx_pe_data_v_r,
      I2 => p_0_in1_in,
      I3 => p_1_in,
      I4 => \TX_DATA_Buffer[10]_i_2_n_0\,
      I5 => \TX_DATA_Buffer[15]_i_3_n_0\,
      O => \TX_DATA_Buffer[10]_i_1_n_0\
    );
\TX_DATA_Buffer[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => p_2_in,
      I1 => p_0_in1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in,
      I4 => gen_a_r,
      I5 => p_0_in4_in,
      O => \TX_DATA_Buffer[10]_i_2_n_0\
    );
\TX_DATA_Buffer[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEFFEEFF"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      I2 => data0(3),
      I3 => gen_cc_r,
      I4 => gen_k_fsm_r,
      I5 => tx_pe_data_v_r,
      O => \TX_DATA_Buffer[11]_i_1_n_0\
    );
\TX_DATA_Buffer[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAEA"
    )
        port map (
      I0 => \TX_DATA_Buffer[15]_i_3_n_0\,
      I1 => data0(4),
      I2 => tx_pe_data_v_r,
      I3 => \TX_DATA_Buffer[15]_i_4_n_0\,
      I4 => \TX_DATA_Buffer[12]_i_2_n_0\,
      O => \TX_DATA_Buffer[12]_i_1_n_0\
    );
\TX_DATA_Buffer[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => gen_a_r,
      I2 => p_0_in,
      O => \TX_DATA_Buffer[12]_i_2_n_0\
    );
\TX_DATA_Buffer[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => data0(5),
      I1 => tx_pe_data_v_r,
      I2 => gen_scp_r,
      I3 => \TX_DATA_Buffer[13]_i_2_n_0\,
      O => \TX_DATA_Buffer[13]_i_1_n_0\
    );
\TX_DATA_Buffer[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FFFFFF00"
    )
        port map (
      I0 => \TX_DATA_Buffer[13]_i_3_n_0\,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => \TX_DATA_Buffer[15]_i_6_n_0\,
      I4 => \TX_DATA_Buffer[15]_i_7_n_0\,
      I5 => p_0_in,
      O => \TX_DATA_Buffer[13]_i_2_n_0\
    );
\TX_DATA_Buffer[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_a_r,
      I1 => p_0_in4_in,
      O => \TX_DATA_Buffer[13]_i_3_n_0\
    );
\TX_DATA_Buffer[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBAAFAAAABAAAA"
    )
        port map (
      I0 => \TX_DATA_Buffer[14]_i_2_n_0\,
      I1 => p_1_in,
      I2 => tx_pe_data_v_r,
      I3 => gen_k_fsm_r,
      I4 => \TX_DATA_Buffer[14]_i_3_n_0\,
      I5 => data0(6),
      O => \TX_DATA_Buffer[14]_i_1_n_0\
    );
\TX_DATA_Buffer[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      I4 => gen_scp_r,
      I5 => gen_ecp_r,
      O => \TX_DATA_Buffer[14]_i_2_n_0\
    );
\TX_DATA_Buffer[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in4_in,
      I2 => gen_a_r,
      I3 => p_2_in,
      O => \TX_DATA_Buffer[14]_i_3_n_0\
    );
\TX_DATA_Buffer[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \TX_DATA_Buffer[15]_i_3_n_0\,
      I1 => \TX_DATA_Buffer[15]_i_4_n_0\,
      I2 => p_0_in,
      I3 => gen_a_r,
      I4 => p_0_in4_in,
      O => \TX_DATA_Buffer[15]_i_1_n_0\
    );
\TX_DATA_Buffer[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF08"
    )
        port map (
      I0 => data0(7),
      I1 => tx_pe_data_v_r,
      I2 => gen_scp_r,
      I3 => \TX_DATA_Buffer[15]_i_5_n_0\,
      I4 => \TX_DATA_Buffer[15]_i_6_n_0\,
      O => \TX_DATA_Buffer[15]_i_2_n_0\
    );
\TX_DATA_Buffer[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \TX_DATA_Buffer[15]_i_3_n_0\
    );
\TX_DATA_Buffer[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      O => \TX_DATA_Buffer[15]_i_4_n_0\
    );
\TX_DATA_Buffer[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404044444044"
    )
        port map (
      I0 => p_1_in,
      I1 => \TX_DATA_Buffer[15]_i_7_n_0\,
      I2 => p_2_in,
      I3 => p_0_in,
      I4 => p_0_in4_in,
      I5 => gen_a_r,
      O => \TX_DATA_Buffer[15]_i_5_n_0\
    );
\TX_DATA_Buffer[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_k_fsm_r,
      I2 => gen_cc_r,
      I3 => gen_scp_r,
      O => \TX_DATA_Buffer[15]_i_6_n_0\
    );
\TX_DATA_Buffer[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => p_0_in1_in,
      I2 => gen_scp_r,
      O => \TX_DATA_Buffer[15]_i_7_n_0\
    );
\TX_DATA_Buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2F2FFFFF2F20"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[14]\,
      I1 => gen_pad_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_cc_r,
      I4 => \TX_DATA_Buffer[9]_i_2_n_0\,
      I5 => \gen_sp_data_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[1]_i_1_n_0\
    );
\TX_DATA_Buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFAAAEA"
    )
        port map (
      I0 => \TX_DATA_Buffer[2]_i_2_n_0\,
      I1 => gen_pad_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_scp_r,
      I4 => \tx_pe_data_r_reg_n_0_[13]\,
      O => \TX_DATA_Buffer[2]_i_1_n_0\
    );
\TX_DATA_Buffer[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCEECCFE"
    )
        port map (
      I0 => gen_cc_r,
      I1 => gen_ecp_r,
      I2 => \TX_DATA_Buffer[6]_i_3_n_0\,
      I3 => tx_pe_data_v_r,
      I4 => \gen_sp_data_r_reg_n_0_[1]\,
      I5 => gen_scp_r,
      O => \TX_DATA_Buffer[2]_i_2_n_0\
    );
\TX_DATA_Buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF5FFFCFFF5"
    )
        port map (
      I0 => gen_cc_r,
      I1 => \tx_pe_data_r_reg_n_0_[12]\,
      I2 => gen_ecp_r,
      I3 => gen_scp_r,
      I4 => tx_pe_data_v_r,
      I5 => gen_pad_r,
      O => \TX_DATA_Buffer[3]_i_1_n_0\
    );
\TX_DATA_Buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFEAAFEAAFE"
    )
        port map (
      I0 => \TX_DATA_Buffer[4]_i_2_n_0\,
      I1 => \gen_r_r_reg_n_0_[1]\,
      I2 => \gen_k_r_reg_n_0_[1]\,
      I3 => \TX_DATA_Buffer[7]_i_3_n_0\,
      I4 => tx_pe_data_v_r,
      I5 => \tx_pe_data_r_reg_n_0_[11]\,
      O => \TX_DATA_Buffer[4]_i_1_n_0\
    );
\TX_DATA_Buffer[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFC"
    )
        port map (
      I0 => gen_pad_r,
      I1 => gen_ecp_r,
      I2 => gen_scp_r,
      I3 => gen_cc_r,
      I4 => tx_pe_data_v_r,
      O => \TX_DATA_Buffer[4]_i_2_n_0\
    );
\TX_DATA_Buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFEFFBAFFBA"
    )
        port map (
      I0 => \TX_DATA_Buffer[5]_i_2_n_0\,
      I1 => tx_pe_data_v_r,
      I2 => gen_cc_r,
      I3 => \TX_DATA_Buffer[9]_i_2_n_0\,
      I4 => gen_pad_r,
      I5 => \tx_pe_data_r_reg_n_0_[10]\,
      O => \TX_DATA_Buffer[5]_i_1_n_0\
    );
\TX_DATA_Buffer[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000E000F000F"
    )
        port map (
      I0 => p_3_in,
      I1 => \TX_CHAR_IS_K_Buffer_reg[0]_0\,
      I2 => \gen_sp_data_r_reg_n_0_[1]\,
      I3 => tx_pe_data_v_r,
      I4 => \gen_k_r_reg_n_0_[1]\,
      I5 => \gen_r_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[5]_i_2_n_0\
    );
\TX_DATA_Buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEEEECFCCFFFF"
    )
        port map (
      I0 => \gen_sp_data_r_reg_n_0_[1]\,
      I1 => \TX_DATA_Buffer[6]_i_2_n_0\,
      I2 => gen_pad_r,
      I3 => \tx_pe_data_r_reg_n_0_[9]\,
      I4 => tx_pe_data_v_r,
      I5 => \TX_DATA_Buffer[6]_i_3_n_0\,
      O => \TX_DATA_Buffer[6]_i_1_n_0\
    );
\TX_DATA_Buffer[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => gen_cc_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \TX_DATA_Buffer[6]_i_2_n_0\
    );
\TX_DATA_Buffer[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => \TX_CHAR_IS_K_Buffer_reg[0]_0\,
      I1 => \gen_k_r_reg_n_0_[1]\,
      I2 => \gen_r_r_reg_n_0_[1]\,
      I3 => p_3_in,
      O => \TX_DATA_Buffer[6]_i_3_n_0\
    );
\TX_DATA_Buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \TX_DATA_Buffer[7]_i_3_n_0\,
      I1 => \gen_k_r_reg_n_0_[1]\,
      I2 => \gen_r_r_reg_n_0_[1]\,
      I3 => gen_ecp_r,
      I4 => gen_scp_r,
      I5 => gen_cc_r,
      O => TX_DATA_Buffer_reg0
    );
\TX_DATA_Buffer[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFFEEFFFC"
    )
        port map (
      I0 => gen_pad_r,
      I1 => \TX_DATA_Buffer[9]_i_2_n_0\,
      I2 => gen_cc_r,
      I3 => \TX_DATA_Buffer[7]_i_4_n_0\,
      I4 => tx_pe_data_v_r,
      I5 => \tx_pe_data_r_reg_n_0_[8]\,
      O => \TX_DATA_Buffer[7]_i_2_n_0\
    );
\TX_DATA_Buffer[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \TX_CHAR_IS_K_Buffer_reg[0]_0\,
      I1 => p_3_in,
      I2 => tx_pe_data_v_r,
      I3 => \gen_sp_data_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[7]_i_3_n_0\
    );
\TX_DATA_Buffer[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001010101"
    )
        port map (
      I0 => \TX_CHAR_IS_K_Buffer_reg[0]_0\,
      I1 => \gen_sp_data_r_reg_n_0_[1]\,
      I2 => tx_pe_data_v_r,
      I3 => p_3_in,
      I4 => \gen_k_r_reg_n_0_[1]\,
      I5 => \gen_r_r_reg_n_0_[1]\,
      O => \TX_DATA_Buffer[7]_i_4_n_0\
    );
\TX_DATA_Buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEEEEEE"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_cc_r,
      I2 => gen_k_fsm_r,
      I3 => tx_pe_data_v_r,
      I4 => data0(0),
      I5 => gen_scp_r,
      O => \TX_DATA_Buffer[8]_i_1_n_0\
    );
\TX_DATA_Buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333300002230"
    )
        port map (
      I0 => data0(1),
      I1 => \TX_DATA_Buffer[9]_i_2_n_0\,
      I2 => p_0_in1_in,
      I3 => tx_pe_data_v_r,
      I4 => gen_k_fsm_r,
      I5 => gen_cc_r,
      O => \TX_DATA_Buffer[9]_i_1_n_0\
    );
\TX_DATA_Buffer[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      O => \TX_DATA_Buffer[9]_i_2_n_0\
    );
\TX_DATA_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[0]_i_1_n_0\,
      Q => TXDATA(8),
      R => '0'
    );
\TX_DATA_Buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[10]_i_1_n_0\,
      Q => TXDATA(2),
      R => '0'
    );
\TX_DATA_Buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[11]_i_1_n_0\,
      Q => TXDATA(3),
      R => '0'
    );
\TX_DATA_Buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[12]_i_1_n_0\,
      Q => TXDATA(4),
      R => '0'
    );
\TX_DATA_Buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[13]_i_1_n_0\,
      Q => TXDATA(5),
      R => '0'
    );
\TX_DATA_Buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[14]_i_1_n_0\,
      Q => TXDATA(6),
      R => '0'
    );
\TX_DATA_Buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[15]_i_2_n_0\,
      Q => TXDATA(7),
      R => '0'
    );
\TX_DATA_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[1]_i_1_n_0\,
      Q => TXDATA(9),
      R => '0'
    );
\TX_DATA_Buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[2]_i_1_n_0\,
      Q => TXDATA(10),
      R => '0'
    );
\TX_DATA_Buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[3]_i_1_n_0\,
      Q => TXDATA(11),
      R => '0'
    );
\TX_DATA_Buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[4]_i_1_n_0\,
      Q => TXDATA(12),
      R => '0'
    );
\TX_DATA_Buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[5]_i_1_n_0\,
      Q => TXDATA(13),
      R => '0'
    );
\TX_DATA_Buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[6]_i_1_n_0\,
      Q => TXDATA(14),
      R => '0'
    );
\TX_DATA_Buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => TX_DATA_Buffer_reg0,
      D => \TX_DATA_Buffer[7]_i_2_n_0\,
      Q => TXDATA(15),
      R => '0'
    );
\TX_DATA_Buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[8]_i_1_n_0\,
      Q => TXDATA(0),
      R => '0'
    );
\TX_DATA_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \TX_DATA_Buffer[15]_i_1_n_0\,
      D => \TX_DATA_Buffer[9]_i_1_n_0\,
      Q => TXDATA(1),
      R => '0'
    );
gen_a_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_a_i,
      Q => gen_a_r,
      R => '0'
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_cc_i,
      Q => gen_cc_r,
      R => '0'
    );
gen_ecp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_ecp_i,
      Q => gen_ecp_r,
      R => '0'
    );
gen_k_fsm_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_k_i,
      Q => gen_k_fsm_r,
      R => '0'
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(1),
      Q => p_0_in4_in,
      R => '0'
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(0),
      Q => \gen_k_r_reg_n_0_[1]\,
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_pad_i,
      Q => gen_pad_r,
      R => '0'
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(1),
      Q => p_0_in,
      R => '0'
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(0),
      Q => \gen_r_r_reg_n_0_[1]\,
      R => '0'
    );
gen_scp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gen_scp_i,
      Q => gen_scp_r,
      R => '0'
    );
\gen_sp_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => D(1),
      Q => p_0_in1_in,
      R => '0'
    );
\gen_sp_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => \gen_sp_data_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_spa_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_spa_data_r_reg[0]_0\,
      Q => p_1_in,
      R => '0'
    );
\gen_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_v_r_reg[0]_0\(1),
      Q => p_2_in,
      R => '0'
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => \gen_v_r_reg[0]_0\(0),
      Q => p_3_in,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(15),
      Q => data0(7),
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(5),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(4),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(3),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(2),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(1),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(0),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(14),
      Q => data0(6),
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(13),
      Q => data0(5),
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(12),
      Q => data0(4),
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(11),
      Q => data0(3),
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(10),
      Q => data0(2),
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(9),
      Q => data0(1),
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(8),
      Q => data0(0),
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(7),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q(6),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_v_i,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    D : out STD_LOGIC;
    pdu_ok_c : out STD_LOGIC;
    TX_DST_RDY_N_Buffer_reg_0 : out STD_LOGIC;
    gen_scp_i : out STD_LOGIC;
    gen_ecp_i : out STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    \^s_axi_tx_tvalid\ : out STD_LOGIC;
    new_pkt_r_reg : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    Q : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    sof_data_eof_1_r_reg_0 : in STD_LOGIC;
    in_frame_r_reg : in STD_LOGIC
  );
end aurora_8b10b_0_TX_LL_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_TX_LL_CONTROL is
  signal \^d\ : STD_LOGIC;
  signal GEN_ECP_Buffer0 : STD_LOGIC;
  signal GEN_SCP_Buffer0 : STD_LOGIC;
  signal TX_DST_RDY_N_Buffer_i_2_n_0 : STD_LOGIC;
  signal TX_DST_RDY_N_Buffer_i_3_n_0 : STD_LOGIC;
  signal \^tx_dst_rdy_n_buffer_reg_0\ : STD_LOGIC;
  signal data_eof_1_r : STD_LOGIC;
  signal data_eof_2_r : STD_LOGIC;
  signal data_eof_3_r : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_c : STD_LOGIC;
  signal next_sof_data_eof_1_c : STD_LOGIC;
  signal \^pdu_ok_c\ : STD_LOGIC;
  signal \^s_axi_tx_tvalid_1\ : STD_LOGIC;
  signal sof_data_eof_1_r : STD_LOGIC;
  signal sof_data_eof_2_r : STD_LOGIC;
  signal sof_data_eof_3_r : STD_LOGIC;
  signal sof_r : STD_LOGIC;
  signal sof_r_i_2_n_0 : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_ECP_Buffer_i_1 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of GEN_SCP_Buffer_i_1 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of S_AXI_TX_TREADY_INST_0 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of data_eof_1_r_i_2 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair95";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of gen_cc_flop_0_i : label is "VCC:CE";
  attribute SOFT_HLUTNM of in_frame_r_i_1 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of sof_data_eof_1_r_i_1 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of sof_r_i_1 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of sof_r_i_2 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of storage_pad_r_i_2 : label is "soft_lutpair93";
begin
  D <= \^d\;
  TX_DST_RDY_N_Buffer_reg_0 <= \^tx_dst_rdy_n_buffer_reg_0\;
  \^s_axi_tx_tvalid\ <= \^s_axi_tx_tvalid_1\;
  pdu_ok_c <= \^pdu_ok_c\;
GEN_ECP_Buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_eof_3_r,
      I1 => sof_data_eof_3_r,
      I2 => \^d\,
      O => GEN_ECP_Buffer0
    );
GEN_ECP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_ECP_Buffer0,
      Q => gen_ecp_i,
      R => p_0_in
    );
GEN_SCP_Buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => sof_data_eof_1_r,
      I1 => \^d\,
      I2 => sof_r,
      O => GEN_SCP_Buffer0
    );
GEN_SCP_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_SCP_Buffer0,
      Q => gen_scp_i,
      R => p_0_in
    );
S_AXI_TX_TREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_dst_rdy_n_buffer_reg_0\,
      O => S_AXI_TX_TREADY
    );
TX_DST_RDY_N_Buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => Q,
      I1 => data_eof_1_r,
      I2 => \^d\,
      I3 => sof_data_eof_2_r,
      I4 => sof_data_eof_1_r,
      I5 => TX_DST_RDY_N_Buffer_i_2_n_0,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_Buffer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0000FF30"
    )
        port map (
      I0 => data_eof_2_r,
      I1 => sof_data_eof_1_r_reg_0,
      I2 => sof_r_i_2_n_0,
      I3 => TX_DST_RDY_N_Buffer_i_3_n_0,
      I4 => \^s_axi_tx_tvalid_1\,
      I5 => \^d\,
      O => TX_DST_RDY_N_Buffer_i_2_n_0
    );
TX_DST_RDY_N_Buffer_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sof_r,
      I1 => data_r,
      O => TX_DST_RDY_N_Buffer_i_3_n_0
    );
TX_DST_RDY_N_Buffer_reg: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_dst_rdy_n_c,
      Q => \^tx_dst_rdy_n_buffer_reg_0\,
      S => p_0_in
    );
data_eof_1_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => data_r,
      I1 => sof_r,
      I2 => S_AXI_TX_TLAST,
      I3 => \^tx_dst_rdy_n_buffer_reg_0\,
      I4 => S_AXI_TX_TVALID,
      O => next_data_eof_1_c
    );
data_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_data_eof_1_c,
      Q => data_eof_1_r,
      R => p_0_in
    );
data_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => data_eof_1_r,
      Q => data_eof_2_r,
      R => p_0_in
    );
data_eof_3_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => data_eof_2_r,
      Q => data_eof_3_r,
      R => p_0_in
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE0EEEEE"
    )
        port map (
      I0 => data_r,
      I1 => sof_r,
      I2 => S_AXI_TX_TLAST,
      I3 => \^tx_dst_rdy_n_buffer_reg_0\,
      I4 => S_AXI_TX_TVALID,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_data_c,
      Q => data_r,
      R => p_0_in
    );
do_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => Q,
      Q => \^d\,
      R => '0'
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \^d\,
      Q => gen_cc_i,
      R => '0'
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEF00"
    )
        port map (
      I0 => sof_data_eof_1_r_reg_0,
      I1 => \^tx_dst_rdy_n_buffer_reg_0\,
      I2 => S_AXI_TX_TVALID,
      I3 => idle_r,
      I4 => sof_data_eof_3_r,
      I5 => data_eof_3_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_idle_c,
      Q => idle_r,
      S => p_0_in
    );
in_frame_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FF0100"
    )
        port map (
      I0 => sof_data_eof_1_r_reg_0,
      I1 => S_AXI_TX_TLAST,
      I2 => \^tx_dst_rdy_n_buffer_reg_0\,
      I3 => S_AXI_TX_TVALID,
      I4 => in_frame_r_reg,
      O => new_pkt_r_reg
    );
sof_data_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => sof_data_eof_1_r_reg_0,
      I1 => \^s_axi_tx_tvalid_1\,
      I2 => idle_r,
      I3 => sof_data_eof_3_r,
      I4 => data_eof_3_r,
      O => next_sof_data_eof_1_c
    );
sof_data_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_sof_data_eof_1_c,
      Q => sof_data_eof_1_r,
      R => p_0_in
    );
sof_data_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => sof_data_eof_1_r,
      Q => sof_data_eof_2_r,
      R => p_0_in
    );
sof_data_eof_3_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => sof_data_eof_2_r,
      Q => sof_data_eof_3_r,
      R => p_0_in
    );
sof_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => S_AXI_TX_TLAST,
      I1 => S_AXI_TX_TVALID,
      I2 => \^tx_dst_rdy_n_buffer_reg_0\,
      I3 => sof_data_eof_1_r_reg_0,
      I4 => sof_r_i_2_n_0,
      O => next_sof_c
    );
sof_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data_eof_3_r,
      I1 => sof_data_eof_3_r,
      I2 => idle_r,
      O => sof_r_i_2_n_0
    );
sof_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => \^pdu_ok_c\,
      D => next_sof_c,
      Q => sof_r,
      R => p_0_in
    );
storage_pad_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => S_AXI_TX_TVALID,
      I1 => \^tx_dst_rdy_n_buffer_reg_0\,
      I2 => S_AXI_TX_TLAST,
      O => \^s_axi_tx_tvalid_1\
    );
storage_v_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d\,
      O => \^pdu_ok_c\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_TX_LL_DATAPATH is
  port (
    tx_pe_data_v_i : out STD_LOGIC;
    gen_pad_i : out STD_LOGIC;
    in_frame_r_reg_0 : out STD_LOGIC;
    \TX_PE_DATA_Buffer_reg[0]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    in_frame_r_reg_1 : in STD_LOGIC;
    storage_pad_r_reg_0 : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 1 );
    storage_pad_r_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC;
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
end aurora_8b10b_0_TX_LL_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0_TX_LL_DATAPATH is
  signal GEN_PAD_Buffer_i_1_n_0 : STD_LOGIC;
  signal TX_PE_DATA_V_Buffer_i_1_n_0 : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal in_frame_c : STD_LOGIC;
  signal \^in_frame_r_reg_0\ : STD_LOGIC;
  signal storage_pad_r : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal storage_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal storage_v_r : STD_LOGIC;
  signal tx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal tx_pe_data_v_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_PAD_Buffer_i_1 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of TX_PE_DATA_V_Buffer_i_1 : label is "soft_lutpair98";
begin
  in_frame_r_reg_0 <= \^in_frame_r_reg_0\;
GEN_PAD_Buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gen_pad_r,
      I1 => D,
      O => GEN_PAD_Buffer_i_1_n_0
    );
GEN_PAD_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => GEN_PAD_Buffer_i_1_n_0,
      Q => gen_pad_i,
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(0),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(15),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(10),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(5),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(11),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(4),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(12),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(3),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(13),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(2),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(14),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(1),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(15),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(0),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(1),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(14),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(2),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(13),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(3),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(12),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(4),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(11),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(5),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(10),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(6),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(9),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(7),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(8),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(8),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(7),
      R => '0'
    );
\TX_PE_DATA_Buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => tx_pe_data_r(9),
      Q => \TX_PE_DATA_Buffer_reg[0]_0\(6),
      R => '0'
    );
TX_PE_DATA_V_Buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_pe_data_v_r,
      I1 => D,
      O => TX_PE_DATA_V_Buffer_i_1_n_0
    );
TX_PE_DATA_V_Buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => TX_PE_DATA_V_Buffer_i_1_n_0,
      Q => tx_pe_data_v_i,
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r,
      Q => gen_pad_r,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => in_frame_r_reg_1,
      Q => \^in_frame_r_reg_0\,
      R => p_0_in
    );
storage_pad_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B0"
    )
        port map (
      I0 => \^in_frame_r_reg_0\,
      I1 => storage_pad_r_reg_0,
      I2 => S_AXI_TX_TKEEP(0),
      I3 => S_AXI_TX_TKEEP(1),
      I4 => storage_pad_r_reg_1,
      O => storage_pad_r0
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(0),
      Q => storage_r(0),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(10),
      Q => storage_r(10),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(11),
      Q => storage_r(11),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(12),
      Q => storage_r(12),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(13),
      Q => storage_r(13),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(14),
      Q => storage_r(14),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(15),
      Q => storage_r(15),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(1),
      Q => storage_r(1),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(2),
      Q => storage_r(2),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(3),
      Q => storage_r(3),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(4),
      Q => storage_r(4),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(5),
      Q => storage_r(5),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(6),
      Q => storage_r(6),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(7),
      Q => storage_r(7),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(8),
      Q => storage_r(8),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => S_AXI_TX_TDATA(9),
      Q => storage_r(9),
      R => '0'
    );
storage_v_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => storage_pad_r_reg_0,
      I1 => \^in_frame_r_reg_0\,
      I2 => S_AXI_TX_TVALID,
      I3 => tx_dst_rdy,
      O => in_frame_c
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => in_frame_c,
      Q => storage_v_r,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(0),
      Q => tx_pe_data_r(0),
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(10),
      Q => tx_pe_data_r(10),
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(11),
      Q => tx_pe_data_r(11),
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(12),
      Q => tx_pe_data_r(12),
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(13),
      Q => tx_pe_data_r(13),
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(14),
      Q => tx_pe_data_r(14),
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(15),
      Q => tx_pe_data_r(15),
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(1),
      Q => tx_pe_data_r(1),
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(2),
      Q => tx_pe_data_r(2),
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(3),
      Q => tx_pe_data_r(3),
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(4),
      Q => tx_pe_data_r(4),
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(5),
      Q => tx_pe_data_r(5),
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(6),
      Q => tx_pe_data_r(6),
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(7),
      Q => tx_pe_data_r(7),
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(8),
      Q => tx_pe_data_r(8),
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(9),
      Q => tx_pe_data_r(9),
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => E(0),
      D => storage_v_r,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    HPCNT_RESET : out STD_LOGIC;
    GT_RESET : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
end aurora_8b10b_0_cdc_sync;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  AR(0) <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= GT_RESET;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
\hotplug_count_synth.count_for_reset_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      I1 => \out\,
      O => HPCNT_RESET
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_0 is
  port (
    \out\ : out STD_LOGIC;
    RESET : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_0 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_0;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_0 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= RESET;
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_1 is
  port (
    \out\ : out STD_LOGIC;
    RESET : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_1 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_1;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_1 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= RESET;
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_10 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rx_state_reg[1]\ : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    time_tlock_max : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxresetdone_s3 : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_10 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_10;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_10 is
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= quad1_common_lock_in;
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => \FSM_sequential_rx_state_reg[0]\,
      I2 => \FSM_sequential_rx_state_reg[0]_0\,
      I3 => \FSM_sequential_rx_state_reg[0]_1\,
      I4 => \FSM_sequential_rx_state_reg[0]_2\,
      I5 => \FSM_sequential_rx_state[3]_i_8_n_0\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF08FF08FF08"
    )
        port map (
      I0 => SS(0),
      I1 => time_tlock_max,
      I2 => reset_time_out_reg_0,
      I3 => \FSM_sequential_rx_state_reg[0]_3\,
      I4 => Q(0),
      I5 => \reset_time_out_i_3__0_n_0\,
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFFEEEF0000"
    )
        port map (
      I0 => reset_time_out_reg_1,
      I1 => \reset_time_out_i_3__0_n_0\,
      I2 => reset_time_out_reg,
      I3 => Q(1),
      I4 => reset_time_out_reg_2,
      I5 => reset_time_out_reg_0,
      O => \FSM_sequential_rx_state_reg[1]\
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008F0080"
    )
        port map (
      I0 => Q(1),
      I1 => rxresetdone_s3,
      I2 => Q(2),
      I3 => Q(3),
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \reset_time_out_i_3__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_11 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_11 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_11;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_11 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_13 is
  port (
    \out\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_13 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_13;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_13 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_18 is
  port (
    \out\ : out STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_18 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_18;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_18 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_4\ : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    reset_time_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_2 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_2;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_2 is
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  signal reset_time_out_0 : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= quad1_common_lock_in;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAFBAAABA"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_tx_state_reg[0]\,
      I2 => Q(3),
      I3 => Q(0),
      I4 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      I5 => \FSM_sequential_tx_state_reg[0]_0\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000AABA"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_1\,
      I1 => \FSM_sequential_tx_state_reg[0]\,
      I2 => \FSM_sequential_tx_state_reg[0]_2\,
      I3 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      I4 => \FSM_sequential_tx_state_reg[0]_3\,
      I5 => \FSM_sequential_tx_state_reg[0]_4\,
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8CCB800"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => Q(2),
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      I3 => Q(1),
      I4 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
reset_time_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reset_time_out_0,
      I1 => reset_time_out_i_3_n_0,
      I2 => reset_time_out,
      O => reset_time_out_reg
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AE00AE00AEF0AE"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      I1 => reset_time_out_reg_0,
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(1),
      O => reset_time_out_0
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF005555F544"
    )
        port map (
      I0 => Q(1),
      I1 => reset_time_out_reg_0,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(2),
      O => reset_time_out_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_23 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_23 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_23;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_23 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ <= in0;
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_3 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_3 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_3;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_3 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_cdc_sync_5 is
  port (
    \out\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_cdc_sync_5 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_cdc_sync_5;

architecture STRUCTURE of aurora_8b10b_0_cdc_sync_5 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int_inferred_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PLL_NOT_LOCKED,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2\ is
  port (
    \out\ : out STD_LOGIC;
    gtrxreset_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_i,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_12\ is
  port (
    \out\ : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_12\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_12\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_12\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_14\ is
  port (
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_14\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_14\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_14\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => '0',
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_15\ is
  port (
    \out\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_15\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_15\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_15\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_16\ is
  port (
    \out\ : out STD_LOGIC;
    rx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_16\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_16\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_16\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_17\ is
  port (
    rxpmaresetdone_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_17\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_17\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_17\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rxpmaresetdone_i,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_19\ is
  port (
    \out\ : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\ : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_19\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_19\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_19\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_20\ is
  port (
    txpmaresetdone_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_20\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_20\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_20\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => txpmaresetdone_i,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_21\ is
  port (
    \out\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_21\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_21\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_21\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => SR(0),
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_22\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_22\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_22\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_22\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  AR(0) <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gt_common_reset_out,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_24\ is
  port (
    \out\ : out STD_LOGIC;
    link_reset_comb_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_24\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_24\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_24\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_comb_r,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_25\ is
  port (
    \out\ : out STD_LOGIC;
    tx_lock_comb_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_25\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_25\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_25\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_lock_comb_r,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_26\ is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hotplug_count_synth.count_for_reset_r_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hotplug_count_synth.count_for_reset_r_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hotplug_count_synth.count_for_reset_r_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hotplug_count_synth.count_for_reset_r_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hotplug_count_synth.count_for_reset_r_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_cc_extend_r2 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \hotplug_count_synth.count_for_reset_r_reg\ : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_26\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_26\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_26\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  signal \hotplug_count_synth.count_for_reset_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[0]_i_6_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[0]_i_7_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[12]_i_2_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[12]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[12]_i_4_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[12]_i_5_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[16]_i_2_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[16]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[16]_i_4_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[16]_i_5_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[20]_i_2_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[20]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[4]_i_4_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[4]_i_5_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hotplug_count_synth.count_for_reset_r_reg[8]_i_1\ : label is 35;
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r2,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
\hotplug_count_synth.count_for_reset_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[0]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(3),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[0]_i_4_n_0\
    );
\hotplug_count_synth.count_for_reset_r[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(2),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[0]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(1),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[0]_i_6_n_0\
    );
\hotplug_count_synth.count_for_reset_r[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(0),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[0]_i_7_n_0\
    );
\hotplug_count_synth.count_for_reset_r[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(15),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[12]_i_2_n_0\
    );
\hotplug_count_synth.count_for_reset_r[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(14),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[12]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(13),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[12]_i_4_n_0\
    );
\hotplug_count_synth.count_for_reset_r[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(12),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[12]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(19),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[16]_i_2_n_0\
    );
\hotplug_count_synth.count_for_reset_r[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(18),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[16]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(17),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[16]_i_4_n_0\
    );
\hotplug_count_synth.count_for_reset_r[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(16),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[16]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(21),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[20]_i_2_n_0\
    );
\hotplug_count_synth.count_for_reset_r[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(20),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[20]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(7),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[4]_i_2_n_0\
    );
\hotplug_count_synth.count_for_reset_r[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(6),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[4]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(5),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[4]_i_4_n_0\
    );
\hotplug_count_synth.count_for_reset_r[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(4),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[4]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(11),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[8]_i_2_n_0\
    );
\hotplug_count_synth.count_for_reset_r[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(10),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[8]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(9),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[8]_i_4_n_0\
    );
\hotplug_count_synth.count_for_reset_r[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(8),
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \hotplug_count_synth.count_for_reset_r[8]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0\,
      CO(2) => \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_1\,
      CO(1) => \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_2\,
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \hotplug_count_synth.count_for_reset_r[0]_i_3_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \hotplug_count_synth.count_for_reset_r[0]_i_4_n_0\,
      S(2) => \hotplug_count_synth.count_for_reset_r[0]_i_5_n_0\,
      S(1) => \hotplug_count_synth.count_for_reset_r[0]_i_6_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[0]_i_7_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0\,
      CO(3) => \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0\,
      CO(2) => \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_1\,
      CO(1) => \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_2\,
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \hotplug_count_synth.count_for_reset_r_reg[15]\(3 downto 0),
      S(3) => \hotplug_count_synth.count_for_reset_r[12]_i_2_n_0\,
      S(2) => \hotplug_count_synth.count_for_reset_r[12]_i_3_n_0\,
      S(1) => \hotplug_count_synth.count_for_reset_r[12]_i_4_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[12]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0\,
      CO(3) => \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0\,
      CO(2) => \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_1\,
      CO(1) => \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_2\,
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \hotplug_count_synth.count_for_reset_r_reg[19]\(3 downto 0),
      S(3) => \hotplug_count_synth.count_for_reset_r[16]_i_2_n_0\,
      S(2) => \hotplug_count_synth.count_for_reset_r[16]_i_3_n_0\,
      S(1) => \hotplug_count_synth.count_for_reset_r[16]_i_4_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[16]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \hotplug_count_synth.count_for_reset_r_reg[21]\(1 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \hotplug_count_synth.count_for_reset_r[20]_i_2_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[20]_i_3_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0\,
      CO(3) => \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0\,
      CO(2) => \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_1\,
      CO(1) => \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_2\,
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \hotplug_count_synth.count_for_reset_r_reg[7]\(3 downto 0),
      S(3) => \hotplug_count_synth.count_for_reset_r[4]_i_2_n_0\,
      S(2) => \hotplug_count_synth.count_for_reset_r[4]_i_3_n_0\,
      S(1) => \hotplug_count_synth.count_for_reset_r[4]_i_4_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[4]_i_5_n_0\
    );
\hotplug_count_synth.count_for_reset_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0\,
      CO(3) => \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0\,
      CO(2) => \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_1\,
      CO(1) => \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_2\,
      CO(0) => \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \hotplug_count_synth.count_for_reset_r_reg[11]\(3 downto 0),
      S(3) => \hotplug_count_synth.count_for_reset_r[8]_i_2_n_0\,
      S(2) => \hotplug_count_synth.count_for_reset_r[8]_i_3_n_0\,
      S(1) => \hotplug_count_synth.count_for_reset_r[8]_i_4_n_0\,
      S(0) => \hotplug_count_synth.count_for_reset_r[8]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_4\ is
  port (
    \out\ : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_4\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_4\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_4\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => txfsm_txresetdone_r,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_6\ is
  port (
    \out\ : out STD_LOGIC;
    run_phase_alignment_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_6\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_6\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_6\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_7\ is
  port (
    \out\ : out STD_LOGIC;
    time_out_wait_bypass : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_7\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_7\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_7\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => time_out_wait_bypass,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_8\ is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0\ : out STD_LOGIC;
    tx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_8\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_8\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_8\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  TX_RESETDONE_OUT <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
gt_txresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_cdc_sync__parameterized2_9\ is
  port (
    \out\ : out STD_LOGIC;
    gtrxreset_i_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_cdc_sync__parameterized2_9\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_cdc_sync__parameterized2_9\;

architecture STRUCTURE of \aurora_8b10b_0_cdc_sync__parameterized2_9\ is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\ : signal is "true";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\ : signal is "no";
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : STD_LOGIC;
  attribute async_reg of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "true";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\ : signal is "no";
  attribute KEEP : string;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is std.standard.true;
  attribute KEEP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "yes";
  attribute shift_extract of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : label is "no";
begin
  \out\ <= \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_0,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_GLOBAL_LOGIC is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_v_flop_0_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    gen_k_flop_0_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_r_flop_0_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CHANNEL_UP : out STD_LOGIC;
    start_rx_i : out STD_LOGIC;
    gtrxreset_i : out STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    SOFT_ERR : out STD_LOGIC;
    begin_r0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    lfsr_taps_i : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    hard_err_i : in STD_LOGIC;
    LANE_UP : in STD_LOGIC;
    soft_err_flop_r0 : in STD_LOGIC;
    hard_err_reset_i : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC
  );
end aurora_8b10b_0_GLOBAL_LOGIC;

architecture STRUCTURE of aurora_8b10b_0_GLOBAL_LOGIC is
  signal D1_out : STD_LOGIC;
  signal did_ver_i : STD_LOGIC;
  signal gen_ver_i : STD_LOGIC;
  signal idle_and_ver_gen_i_n_8 : STD_LOGIC;
  signal \^reset_channel_i\ : STD_LOGIC;
begin
  reset_channel_i <= \^reset_channel_i\;
channel_err_detect_i: entity work.aurora_8b10b_0_CHANNEL_ERR_DETECT
     port map (
      HARD_ERR => HARD_ERR,
      LANE_UP => LANE_UP,
      POWER_DOWN => POWER_DOWN,
      SOFT_ERR => SOFT_ERR,
      hard_err_i => hard_err_i,
      reset_channel_i => \^reset_channel_i\,
      soft_err_flop_r0 => soft_err_flop_r0,
      user_clk => user_clk
    );
channel_init_sm_i: entity work.aurora_8b10b_0_CHANNEL_INIT_SM
     port map (
      CHANNEL_UP => CHANNEL_UP,
      D1_out => D1_out,
      SR(0) => SR(0),
      begin_r0 => begin_r0,
      did_ver_i => did_ver_i,
      gen_ver_i => gen_ver_i,
      got_v_i => got_v_i,
      \gtrxreset_extend_r_reg[0]_0\ => lfsr_taps_i,
      gtrxreset_i => gtrxreset_i,
      hard_err_reset_i => hard_err_reset_i,
      p_0_in => p_0_in,
      reset_channel_i => \^reset_channel_i\,
      start_rx_i => start_rx_i,
      \txver_count_r_reg[7]_0\ => idle_and_ver_gen_i_n_8,
      user_clk => user_clk,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
idle_and_ver_gen_i: entity work.aurora_8b10b_0_IDLE_AND_VER_GEN
     port map (
      D1_out => D1_out,
      did_ver_i => did_ver_i,
      gen_a_i => gen_a_i,
      gen_k_flop_0_i_0(1 downto 0) => gen_k_flop_0_i(1 downto 0),
      gen_r_flop_0_i_0(1 downto 0) => gen_r_flop_0_i(1 downto 0),
      gen_v_flop_0_i_0(1 downto 0) => gen_v_flop_0_i(1 downto 0),
      gen_ver_i => gen_ver_i,
      gen_ver_word_2_r_reg_0 => idle_and_ver_gen_i_n_8,
      lfsr_taps_i_0 => lfsr_taps_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_HOTPLUG is
  port (
    LINK_RESET_OUT : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    HPCNT_RESET : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end aurora_8b10b_0_HOTPLUG;

architecture STRUCTURE of aurora_8b10b_0_HOTPLUG is
  signal \hotplug_count_synth.count_for_reset_r_reg\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal link_reset_0 : STD_LOGIC;
  signal link_reset_r : STD_LOGIC;
  signal link_reset_r_i_2_n_0 : STD_LOGIC;
  signal link_reset_r_i_3_n_0 : STD_LOGIC;
  signal link_reset_r_i_4_n_0 : STD_LOGIC;
  signal link_reset_r_i_5_n_0 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_0 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_1 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_10 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_11 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_12 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_13 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_14 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_15 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_16 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_17 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_18 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_19 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_2 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_20 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_21 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_3 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_4 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_5 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_6 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_7 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_8 : STD_LOGIC;
  signal rx_cc_cdc_sync_n_9 : STD_LOGIC;
  signal rx_cc_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_cc_extend_r2 : STD_LOGIC;
  signal rx_cc_extend_r2_i_1_n_0 : STD_LOGIC;
  signal rx_cc_extend_r2_i_2_n_0 : STD_LOGIC;
begin
\hotplug_count_synth.count_for_reset_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_3,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(0)
    );
\hotplug_count_synth.count_for_reset_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_9,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(10)
    );
\hotplug_count_synth.count_for_reset_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_8,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(11)
    );
\hotplug_count_synth.count_for_reset_r_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_15,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(12)
    );
\hotplug_count_synth.count_for_reset_r_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_14,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(13)
    );
\hotplug_count_synth.count_for_reset_r_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_13,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(14)
    );
\hotplug_count_synth.count_for_reset_r_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_12,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(15)
    );
\hotplug_count_synth.count_for_reset_r_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_19,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(16)
    );
\hotplug_count_synth.count_for_reset_r_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_18,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(17)
    );
\hotplug_count_synth.count_for_reset_r_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_17,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(18)
    );
\hotplug_count_synth.count_for_reset_r_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_16,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(19)
    );
\hotplug_count_synth.count_for_reset_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_2,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(1)
    );
\hotplug_count_synth.count_for_reset_r_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_21,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(20)
    );
\hotplug_count_synth.count_for_reset_r_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_20,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(21)
    );
\hotplug_count_synth.count_for_reset_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_1,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(2)
    );
\hotplug_count_synth.count_for_reset_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_0,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(3)
    );
\hotplug_count_synth.count_for_reset_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_7,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(4)
    );
\hotplug_count_synth.count_for_reset_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_6,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(5)
    );
\hotplug_count_synth.count_for_reset_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_5,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(6)
    );
\hotplug_count_synth.count_for_reset_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_4,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(7)
    );
\hotplug_count_synth.count_for_reset_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_11,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(8)
    );
\hotplug_count_synth.count_for_reset_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => HPCNT_RESET,
      D => rx_cc_cdc_sync_n_10,
      Q => \hotplug_count_synth.count_for_reset_r_reg\(9)
    );
\hotplug_enable.LINK_RESET_OUT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_r,
      Q => LINK_RESET_OUT,
      R => '0'
    );
link_reset_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => link_reset_r_i_2_n_0,
      I1 => link_reset_r_i_3_n_0,
      I2 => link_reset_r_i_4_n_0,
      I3 => link_reset_r_i_5_n_0,
      O => link_reset_0
    );
link_reset_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(12),
      I1 => \hotplug_count_synth.count_for_reset_r_reg\(13),
      I2 => \hotplug_count_synth.count_for_reset_r_reg\(10),
      I3 => \hotplug_count_synth.count_for_reset_r_reg\(11),
      I4 => \hotplug_count_synth.count_for_reset_r_reg\(15),
      I5 => \hotplug_count_synth.count_for_reset_r_reg\(14),
      O => link_reset_r_i_2_n_0
    );
link_reset_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(18),
      I1 => \hotplug_count_synth.count_for_reset_r_reg\(19),
      I2 => \hotplug_count_synth.count_for_reset_r_reg\(16),
      I3 => \hotplug_count_synth.count_for_reset_r_reg\(17),
      I4 => \hotplug_count_synth.count_for_reset_r_reg\(21),
      I5 => \hotplug_count_synth.count_for_reset_r_reg\(20),
      O => link_reset_r_i_3_n_0
    );
link_reset_r_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F8F8F8"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(2),
      I1 => \hotplug_count_synth.count_for_reset_r_reg\(3),
      I2 => \hotplug_count_synth.count_for_reset_r_reg\(4),
      I3 => \hotplug_count_synth.count_for_reset_r_reg\(1),
      I4 => \hotplug_count_synth.count_for_reset_r_reg\(0),
      O => link_reset_r_i_4_n_0
    );
link_reset_r_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \hotplug_count_synth.count_for_reset_r_reg\(5),
      I1 => \hotplug_count_synth.count_for_reset_r_reg\(6),
      I2 => \hotplug_count_synth.count_for_reset_r_reg\(7),
      I3 => \hotplug_count_synth.count_for_reset_r_reg\(9),
      I4 => \hotplug_count_synth.count_for_reset_r_reg\(8),
      O => link_reset_r_i_5_n_0
    );
link_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0,
      Q => link_reset_r,
      R => '0'
    );
rx_cc_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_26\
     port map (
      O(3) => rx_cc_cdc_sync_n_0,
      O(2) => rx_cc_cdc_sync_n_1,
      O(1) => rx_cc_cdc_sync_n_2,
      O(0) => rx_cc_cdc_sync_n_3,
      \hotplug_count_synth.count_for_reset_r_reg\(21 downto 0) => \hotplug_count_synth.count_for_reset_r_reg\(21 downto 0),
      \hotplug_count_synth.count_for_reset_r_reg[11]\(3) => rx_cc_cdc_sync_n_8,
      \hotplug_count_synth.count_for_reset_r_reg[11]\(2) => rx_cc_cdc_sync_n_9,
      \hotplug_count_synth.count_for_reset_r_reg[11]\(1) => rx_cc_cdc_sync_n_10,
      \hotplug_count_synth.count_for_reset_r_reg[11]\(0) => rx_cc_cdc_sync_n_11,
      \hotplug_count_synth.count_for_reset_r_reg[15]\(3) => rx_cc_cdc_sync_n_12,
      \hotplug_count_synth.count_for_reset_r_reg[15]\(2) => rx_cc_cdc_sync_n_13,
      \hotplug_count_synth.count_for_reset_r_reg[15]\(1) => rx_cc_cdc_sync_n_14,
      \hotplug_count_synth.count_for_reset_r_reg[15]\(0) => rx_cc_cdc_sync_n_15,
      \hotplug_count_synth.count_for_reset_r_reg[19]\(3) => rx_cc_cdc_sync_n_16,
      \hotplug_count_synth.count_for_reset_r_reg[19]\(2) => rx_cc_cdc_sync_n_17,
      \hotplug_count_synth.count_for_reset_r_reg[19]\(1) => rx_cc_cdc_sync_n_18,
      \hotplug_count_synth.count_for_reset_r_reg[19]\(0) => rx_cc_cdc_sync_n_19,
      \hotplug_count_synth.count_for_reset_r_reg[21]\(1) => rx_cc_cdc_sync_n_20,
      \hotplug_count_synth.count_for_reset_r_reg[21]\(0) => rx_cc_cdc_sync_n_21,
      \hotplug_count_synth.count_for_reset_r_reg[7]\(3) => rx_cc_cdc_sync_n_4,
      \hotplug_count_synth.count_for_reset_r_reg[7]\(2) => rx_cc_cdc_sync_n_5,
      \hotplug_count_synth.count_for_reset_r_reg[7]\(1) => rx_cc_cdc_sync_n_6,
      \hotplug_count_synth.count_for_reset_r_reg[7]\(0) => rx_cc_cdc_sync_n_7,
      init_clk_in => init_clk_in,
      rx_cc_extend_r2 => rx_cc_extend_r2,
      user_clk => user_clk
    );
rx_cc_extend_r2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rx_cc_extend_r(2),
      I1 => rx_cc_extend_r(3),
      I2 => rx_cc_extend_r(0),
      I3 => rx_cc_extend_r(1),
      I4 => rx_cc_extend_r2_i_2_n_0,
      O => rx_cc_extend_r2_i_1_n_0
    );
rx_cc_extend_r2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cc_extend_r(5),
      I1 => rx_cc_extend_r(4),
      I2 => rx_cc_extend_r(7),
      I3 => rx_cc_extend_r(6),
      O => rx_cc_extend_r2_i_2_n_0
    );
rx_cc_extend_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r2_i_1_n_0,
      Q => rx_cc_extend_r2,
      R => '0'
    );
\rx_cc_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(1),
      Q => rx_cc_extend_r(0),
      R => SR(0)
    );
\rx_cc_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(2),
      Q => rx_cc_extend_r(1),
      R => SR(0)
    );
\rx_cc_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(3),
      Q => rx_cc_extend_r(2),
      R => SR(0)
    );
\rx_cc_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(4),
      Q => rx_cc_extend_r(3),
      R => SR(0)
    );
\rx_cc_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(5),
      Q => rx_cc_extend_r(4),
      R => SR(0)
    );
\rx_cc_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(6),
      Q => rx_cc_extend_r(5),
      R => SR(0)
    );
\rx_cc_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(7),
      Q => rx_cc_extend_r(6),
      R => SR(0)
    );
\rx_cc_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => rx_cc_extend_r(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_RESET_LOGIC is
  port (
    link_reset_comb_r : out STD_LOGIC;
    SYSTEM_RESET_reg_0 : out STD_LOGIC;
    wait_for_lane_up_r0 : out STD_LOGIC;
    new_pkt_r : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    gt_rxresetdone_r2_reg_0 : in STD_LOGIC;
    gt_txresetdone_r2_reg_0 : in STD_LOGIC;
    LINK_RESET_OUT : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC;
    CHANNEL_UP : in STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC
  );
end aurora_8b10b_0_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_0_RESET_LOGIC is
  signal SYSTEM_RESET0_n_0 : STD_LOGIC;
  signal \^system_reset_reg_0\ : STD_LOGIC;
  signal gt_rxresetdone_r : STD_LOGIC;
  signal gt_rxresetdone_r2 : STD_LOGIC;
  signal gt_rxresetdone_r3 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal \^link_reset_comb_r\ : STD_LOGIC;
  signal scndry_out : STD_LOGIC;
  signal tx_lock_comb_r : STD_LOGIC;
  signal tx_lock_sync : STD_LOGIC;
begin
  SYSTEM_RESET_reg_0 <= \^system_reset_reg_0\;
  link_reset_comb_r <= \^link_reset_comb_r\;
SYSTEM_RESET0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \out\,
      I1 => gt_txresetdone_r3,
      I2 => gt_rxresetdone_r3,
      I3 => scndry_out,
      I4 => tx_lock_sync,
      O => SYSTEM_RESET0_n_0
    );
SYSTEM_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => SYSTEM_RESET0_n_0,
      Q => \^system_reset_reg_0\,
      R => '0'
    );
gt_rxresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => gt_rxresetdone_r2_reg_0,
      D => gt_rxresetdone_r,
      Q => gt_rxresetdone_r2
    );
gt_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt_rxresetdone_r2,
      Q => gt_rxresetdone_r3,
      R => '0'
    );
gt_rxresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => gt_rxresetdone_r2_reg_0,
      D => '1',
      Q => gt_rxresetdone_r
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => gt_txresetdone_r2_reg_0,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => '0'
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => user_clk,
      CE => '1',
      CLR => gt_txresetdone_r2_reg_0,
      D => '1',
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_24\
     port map (
      init_clk_in => init_clk_in,
      link_reset_comb_r => \^link_reset_comb_r\,
      \out\ => scndry_out,
      user_clk => user_clk
    );
link_reset_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => LINK_RESET_OUT,
      Q => \^link_reset_comb_r\,
      R => '0'
    );
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044400000400"
    )
        port map (
      I0 => \^system_reset_reg_0\,
      I1 => CHANNEL_UP,
      I2 => S_AXI_TX_TLAST,
      I3 => S_AXI_TX_TVALID,
      I4 => tx_dst_rdy,
      I5 => new_pkt_r_reg,
      O => new_pkt_r
    );
tx_lock_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_25\
     port map (
      init_clk_in => init_clk_in,
      \out\ => tx_lock_sync,
      tx_lock_comb_r => tx_lock_comb_r,
      user_clk => user_clk
    );
tx_lock_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => quad1_common_lock_in,
      Q => tx_lock_comb_r,
      R => '0'
    );
verify_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^system_reset_reg_0\,
      I1 => reset_channel_i,
      O => wait_for_lane_up_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_RX_LL is
  port (
    FRAME_ERR : out STD_LOGIC;
    in_frame_r : out STD_LOGIC;
    storage_v_r : out STD_LOGIC;
    M_AXI_RX_TVALID : out STD_LOGIC;
    M_AXI_RX_TDATA : out STD_LOGIC_VECTOR ( 0 to 15 );
    M_AXI_RX_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RX_TLAST : out STD_LOGIC;
    RX_EOF_N_Buffer_reg : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    rx_pad_i : in STD_LOGIC;
    rx_scp_i : in STD_LOGIC;
    rx_ecp_i : in STD_LOGIC;
    RX_SRC_RDY_N_Buffer_reg_inv : in STD_LOGIC;
    in_frame_r_reg : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_rx_i : in STD_LOGIC
  );
end aurora_8b10b_0_RX_LL;

architecture STRUCTURE of aurora_8b10b_0_RX_LL is
begin
rx_ll_pdu_datapath_i: entity work.aurora_8b10b_0_RX_LL_PDU_DATAPATH
     port map (
      D(15 downto 0) => D(15 downto 0),
      FRAME_ERR => FRAME_ERR,
      M_AXI_RX_TDATA(0 to 15) => M_AXI_RX_TDATA(0 to 15),
      M_AXI_RX_TKEEP(0) => M_AXI_RX_TKEEP(0),
      M_AXI_RX_TLAST => M_AXI_RX_TLAST,
      M_AXI_RX_TVALID => M_AXI_RX_TVALID,
      RX_EOF_N_Buffer_reg_0 => RX_EOF_N_Buffer_reg,
      RX_SRC_RDY_N_Buffer_reg_inv_0 => RX_SRC_RDY_N_Buffer_reg_inv,
      in_frame_r_reg_0 => in_frame_r,
      in_frame_r_reg_1 => in_frame_r_reg,
      rx_ecp_i => rx_ecp_i,
      rx_pad_i => rx_pad_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      start_rx_i => start_rx_i,
      storage_v_r => storage_v_r,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    tx_pe_data_v_i : out STD_LOGIC;
    gen_pad_i : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    gen_scp_i : out STD_LOGIC;
    gen_ecp_i : out STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    \TX_PE_DATA_Buffer_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    Q : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    storage_pad_r_reg : in STD_LOGIC;
    S_AXI_TX_TVALID : in STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 1 );
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
end aurora_8b10b_0_TX_LL;

architecture STRUCTURE of aurora_8b10b_0_TX_LL is
  signal D : STD_LOGIC;
  signal pdu_ok_c : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
  signal tx_ll_control_i_n_7 : STD_LOGIC;
  signal tx_ll_control_i_n_8 : STD_LOGIC;
  signal tx_ll_datapath_i_n_2 : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.aurora_8b10b_0_TX_LL_CONTROL
     port map (
      D => D,
      Q => Q,
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TREADY => S_AXI_TX_TREADY,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      TX_DST_RDY_N_Buffer_reg_0 => \^tx_dst_rdy\,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      gen_scp_i => gen_scp_i,
      in_frame_r_reg => tx_ll_datapath_i_n_2,
      new_pkt_r_reg => tx_ll_control_i_n_8,
      p_0_in => p_0_in,
      pdu_ok_c => pdu_ok_c,
      \^s_axi_tx_tvalid\ => tx_ll_control_i_n_7,
      sof_data_eof_1_r_reg_0 => storage_pad_r_reg,
      user_clk => user_clk
    );
tx_ll_datapath_i: entity work.aurora_8b10b_0_TX_LL_DATAPATH
     port map (
      D => D,
      E(0) => pdu_ok_c,
      S_AXI_TX_TDATA(0 to 15) => S_AXI_TX_TDATA(0 to 15),
      S_AXI_TX_TKEEP(0 to 1) => S_AXI_TX_TKEEP(0 to 1),
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      \TX_PE_DATA_Buffer_reg[0]_0\(15 downto 0) => \TX_PE_DATA_Buffer_reg[0]\(15 downto 0),
      gen_pad_i => gen_pad_i,
      in_frame_r_reg_0 => tx_ll_datapath_i_n_2,
      in_frame_r_reg_1 => tx_ll_control_i_n_8,
      p_0_in => p_0_in,
      storage_pad_r_reg_0 => storage_pad_r_reg,
      storage_pad_r_reg_1 => tx_ll_control_i_n_7,
      tx_dst_rdy => \^tx_dst_rdy\,
      tx_pe_data_v_i => tx_pe_data_v_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    drp_op_done : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DRPADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DRPWE : out STD_LOGIC;
    DRPEN : out STD_LOGIC;
    \rd_data_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in0 : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_reg[0]_0\ : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DRPWE_IN : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC;
    DRPDO_OUT : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end aurora_8b10b_0_gtrxreset_seq;

architecture STRUCTURE of aurora_8b10b_0_gtrxreset_seq is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^drp_op_done\ : STD_LOGIC;
  signal drp_op_done_o_i_1_n_0 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal gtrxreset_f : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal next_rd_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal original_rd_data0 : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal rst_ss : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of drp_op_done_o_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of gtpe2_i_i_21 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of gtpe2_i_i_22 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of gtpe2_i_i_24 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of gtpe2_i_i_25 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of gtpe2_i_i_26 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair37";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  drp_op_done <= \^drp_op_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \rd_data_reg[0]_0\,
      I2 => flag,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \rd_data_reg[0]_0\,
      I1 => flag,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => rxpmaresetdone_ss,
      I2 => rxpmaresetdone_sss,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => rxpmaresetdone_ss,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \rd_data_reg[0]_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \rd_data_reg[0]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \rd_data_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \rd_data_reg[0]_0\,
      I2 => p_0_in0_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => gtrxreset_ss,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => flag
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      PRE => rst_ss,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => p_0_in0_in
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
drp_op_done_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \rd_data_reg[0]_0\,
      I1 => flag,
      I2 => \^drp_op_done\,
      O => drp_op_done_o_i_1_n_0
    );
drp_op_done_o_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => gtrxreset_f,
      D => drp_op_done_o_i_1_n_0,
      Q => \^drp_op_done\
    );
flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => flag,
      I1 => flag_reg_n_0,
      I2 => \^q\(0),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \^q\(1),
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drpclk_in,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => DRPEN_IN,
      I1 => \^drp_op_done\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => DRPEN
    );
gtpe2_i_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(6),
      O => DRPADDR(6)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => DRPWE_IN,
      I1 => \^drp_op_done\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => DRPWE
    );
gtpe2_i_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(5),
      O => DRPADDR(5)
    );
gtpe2_i_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(4),
      O => DRPADDR(4)
    );
gtpe2_i_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(3),
      O => DRPADDR(3)
    );
gtpe2_i_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(2),
      O => DRPADDR(2)
    );
gtpe2_i_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(1),
      O => DRPADDR(1)
    );
gtpe2_i_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drp_op_done\,
      I1 => DRPADDR_IN(0),
      O => DRPADDR(0)
    );
gtrxreset_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => p_0_in0_in,
      I5 => \^q\(1),
      O => \gtrxreset_i__0\
    );
gtrxreset_in_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_21\
     port map (
      SR(0) => SR(0),
      drpclk_in => drpclk_in,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_f
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => \gtrxreset_i__0\,
      Q => GTRXRESET
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => gtrxreset_f,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
\original_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \rd_data_reg[0]_0\,
      I2 => p_0_in0_in,
      O => original_rd_data0
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => drpclk_in,
      CE => original_rd_data0,
      D => DRPDO_OUT(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(0),
      I1 => original_rd_data(0),
      I2 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(10),
      I1 => original_rd_data(10),
      I2 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(11),
      I1 => original_rd_data(11),
      I2 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(12),
      I1 => original_rd_data(12),
      I2 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(13),
      I1 => original_rd_data(13),
      I2 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(14),
      I1 => original_rd_data(14),
      I2 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \rd_data_reg[0]_0\,
      O => next_rd_data(0)
    );
\rd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(15),
      I1 => original_rd_data(15),
      I2 => flag_reg_n_0,
      O => \rd_data[15]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(1),
      I1 => original_rd_data(1),
      I2 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(2),
      I1 => original_rd_data(2),
      I2 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(3),
      I1 => original_rd_data(3),
      I2 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(4),
      I1 => original_rd_data(4),
      I2 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(5),
      I1 => original_rd_data(5),
      I2 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(6),
      I1 => original_rd_data(6),
      I2 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(7),
      I1 => original_rd_data(7),
      I2 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(8),
      I1 => original_rd_data(8),
      I2 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => DRPDO_OUT(9),
      I1 => original_rd_data(9),
      I2 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[0]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[10]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[11]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(11)
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[12]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[13]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[14]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[15]_i_2_n_0\,
      Q => \rd_data_reg[15]_0\(15)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[1]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[2]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[3]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[4]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[5]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[6]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[7]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[8]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => next_rd_data(0),
      CLR => rst_ss,
      D => \rd_data[9]_i_1_n_0\,
      Q => \rd_data_reg[15]_0\(9)
    );
rst_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_22\
     port map (
      AR(0) => rst_ss,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      init_clk_in => init_clk_in
    );
rxpmaresetdone_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_23
     port map (
      drpclk_in => drpclk_in,
      in0 => in0,
      \out\ => rxpmaresetdone_ss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => drpclk_in,
      CE => '1',
      CLR => rst_ss,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_rx_startup_fsm is
  port (
    gtrxreset_i_0 : out STD_LOGIC;
    gt_rxuserrdy_i : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg_0 : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC
  );
end aurora_8b10b_0_rx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0_rx_startup_fsm is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^gt_rxuserrdy_i\ : STD_LOGIC;
  signal \^gtrxreset_i_0\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_done_i_2__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_4_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_5_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxpmaresetdone_i : STD_LOGIC;
  signal rxpmaresetdone_rx_s : STD_LOGIC;
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal scndry_out : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal sync_rx_fsm_reset_done_int_cdc_sync_n_0 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_i_4_n_0 : STD_LOGIC;
  signal time_out_1us_i_5_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_4_n_0 : STD_LOGIC;
  signal time_out_2ms_i_5_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal \time_out_wait_bypass_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_8_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal txpmaresetdone_i : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_11\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_9\ : label is "soft_lutpair65";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of gtrxreset_i_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \init_wait_done_i_2__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_2__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of reset_time_out_i_4 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_5 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of time_out_1us_i_3 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of time_out_1us_i_5 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of time_out_2ms_i_4 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_3__0\ : label is "soft_lutpair60";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1__0\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of time_tlock_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair67";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1__0\ : label is 35;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair63";
begin
  gt_rxuserrdy_i <= \^gt_rxuserrdy_i\;
  gtrxreset_i_0 <= \^gtrxreset_i_0\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFEFEF"
    )
        port map (
      I0 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_rx_state[0]_i_3_n_0\,
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => rx_state(3),
      O => \rx_state__0\(0)
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAAA00000C00"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(2),
      I2 => rx_state(3),
      I3 => time_tlock_max,
      I4 => reset_time_out_reg_n_0,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => rx_state(3),
      I1 => reset_time_out_reg_n_0,
      I2 => \^gt_rxuserrdy_i\,
      I3 => time_out_100us_reg_n_0,
      O => \FSM_sequential_rx_state[0]_i_3_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF24200400"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(3),
      I3 => rx_state(2),
      I4 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I5 => \FSM_sequential_rx_state[1]_i_3_n_0\,
      O => \rx_state__0\(1)
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^gt_rxuserrdy_i\,
      I1 => time_out_100us_reg_n_0,
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABF000F0000"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => rx_state(1),
      I5 => rx_state(0),
      O => \FSM_sequential_rx_state[1]_i_3_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010C0C0C01000C0C"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(2),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => rx_state(0),
      I5 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      O => \rx_state__0\(2)
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A000000"
    )
        port map (
      I0 => rx_state(2),
      I1 => reset_time_out_reg_n_0,
      I2 => time_out_2ms_reg_n_0,
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => init_wait_done_reg_n_0,
      I3 => rx_state(2),
      I4 => reset_time_out_reg_0,
      O => \FSM_sequential_rx_state[3]_i_11_n_0\
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0F0F8FBF0F0"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      I1 => rx_state(0),
      I2 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      I3 => time_out_wait_bypass_s3,
      I4 => rx_state(3),
      I5 => rx_state(1),
      O => \rx_state__0\(3)
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004400C400"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => reset_time_out_reg_n_0,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CE20CCC"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => rx_state(3),
      I2 => \^gt_rxuserrdy_i\,
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_11_n_0\,
      I1 => \wait_time_cnt[6]_i_4__0_n_0\,
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => wait_time_cnt_reg(6),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => time_out_100us_reg_n_0,
      I1 => \^gt_rxuserrdy_i\,
      I2 => reset_time_out_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \rx_state__0\(0),
      Q => rx_state(0),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \rx_state__0\(1),
      Q => rx_state(1),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \rx_state__0\(2),
      Q => rx_state(2),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \rx_state__0\(3),
      Q => rx_state(3),
      R => AR(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCF00008000"
    )
        port map (
      I0 => gt_txuserrdy_i,
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => rx_state(2),
      I4 => rx_state(3),
      I5 => \^gt_rxuserrdy_i\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt_rxuserrdy_i\,
      R => AR(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => rx_state(3),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => AR(0)
    );
gtrxreset_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_9\
     port map (
      gtrxreset_i_0 => \^gtrxreset_i_0\,
      init_clk_in => init_clk_in,
      \out\ => scndry_out,
      user_clk => user_clk
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => \^gtrxreset_i_0\,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => \^gtrxreset_i_0\,
      R => AR(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__1\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(2),
      O => \init_wait_count[2]_i_1__0_n_0\
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      O => \p_0_in__1\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(4),
      O => \p_0_in__1\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(2),
      O => \init_wait_count[5]_i_1__0_n_0\
    );
\init_wait_count[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(5),
      O => \p_0_in__1\(5)
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \init_wait_count[2]_i_1__0_n_0\,
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \p_0_in__1\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \p_0_in__1\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1__0_n_0\,
      CLR => AR(0),
      D => \p_0_in__1\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \init_wait_done_i_2__0_n_0\,
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(4),
      I4 => init_wait_count_reg(5),
      I5 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
\init_wait_done_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \init_wait_done_i_2__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(2),
      O => \mmcm_lock_count[2]_i_1__0_n_0\
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[3]_i_1__0_n_0\
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_count[4]_i_1__0_n_0\
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[5]_i_1__0_n_0\
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I1 => mmcm_lock_count_reg(6),
      O => \mmcm_lock_count[6]_i_1__0_n_0\
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_1__0_n_0\
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => mmcm_lock_count_reg(6),
      I3 => mmcm_lock_count_reg(8),
      O => \mmcm_lock_count[8]_i_1__0_n_0\
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => mmcm_lock_count_reg(6),
      I3 => mmcm_lock_count_reg(8),
      I4 => mmcm_lock_count_reg(9),
      O => \mmcm_lock_count[9]_i_2__0_n_0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => mmcm_lock_count_reg(8),
      I1 => mmcm_lock_count_reg(6),
      I2 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(7),
      I4 => mmcm_lock_count_reg(9),
      O => \mmcm_lock_count[9]_i_3__0_n_0\
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[9]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__2\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__2\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[2]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[3]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[4]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[5]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[6]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[7]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[8]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \mmcm_lock_count[9]_i_3__0_n_0\,
      Q => mmcm_lock_count_reg(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I2 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => mmcm_lock_count_reg(9),
      I1 => mmcm_lock_count_reg(8),
      I2 => mmcm_lock_count_reg(6),
      I3 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF30E0E0FF30202"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => \^gt_rxuserrdy_i\,
      I4 => rx_state(3),
      I5 => mmcm_lock_reclocked,
      O => reset_time_out_i_2_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34347674"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => reset_time_out_reg_0,
      I4 => rx_state(1),
      O => reset_time_out_i_4_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_PLL0LOCK_cdc_sync_n_1,
      Q => reset_time_out_reg_n_0,
      S => AR(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(3),
      I3 => rx_state(0),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rx_fsm_reset_done_int_0,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => rx_fsm_reset_done_int_i_4_n_0,
      I3 => rx_fsm_reset_done_int,
      O => rx_fsm_reset_done_int_i_1_n_0
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => rx_state(0),
      I1 => time_out_1us_reg_n_0,
      I2 => rx_state(2),
      I3 => reset_time_out_reg_n_0,
      I4 => \^gt_rxuserrdy_i\,
      O => rx_fsm_reset_done_int_0
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040004040400"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_4_n_0\,
      I1 => rx_state(3),
      I2 => rx_state(2),
      I3 => \^gt_rxuserrdy_i\,
      I4 => time_out_100us_reg_n_0,
      I5 => reset_time_out_reg_n_0,
      O => rx_fsm_reset_done_int_i_3_n_0
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000808080008"
    )
        port map (
      I0 => rx_fsm_reset_done_int_i_5_n_0,
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => \^gt_rxuserrdy_i\,
      I4 => time_out_1us_reg_n_0,
      I5 => reset_time_out_reg_n_0,
      O => rx_fsm_reset_done_int_i_4_n_0
    );
rx_fsm_reset_done_int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      O => rx_fsm_reset_done_int_i_5_n_0
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int_i_1_n_0,
      Q => rx_fsm_reset_done_int,
      R => AR(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxpmaresetdone_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      CLR => scndry_out,
      D => rxpmaresetdone_rx_s,
      Q => rxpmaresetdone_i
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_PLL0LOCK_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_10
     port map (
      E(0) => sync_PLL0LOCK_cdc_sync_n_0,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_4_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[3]_i_5_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \FSM_sequential_rx_state[3]_i_6_n_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => \FSM_sequential_rx_state[3]_i_7_n_0\,
      \FSM_sequential_rx_state_reg[0]_3\ => \FSM_sequential_rx_state[0]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[1]\ => sync_PLL0LOCK_cdc_sync_n_1,
      Q(3 downto 0) => rx_state(3 downto 0),
      SS(0) => \wait_time_cnt[6]_i_1_n_0\,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      reset_time_out_reg => \FSM_sequential_rx_state[3]_i_3_n_0\,
      reset_time_out_reg_0 => reset_time_out_reg_n_0,
      reset_time_out_reg_1 => reset_time_out_i_2_n_0,
      reset_time_out_reg_2 => reset_time_out_i_4_n_0,
      rxresetdone_s3 => rxresetdone_s3,
      time_tlock_max => time_tlock_max
    );
sync_PLL1LOCK_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_11
     port map (
      init_clk_in => init_clk_in
    );
sync_RXRESETDONE_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_12\
     port map (
      init_clk_in => init_clk_in,
      \out\ => rxresetdone_s2,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      user_clk => user_clk
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_13
     port map (
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      init_clk_in => init_clk_in,
      \out\ => mmcm_lock_i
    );
sync_pmaresetdone_fallingedge_detect_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_14\
     port map (
      init_clk_in => init_clk_in,
      user_clk => user_clk
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_15\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\ => run_phase_alignment_int_reg_n_0,
      init_clk_in => init_clk_in,
      \out\ => run_phase_alignment_int_s2,
      user_clk => user_clk
    );
sync_rx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_16\
     port map (
      init_clk_in => init_clk_in,
      \out\ => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      rx_fsm_reset_done_int => rx_fsm_reset_done_int,
      user_clk => user_clk
    );
sync_rxpmaresetdone_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_17\
     port map (
      init_clk_in => init_clk_in,
      rxpmaresetdone_i => rxpmaresetdone_i,
      user_clk => user_clk
    );
sync_rxpmaresetdone_rx_s_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_18
     port map (
      \out\ => rxpmaresetdone_rx_s,
      user_clk => user_clk
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_19\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0\ => time_out_wait_bypass_reg_n_0,
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      user_clk => user_clk
    );
sync_txpmaresetdone_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_20\
     port map (
      init_clk_in => init_clk_in,
      txpmaresetdone_i => txpmaresetdone_i,
      user_clk => user_clk
    );
time_out_100us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_100us_i_2_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(9),
      I5 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(16),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => time_out_1us_i_2_n_0,
      I1 => time_out_1us_i_3_n_0,
      I2 => time_out_counter_reg(2),
      I3 => time_out_1us_i_4_n_0,
      I4 => time_out_1us_i_5_n_0,
      I5 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(1),
      I3 => time_out_counter_reg(5),
      I4 => time_out_counter_reg(13),
      I5 => time_out_counter_reg(12),
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(8),
      O => time_out_1us_i_4_n_0
    );
time_out_1us_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(16),
      O => time_out_1us_i_5_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => \time_out_2ms_i_3__0_n_0\,
      I2 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      I2 => time_out_2ms_i_4_n_0,
      I3 => time_out_2ms_i_5_n_0,
      I4 => time_out_counter_reg(13),
      I5 => time_out_counter_reg(12),
      O => time_out_2ms_i_2_n_0
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(5),
      I5 => time_out_1us_i_4_n_0,
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(2),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_out_2ms_i_5_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_1us_i_4_n_0,
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(14),
      I4 => \time_out_counter[0]_i_3__0_n_0\,
      I5 => time_out_2ms_i_2_n_0,
      O => time_out_counter(0)
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => time_out_counter_reg(17 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => \time_out_wait_bypass_i_2__0_n_0\,
      I2 => rx_fsm_reset_done_int_s3,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => time_out_wait_bypass_i_1_n_0
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \time_out_wait_bypass_i_3__0_n_0\,
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(5),
      I5 => \time_out_wait_bypass_i_4__0_n_0\,
      O => \time_out_wait_bypass_i_2__0_n_0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(10),
      O => \time_out_wait_bypass_i_3__0_n_0\
    );
\time_out_wait_bypass_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(1),
      O => \time_out_wait_bypass_i_4__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_tlock_max1_carry_i_2_n_0,
      DI(1) => time_tlock_max1_carry_i_3_n_0,
      DI(0) => time_tlock_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_5_n_0,
      S(2) => time_tlock_max1_carry_i_6_n_0,
      S(1) => time_tlock_max1_carry_i_7_n_0,
      S(0) => time_tlock_max1_carry_i_8_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(2) => time_out_counter_reg(13),
      DI(1) => \time_tlock_max1_carry__0_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => time_tlock_max1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \time_tlock_max1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_8_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
txpmaresetdone_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      CLR => scndry_out,
      D => '1',
      Q => txpmaresetdone_i
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_out_wait_bypass_i_2__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[2]_i_1__0_n_0\
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[3]_i_1__0_n_0\
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      I4 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_1__0_n_0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[5]_i_1__0_n_0\
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4__0_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4__0_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_3__0_n_0\
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[2]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[3]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[4]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[5]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[6]_i_3__0_n_0\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_tx_startup_fsm is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    gt_tx_reset_i : out STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_NOT_LOCKED : in STD_LOGIC
  );
end aurora_8b10b_0_tx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0_tx_startup_fsm is
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal \^tx_resetdone_out\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^gt_common_reset_out\ : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[5]_i_1_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_i_2_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal p_0_in_1 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal scndry_out : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_cdc_sync_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_2__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_3_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_4_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_5_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_6_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair77";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of init_wait_done_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_1 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_2 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of pll_reset_asserted_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of run_phase_alignment_int_i_1 : label is "soft_lutpair77";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair79";
begin
  TX_RESETDONE_OUT <= \^tx_resetdone_out\;
  gt_common_reset_out <= \^gt_common_reset_out\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEFEEEEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I2 => time_tlock_max_reg_n_0,
      I3 => reset_time_out,
      I4 => mmcm_lock_reclocked,
      I5 => \FSM_sequential_tx_state[0]_i_4_n_0\,
      O => \tx_state__0\(0)
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020F000"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => reset_time_out,
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      O => \FSM_sequential_tx_state[0]_i_3_n_0\
    );
\FSM_sequential_tx_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \FSM_sequential_tx_state[0]_i_4_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11441104"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000838CCCC"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(0),
      I5 => tx_state(3),
      O => \tx_state__0\(2)
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => reset_time_out,
      I2 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500F30000"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => time_out_500us_reg_n_0,
      I2 => reset_time_out,
      I3 => \FSM_sequential_tx_state[3]_i_7_n_0\,
      I4 => tx_state(0),
      I5 => tx_state(3),
      O => \tx_state__0\(3)
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000300AA00AA"
    )
        port map (
      I0 => init_wait_done_reg_n_0,
      I1 => \wait_time_cnt[6]_i_4_n_0\,
      I2 => wait_time_cnt_reg(6),
      I3 => tx_state(0),
      I4 => tx_state(3),
      I5 => \FSM_sequential_tx_state[3]_i_4_n_0\,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => tx_state(0),
      I5 => tx_state(3),
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \tx_state__0\(0),
      Q => tx_state(0),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \tx_state__0\(1),
      Q => tx_state(1),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \tx_state__0\(2),
      Q => tx_state(2),
      R => AR(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_PLL0LOCK_cdc_sync_n_0,
      D => \tx_state__0\(3),
      Q => tx_state(3),
      R => AR(0)
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(0),
      I4 => tx_state(3),
      I5 => \^gt_common_reset_out\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^gt_common_reset_out\,
      R => AR(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD2000"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \^gt_txuserrdy_i\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt_txuserrdy_i\,
      R => AR(0)
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => \^gt_tx_reset_i\,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => \^gt_tx_reset_i\,
      R => AR(0)
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(2),
      O => \init_wait_count[2]_i_1_n_0\
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(2),
      O => \init_wait_count[5]_i_1_n_0\
    );
\init_wait_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(5),
      O => p_0_in(5)
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => p_0_in(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => \init_wait_count[2]_i_1_n_0\,
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => p_0_in(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => p_0_in(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \init_wait_count[5]_i_1_n_0\,
      CLR => AR(0),
      D => p_0_in(5),
      Q => init_wait_count_reg(5)
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => init_wait_done_i_2_n_0,
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(4),
      I4 => init_wait_count_reg(5),
      I5 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => init_wait_done_i_2_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(2),
      O => \mmcm_lock_count[2]_i_1_n_0\
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[3]_i_1_n_0\
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_count[4]_i_1_n_0\
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[5]_i_1_n_0\
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mmcm_lock_count[9]_i_4_n_0\,
      I1 => mmcm_lock_count_reg(6),
      O => \mmcm_lock_count[6]_i_1_n_0\
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_1_n_0\
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => mmcm_lock_count_reg(6),
      I3 => mmcm_lock_count_reg(8),
      O => \mmcm_lock_count[8]_i_1_n_0\
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => mmcm_lock_count_reg(6),
      I3 => mmcm_lock_count_reg(8),
      I4 => mmcm_lock_count_reg(9),
      O => \mmcm_lock_count[9]_i_2_n_0\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => mmcm_lock_count_reg(8),
      I1 => mmcm_lock_count_reg(6),
      I2 => \mmcm_lock_count[9]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(7),
      I4 => mmcm_lock_count_reg(9),
      O => \mmcm_lock_count[9]_i_3_n_0\
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[9]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[2]_i_1_n_0\,
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[3]_i_1_n_0\,
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[4]_i_1_n_0\,
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[5]_i_1_n_0\,
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[6]_i_1_n_0\,
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[7]_i_1_n_0\,
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[8]_i_1_n_0\,
      Q => mmcm_lock_count_reg(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \mmcm_lock_count[9]_i_3_n_0\,
      Q => mmcm_lock_count_reg(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_1
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => p_0_in_1,
      I2 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => mmcm_lock_count_reg(9),
      I1 => mmcm_lock_count_reg(8),
      I2 => mmcm_lock_count_reg(6),
      I3 => \mmcm_lock_count[9]_i_4_n_0\,
      I4 => mmcm_lock_count_reg(7),
      O => p_0_in_1
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00FF10"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => pll_reset_asserted_reg_n_0,
      I4 => tx_state(1),
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => AR(0)
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_PLL0LOCK_cdc_sync_n_1,
      Q => reset_time_out,
      R => AR(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => run_phase_alignment_int,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => scndry_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_PLL0LOCK_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_2
     port map (
      E(0) => sync_PLL0LOCK_cdc_sync_n_0,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[0]_0\ => \FSM_sequential_tx_state[3]_i_6_n_0\,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[0]_i_2_n_0\,
      \FSM_sequential_tx_state_reg[0]_2\ => pll_reset_asserted_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_3\ => \FSM_sequential_tx_state[0]_i_3_n_0\,
      \FSM_sequential_tx_state_reg[0]_4\ => \FSM_sequential_tx_state[3]_i_8_n_0\,
      Q(3 downto 0) => tx_state(3 downto 0),
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      quad1_common_lock_in => quad1_common_lock_in,
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_PLL0LOCK_cdc_sync_n_1,
      reset_time_out_reg_0 => init_wait_done_reg_n_0,
      txresetdone_s3 => txresetdone_s3
    );
sync_PLL1LOCK_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_3
     port map (
      init_clk_in => init_clk_in
    );
sync_TXRESETDONE_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_4\
     port map (
      init_clk_in => init_clk_in,
      \out\ => txresetdone_s2,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_5
     port map (
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      init_clk_in => init_clk_in,
      \out\ => mmcm_lock_i
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_6\
     port map (
      init_clk_in => init_clk_in,
      \out\ => scndry_out,
      run_phase_alignment_int => run_phase_alignment_int,
      user_clk => user_clk
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_7\
     port map (
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      time_out_wait_bypass => time_out_wait_bypass,
      user_clk => user_clk
    );
sync_tx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2_8\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\,
      TX_RESETDONE_OUT => \^tx_resetdone_out\,
      init_clk_in => init_clk_in,
      tx_fsm_reset_done_int => tx_fsm_reset_done_int,
      user_clk => user_clk
    );
time_out_2ms_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => \time_out_2ms_i_2__0_n_0\,
      I2 => time_out_2ms_i_3_n_0,
      I3 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(3),
      I5 => time_tlock_max_i_3_n_0,
      O => \time_out_2ms_i_2__0_n_0\
    );
time_out_2ms_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(0),
      I5 => \time_out_2ms_i_4__0_n_0\,
      O => time_out_2ms_i_3_n_0
    );
\time_out_2ms_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(4),
      O => \time_out_2ms_i_4__0_n_0\
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(8),
      I4 => time_out_2ms_i_3_n_0,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(15),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_tlock_max_i_3_n_0,
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(10),
      I4 => \time_out_counter[0]_i_3_n_0\,
      I5 => time_out_2ms_i_3_n_0,
      O => time_out_counter(0)
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => time_out_counter_reg(16)
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter(0),
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass,
      I1 => time_out_wait_bypass_i_2_n_0,
      I2 => tx_fsm_reset_done_int_s3,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_wait_bypass_i_3_n_0,
      I1 => time_out_wait_bypass_i_4_n_0,
      I2 => time_out_wait_bypass_i_5_n_0,
      I3 => time_out_wait_bypass_i_6_n_0,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(6),
      O => time_out_wait_bypass_i_3_n_0
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(0),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(2),
      O => time_out_wait_bypass_i_4_n_0
    );
time_out_wait_bypass_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(13),
      I1 => wait_bypass_count_reg(12),
      I2 => wait_bypass_count_reg(15),
      I3 => wait_bypass_count_reg(14),
      O => time_out_wait_bypass_i_5_n_0
    );
time_out_wait_bypass_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(8),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(10),
      O => time_out_wait_bypass_i_6_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAAAA"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_tlock_max_i_3_n_0,
      I4 => time_tlock_max_i_4_n_0,
      I5 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \time_out_2ms_i_4__0_n_0\,
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(7),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(9),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(5),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(15),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => tx_fsm_reset_done_int,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => tx_fsm_reset_done_int,
      R => AR(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => '1',
      D => \^tx_resetdone_out\,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_wait_bypass_i_2_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => user_clk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[2]_i_1_n_0\
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[3]_i_1_n_0\
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      I4 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_1_n_0\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[5]_i_1_n_0\
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      O => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => sel
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_3_n_0\
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[2]_i_1_n_0\,
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[3]_i_1_n_0\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[4]_i_1_n_0\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[5]_i_1_n_0\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1__0_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt[6]_i_3_n_0\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_AURORA_LANE is
  port (
    LANE_UP : out STD_LOGIC;
    ena_comma_align_i : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_pad_i : out STD_LOGIC;
    rx_scp_i : out STD_LOGIC;
    rx_ecp_i : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    hard_err_reset_i : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    LINK_RESET_OUT : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    left_aligned_r_reg : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    RX_ECP_Buffer_reg : out STD_LOGIC;
    RX_PE_DATA_V_Buffer_reg : out STD_LOGIC;
    in_frame_r_reg : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \RX_PE_DATA_Buffer_reg[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bucket_full_r_reg : out STD_LOGIC;
    soft_err_flop_r0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    begin_r0 : in STD_LOGIC;
    gen_pad_i : in STD_LOGIC;
    tx_pe_data_v_i : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    gen_ecp_i : in STD_LOGIC;
    gen_scp_i : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[1]\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[0]\ : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    HPCNT_RESET : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    RXDISPERR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXNOTINTABLE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    left_aligned_r_reg_0 : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    \soft_err_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_v_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_r_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_k_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \word_aligned_data_r_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end aurora_8b10b_0_AURORA_LANE;

architecture STRUCTURE of aurora_8b10b_0_AURORA_LANE is
  signal D_0 : STD_LOGIC;
  signal RX_CC_Buffer : STD_LOGIC;
  signal RX_NEG_Buffer : STD_LOGIC;
  signal ack_r : STD_LOGIC;
  signal counter4_r0 : STD_LOGIC;
  signal \^ena_comma_align_i\ : STD_LOGIC;
  signal enable_err_detect_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC;
  signal gen_sp_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lane_init_sm_i_n_10 : STD_LOGIC;
  signal lane_init_sm_i_n_11 : STD_LOGIC;
  signal lane_init_sm_i_n_5 : STD_LOGIC;
  signal send_sp_c : STD_LOGIC;
  signal sym_dec_i_n_12 : STD_LOGIC;
begin
  ena_comma_align_i <= \^ena_comma_align_i\;
aurora_8b10b_0_hotplug_i: entity work.aurora_8b10b_0_HOTPLUG
     port map (
      D(0) => RX_CC_Buffer,
      HPCNT_RESET => HPCNT_RESET,
      LINK_RESET_OUT => LINK_RESET_OUT,
      SR(0) => SR(0),
      init_clk_in => init_clk_in,
      user_clk => user_clk
    );
err_detect_i: entity work.aurora_8b10b_0_ERR_DETECT
     port map (
      SR => lane_init_sm_i_n_11,
      bucket_full_r_reg_0 => bucket_full_r_reg,
      enable_err_detect_i => enable_err_detect_i,
      hard_err_flop_r0 => hard_err_flop_r0,
      hard_err_i => hard_err_i,
      hard_err_reset_i => hard_err_reset_i,
      soft_err_flop_r0 => soft_err_flop_r0,
      \soft_err_r_reg[0]_0\(1 downto 0) => \soft_err_r_reg[0]\(1 downto 0),
      user_clk => user_clk
    );
lane_init_sm_i: entity work.aurora_8b10b_0_LANE_INIT_SM
     port map (
      D(1) => gen_sp_data_i(0),
      D(0) => send_sp_c,
      D_0 => D_0,
      ENABLE_ERR_DETECT_Buffer_reg_0 => lane_init_sm_i_n_11,
      LANE_UP => LANE_UP,
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      RXNOTINTABLE(1 downto 0) => RXNOTINTABLE(1 downto 0),
      \RX_CHAR_IS_COMMA_R_reg[1]_0\(1 downto 0) => D(1 downto 0),
      RX_NEG_Buffer => RX_NEG_Buffer,
      SR(0) => SR(0),
      ack_r => ack_r,
      ack_r_reg_0 => lane_init_sm_i_n_10,
      align_r_reg_0 => \^ena_comma_align_i\,
      begin_r0 => begin_r0,
      \counter2_r_reg[0]_0\ => lane_init_sm_i_n_5,
      \counter3_r_reg[3]_0\ => sym_dec_i_n_12,
      counter4_r0 => counter4_r0,
      enable_err_detect_i => enable_err_detect_i,
      gen_k_i => gen_k_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      user_clk => user_clk
    );
sym_dec_i: entity work.aurora_8b10b_0_SYM_DEC
     port map (
      D(0) => RX_CC_Buffer,
      D_0 => D_0,
      RX_ECP_Buffer_reg_0 => rx_ecp_i,
      RX_ECP_Buffer_reg_1 => RX_ECP_Buffer_reg,
      RX_NEG_Buffer => RX_NEG_Buffer,
      \RX_PE_DATA_Buffer_reg[0]_0\(15 downto 0) => \RX_PE_DATA_Buffer_reg[0]\(15 downto 0),
      RX_PE_DATA_V_Buffer_reg_0 => RX_PE_DATA_V_Buffer_reg,
      RX_SPA_Buffer_reg_0 => sym_dec_i_n_12,
      SR(0) => SR(0),
      ack_r => ack_r,
      counter4_r0 => counter4_r0,
      ena_comma_align_i => \^ena_comma_align_i\,
      got_v_i => got_v_i,
      in_frame_r => in_frame_r,
      in_frame_r_reg => in_frame_r_reg,
      left_aligned_r_reg_0 => left_aligned_r_reg,
      left_aligned_r_reg_1(0) => D(0),
      left_aligned_r_reg_2 => left_aligned_r_reg_0,
      rx_pad_i => rx_pad_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      start_rx_i => start_rx_i,
      storage_v_r => storage_v_r,
      user_clk => user_clk,
      \word_aligned_control_bits_r_reg[0]_0\ => \word_aligned_control_bits_r_reg[0]\,
      \word_aligned_control_bits_r_reg[1]_0\ => \word_aligned_control_bits_r_reg[1]\,
      \word_aligned_data_r_reg[0]_0\(7 downto 0) => \word_aligned_data_r_reg[0]\(7 downto 0),
      \word_aligned_data_r_reg[8]_0\(7 downto 0) => \word_aligned_data_r_reg[8]\(7 downto 0)
    );
sym_gen_i: entity work.aurora_8b10b_0_SYM_GEN
     port map (
      D(1) => gen_sp_data_i(0),
      D(0) => send_sp_c,
      Q(15 downto 0) => Q(15 downto 0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      \TX_CHAR_IS_K_Buffer_reg[0]_0\ => lane_init_sm_i_n_5,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      gen_k_i => gen_k_i,
      \gen_k_r_reg[0]_0\(1 downto 0) => \gen_k_r_reg[0]\(1 downto 0),
      gen_pad_i => gen_pad_i,
      \gen_r_r_reg[0]_0\(1 downto 0) => \gen_r_r_reg[0]\(1 downto 0),
      gen_scp_i => gen_scp_i,
      \gen_spa_data_r_reg[0]_0\ => lane_init_sm_i_n_10,
      \gen_v_r_reg[0]_0\(1 downto 0) => \gen_v_r_reg[0]\(1 downto 0),
      tx_pe_data_v_i => tx_pe_data_v_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_gt is
  port (
    gtpe2_i_0 : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    gtpe2_i_2 : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXNOTINTABLE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC;
    gtpe2_i_4 : out STD_LOGIC;
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    gtpe2_i_7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtpe2_i_8 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    drpclk_in : in STD_LOGIC;
    RXN : in STD_LOGIC;
    RXP : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \word_aligned_control_bits_r_reg[1]\ : in STD_LOGIC;
    hard_err_flop_r_reg : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPWE_IN : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC
  );
end aurora_8b10b_0_gt;

architecture STRUCTURE of aurora_8b10b_0_gt is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DRPADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal DRPDI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^drpdo_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DRPEN : STD_LOGIC;
  signal DRPWE : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal \^rxdisperr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rxnotintable\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal drp_op_done : STD_LOGIC;
  signal \^gtpe2_i_0\ : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_24 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_9 : STD_LOGIC;
  signal gtpe2_i_n_95 : STD_LOGIC;
  signal gtpe2_i_n_96 : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_17 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal rx_buf_err_i : STD_LOGIC;
  signal rx_char_is_k_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rx_realign_i\ : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtpe2_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gtpe2_i_i_27 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of left_aligned_r_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \word_aligned_data_r[10]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \word_aligned_data_r[11]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \word_aligned_data_r[12]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \word_aligned_data_r[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \word_aligned_data_r[14]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \word_aligned_data_r[15]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \word_aligned_data_r[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \word_aligned_data_r[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \word_aligned_data_r[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \word_aligned_data_r[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \word_aligned_data_r[5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \word_aligned_data_r[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \word_aligned_data_r[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \word_aligned_data_r[8]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \word_aligned_data_r[9]_i_1\ : label is "soft_lutpair50";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  DRPDO_OUT(15 downto 0) <= \^drpdo_out\(15 downto 0);
  RXDISPERR(1 downto 0) <= \^rxdisperr\(1 downto 0);
  RXNOTINTABLE(1 downto 0) <= \^rxnotintable\(1 downto 0);
  gtpe2_i_0 <= \^gtpe2_i_0\;
  rx_realign_i <= \^rx_realign_i\;
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 17,
      CLK_COR_MIN_LAT => 12,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"3C",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE206001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"000",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8) => gtrxreset_seq_i_n_4,
      DRPADDR(7) => gtrxreset_seq_i_n_5,
      DRPADDR(6) => gtrxreset_seq_i_n_6,
      DRPADDR(5) => gtrxreset_seq_i_n_7,
      DRPADDR(4) => DRPADDR(4),
      DRPADDR(3) => gtrxreset_seq_i_n_8,
      DRPADDR(2) => gtrxreset_seq_i_n_9,
      DRPADDR(1) => gtrxreset_seq_i_n_10,
      DRPADDR(0) => DRPADDR(0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => DRPDI(15 downto 0),
      DRPDO(15 downto 0) => \^drpdo_out\(15 downto 0),
      DRPEN => DRPEN,
      DRPRDY => \^gtpe2_i_0\,
      DRPWE => DRPWE,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => RXN,
      GTPRXP => RXP,
      GTPTXN => TXN,
      GTPTXP => TXP,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => GTRXRESET,
      GTTXRESET => gt_tx_reset_i,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => GT0_PLL0OUTCLK_IN,
      PLL0REFCLK => GT0_PLL0OUTREFCLK_IN,
      PLL1CLK => GT0_PLL1OUTCLK_IN,
      PLL1REFCLK => GT0_PLL1OUTREFCLK_IN,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => rx_buf_err_i,
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => \^rx_realign_i\,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => gtpe2_i_n_9,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => \^d\(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => rx_char_is_k_i(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => gtpe2_i_n_95,
      RXCLKCORCNT(0) => gtpe2_i_n_96,
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => rx_data_i(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => \^rxdisperr\(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => ena_comma_align_i,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => \^rxnotintable\(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtpe2_i_n_24,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => ena_comma_align_i,
      RXPCSRESET => '0',
      RXPD(1) => POWER_DOWN,
      RXPD(0) => POWER_DOWN,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => rx_polarity_i,
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtpe2_i_1,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt_rxuserrdy_i,
      RXUSRCLK => sync_clk,
      RXUSRCLK2 => user_clk,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 0) => B"0000",
      TXCHARDISPVAL(3 downto 0) => B"0000",
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => POWER_DOWN,
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => TX_OUT_CLK,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => '0',
      TXPD(1) => POWER_DOWN,
      TXPD(0) => POWER_DOWN,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => gtpe2_i_2,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => sync_clk,
      TXUSRCLK2 => user_clk
    );
gtpe2_i_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(8),
      I1 => in7(8),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(8)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(7),
      I1 => in7(7),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(7)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(6),
      I1 => in7(6),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(6)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(5),
      I1 => in7(5),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(5)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(4),
      I1 => in7(4),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(4)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(3),
      I1 => in7(3),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(3)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(2),
      I1 => in7(2),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(2)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(1),
      I1 => in7(1),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(1)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(0),
      I1 => in7(0),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(0)
    );
gtpe2_i_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => DRPADDR_IN(4),
      I1 => drp_op_done,
      O => DRPADDR(4)
    );
gtpe2_i_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => DRPADDR_IN(0),
      I1 => drp_op_done,
      O => DRPADDR(0)
    );
gtpe2_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(15),
      I1 => in7(15),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(15)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(14),
      I1 => in7(14),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(14)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(13),
      I1 => in7(13),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(13)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(12),
      I1 => in7(12),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(12)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => DRPDI_IN(11),
      I1 => p_0_in,
      I2 => gtrxreset_seq_i_n_17,
      I3 => drp_op_done,
      O => DRPDI(11)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(10),
      I1 => in7(10),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(10)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCC0"
    )
        port map (
      I0 => DRPDI_IN(9),
      I1 => in7(9),
      I2 => gtrxreset_seq_i_n_2,
      I3 => p_0_in,
      I4 => drp_op_done,
      O => DRPDI(9)
    );
gtrxreset_seq_i: entity work.aurora_8b10b_0_gtrxreset_seq
     port map (
      DRPADDR(6) => gtrxreset_seq_i_n_4,
      DRPADDR(5) => gtrxreset_seq_i_n_5,
      DRPADDR(4) => gtrxreset_seq_i_n_6,
      DRPADDR(3) => gtrxreset_seq_i_n_7,
      DRPADDR(2) => gtrxreset_seq_i_n_8,
      DRPADDR(1) => gtrxreset_seq_i_n_9,
      DRPADDR(0) => gtrxreset_seq_i_n_10,
      DRPADDR_IN(6 downto 3) => DRPADDR_IN(8 downto 5),
      DRPADDR_IN(2 downto 0) => DRPADDR_IN(3 downto 1),
      DRPDO_OUT(15 downto 0) => \^drpdo_out\(15 downto 0),
      DRPEN => DRPEN,
      DRPEN_IN => DRPEN_IN,
      DRPWE => DRPWE,
      DRPWE_IN => DRPWE_IN,
      GTRXRESET => GTRXRESET,
      Q(1) => gtrxreset_seq_i_n_2,
      Q(0) => p_0_in,
      SR(0) => SR(0),
      drp_op_done => drp_op_done,
      drpclk_in => drpclk_in,
      gt_common_reset_out => gt_common_reset_out,
      in0 => gtpe2_i_n_28,
      init_clk_in => init_clk_in,
      \rd_data_reg[0]_0\ => \^gtpe2_i_0\,
      \rd_data_reg[15]_0\(15 downto 12) => in7(15 downto 12),
      \rd_data_reg[15]_0\(11) => gtrxreset_seq_i_n_17,
      \rd_data_reg[15]_0\(10 downto 0) => in7(10 downto 0)
    );
hard_err_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hard_err_flop_r_reg,
      I1 => rx_buf_err_i,
      I2 => \^rx_realign_i\,
      I3 => tx_buf_err_i,
      O => hard_err_flop_r0
    );
left_aligned_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(0),
      I2 => rx_char_is_k_i(1),
      I3 => rx_char_is_k_i(0),
      O => gtpe2_i_6
    );
\soft_err_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rxdisperr\(0),
      I1 => \^rxnotintable\(0),
      O => gtpe2_i_5(1)
    );
\soft_err_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rxdisperr\(1),
      I1 => \^rxnotintable\(1),
      O => gtpe2_i_5(0)
    );
\word_aligned_control_bits_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_char_is_k_i(0),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_char_is_k_i(1),
      O => gtpe2_i_4
    );
\word_aligned_control_bits_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_char_is_k_i(1),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_char_is_k_i(0),
      O => gtpe2_i_3
    );
\word_aligned_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(7),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(15),
      O => gtpe2_i_8(7)
    );
\word_aligned_data_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(13),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(5),
      O => gtpe2_i_7(5)
    );
\word_aligned_data_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(12),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(4),
      O => gtpe2_i_7(4)
    );
\word_aligned_data_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(11),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(3),
      O => gtpe2_i_7(3)
    );
\word_aligned_data_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(10),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(2),
      O => gtpe2_i_7(2)
    );
\word_aligned_data_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(9),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(1),
      O => gtpe2_i_7(1)
    );
\word_aligned_data_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(8),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(0),
      O => gtpe2_i_7(0)
    );
\word_aligned_data_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(6),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(14),
      O => gtpe2_i_8(6)
    );
\word_aligned_data_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(5),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(13),
      O => gtpe2_i_8(5)
    );
\word_aligned_data_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(4),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(12),
      O => gtpe2_i_8(4)
    );
\word_aligned_data_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(3),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(11),
      O => gtpe2_i_8(3)
    );
\word_aligned_data_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(2),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(10),
      O => gtpe2_i_8(2)
    );
\word_aligned_data_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(1),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(9),
      O => gtpe2_i_8(1)
    );
\word_aligned_data_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(0),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(8),
      O => gtpe2_i_8(0)
    );
\word_aligned_data_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(15),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(7),
      O => gtpe2_i_7(7)
    );
\word_aligned_data_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_i(14),
      I1 => \word_aligned_control_bits_r_reg[1]\,
      I2 => rx_data_i(6),
      O => gtpe2_i_7(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_multi_gt is
  port (
    gtpe2_i : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXNOTINTABLE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC;
    gtpe2_i_3 : out STD_LOGIC;
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    gtpe2_i_6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtpe2_i_7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    drpclk_in : in STD_LOGIC;
    RXN : in STD_LOGIC;
    RXP : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_common_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \word_aligned_control_bits_r_reg[1]\ : in STD_LOGIC;
    hard_err_flop_r_reg : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPWE_IN : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC
  );
end aurora_8b10b_0_multi_gt;

architecture STRUCTURE of aurora_8b10b_0_multi_gt is
begin
gt0_aurora_8b10b_0_i: entity work.aurora_8b10b_0_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      POWER_DOWN => POWER_DOWN,
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      RXN => RXN,
      RXNOTINTABLE(1 downto 0) => RXNOTINTABLE(1 downto 0),
      RXP => RXP,
      SR(0) => SR(0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_OUT_CLK => TX_OUT_CLK,
      drpclk_in => drpclk_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_common_reset_out => gt_common_reset_out,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtpe2_i_0 => gtpe2_i,
      gtpe2_i_1 => gtpe2_i_0,
      gtpe2_i_2 => gtpe2_i_1,
      gtpe2_i_3 => gtpe2_i_2,
      gtpe2_i_4 => gtpe2_i_3,
      gtpe2_i_5(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_6 => gtpe2_i_5,
      gtpe2_i_7(7 downto 0) => gtpe2_i_6(7 downto 0),
      gtpe2_i_8(7 downto 0) => gtpe2_i_7(7 downto 0),
      hard_err_flop_r0 => hard_err_flop_r0,
      hard_err_flop_r_reg => hard_err_flop_r_reg,
      init_clk_in => init_clk_in,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      sync_clk => sync_clk,
      user_clk => user_clk,
      \word_aligned_control_bits_r_reg[1]\ => \word_aligned_control_bits_r_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_GT_WRAPPER is
  port (
    TX_RESETDONE_OUT : out STD_LOGIC;
    gtpe2_i : out STD_LOGIC;
    TXN : out STD_LOGIC;
    TXP : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RXNOTINTABLE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_common_reset_out : out STD_LOGIC;
    RX_RESETDONE_OUT : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxfsm_rxresetdone_r3_reg_0 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ : out STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    RXN : in STD_LOGIC;
    RXP : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxreset_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    link_reset_comb_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \word_aligned_control_bits_r_reg[1]\ : in STD_LOGIC;
    hard_err_flop_r_reg : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPWE_IN : in STD_LOGIC;
    DRPEN_IN : in STD_LOGIC
  );
end aurora_8b10b_0_GT_WRAPPER;

architecture STRUCTURE of aurora_8b10b_0_GT_WRAPPER is
  signal \^rx_resetdone_out\ : STD_LOGIC;
  signal aurora_8b10b_0_multi_gt_i_n_4 : STD_LOGIC;
  signal aurora_8b10b_0_multi_gt_i_n_6 : STD_LOGIC;
  signal gt0_rxresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal gt0_txresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal \^gt_common_reset_out\ : STD_LOGIC;
  signal gt_rx_reset_i : STD_LOGIC;
  signal gt_rxuserrdy_i : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal gtrxreset_i_0 : STD_LOGIC;
  signal gtrxreset_pulse : STD_LOGIC;
  signal gtrxreset_pulse_i_1_n_0 : STD_LOGIC;
  signal gtrxreset_r1 : STD_LOGIC;
  signal gtrxreset_r2 : STD_LOGIC;
  signal gtrxreset_r3 : STD_LOGIC;
  signal gtrxreset_sync : STD_LOGIC;
  signal link_reset_r2 : STD_LOGIC;
  signal rx_cdrlock_counter : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal rxfsm_rxresetdone_r : STD_LOGIC;
  signal rxfsm_rxresetdone_r2 : STD_LOGIC;
  signal rxfsm_soft_reset_r : STD_LOGIC;
  signal rxfsm_soft_reset_r_i_1_n_0 : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of gt0_rxresetdone_r3_reg_srl3 : label is "U0/\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 ";
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "U0/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of gt_rx_reset_i_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[8]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[9]_i_2\ : label is "soft_lutpair88";
  attribute equivalent_register_removal of rxfsm_rxresetdone_r2_reg : label is "no";
begin
  RX_RESETDONE_OUT <= \^rx_resetdone_out\;
  gt_common_reset_out <= \^gt_common_reset_out\;
aurora_8b10b_0_multi_gt_i: entity work.aurora_8b10b_0_multi_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      POWER_DOWN => POWER_DOWN,
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      RXN => RXN,
      RXNOTINTABLE(1 downto 0) => RXNOTINTABLE(1 downto 0),
      RXP => RXP,
      SR(0) => gt_rx_reset_i,
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_OUT_CLK => TX_OUT_CLK,
      drpclk_in => drpclk_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_common_reset_out => \^gt_common_reset_out\,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtpe2_i => gtpe2_i,
      gtpe2_i_0 => aurora_8b10b_0_multi_gt_i_n_4,
      gtpe2_i_1 => aurora_8b10b_0_multi_gt_i_n_6,
      gtpe2_i_2 => gtpe2_i_0,
      gtpe2_i_3 => gtpe2_i_1,
      gtpe2_i_4(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_5 => gtpe2_i_3,
      gtpe2_i_6(7 downto 0) => gtpe2_i_4(7 downto 0),
      gtpe2_i_7(7 downto 0) => gtpe2_i_5(7 downto 0),
      hard_err_flop_r0 => hard_err_flop_r0,
      hard_err_flop_r_reg => hard_err_flop_r_reg,
      init_clk_in => init_clk_in,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      sync_clk => sync_clk,
      user_clk => user_clk,
      \word_aligned_control_bits_r_reg[1]\ => \word_aligned_control_bits_r_reg[1]\
    );
gt0_rxresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => aurora_8b10b_0_multi_gt_i_n_4,
      Q => gt0_rxresetdone_r3_reg_srl3_n_0
    );
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => aurora_8b10b_0_multi_gt_i_n_6,
      Q => gt0_txresetdone_r3_reg_srl3_n_0
    );
gt_rx_reset_i_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_0,
      Q => gt_rx_reset_i,
      R => '0'
    );
gt_rxresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_resetdone_out\,
      O => rxfsm_rxresetdone_r3_reg_0
    );
gt_rxresetfsm_i: entity work.aurora_8b10b_0_rx_startup_fsm
     port map (
      AR(0) => rxfsm_soft_reset_r,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_i_0 => gtrxreset_i_0,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      reset_time_out_reg_0 => rx_cdrlocked_reg_n_0,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      user_clk => user_clk
    );
gt_txresetfsm_i: entity work.aurora_8b10b_0_tx_startup_fsm
     port map (
      AR(0) => AR(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\,
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      TX_RESETDONE_OUT => TX_RESETDONE_OUT,
      gt_common_reset_out => \^gt_common_reset_out\,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
gtrxreset_cdc_sync: entity work.\aurora_8b10b_0_cdc_sync__parameterized2\
     port map (
      gtrxreset_i => gtrxreset_i,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_sync,
      user_clk => user_clk
    );
gtrxreset_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gtrxreset_r2,
      I1 => gtrxreset_r3,
      O => gtrxreset_pulse_i_1_n_0
    );
gtrxreset_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_pulse_i_1_n_0,
      Q => gtrxreset_pulse,
      R => '0'
    );
gtrxreset_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_sync,
      Q => gtrxreset_r1,
      R => '0'
    );
gtrxreset_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r1,
      Q => gtrxreset_r2,
      R => '0'
    );
gtrxreset_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r2,
      Q => gtrxreset_r3,
      R => '0'
    );
link_reset_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_comb_r,
      Q => link_reset_r2,
      R => '0'
    );
\rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333337"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[4]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I4 => \rx_cdrlock_counter[1]_i_2_n_0\,
      O => \rx_cdrlock_counter[0]_i_1_n_0\
    );
\rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333CCCCCCC8"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[4]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I4 => \rx_cdrlock_counter[1]_i_2_n_0\,
      I5 => \rx_cdrlock_counter_reg_n_0_[1]\,
      O => rx_cdrlock_counter(1)
    );
\rx_cdrlock_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[9]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[7]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[8]\,
      I4 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I5 => \rx_cdrlock_counter_reg_n_0_[6]\,
      O => \rx_cdrlock_counter[1]_i_2_n_0\
    );
\rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[0]\,
      O => rx_cdrlock_counter(2)
    );
\rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[2]\,
      O => rx_cdrlock_counter(3)
    );
\rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I4 => \rx_cdrlock_counter_reg_n_0_[4]\,
      O => rx_cdrlock_counter(4)
    );
\rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I4 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I5 => \rx_cdrlock_counter_reg_n_0_[4]\,
      O => rx_cdrlock_counter(5)
    );
\rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[6]\,
      I1 => \rx_cdrlock_counter[9]_i_2_n_0\,
      I2 => \rx_cdrlock_counter_reg_n_0_[5]\,
      O => rx_cdrlock_counter(6)
    );
\rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[7]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I2 => \rx_cdrlock_counter[9]_i_2_n_0\,
      I3 => \rx_cdrlock_counter_reg_n_0_[6]\,
      O => rx_cdrlock_counter(7)
    );
\rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[8]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[6]\,
      I2 => \rx_cdrlock_counter[9]_i_2_n_0\,
      I3 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I4 => \rx_cdrlock_counter_reg_n_0_[7]\,
      O => rx_cdrlock_counter(8)
    );
\rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[9]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[7]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I3 => \rx_cdrlock_counter[9]_i_2_n_0\,
      I4 => \rx_cdrlock_counter_reg_n_0_[6]\,
      I5 => \rx_cdrlock_counter_reg_n_0_[8]\,
      O => rx_cdrlock_counter(9)
    );
\rx_cdrlock_counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[4]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I4 => \rx_cdrlock_counter_reg_n_0_[2]\,
      O => \rx_cdrlock_counter[9]_i_2_n_0\
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \rx_cdrlock_counter_reg_n_0_[0]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(1),
      Q => \rx_cdrlock_counter_reg_n_0_[1]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(2),
      Q => \rx_cdrlock_counter_reg_n_0_[2]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(3),
      Q => \rx_cdrlock_counter_reg_n_0_[3]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(4),
      Q => \rx_cdrlock_counter_reg_n_0_[4]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(5),
      Q => \rx_cdrlock_counter_reg_n_0_[5]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(6),
      Q => \rx_cdrlock_counter_reg_n_0_[6]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(7),
      Q => \rx_cdrlock_counter_reg_n_0_[7]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(8),
      Q => \rx_cdrlock_counter_reg_n_0_[8]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(9),
      Q => \rx_cdrlock_counter_reg_n_0_[9]\,
      R => gt_rx_reset_i
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000004"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[4]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I4 => \rx_cdrlock_counter[1]_i_2_n_0\,
      I5 => rx_cdrlocked_reg_n_0,
      O => rx_cdrlocked_i_1_n_0
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlocked_i_1_n_0,
      Q => rx_cdrlocked_reg_n_0,
      R => gt_rx_reset_i
    );
rxfsm_rxresetdone_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => rxfsm_rxresetdone_r2,
      R => '0'
    );
rxfsm_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => rxfsm_rxresetdone_r2,
      Q => \^rx_resetdone_out\,
      R => '0'
    );
rxfsm_rxresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt0_rxresetdone_r3_reg_srl3_n_0,
      Q => rxfsm_rxresetdone_r,
      R => '0'
    );
rxfsm_soft_reset_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => AR(0),
      I1 => gtrxreset_pulse,
      I2 => link_reset_r2,
      O => rxfsm_soft_reset_r_i_1_n_0
    );
rxfsm_soft_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rxfsm_soft_reset_r_i_1_n_0,
      Q => rxfsm_soft_reset_r,
      R => '0'
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => user_clk,
      CE => '1',
      D => gt0_txresetdone_r3_reg_srl3_n_0,
      Q => txfsm_txresetdone_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_core is
  port (
    S_AXI_TX_TDATA : in STD_LOGIC_VECTOR ( 0 to 15 );
    S_AXI_TX_TKEEP : in STD_LOGIC_VECTOR ( 0 to 1 );
    S_AXI_TX_TVALID : in STD_LOGIC;
    S_AXI_TX_TREADY : out STD_LOGIC;
    S_AXI_TX_TLAST : in STD_LOGIC;
    M_AXI_RX_TDATA : out STD_LOGIC_VECTOR ( 0 to 15 );
    M_AXI_RX_TKEEP : out STD_LOGIC_VECTOR ( 0 to 1 );
    M_AXI_RX_TVALID : out STD_LOGIC;
    M_AXI_RX_TLAST : out STD_LOGIC;
    RXP : in STD_LOGIC;
    RXN : in STD_LOGIC;
    TXP : out STD_LOGIC;
    TXN : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    SOFT_ERR : out STD_LOGIC;
    FRAME_ERR : out STD_LOGIC;
    CHANNEL_UP : out STD_LOGIC;
    LANE_UP : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    RESET : in STD_LOGIC;
    POWER_DOWN : in STD_LOGIC;
    LOOPBACK : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GT_RESET : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    PLL_NOT_LOCKED : in STD_LOGIC;
    TX_RESETDONE_OUT : out STD_LOGIC;
    RX_RESETDONE_OUT : out STD_LOGIC;
    LINK_RESET_OUT : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    DRPADDR_IN : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DRPDI_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPDO_OUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DRPEN_IN : in STD_LOGIC;
    DRPRDY_OUT : out STD_LOGIC;
    DRPWE_IN : in STD_LOGIC;
    TX_OUT_CLK : out STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  attribute CC_FREQ_FACTOR : integer;
  attribute CC_FREQ_FACTOR of aurora_8b10b_0_core : entity is 24;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of aurora_8b10b_0_core : entity is 0;
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of aurora_8b10b_0_core : entity is "FALSE";
end aurora_8b10b_0_core;

architecture STRUCTURE of aurora_8b10b_0_core is
  signal \<const0>\ : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal DO_CC_I : STD_LOGIC;
  signal HPCNT_RESET : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal \^link_reset_out\ : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal TXCHARISK_IN : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal TXDATA_IN : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal aurora_lane_0_i_n_12 : STD_LOGIC;
  signal aurora_lane_0_i_n_14 : STD_LOGIC;
  signal aurora_lane_0_i_n_15 : STD_LOGIC;
  signal aurora_lane_0_i_n_16 : STD_LOGIC;
  signal axi_to_ll_pdu_i_n_0 : STD_LOGIC;
  signal \channel_init_sm_i/wait_for_lane_up_r0\ : STD_LOGIC;
  signal ena_comma_align_i : STD_LOGIC;
  signal \err_detect_i/bucket_full_r\ : STD_LOGIC;
  signal \err_detect_i/hard_err_flop_r0\ : STD_LOGIC;
  signal \err_detect_i/p_2_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_ecp_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_pad_i : STD_LOGIC;
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_scp_i : STD_LOGIC;
  signal gen_v_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal got_v_i : STD_LOGIC;
  signal gt_reset_sync_init_clk : STD_LOGIC;
  signal gt_wrapper_i_n_30 : STD_LOGIC;
  signal gt_wrapper_i_n_31 : STD_LOGIC;
  signal gt_wrapper_i_n_34 : STD_LOGIC;
  signal gt_wrapper_i_n_36 : STD_LOGIC;
  signal gt_wrapper_i_n_37 : STD_LOGIC;
  signal gt_wrapper_i_n_38 : STD_LOGIC;
  signal gt_wrapper_i_n_39 : STD_LOGIC;
  signal gt_wrapper_i_n_40 : STD_LOGIC;
  signal gt_wrapper_i_n_41 : STD_LOGIC;
  signal gt_wrapper_i_n_42 : STD_LOGIC;
  signal gt_wrapper_i_n_43 : STD_LOGIC;
  signal gt_wrapper_i_n_44 : STD_LOGIC;
  signal gt_wrapper_i_n_45 : STD_LOGIC;
  signal gt_wrapper_i_n_46 : STD_LOGIC;
  signal gt_wrapper_i_n_47 : STD_LOGIC;
  signal gt_wrapper_i_n_48 : STD_LOGIC;
  signal gt_wrapper_i_n_49 : STD_LOGIC;
  signal gt_wrapper_i_n_50 : STD_LOGIC;
  signal gt_wrapper_i_n_51 : STD_LOGIC;
  signal gt_wrapper_i_n_52 : STD_LOGIC;
  signal gt_wrapper_i_n_53 : STD_LOGIC;
  signal gtrxreset_i : STD_LOGIC;
  signal hard_err_i : STD_LOGIC;
  signal hard_err_reset_i : STD_LOGIC;
  signal \lane_init_sm_i/begin_r0\ : STD_LOGIC;
  signal link_reset_comb_r : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^quad1_common_lock_in\ : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal reset_lanes_i : STD_LOGIC;
  signal reset_sync_init_clk : STD_LOGIC;
  signal reset_sync_user_clk : STD_LOGIC;
  signal rx_char_is_comma_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_ecp_i : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/in_frame_r\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/storage_v_r\ : STD_LOGIC;
  signal rx_not_in_table_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_pad_i : STD_LOGIC;
  signal rx_pe_data_i : STD_LOGIC_VECTOR ( 0 to 15 );
  signal rx_pe_data_v_i : STD_LOGIC;
  signal rx_polarity_i : STD_LOGIC;
  signal rx_realign_i : STD_LOGIC;
  signal rx_scp_i : STD_LOGIC;
  signal soft_err_flop_r0 : STD_LOGIC;
  signal start_rx_i : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal tx_dst_rdy : STD_LOGIC;
  signal tx_pe_data_i : STD_LOGIC_VECTOR ( 0 to 15 );
  signal tx_pe_data_v_i : STD_LOGIC;
begin
  CHANNEL_UP <= \^channel_up\;
  LANE_UP <= \^lane_up\;
  LINK_RESET_OUT <= \^link_reset_out\;
  M_AXI_RX_TKEEP(0) <= \<const0>\;
  M_AXI_RX_TKEEP(1) <= \^m_axi_rx_tkeep\(1);
  \^quad1_common_lock_in\ <= quad1_common_lock_in;
  sys_reset_out <= \^sys_reset_out\;
  tx_lock <= \^quad1_common_lock_in\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
aurora_lane_0_i: entity work.aurora_8b10b_0_AURORA_LANE
     port map (
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      HPCNT_RESET => HPCNT_RESET,
      LANE_UP => \^lane_up\,
      LINK_RESET_OUT => \^link_reset_out\,
      Q(15) => tx_pe_data_i(0),
      Q(14) => tx_pe_data_i(1),
      Q(13) => tx_pe_data_i(2),
      Q(12) => tx_pe_data_i(3),
      Q(11) => tx_pe_data_i(4),
      Q(10) => tx_pe_data_i(5),
      Q(9) => tx_pe_data_i(6),
      Q(8) => tx_pe_data_i(7),
      Q(7) => tx_pe_data_i(8),
      Q(6) => tx_pe_data_i(9),
      Q(5) => tx_pe_data_i(10),
      Q(4) => tx_pe_data_i(11),
      Q(3) => tx_pe_data_i(12),
      Q(2) => tx_pe_data_i(13),
      Q(1) => tx_pe_data_i(14),
      Q(0) => tx_pe_data_i(15),
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      RXNOTINTABLE(1 downto 0) => rx_not_in_table_i(1 downto 0),
      RX_ECP_Buffer_reg => aurora_lane_0_i_n_14,
      \RX_PE_DATA_Buffer_reg[0]\(15) => rx_pe_data_i(0),
      \RX_PE_DATA_Buffer_reg[0]\(14) => rx_pe_data_i(1),
      \RX_PE_DATA_Buffer_reg[0]\(13) => rx_pe_data_i(2),
      \RX_PE_DATA_Buffer_reg[0]\(12) => rx_pe_data_i(3),
      \RX_PE_DATA_Buffer_reg[0]\(11) => rx_pe_data_i(4),
      \RX_PE_DATA_Buffer_reg[0]\(10) => rx_pe_data_i(5),
      \RX_PE_DATA_Buffer_reg[0]\(9) => rx_pe_data_i(6),
      \RX_PE_DATA_Buffer_reg[0]\(8) => rx_pe_data_i(7),
      \RX_PE_DATA_Buffer_reg[0]\(7) => rx_pe_data_i(8),
      \RX_PE_DATA_Buffer_reg[0]\(6) => rx_pe_data_i(9),
      \RX_PE_DATA_Buffer_reg[0]\(5) => rx_pe_data_i(10),
      \RX_PE_DATA_Buffer_reg[0]\(4) => rx_pe_data_i(11),
      \RX_PE_DATA_Buffer_reg[0]\(3) => rx_pe_data_i(12),
      \RX_PE_DATA_Buffer_reg[0]\(2) => rx_pe_data_i(13),
      \RX_PE_DATA_Buffer_reg[0]\(1) => rx_pe_data_i(14),
      \RX_PE_DATA_Buffer_reg[0]\(0) => rx_pe_data_i(15),
      RX_PE_DATA_V_Buffer_reg => aurora_lane_0_i_n_15,
      SR(0) => reset_lanes_i,
      TXCHARISK(1 downto 0) => TXCHARISK_IN(1 downto 0),
      TXDATA(15 downto 0) => TXDATA_IN(15 downto 0),
      begin_r0 => \lane_init_sm_i/begin_r0\,
      bucket_full_r_reg => \err_detect_i/bucket_full_r\,
      ena_comma_align_i => ena_comma_align_i,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      \gen_k_r_reg[0]\(1) => gen_k_i(0),
      \gen_k_r_reg[0]\(0) => gen_k_i(1),
      gen_pad_i => gen_pad_i,
      \gen_r_r_reg[0]\(1) => gen_r_i(0),
      \gen_r_r_reg[0]\(0) => gen_r_i(1),
      gen_scp_i => gen_scp_i,
      \gen_v_r_reg[0]\(1) => gen_v_i(0),
      \gen_v_r_reg[0]\(0) => gen_v_i(1),
      got_v_i => got_v_i,
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      hard_err_i => hard_err_i,
      hard_err_reset_i => hard_err_reset_i,
      in_frame_r => \rx_ll_pdu_datapath_i/in_frame_r\,
      in_frame_r_reg => aurora_lane_0_i_n_16,
      init_clk_in => init_clk_in,
      left_aligned_r_reg => aurora_lane_0_i_n_12,
      left_aligned_r_reg_0 => gt_wrapper_i_n_34,
      rx_ecp_i => rx_ecp_i,
      rx_pad_i => rx_pad_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_scp_i => rx_scp_i,
      soft_err_flop_r0 => soft_err_flop_r0,
      \soft_err_r_reg[0]\(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      start_rx_i => start_rx_i,
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\,
      tx_pe_data_v_i => tx_pe_data_v_i,
      user_clk => user_clk,
      \word_aligned_control_bits_r_reg[0]\ => gt_wrapper_i_n_31,
      \word_aligned_control_bits_r_reg[1]\ => gt_wrapper_i_n_30,
      \word_aligned_data_r_reg[0]\(7) => gt_wrapper_i_n_44,
      \word_aligned_data_r_reg[0]\(6) => gt_wrapper_i_n_45,
      \word_aligned_data_r_reg[0]\(5) => gt_wrapper_i_n_46,
      \word_aligned_data_r_reg[0]\(4) => gt_wrapper_i_n_47,
      \word_aligned_data_r_reg[0]\(3) => gt_wrapper_i_n_48,
      \word_aligned_data_r_reg[0]\(2) => gt_wrapper_i_n_49,
      \word_aligned_data_r_reg[0]\(1) => gt_wrapper_i_n_50,
      \word_aligned_data_r_reg[0]\(0) => gt_wrapper_i_n_51,
      \word_aligned_data_r_reg[8]\(7) => gt_wrapper_i_n_36,
      \word_aligned_data_r_reg[8]\(6) => gt_wrapper_i_n_37,
      \word_aligned_data_r_reg[8]\(5) => gt_wrapper_i_n_38,
      \word_aligned_data_r_reg[8]\(4) => gt_wrapper_i_n_39,
      \word_aligned_data_r_reg[8]\(3) => gt_wrapper_i_n_40,
      \word_aligned_data_r_reg[8]\(2) => gt_wrapper_i_n_41,
      \word_aligned_data_r_reg[8]\(1) => gt_wrapper_i_n_42,
      \word_aligned_data_r_reg[8]\(0) => gt_wrapper_i_n_43
    );
axi_to_ll_pdu_i: entity work.aurora_8b10b_0_AXI_TO_LL
     port map (
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg_0 => axi_to_ll_pdu_i_n_0,
      user_clk => user_clk
    );
core_reset_logic_i: entity work.aurora_8b10b_0_RESET_LOGIC
     port map (
      CHANNEL_UP => \^channel_up\,
      LINK_RESET_OUT => \^link_reset_out\,
      SYSTEM_RESET_reg_0 => \^sys_reset_out\,
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      gt_rxresetdone_r2_reg_0 => gt_wrapper_i_n_52,
      gt_txresetdone_r2_reg_0 => gt_wrapper_i_n_53,
      init_clk_in => init_clk_in,
      link_reset_comb_r => link_reset_comb_r,
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg => axi_to_ll_pdu_i_n_0,
      \out\ => reset_sync_user_clk,
      quad1_common_lock_in => \^quad1_common_lock_in\,
      reset_channel_i => reset_channel_i,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk,
      wait_for_lane_up_r0 => \channel_init_sm_i/wait_for_lane_up_r0\
    );
global_logic_i: entity work.aurora_8b10b_0_GLOBAL_LOGIC
     port map (
      CHANNEL_UP => \^channel_up\,
      HARD_ERR => HARD_ERR,
      LANE_UP => \^lane_up\,
      POWER_DOWN => POWER_DOWN,
      SOFT_ERR => SOFT_ERR,
      SR(0) => reset_lanes_i,
      begin_r0 => \lane_init_sm_i/begin_r0\,
      gen_a_i => gen_a_i,
      gen_k_flop_0_i(1) => gen_k_i(0),
      gen_k_flop_0_i(0) => gen_k_i(1),
      gen_r_flop_0_i(1) => gen_r_i(0),
      gen_r_flop_0_i(0) => gen_r_i(1),
      gen_v_flop_0_i(1) => gen_v_i(0),
      gen_v_flop_0_i(0) => gen_v_i(1),
      got_v_i => got_v_i,
      gtrxreset_i => gtrxreset_i,
      hard_err_i => hard_err_i,
      hard_err_reset_i => hard_err_reset_i,
      lfsr_taps_i => \^sys_reset_out\,
      p_0_in => p_0_in,
      reset_channel_i => reset_channel_i,
      soft_err_flop_r0 => soft_err_flop_r0,
      start_rx_i => start_rx_i,
      user_clk => user_clk,
      wait_for_lane_up_r0 => \channel_init_sm_i/wait_for_lane_up_r0\
    );
gt_reset_cdc_sync: entity work.aurora_8b10b_0_cdc_sync
     port map (
      AR(0) => gt_reset_sync_init_clk,
      GT_RESET => GT_RESET,
      HPCNT_RESET => HPCNT_RESET,
      init_clk_in => init_clk_in,
      \out\ => reset_sync_init_clk
    );
gt_wrapper_i: entity work.aurora_8b10b_0_GT_WRAPPER
     port map (
      AR(0) => gt_reset_sync_init_clk,
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      DRPADDR_IN(8 downto 0) => DRPADDR_IN(8 downto 0),
      DRPDI_IN(15 downto 0) => DRPDI_IN(15 downto 0),
      DRPDO_OUT(15 downto 0) => DRPDO_OUT(15 downto 0),
      DRPEN_IN => DRPEN_IN,
      DRPWE_IN => DRPWE_IN,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg\ => gt_wrapper_i_n_53,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      LOOPBACK(2 downto 0) => LOOPBACK(2 downto 0),
      PLL_NOT_LOCKED => PLL_NOT_LOCKED,
      POWER_DOWN => POWER_DOWN,
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      RXN => RXN,
      RXNOTINTABLE(1 downto 0) => rx_not_in_table_i(1 downto 0),
      RXP => RXP,
      RX_RESETDONE_OUT => RX_RESETDONE_OUT,
      TXCHARISK(1 downto 0) => TXCHARISK_IN(1 downto 0),
      TXDATA(15 downto 0) => TXDATA_IN(15 downto 0),
      TXN => TXN,
      TXP => TXP,
      TX_OUT_CLK => TX_OUT_CLK,
      TX_RESETDONE_OUT => TX_RESETDONE_OUT,
      drpclk_in => drpclk_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_common_reset_out => gt_common_reset_out,
      gtpe2_i => DRPRDY_OUT,
      gtpe2_i_0 => gt_wrapper_i_n_30,
      gtpe2_i_1 => gt_wrapper_i_n_31,
      gtpe2_i_2(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      gtpe2_i_3 => gt_wrapper_i_n_34,
      gtpe2_i_4(7) => gt_wrapper_i_n_36,
      gtpe2_i_4(6) => gt_wrapper_i_n_37,
      gtpe2_i_4(5) => gt_wrapper_i_n_38,
      gtpe2_i_4(4) => gt_wrapper_i_n_39,
      gtpe2_i_4(3) => gt_wrapper_i_n_40,
      gtpe2_i_4(2) => gt_wrapper_i_n_41,
      gtpe2_i_4(1) => gt_wrapper_i_n_42,
      gtpe2_i_4(0) => gt_wrapper_i_n_43,
      gtpe2_i_5(7) => gt_wrapper_i_n_44,
      gtpe2_i_5(6) => gt_wrapper_i_n_45,
      gtpe2_i_5(5) => gt_wrapper_i_n_46,
      gtpe2_i_5(4) => gt_wrapper_i_n_47,
      gtpe2_i_5(3) => gt_wrapper_i_n_48,
      gtpe2_i_5(2) => gt_wrapper_i_n_49,
      gtpe2_i_5(1) => gt_wrapper_i_n_50,
      gtpe2_i_5(0) => gt_wrapper_i_n_51,
      gtrxreset_i => gtrxreset_i,
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      hard_err_flop_r_reg => \err_detect_i/bucket_full_r\,
      init_clk_in => init_clk_in,
      link_reset_comb_r => link_reset_comb_r,
      quad1_common_lock_in => \^quad1_common_lock_in\,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxfsm_rxresetdone_r3_reg_0 => gt_wrapper_i_n_52,
      sync_clk => sync_clk,
      user_clk => user_clk,
      \word_aligned_control_bits_r_reg[1]\ => aurora_lane_0_i_n_12
    );
hpcnt_reset_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_0
     port map (
      RESET => RESET,
      init_clk_in => init_clk_in,
      \out\ => reset_sync_init_clk
    );
reset_sync_user_clk_cdc_sync: entity work.aurora_8b10b_0_cdc_sync_1
     port map (
      RESET => RESET,
      \out\ => reset_sync_user_clk,
      user_clk => user_clk
    );
rx_ll_i: entity work.aurora_8b10b_0_RX_LL
     port map (
      D(15) => rx_pe_data_i(0),
      D(14) => rx_pe_data_i(1),
      D(13) => rx_pe_data_i(2),
      D(12) => rx_pe_data_i(3),
      D(11) => rx_pe_data_i(4),
      D(10) => rx_pe_data_i(5),
      D(9) => rx_pe_data_i(6),
      D(8) => rx_pe_data_i(7),
      D(7) => rx_pe_data_i(8),
      D(6) => rx_pe_data_i(9),
      D(5) => rx_pe_data_i(10),
      D(4) => rx_pe_data_i(11),
      D(3) => rx_pe_data_i(12),
      D(2) => rx_pe_data_i(13),
      D(1) => rx_pe_data_i(14),
      D(0) => rx_pe_data_i(15),
      FRAME_ERR => FRAME_ERR,
      M_AXI_RX_TDATA(0 to 15) => M_AXI_RX_TDATA(0 to 15),
      M_AXI_RX_TKEEP(0) => \^m_axi_rx_tkeep\(1),
      M_AXI_RX_TLAST => M_AXI_RX_TLAST,
      M_AXI_RX_TVALID => M_AXI_RX_TVALID,
      RX_EOF_N_Buffer_reg => aurora_lane_0_i_n_14,
      RX_SRC_RDY_N_Buffer_reg_inv => aurora_lane_0_i_n_15,
      in_frame_r => \rx_ll_pdu_datapath_i/in_frame_r\,
      in_frame_r_reg => aurora_lane_0_i_n_16,
      rx_ecp_i => rx_ecp_i,
      rx_pad_i => rx_pad_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_scp_i => rx_scp_i,
      start_rx_i => start_rx_i,
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\,
      user_clk => user_clk
    );
standard_cc_module_i: entity work.aurora_8b10b_0_STANDARD_CC_MODULE
     port map (
      Q => DO_CC_I,
      \cc_count_r_reg[5]_0\ => \^sys_reset_out\,
      user_clk => user_clk
    );
tx_ll_i: entity work.aurora_8b10b_0_TX_LL
     port map (
      Q => DO_CC_I,
      S_AXI_TX_TDATA(0 to 15) => S_AXI_TX_TDATA(0 to 15),
      S_AXI_TX_TKEEP(0 to 1) => S_AXI_TX_TKEEP(0 to 1),
      S_AXI_TX_TLAST => S_AXI_TX_TLAST,
      S_AXI_TX_TREADY => S_AXI_TX_TREADY,
      S_AXI_TX_TVALID => S_AXI_TX_TVALID,
      \TX_PE_DATA_Buffer_reg[0]\(15) => tx_pe_data_i(0),
      \TX_PE_DATA_Buffer_reg[0]\(14) => tx_pe_data_i(1),
      \TX_PE_DATA_Buffer_reg[0]\(13) => tx_pe_data_i(2),
      \TX_PE_DATA_Buffer_reg[0]\(12) => tx_pe_data_i(3),
      \TX_PE_DATA_Buffer_reg[0]\(11) => tx_pe_data_i(4),
      \TX_PE_DATA_Buffer_reg[0]\(10) => tx_pe_data_i(5),
      \TX_PE_DATA_Buffer_reg[0]\(9) => tx_pe_data_i(6),
      \TX_PE_DATA_Buffer_reg[0]\(8) => tx_pe_data_i(7),
      \TX_PE_DATA_Buffer_reg[0]\(7) => tx_pe_data_i(8),
      \TX_PE_DATA_Buffer_reg[0]\(6) => tx_pe_data_i(9),
      \TX_PE_DATA_Buffer_reg[0]\(5) => tx_pe_data_i(10),
      \TX_PE_DATA_Buffer_reg[0]\(4) => tx_pe_data_i(11),
      \TX_PE_DATA_Buffer_reg[0]\(3) => tx_pe_data_i(12),
      \TX_PE_DATA_Buffer_reg[0]\(2) => tx_pe_data_i(13),
      \TX_PE_DATA_Buffer_reg[0]\(1) => tx_pe_data_i(14),
      \TX_PE_DATA_Buffer_reg[0]\(0) => tx_pe_data_i(15),
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      gen_pad_i => gen_pad_i,
      gen_scp_i => gen_scp_i,
      p_0_in => p_0_in,
      storage_pad_r_reg => axi_to_ll_pdu_i_n_0,
      tx_dst_rdy => tx_dst_rdy,
      tx_pe_data_v_i => tx_pe_data_v_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_tx_tlast : in STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 1 );
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_refclk1 : in STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    lane_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_reset : in STD_LOGIC;
    tx_lock : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_common_reset_out : out STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    quad1_common_lock_in : in STD_LOGIC;
    GT0_PLL0OUTCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTCLK_IN : in STD_LOGIC;
    GT0_PLL0OUTREFCLK_IN : in STD_LOGIC;
    GT0_PLL1OUTREFCLK_IN : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    pll_not_locked : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of aurora_8b10b_0 : entity is true;
end aurora_8b10b_0;

architecture STRUCTURE of aurora_8b10b_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_M_AXI_RX_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CC_FREQ_FACTOR : integer;
  attribute CC_FREQ_FACTOR of U0 : label is 24;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of U0 : label is "FALSE";
begin
  m_axi_rx_tkeep(0) <= \<const1>\;
  m_axi_rx_tkeep(1) <= \^m_axi_rx_tkeep\(1);
U0: entity work.aurora_8b10b_0_core
     port map (
      CHANNEL_UP => channel_up,
      DRPADDR_IN(8 downto 0) => drpaddr_in(8 downto 0),
      DRPDI_IN(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO_OUT(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN_IN => drpen_in,
      DRPRDY_OUT => drprdy_out,
      DRPWE_IN => drpwe_in,
      FRAME_ERR => frame_err,
      GT0_PLL0OUTCLK_IN => GT0_PLL0OUTCLK_IN,
      GT0_PLL0OUTREFCLK_IN => GT0_PLL0OUTREFCLK_IN,
      GT0_PLL1OUTCLK_IN => GT0_PLL1OUTCLK_IN,
      GT0_PLL1OUTREFCLK_IN => GT0_PLL1OUTREFCLK_IN,
      GT_RESET => gt_reset,
      HARD_ERR => hard_err,
      LANE_UP => lane_up(0),
      LINK_RESET_OUT => link_reset_out,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      M_AXI_RX_TDATA(0 to 15) => m_axi_rx_tdata(0 to 15),
      M_AXI_RX_TKEEP(0) => NLW_U0_M_AXI_RX_TKEEP_UNCONNECTED(0),
      M_AXI_RX_TKEEP(1) => \^m_axi_rx_tkeep\(1),
      M_AXI_RX_TLAST => m_axi_rx_tlast,
      M_AXI_RX_TVALID => m_axi_rx_tvalid,
      PLL_NOT_LOCKED => pll_not_locked,
      POWER_DOWN => power_down,
      RESET => reset,
      RXN => rxn(0),
      RXP => rxp(0),
      RX_RESETDONE_OUT => rx_resetdone_out,
      SOFT_ERR => soft_err,
      S_AXI_TX_TDATA(0 to 15) => s_axi_tx_tdata(0 to 15),
      S_AXI_TX_TKEEP(0 to 1) => s_axi_tx_tkeep(0 to 1),
      S_AXI_TX_TLAST => s_axi_tx_tlast,
      S_AXI_TX_TREADY => s_axi_tx_tready,
      S_AXI_TX_TVALID => s_axi_tx_tvalid,
      TXN => txn(0),
      TXP => txp(0),
      TX_OUT_CLK => tx_out_clk,
      TX_RESETDONE_OUT => tx_resetdone_out,
      drpclk_in => drpclk_in,
      gt0_pll0refclklost_in => '0',
      gt_common_reset_out => gt_common_reset_out,
      gt_refclk1 => '0',
      init_clk_in => init_clk_in,
      quad1_common_lock_in => quad1_common_lock_in,
      sync_clk => sync_clk,
      sys_reset_out => sys_reset_out,
      tx_lock => tx_lock,
      user_clk => user_clk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
