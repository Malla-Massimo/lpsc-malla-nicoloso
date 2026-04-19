// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Apr 19 18:29:02 2026
// Host        : LAPTOP-E00F6MUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/MA_LPSC/lpsc-malla-nicoloso/mandelbrot/scalp_user_design/scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b_sim_netlist.v
// Design      : aurora_8b10b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module aurora_8b10b
   (s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,
    s_axi_tx_tkeep,
    s_axi_tx_tlast,
    m_axi_rx_tdata,
    m_axi_rx_tvalid,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    s_axi_nfc_tx_tvalid,
    s_axi_nfc_tx_tdata,
    s_axi_nfc_tx_tready,
    m_axi_nfc_rx_tvalid,
    m_axi_nfc_rx_tdata,
    s_axi_ufc_tx_tvalid,
    s_axi_ufc_tx_tdata,
    s_axi_ufc_tx_tready,
    m_axi_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep,
    m_axi_ufc_rx_tvalid,
    m_axi_ufc_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    frame_err,
    hard_err,
    soft_err,
    channel_up,
    lane_up,
    user_clk,
    sync_clk,
    reset,
    power_down,
    loopback,
    gt_reset,
    tx_lock,
    sys_reset_out,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpdi_in,
    drpdo_out,
    drpen_in,
    drprdy_out,
    drpwe_in,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    tx_out_clk,
    pll_not_locked);
  input [0:31]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tlast;
  output [0:31]m_axi_rx_tdata;
  output m_axi_rx_tvalid;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  input s_axi_nfc_tx_tvalid;
  input [0:3]s_axi_nfc_tx_tdata;
  output s_axi_nfc_tx_tready;
  output m_axi_nfc_rx_tvalid;
  output [0:3]m_axi_nfc_rx_tdata;
  input s_axi_ufc_tx_tvalid;
  input [0:2]s_axi_ufc_tx_tdata;
  output s_axi_ufc_tx_tready;
  output [0:31]m_axi_ufc_rx_tdata;
  output [0:3]m_axi_ufc_rx_tkeep;
  output m_axi_ufc_rx_tvalid;
  output m_axi_ufc_rx_tlast;
  input [0:0]rxp;
  input [0:0]rxn;
  output [0:0]txp;
  output [0:0]txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output channel_up;
  output [0:0]lane_up;
  input user_clk;
  input sync_clk;
  input reset;
  input power_down;
  input [2:0]loopback;
  input gt_reset;
  output tx_lock;
  output sys_reset_out;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  output [15:0]drpdo_out;
  input drpen_in;
  output drprdy_out;
  input drpwe_in;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  output tx_out_clk;
  input pll_not_locked;

  wire \<const1> ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire channel_up;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt_common_reset_out;
  wire gt_reset;
  wire hard_err;
  wire init_clk_in;
  wire [0:0]lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:3]m_axi_nfc_rx_tdata;
  wire m_axi_nfc_rx_tvalid;
  wire [0:31]m_axi_rx_tdata;
  wire [1:3]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire [2:3]\^m_axi_ufc_rx_tkeep ;
  wire m_axi_ufc_rx_tlast;
  wire m_axi_ufc_rx_tvalid;
  wire pll_not_locked;
  wire power_down;
  wire quad1_common_lock_in;
  wire reset;
  wire rx_resetdone_out;
  wire [0:0]rxn;
  wire [0:0]rxp;
  wire [0:3]s_axi_nfc_tx_tdata;
  wire s_axi_nfc_tx_tready;
  wire s_axi_nfc_tx_tvalid;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [0:2]s_axi_ufc_tx_tdata;
  wire s_axi_ufc_tx_tready;
  wire s_axi_ufc_tx_tvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire [0:0]txn;
  wire [0:0]txp;
  wire user_clk;
  wire [0:0]NLW_U0_M_AXI_RX_TKEEP_UNCONNECTED;
  wire [0:1]NLW_U0_M_AXI_UFC_RX_TKEEP_UNCONNECTED;

  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1:3] = \^m_axi_rx_tkeep [1:3];
  assign m_axi_ufc_rx_tkeep[0] = \<const1> ;
  assign m_axi_ufc_rx_tkeep[1] = \<const1> ;
  assign m_axi_ufc_rx_tkeep[2:3] = \^m_axi_ufc_rx_tkeep [2:3];
  (* CC_FREQ_FACTOR = "12" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
  aurora_8b10b_core U0
       (.CHANNEL_UP(channel_up),
        .DRPADDR_IN(drpaddr_in),
        .DRPDI_IN(drpdi_in),
        .DRPDO_OUT(drpdo_out),
        .DRPEN_IN(drpen_in),
        .DRPRDY_OUT(drprdy_out),
        .DRPWE_IN(drpwe_in),
        .FRAME_ERR(frame_err),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .GT_RESET(gt_reset),
        .HARD_ERR(hard_err),
        .LANE_UP(lane_up),
        .LINK_RESET_OUT(link_reset_out),
        .LOOPBACK(loopback),
        .M_AXI_RX_FC_NB(m_axi_nfc_rx_tdata),
        .M_AXI_RX_SNF(m_axi_nfc_rx_tvalid),
        .M_AXI_RX_TDATA(m_axi_rx_tdata),
        .M_AXI_RX_TKEEP({NLW_U0_M_AXI_RX_TKEEP_UNCONNECTED[0],\^m_axi_rx_tkeep }),
        .M_AXI_RX_TLAST(m_axi_rx_tlast),
        .M_AXI_RX_TVALID(m_axi_rx_tvalid),
        .M_AXI_UFC_RX_TDATA(m_axi_ufc_rx_tdata),
        .M_AXI_UFC_RX_TKEEP({NLW_U0_M_AXI_UFC_RX_TKEEP_UNCONNECTED[0:1],\^m_axi_ufc_rx_tkeep }),
        .M_AXI_UFC_RX_TLAST(m_axi_ufc_rx_tlast),
        .M_AXI_UFC_RX_TVALID(m_axi_ufc_rx_tvalid),
        .PLL_NOT_LOCKED(pll_not_locked),
        .POWER_DOWN(power_down),
        .RESET(reset),
        .RXN(rxn),
        .RXP(rxp),
        .RX_RESETDONE_OUT(rx_resetdone_out),
        .SOFT_ERR(soft_err),
        .S_AXI_NFC_ACK(s_axi_nfc_tx_tready),
        .S_AXI_NFC_NB(s_axi_nfc_tx_tdata),
        .S_AXI_NFC_REQ(s_axi_nfc_tx_tvalid),
        .S_AXI_TX_TDATA(s_axi_tx_tdata),
        .S_AXI_TX_TKEEP(s_axi_tx_tkeep),
        .S_AXI_TX_TLAST(s_axi_tx_tlast),
        .S_AXI_TX_TREADY(s_axi_tx_tready),
        .S_AXI_TX_TVALID(s_axi_tx_tvalid),
        .S_AXI_UFC_TX_ACK(s_axi_ufc_tx_tready),
        .S_AXI_UFC_TX_MS(s_axi_ufc_tx_tdata),
        .S_AXI_UFC_TX_REQ(s_axi_ufc_tx_tvalid),
        .TXN(txn),
        .TXP(txp),
        .TX_OUT_CLK(tx_out_clk),
        .TX_RESETDONE_OUT(tx_resetdone_out),
        .drpclk_in(drpclk_in),
        .gt0_pll0refclklost_in(1'b0),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_refclk1(1'b0),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .tx_lock(tx_lock),
        .user_clk(user_clk));
  VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_AURORA_LANE_4BYTE
   (LANE_UP,
    D_0,
    ena_comma_align_i,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    D,
    LINK_RESET_OUT,
    got_v_i,
    \data_nxt2_reg[25] ,
    \data_nxt2_reg[24] ,
    \data_nxt2_reg[26] ,
    \data_nxt2_reg[8] ,
    rx_polarity_i,
    first_v_received_r,
    hard_err_i,
    Q,
    \data_nxt2_reg[26]_0 ,
    \RX_SUF_Buffer_reg[0] ,
    neqOp,
    \previous_cycle_data_r_reg[7] ,
    left_align_select_r,
    rx_pe_data_striped_i,
    \RX_SNF_Buffer_reg[0] ,
    \RX_SNF_Buffer_reg[0]_0 ,
    \SOFT_ERR_Buffer_reg[0] ,
    TXDATA,
    \CHAR_IS_K_OUT_reg[3] ,
    \RX_PE_DATA_V_reg[0] ,
    p_9_out,
    p_8_out,
    reset_lanes_i,
    user_clk,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    \word_aligned_control_bits_r_reg[3] ,
    hard_err_gt0,
    init_clk_in,
    gen_cc_i,
    HPCNT_RESET,
    rx_realign_i,
    \DOUT_reg[0] ,
    start_rx_i,
    reset_count_r_reg,
    reset_count_r_reg_0,
    RXDATA,
    RXCHARISK,
    \left_align_select_r_reg[1]_1 ,
    \RX_CHAR_IS_COMMA_R_reg[3] ,
    \word_aligned_data_r_reg[24] ,
    \word_aligned_data_r_reg[16] ,
    \soft_err_r_reg[0] ,
    SS,
    \gen_v_r_reg[1] ,
    \gen_pad_r_reg[0] ,
    \tx_pe_data_v_r_reg[0] ,
    GEN_SUF,
    GEN_SNF,
    GEN_ECP,
    GEN_SCP,
    \gen_r_r_reg[0] ,
    \gen_k_r_reg[0] ,
    \fc_nb_r_reg[0] ,
    \tx_pe_data_r_reg[0] ,
    GEN_A);
  output LANE_UP;
  output D_0;
  output ena_comma_align_i;
  output consecutive_commas_r;
  output begin_r;
  output enable_err_detect_i;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output [0:0]D;
  output LINK_RESET_OUT;
  output got_v_i;
  output \data_nxt2_reg[25] ;
  output \data_nxt2_reg[24] ;
  output \data_nxt2_reg[26] ;
  output [4:0]\data_nxt2_reg[8] ;
  output rx_polarity_i;
  output first_v_received_r;
  output hard_err_i;
  output [1:0]Q;
  output [3:0]\data_nxt2_reg[26]_0 ;
  output [1:0]\RX_SUF_Buffer_reg[0] ;
  output neqOp;
  output [5:0]\previous_cycle_data_r_reg[7] ;
  output [0:0]left_align_select_r;
  output [0:31]rx_pe_data_striped_i;
  output \RX_SNF_Buffer_reg[0] ;
  output [1:0]\RX_SNF_Buffer_reg[0]_0 ;
  output [1:0]\SOFT_ERR_Buffer_reg[0] ;
  output [31:0]TXDATA;
  output [3:0]\CHAR_IS_K_OUT_reg[3] ;
  output [1:0]\RX_PE_DATA_V_reg[0] ;
  output [1:0]p_9_out;
  output [1:0]p_8_out;
  input reset_lanes_i;
  input user_clk;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[1]_0 ;
  input \word_aligned_control_bits_r_reg[3] ;
  input hard_err_gt0;
  input init_clk_in;
  input gen_cc_i;
  input HPCNT_RESET;
  input rx_realign_i;
  input \DOUT_reg[0] ;
  input start_rx_i;
  input reset_count_r_reg;
  input reset_count_r_reg_0;
  input [31:0]RXDATA;
  input [3:0]RXCHARISK;
  input \left_align_select_r_reg[1]_1 ;
  input [3:0]\RX_CHAR_IS_COMMA_R_reg[3] ;
  input [7:0]\word_aligned_data_r_reg[24] ;
  input [5:0]\word_aligned_data_r_reg[16] ;
  input [3:0]\soft_err_r_reg[0] ;
  input [0:0]SS;
  input [2:0]\gen_v_r_reg[1] ;
  input [1:0]\gen_pad_r_reg[0] ;
  input [1:0]\tx_pe_data_v_r_reg[0] ;
  input [0:0]GEN_SUF;
  input [0:0]GEN_SNF;
  input [0:0]GEN_ECP;
  input [0:0]GEN_SCP;
  input [3:0]\gen_r_r_reg[0] ;
  input [3:0]\gen_k_r_reg[0] ;
  input [3:0]\fc_nb_r_reg[0] ;
  input [31:0]\tx_pe_data_r_reg[0] ;
  input GEN_A;

  wire BYPASS;
  wire BYPASS_1;
  wire [3:0]\CHAR_IS_K_OUT_reg[3] ;
  wire [0:0]D;
  wire \DOUT_reg[0] ;
  wire D_0;
  wire EN;
  wire EN_0;
  wire GEN_A;
  wire [0:0]GEN_ECP;
  wire [0:0]GEN_SCP;
  wire [0:0]GEN_SNF;
  wire [0:0]GEN_SUF;
  wire HPCNT_RESET;
  wire LANE_UP;
  wire LINK_RESET_OUT;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [3:0]\RX_CHAR_IS_COMMA_R_reg[3] ;
  wire [1:0]\RX_PE_DATA_V_reg[0] ;
  wire [0:0]RX_SNF_Buffer;
  wire \RX_SNF_Buffer_reg[0] ;
  wire [1:0]\RX_SNF_Buffer_reg[0]_0 ;
  wire [1:0]\RX_SUF_Buffer_reg[0] ;
  wire [1:0]\SOFT_ERR_Buffer_reg[0] ;
  wire [0:0]SS;
  wire [31:0]TXDATA;
  wire \aurora_8b10b_descrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_descrambler0_i/p_11_in ;
  wire \aurora_8b10b_descrambler0_i/p_12_in ;
  wire \aurora_8b10b_descrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_descrambler0_i/p_14_in ;
  wire \aurora_8b10b_descrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_descrambler0_i/p_2_in ;
  wire \aurora_8b10b_descrambler0_i/p_5_in ;
  wire \aurora_8b10b_descrambler0_i/p_7_in ;
  wire \aurora_8b10b_descrambler0_i/p_8_in ;
  wire \aurora_8b10b_descrambler0_i/p_9_in ;
  wire \aurora_8b10b_descrambler1_i/p_0_in3_in ;
  wire \aurora_8b10b_descrambler1_i/p_11_in ;
  wire \aurora_8b10b_descrambler1_i/p_12_in ;
  wire \aurora_8b10b_descrambler1_i/p_13_in28_in ;
  wire \aurora_8b10b_descrambler1_i/p_14_in ;
  wire \aurora_8b10b_descrambler1_i/p_15_in25_in ;
  wire \aurora_8b10b_descrambler1_i/p_2_in ;
  wire \aurora_8b10b_descrambler1_i/p_5_in ;
  wire \aurora_8b10b_descrambler1_i/p_7_in ;
  wire \aurora_8b10b_descrambler1_i/p_8_in ;
  wire \aurora_8b10b_descrambler1_i/p_9_in ;
  wire aurora_8b10b_descrambler_top_i_n_30;
  wire aurora_8b10b_descrambler_top_i_n_42;
  wire aurora_8b10b_lane_init_sm_4byte_i_n_12;
  wire aurora_8b10b_lane_init_sm_4byte_i_n_7;
  wire \aurora_8b10b_scrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_scrambler0_i/p_11_in ;
  wire \aurora_8b10b_scrambler0_i/p_12_in ;
  wire \aurora_8b10b_scrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_scrambler0_i/p_14_in ;
  wire \aurora_8b10b_scrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_scrambler0_i/p_2_in ;
  wire \aurora_8b10b_scrambler0_i/p_5_in ;
  wire \aurora_8b10b_scrambler0_i/p_7_in ;
  wire \aurora_8b10b_scrambler0_i/p_8_in ;
  wire \aurora_8b10b_scrambler0_i/p_9_in ;
  wire \aurora_8b10b_scrambler1_i/p_0_in3_in ;
  wire \aurora_8b10b_scrambler1_i/p_11_in ;
  wire \aurora_8b10b_scrambler1_i/p_12_in ;
  wire \aurora_8b10b_scrambler1_i/p_13_in28_in ;
  wire \aurora_8b10b_scrambler1_i/p_14_in ;
  wire \aurora_8b10b_scrambler1_i/p_15_in25_in ;
  wire \aurora_8b10b_scrambler1_i/p_2_in ;
  wire \aurora_8b10b_scrambler1_i/p_5_in ;
  wire \aurora_8b10b_scrambler1_i/p_7_in ;
  wire \aurora_8b10b_scrambler1_i/p_8_in ;
  wire \aurora_8b10b_scrambler1_i/p_9_in ;
  wire aurora_8b10b_scrambler_top_i_n_11;
  wire aurora_8b10b_scrambler_top_i_n_23;
  wire aurora_8b10b_sym_dec_4byte_i_n_48;
  wire aurora_8b10b_sym_dec_4byte_i_n_56;
  wire aurora_8b10b_sym_dec_4byte_i_n_57;
  wire aurora_8b10b_sym_dec_4byte_i_n_58;
  wire aurora_8b10b_sym_dec_4byte_i_n_59;
  wire aurora_8b10b_sym_dec_4byte_i_n_60;
  wire aurora_8b10b_sym_dec_4byte_i_n_61;
  wire aurora_8b10b_sym_dec_4byte_i_n_62;
  wire aurora_8b10b_sym_dec_4byte_i_n_63;
  wire aurora_8b10b_sym_dec_4byte_i_n_64;
  wire aurora_8b10b_sym_dec_4byte_i_n_65;
  wire aurora_8b10b_sym_dec_4byte_i_n_66;
  wire aurora_8b10b_sym_dec_4byte_i_n_67;
  wire aurora_8b10b_sym_dec_4byte_i_n_68;
  wire aurora_8b10b_sym_dec_4byte_i_n_69;
  wire aurora_8b10b_sym_dec_4byte_i_n_70;
  wire aurora_8b10b_sym_dec_4byte_i_n_71;
  wire aurora_8b10b_sym_dec_4byte_i_n_72;
  wire aurora_8b10b_sym_dec_4byte_i_n_73;
  wire aurora_8b10b_sym_dec_4byte_i_n_74;
  wire aurora_8b10b_sym_dec_4byte_i_n_75;
  wire aurora_8b10b_sym_dec_4byte_i_n_76;
  wire aurora_8b10b_sym_dec_4byte_i_n_77;
  wire aurora_8b10b_sym_dec_4byte_i_n_78;
  wire aurora_8b10b_sym_dec_4byte_i_n_79;
  wire aurora_8b10b_sym_gen_4byte_i_n_10;
  wire aurora_8b10b_sym_gen_4byte_i_n_43;
  wire aurora_8b10b_sym_gen_4byte_i_n_44;
  wire aurora_8b10b_sym_gen_4byte_i_n_45;
  wire aurora_8b10b_sym_gen_4byte_i_n_46;
  wire aurora_8b10b_sym_gen_4byte_i_n_47;
  wire aurora_8b10b_sym_gen_4byte_i_n_48;
  wire aurora_8b10b_sym_gen_4byte_i_n_49;
  wire aurora_8b10b_sym_gen_4byte_i_n_50;
  wire aurora_8b10b_sym_gen_4byte_i_n_51;
  wire aurora_8b10b_sym_gen_4byte_i_n_52;
  wire aurora_8b10b_sym_gen_4byte_i_n_53;
  wire aurora_8b10b_sym_gen_4byte_i_n_54;
  wire aurora_8b10b_sym_gen_4byte_i_n_55;
  wire aurora_8b10b_sym_gen_4byte_i_n_56;
  wire aurora_8b10b_sym_gen_4byte_i_n_57;
  wire aurora_8b10b_sym_gen_4byte_i_n_58;
  wire aurora_8b10b_sym_gen_4byte_i_n_59;
  wire aurora_8b10b_sym_gen_4byte_i_n_60;
  wire aurora_8b10b_sym_gen_4byte_i_n_61;
  wire aurora_8b10b_sym_gen_4byte_i_n_62;
  wire aurora_8b10b_sym_gen_4byte_i_n_63;
  wire aurora_8b10b_sym_gen_4byte_i_n_64;
  wire aurora_8b10b_sym_gen_4byte_i_n_65;
  wire aurora_8b10b_sym_gen_4byte_i_n_7;
  wire aurora_8b10b_sym_gen_4byte_i_n_9;
  wire begin_r;
  wire begin_r0;
  wire [0:0]bypass_w_reg;
  wire consecutive_commas_r;
  wire counter3_r0;
  wire counter4_r0;
  wire \data_nxt2_reg[24] ;
  wire \data_nxt2_reg[25] ;
  wire \data_nxt2_reg[26] ;
  wire [3:0]\data_nxt2_reg[26]_0 ;
  wire [4:0]\data_nxt2_reg[8] ;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire [3:0]\fc_nb_r_reg[0] ;
  wire first_v_received_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire [3:0]\gen_k_r_reg[0] ;
  wire [1:0]\gen_pad_r_reg[0] ;
  wire [3:0]\gen_r_r_reg[0] ;
  wire gen_sp_i;
  wire gen_sp_r;
  wire gen_spa_i;
  wire gen_v_r;
  wire gen_v_r2;
  wire [2:0]\gen_v_r_reg[1] ;
  wire good_cnt_r3;
  wire got_v_descram_in;
  wire got_v_i;
  wire hard_err_gt0;
  wire hard_err_i;
  wire init_clk_in;
  wire [0:0]left_align_select_r;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[1] ;
  wire \left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire neqOp;
  wire p_0_in_0;
  wire [1:0]p_8_out;
  wire [1:0]p_9_out;
  wire [5:0]\previous_cycle_data_r_reg[7] ;
  wire reset_count_r_reg;
  wire reset_count_r_reg_0;
  wire reset_lanes_i;
  wire rx_neg_descram_in;
  wire rx_neg_i;
  wire [0:31]rx_pe_data_descram_in;
  wire [0:31]rx_pe_data_striped_i;
  wire [0:1]rx_pe_data_v_descram_in;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [1:1]rx_snf_descram_in;
  wire rx_sp_descram_in;
  wire rx_spa_descram_in;
  wire [0:1]rx_suf_descram_in;
  wire [3:0]\soft_err_r_reg[0] ;
  wire start_rx_i;
  wire [3:0]tx_char_is_k_i;
  wire [31:0]tx_data_i;
  wire [31:0]\tx_pe_data_r_reg[0] ;
  wire [1:0]\tx_pe_data_v_r_reg[0] ;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[3] ;
  wire [5:0]\word_aligned_data_r_reg[16] ;
  wire [7:0]\word_aligned_data_r_reg[24] ;

  aurora_8b10b_DESCRAMBLER_TOP aurora_8b10b_descrambler_top_i
       (.D({BYPASS,bypass_w_reg}),
        .\DOUT_reg[0] (aurora_8b10b_sym_dec_4byte_i_n_48),
        .\DOUT_reg[0]_0 (aurora_8b10b_sym_dec_4byte_i_n_67),
        .\DOUT_reg[0]_1 (aurora_8b10b_sym_dec_4byte_i_n_79),
        .\DOUT_reg[10] (aurora_8b10b_sym_dec_4byte_i_n_61),
        .\DOUT_reg[10]_0 (aurora_8b10b_sym_dec_4byte_i_n_73),
        .\DOUT_reg[11] (aurora_8b10b_sym_dec_4byte_i_n_60),
        .\DOUT_reg[11]_0 (aurora_8b10b_sym_dec_4byte_i_n_72),
        .\DOUT_reg[12] (aurora_8b10b_sym_dec_4byte_i_n_59),
        .\DOUT_reg[12]_0 (aurora_8b10b_sym_dec_4byte_i_n_71),
        .\DOUT_reg[13] (aurora_8b10b_sym_dec_4byte_i_n_58),
        .\DOUT_reg[13]_0 (aurora_8b10b_sym_dec_4byte_i_n_70),
        .\DOUT_reg[14] (aurora_8b10b_sym_dec_4byte_i_n_57),
        .\DOUT_reg[14]_0 (aurora_8b10b_sym_dec_4byte_i_n_69),
        .\DOUT_reg[15] (aurora_8b10b_sym_dec_4byte_i_n_56),
        .\DOUT_reg[15]_0 (aurora_8b10b_sym_dec_4byte_i_n_68),
        .\DOUT_reg[1] (aurora_8b10b_sym_dec_4byte_i_n_66),
        .\DOUT_reg[1]_0 (aurora_8b10b_sym_dec_4byte_i_n_78),
        .\DOUT_reg[4] (aurora_8b10b_sym_dec_4byte_i_n_65),
        .\DOUT_reg[4]_0 (aurora_8b10b_sym_dec_4byte_i_n_77),
        .\DOUT_reg[5] (aurora_8b10b_sym_dec_4byte_i_n_64),
        .\DOUT_reg[5]_0 (aurora_8b10b_sym_dec_4byte_i_n_76),
        .\DOUT_reg[8] (aurora_8b10b_sym_dec_4byte_i_n_63),
        .\DOUT_reg[8]_0 (aurora_8b10b_sym_dec_4byte_i_n_75),
        .\DOUT_reg[9] (aurora_8b10b_sym_dec_4byte_i_n_62),
        .\DOUT_reg[9]_0 (aurora_8b10b_sym_dec_4byte_i_n_74),
        .EN(EN),
        .Q(\RX_SUF_Buffer_reg[0] ),
        .\RX_PE_DATA_V_reg[0]_0 (\RX_PE_DATA_V_reg[0] ),
        .\RX_PE_DATA_V_reg[0]_1 ({rx_pe_data_v_descram_in[0],rx_pe_data_v_descram_in[1]}),
        .\RX_SNF_Buffer_reg[0]_0 (\RX_SNF_Buffer_reg[0] ),
        .\RX_SNF_Buffer_reg[0]_1 (\RX_SNF_Buffer_reg[0]_0 ),
        .\RX_SNF_Buffer_reg[0]_2 ({RX_SNF_Buffer,rx_snf_descram_in}),
        .\RX_SUF_Buffer_reg[0]_0 ({rx_suf_descram_in[0],rx_suf_descram_in[1]}),
        .SS(SS),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .\counter4_r_reg[15] (D_0),
        .\data_nxt2_reg[24]_0 (\data_nxt2_reg[24] ),
        .\data_nxt2_reg[25]_0 (\data_nxt2_reg[25] ),
        .\data_nxt2_reg[26]_0 (\data_nxt2_reg[26] ),
        .\data_nxt2_reg[26]_1 (\data_nxt2_reg[26]_0 ),
        .\data_nxt2_reg[8]_0 (\data_nxt2_reg[8] ),
        .gen_spa_i(gen_spa_i),
        .got_v_descram_in(got_v_descram_in),
        .got_v_i(got_v_i),
        .\lfsr_reg[15] ({\aurora_8b10b_descrambler0_i/p_11_in ,\aurora_8b10b_descrambler0_i/p_8_in ,\aurora_8b10b_descrambler0_i/p_2_in ,\aurora_8b10b_descrambler0_i/p_0_in3_in ,\aurora_8b10b_descrambler0_i/p_15_in25_in ,\aurora_8b10b_descrambler0_i/p_14_in ,\aurora_8b10b_descrambler0_i/p_13_in28_in ,\aurora_8b10b_descrambler0_i/p_12_in ,\aurora_8b10b_descrambler0_i/p_9_in ,\aurora_8b10b_descrambler0_i/p_7_in ,\aurora_8b10b_descrambler0_i/p_5_in ,aurora_8b10b_descrambler_top_i_n_30}),
        .\lfsr_reg[15]_0 ({\aurora_8b10b_descrambler1_i/p_11_in ,\aurora_8b10b_descrambler1_i/p_8_in ,\aurora_8b10b_descrambler1_i/p_2_in ,\aurora_8b10b_descrambler1_i/p_0_in3_in ,\aurora_8b10b_descrambler1_i/p_15_in25_in ,\aurora_8b10b_descrambler1_i/p_14_in ,\aurora_8b10b_descrambler1_i/p_13_in28_in ,\aurora_8b10b_descrambler1_i/p_12_in ,\aurora_8b10b_descrambler1_i/p_9_in ,\aurora_8b10b_descrambler1_i/p_7_in ,\aurora_8b10b_descrambler1_i/p_5_in ,aurora_8b10b_descrambler_top_i_n_42}),
        .neqOp(neqOp),
        .rx_neg_descram_in(rx_neg_descram_in),
        .rx_neg_i(rx_neg_i),
        .rx_pe_data_descram_in(rx_pe_data_descram_in),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .rx_sp_descram_in(rx_sp_descram_in),
        .rx_spa_descram_in(rx_spa_descram_in),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  aurora_8b10b_ERR_DETECT_4BYTE aurora_8b10b_err_detect_4byte_i
       (.\SOFT_ERR_Buffer_reg[0]_0 (\SOFT_ERR_Buffer_reg[0] ),
        .begin_r0(begin_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .good_cnt_r3(good_cnt_r3),
        .hard_err_gt0(hard_err_gt0),
        .hard_err_i(hard_err_i),
        .reset_lanes_i(reset_lanes_i),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .user_clk(user_clk));
  aurora_8b10b_HOTPLUG aurora_8b10b_hotplug_i
       (.D(D),
        .HPCNT_RESET(HPCNT_RESET),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .init_clk_in(init_clk_in),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_LANE_INIT_SM_4BYTE aurora_8b10b_lane_init_sm_4byte_i
       (.LANE_UP(LANE_UP),
        .\RX_CHAR_IS_COMMA_R_reg[3]_0 (\RX_CHAR_IS_COMMA_R_reg[3] ),
        .align_r_reg_0(ena_comma_align_i),
        .begin_r(begin_r),
        .begin_r0(begin_r0),
        .consecutive_commas_r(consecutive_commas_r),
        .\counter2_r_reg[0]_0 (aurora_8b10b_lane_init_sm_4byte_i_n_7),
        .\counter2_r_reg[0]_1 (aurora_8b10b_lane_init_sm_4byte_i_n_12),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .gen_sp_i(gen_sp_i),
        .gen_sp_r(gen_sp_r),
        .gen_spa_i(gen_spa_i),
        .good_cnt_r3(good_cnt_r3),
        .left_align_select_r(left_align_select_r),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1]_1 ),
        .ready_r_reg_0(D_0),
        .reset_count_r_reg_0(reset_count_r_reg),
        .reset_count_r_reg_1(reset_count_r_reg_0),
        .reset_lanes_i(reset_lanes_i),
        .rx_neg_i(rx_neg_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
  aurora_8b10b_SCRAMBLER_TOP aurora_8b10b_scrambler_top_i
       (.\CHAR_IS_K_OUT_reg[3]_0 (\CHAR_IS_K_OUT_reg[3] ),
        .\CHAR_IS_K_OUT_reg[3]_1 (tx_char_is_k_i),
        .D(tx_data_i),
        .\DOUT_reg[0] (aurora_8b10b_sym_gen_4byte_i_n_9),
        .\DOUT_reg[0]_0 (aurora_8b10b_sym_gen_4byte_i_n_53),
        .\DOUT_reg[0]_1 (aurora_8b10b_sym_gen_4byte_i_n_65),
        .\DOUT_reg[10] (aurora_8b10b_sym_gen_4byte_i_n_47),
        .\DOUT_reg[10]_0 (aurora_8b10b_sym_gen_4byte_i_n_59),
        .\DOUT_reg[11] (aurora_8b10b_sym_gen_4byte_i_n_46),
        .\DOUT_reg[11]_0 (aurora_8b10b_sym_gen_4byte_i_n_58),
        .\DOUT_reg[12] (aurora_8b10b_sym_gen_4byte_i_n_45),
        .\DOUT_reg[12]_0 (aurora_8b10b_sym_gen_4byte_i_n_57),
        .\DOUT_reg[13] (aurora_8b10b_sym_gen_4byte_i_n_44),
        .\DOUT_reg[13]_0 (aurora_8b10b_sym_gen_4byte_i_n_56),
        .\DOUT_reg[14] (aurora_8b10b_sym_gen_4byte_i_n_43),
        .\DOUT_reg[14]_0 (aurora_8b10b_sym_gen_4byte_i_n_55),
        .\DOUT_reg[15] (aurora_8b10b_sym_gen_4byte_i_n_10),
        .\DOUT_reg[15]_0 (aurora_8b10b_sym_gen_4byte_i_n_54),
        .\DOUT_reg[1] (aurora_8b10b_sym_gen_4byte_i_n_52),
        .\DOUT_reg[1]_0 (aurora_8b10b_sym_gen_4byte_i_n_64),
        .\DOUT_reg[4] (aurora_8b10b_sym_gen_4byte_i_n_51),
        .\DOUT_reg[4]_0 (aurora_8b10b_sym_gen_4byte_i_n_63),
        .\DOUT_reg[5] (aurora_8b10b_sym_gen_4byte_i_n_50),
        .\DOUT_reg[5]_0 (aurora_8b10b_sym_gen_4byte_i_n_62),
        .\DOUT_reg[8] (aurora_8b10b_sym_gen_4byte_i_n_49),
        .\DOUT_reg[8]_0 (aurora_8b10b_sym_gen_4byte_i_n_61),
        .\DOUT_reg[9] (aurora_8b10b_sym_gen_4byte_i_n_48),
        .\DOUT_reg[9]_0 (aurora_8b10b_sym_gen_4byte_i_n_60),
        .EN(EN_0),
        .Q({\aurora_8b10b_scrambler0_i/p_11_in ,\aurora_8b10b_scrambler0_i/p_8_in ,\aurora_8b10b_scrambler0_i/p_2_in ,\aurora_8b10b_scrambler0_i/p_0_in3_in ,\aurora_8b10b_scrambler0_i/p_15_in25_in ,\aurora_8b10b_scrambler0_i/p_14_in ,\aurora_8b10b_scrambler0_i/p_13_in28_in ,\aurora_8b10b_scrambler0_i/p_12_in ,\aurora_8b10b_scrambler0_i/p_9_in ,\aurora_8b10b_scrambler0_i/p_7_in ,\aurora_8b10b_scrambler0_i/p_5_in ,aurora_8b10b_scrambler_top_i_n_11}),
        .TXDATA(TXDATA),
        .\bypass_r_reg[1]_0 ({BYPASS_1,aurora_8b10b_sym_gen_4byte_i_n_7}),
        .gen_cc_r(gen_cc_r),
        .gen_v_r2(gen_v_r2),
        .\lfsr_reg[15] ({\aurora_8b10b_scrambler1_i/p_11_in ,\aurora_8b10b_scrambler1_i/p_8_in ,\aurora_8b10b_scrambler1_i/p_2_in ,\aurora_8b10b_scrambler1_i/p_0_in3_in ,\aurora_8b10b_scrambler1_i/p_15_in25_in ,\aurora_8b10b_scrambler1_i/p_14_in ,\aurora_8b10b_scrambler1_i/p_13_in28_in ,\aurora_8b10b_scrambler1_i/p_12_in ,\aurora_8b10b_scrambler1_i/p_9_in ,\aurora_8b10b_scrambler1_i/p_7_in ,\aurora_8b10b_scrambler1_i/p_5_in ,aurora_8b10b_scrambler_top_i_n_23}),
        .\lfsr_reg[15]_0 (\DOUT_reg[0] ),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_SYM_DEC_4BYTE aurora_8b10b_sym_dec_4byte_i
       (.D(D),
        .\DOUT_reg[0] (\DOUT_reg[0] ),
        .\DOUT_reg[0]_0 ({\aurora_8b10b_descrambler1_i/p_11_in ,\aurora_8b10b_descrambler1_i/p_8_in ,\aurora_8b10b_descrambler1_i/p_2_in ,\aurora_8b10b_descrambler1_i/p_0_in3_in ,\aurora_8b10b_descrambler1_i/p_15_in25_in ,\aurora_8b10b_descrambler1_i/p_14_in ,\aurora_8b10b_descrambler1_i/p_13_in28_in ,\aurora_8b10b_descrambler1_i/p_12_in ,\aurora_8b10b_descrambler1_i/p_9_in ,\aurora_8b10b_descrambler1_i/p_7_in ,\aurora_8b10b_descrambler1_i/p_5_in ,aurora_8b10b_descrambler_top_i_n_42}),
        .\DOUT_reg[0]_1 ({\aurora_8b10b_descrambler0_i/p_11_in ,\aurora_8b10b_descrambler0_i/p_8_in ,\aurora_8b10b_descrambler0_i/p_2_in ,\aurora_8b10b_descrambler0_i/p_0_in3_in ,\aurora_8b10b_descrambler0_i/p_15_in25_in ,\aurora_8b10b_descrambler0_i/p_14_in ,\aurora_8b10b_descrambler0_i/p_13_in28_in ,\aurora_8b10b_descrambler0_i/p_12_in ,\aurora_8b10b_descrambler0_i/p_9_in ,\aurora_8b10b_descrambler0_i/p_7_in ,\aurora_8b10b_descrambler0_i/p_5_in ,aurora_8b10b_descrambler_top_i_n_30}),
        .EN(EN),
        .LANE_UP(LANE_UP),
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .\RX_PAD_Buffer_reg[1]_0 ({BYPASS,bypass_w_reg}),
        .\RX_PE_DATA_Buffer_reg[0]_0 (aurora_8b10b_sym_dec_4byte_i_n_68),
        .\RX_PE_DATA_Buffer_reg[10]_0 (aurora_8b10b_sym_dec_4byte_i_n_76),
        .\RX_PE_DATA_Buffer_reg[11]_0 (aurora_8b10b_sym_dec_4byte_i_n_77),
        .\RX_PE_DATA_Buffer_reg[14]_0 (aurora_8b10b_sym_dec_4byte_i_n_78),
        .\RX_PE_DATA_Buffer_reg[15]_0 (aurora_8b10b_sym_dec_4byte_i_n_79),
        .\RX_PE_DATA_Buffer_reg[16]_0 (aurora_8b10b_sym_dec_4byte_i_n_56),
        .\RX_PE_DATA_Buffer_reg[17]_0 (aurora_8b10b_sym_dec_4byte_i_n_57),
        .\RX_PE_DATA_Buffer_reg[18]_0 (aurora_8b10b_sym_dec_4byte_i_n_58),
        .\RX_PE_DATA_Buffer_reg[19]_0 (aurora_8b10b_sym_dec_4byte_i_n_59),
        .\RX_PE_DATA_Buffer_reg[1]_0 (aurora_8b10b_sym_dec_4byte_i_n_69),
        .\RX_PE_DATA_Buffer_reg[20]_0 (aurora_8b10b_sym_dec_4byte_i_n_60),
        .\RX_PE_DATA_Buffer_reg[21]_0 (aurora_8b10b_sym_dec_4byte_i_n_61),
        .\RX_PE_DATA_Buffer_reg[22]_0 (aurora_8b10b_sym_dec_4byte_i_n_62),
        .\RX_PE_DATA_Buffer_reg[23]_0 (aurora_8b10b_sym_dec_4byte_i_n_63),
        .\RX_PE_DATA_Buffer_reg[26]_0 (aurora_8b10b_sym_dec_4byte_i_n_64),
        .\RX_PE_DATA_Buffer_reg[27]_0 (aurora_8b10b_sym_dec_4byte_i_n_65),
        .\RX_PE_DATA_Buffer_reg[2]_0 (aurora_8b10b_sym_dec_4byte_i_n_70),
        .\RX_PE_DATA_Buffer_reg[30]_0 (aurora_8b10b_sym_dec_4byte_i_n_66),
        .\RX_PE_DATA_Buffer_reg[31]_0 (aurora_8b10b_sym_dec_4byte_i_n_67),
        .\RX_PE_DATA_Buffer_reg[3]_0 (aurora_8b10b_sym_dec_4byte_i_n_71),
        .\RX_PE_DATA_Buffer_reg[4]_0 (aurora_8b10b_sym_dec_4byte_i_n_72),
        .\RX_PE_DATA_Buffer_reg[5]_0 (aurora_8b10b_sym_dec_4byte_i_n_73),
        .\RX_PE_DATA_Buffer_reg[6]_0 (aurora_8b10b_sym_dec_4byte_i_n_74),
        .\RX_PE_DATA_Buffer_reg[7]_0 (aurora_8b10b_sym_dec_4byte_i_n_75),
        .\RX_PE_DATA_V_Buffer_reg[0]_0 ({rx_pe_data_v_descram_in[0],rx_pe_data_v_descram_in[1]}),
        .\RX_SNF_Buffer_reg[0]_0 ({RX_SNF_Buffer,rx_snf_descram_in}),
        .\RX_SUF_Buffer_reg[0]_0 ({rx_suf_descram_in[0],rx_suf_descram_in[1]}),
        .first_v_received_r(first_v_received_r),
        .got_v_descram_in(got_v_descram_in),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_0 ),
        .p_8_out(p_8_out),
        .p_9_out(p_9_out),
        .\previous_cycle_data_r_reg[7]_0 (\previous_cycle_data_r_reg[7] ),
        .reset_lanes_flop_i(aurora_8b10b_sym_dec_4byte_i_n_48),
        .reset_lanes_i(reset_lanes_i),
        .rx_neg_descram_in(rx_neg_descram_in),
        .rx_pe_data_descram_in(rx_pe_data_descram_in),
        .rx_sp_descram_in(rx_sp_descram_in),
        .rx_spa_descram_in(rx_spa_descram_in),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[3]_0 (\word_aligned_control_bits_r_reg[3] ),
        .\word_aligned_data_r_reg[16]_0 (\word_aligned_data_r_reg[16] ),
        .\word_aligned_data_r_reg[24]_0 (\word_aligned_data_r_reg[24] ));
  aurora_8b10b_SYM_GEN_4BYTE aurora_8b10b_sym_gen_4byte_i
       (.D(tx_data_i),
        .\DOUT_reg[0] (\DOUT_reg[0] ),
        .\DOUT_reg[0]_0 ({\aurora_8b10b_scrambler1_i/p_11_in ,\aurora_8b10b_scrambler1_i/p_8_in ,\aurora_8b10b_scrambler1_i/p_2_in ,\aurora_8b10b_scrambler1_i/p_0_in3_in ,\aurora_8b10b_scrambler1_i/p_15_in25_in ,\aurora_8b10b_scrambler1_i/p_14_in ,\aurora_8b10b_scrambler1_i/p_13_in28_in ,\aurora_8b10b_scrambler1_i/p_12_in ,\aurora_8b10b_scrambler1_i/p_9_in ,\aurora_8b10b_scrambler1_i/p_7_in ,\aurora_8b10b_scrambler1_i/p_5_in ,aurora_8b10b_scrambler_top_i_n_23}),
        .EN(EN_0),
        .GEN_A(GEN_A),
        .GEN_ECP(GEN_ECP),
        .GEN_SCP(GEN_SCP),
        .GEN_SNF(GEN_SNF),
        .GEN_SUF(GEN_SUF),
        .Q({\aurora_8b10b_scrambler0_i/p_11_in ,\aurora_8b10b_scrambler0_i/p_8_in ,\aurora_8b10b_scrambler0_i/p_2_in ,\aurora_8b10b_scrambler0_i/p_0_in3_in ,\aurora_8b10b_scrambler0_i/p_15_in25_in ,\aurora_8b10b_scrambler0_i/p_14_in ,\aurora_8b10b_scrambler0_i/p_13_in28_in ,\aurora_8b10b_scrambler0_i/p_12_in ,\aurora_8b10b_scrambler0_i/p_9_in ,\aurora_8b10b_scrambler0_i/p_7_in ,\aurora_8b10b_scrambler0_i/p_5_in ,aurora_8b10b_scrambler_top_i_n_11}),
        .\TX_CHAR_IS_K_Buffer_reg[0]_0 (aurora_8b10b_lane_init_sm_4byte_i_n_7),
        .\TX_CHAR_IS_K_Buffer_reg[3]_0 (tx_char_is_k_i),
        .\TX_CHAR_IS_K_Buffer_reg[3]_1 ({BYPASS_1,aurora_8b10b_sym_gen_4byte_i_n_7}),
        .\TX_DATA_Buffer_reg[0]_0 (aurora_8b10b_sym_gen_4byte_i_n_53),
        .\TX_DATA_Buffer_reg[10]_0 (aurora_8b10b_sym_gen_4byte_i_n_47),
        .\TX_DATA_Buffer_reg[11]_0 (aurora_8b10b_sym_gen_4byte_i_n_46),
        .\TX_DATA_Buffer_reg[12]_0 (aurora_8b10b_sym_gen_4byte_i_n_45),
        .\TX_DATA_Buffer_reg[13]_0 (aurora_8b10b_sym_gen_4byte_i_n_44),
        .\TX_DATA_Buffer_reg[14]_0 (aurora_8b10b_sym_gen_4byte_i_n_43),
        .\TX_DATA_Buffer_reg[15]_0 (aurora_8b10b_sym_gen_4byte_i_n_10),
        .\TX_DATA_Buffer_reg[16]_0 (aurora_8b10b_sym_gen_4byte_i_n_65),
        .\TX_DATA_Buffer_reg[17]_0 (aurora_8b10b_sym_gen_4byte_i_n_64),
        .\TX_DATA_Buffer_reg[1]_0 (aurora_8b10b_sym_gen_4byte_i_n_52),
        .\TX_DATA_Buffer_reg[20]_0 (aurora_8b10b_sym_gen_4byte_i_n_63),
        .\TX_DATA_Buffer_reg[21]_0 (aurora_8b10b_sym_gen_4byte_i_n_62),
        .\TX_DATA_Buffer_reg[24]_0 (aurora_8b10b_sym_gen_4byte_i_n_61),
        .\TX_DATA_Buffer_reg[24]_1 (aurora_8b10b_lane_init_sm_4byte_i_n_12),
        .\TX_DATA_Buffer_reg[25]_0 (aurora_8b10b_sym_gen_4byte_i_n_60),
        .\TX_DATA_Buffer_reg[26]_0 (aurora_8b10b_sym_gen_4byte_i_n_59),
        .\TX_DATA_Buffer_reg[27]_0 (aurora_8b10b_sym_gen_4byte_i_n_58),
        .\TX_DATA_Buffer_reg[28]_0 (aurora_8b10b_sym_gen_4byte_i_n_57),
        .\TX_DATA_Buffer_reg[29]_0 (aurora_8b10b_sym_gen_4byte_i_n_56),
        .\TX_DATA_Buffer_reg[30]_0 (aurora_8b10b_sym_gen_4byte_i_n_55),
        .\TX_DATA_Buffer_reg[31]_0 (aurora_8b10b_sym_gen_4byte_i_n_54),
        .\TX_DATA_Buffer_reg[4]_0 (aurora_8b10b_sym_gen_4byte_i_n_51),
        .\TX_DATA_Buffer_reg[5]_0 (aurora_8b10b_sym_gen_4byte_i_n_50),
        .\TX_DATA_Buffer_reg[8]_0 (aurora_8b10b_sym_gen_4byte_i_n_49),
        .\TX_DATA_Buffer_reg[9]_0 (aurora_8b10b_sym_gen_4byte_i_n_48),
        .\fc_nb_r_reg[0]_0 (\fc_nb_r_reg[0] ),
        .gen_cc_i(gen_cc_i),
        .gen_cc_r(gen_cc_r),
        .\gen_k_r_reg[0]_0 (\gen_k_r_reg[0] ),
        .\gen_pad_r_reg[0]_0 (\gen_pad_r_reg[0] ),
        .\gen_r_r_reg[0]_0 (\gen_r_r_reg[0] ),
        .gen_sp_i(gen_sp_i),
        .gen_sp_r(gen_sp_r),
        .gen_v_r2(gen_v_r2),
        .\gen_v_r_reg[1]_0 (\gen_v_r_reg[1] ),
        .reset_lanes_flop_i(aurora_8b10b_sym_gen_4byte_i_n_9),
        .reset_lanes_i(reset_lanes_i),
        .\tx_pe_data_r_reg[0]_0 (\tx_pe_data_r_reg[0] ),
        .\tx_pe_data_v_r_reg[0]_0 (\tx_pe_data_v_r_reg[0] ),
        .user_clk(user_clk));
  LUT3 #(
    .INIT(8'hFE)) 
    gen_v_r0
       (.I0(\gen_v_r_reg[1] [1]),
        .I1(\gen_v_r_reg[1] [0]),
        .I2(\gen_v_r_reg[1] [2]),
        .O(p_0_in_0));
  FDRE gen_v_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_r),
        .Q(gen_v_r2),
        .R(1'b0));
  FDRE gen_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(gen_v_r),
        .R(1'b0));
endmodule

module aurora_8b10b_AXI_TO_LL
   (new_pkt_r_reg_0,
    new_pkt_r,
    user_clk);
  output new_pkt_r_reg_0;
  input new_pkt_r;
  input user_clk;

  wire new_pkt_r;
  wire new_pkt_r_reg_0;
  wire user_clk;

  FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(new_pkt_r_reg_0),
        .R(1'b0));
endmodule

module aurora_8b10b_CHANNEL_ERR_DETECT
   (SOFT_ERR,
    HARD_ERR,
    reset_channel_i,
    wait_for_lane_up_r0,
    user_clk,
    hard_err_i,
    LANE_UP,
    verify_r_reg,
    POWER_DOWN,
    \soft_err_r_reg[0]_0 );
  output SOFT_ERR;
  output HARD_ERR;
  output reset_channel_i;
  output wait_for_lane_up_r0;
  input user_clk;
  input hard_err_i;
  input LANE_UP;
  input verify_r_reg;
  input POWER_DOWN;
  input [1:0]\soft_err_r_reg[0]_0 ;

  wire HARD_ERR;
  wire LANE_UP;
  wire POWER_DOWN;
  wire RESET_CHANNEL_Buffer0;
  wire SOFT_ERR;
  wire channel_soft_err_c;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up_r;
  wire reset_channel_i;
  wire [1:0]soft_err_r;
  wire [1:0]\soft_err_r_reg[0]_0 ;
  wire user_clk;
  wire verify_r_reg;
  wire wait_for_lane_up_r0;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(HARD_ERR),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    CHANNEL_SOFT_ERR_Buffer_i_1
       (.I0(soft_err_r[1]),
        .I1(soft_err_r[0]),
        .O(channel_soft_err_c));
  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_SOFT_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(channel_soft_err_c),
        .Q(SOFT_ERR),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_Buffer_i_1
       (.I0(POWER_DOWN),
        .I1(lane_up_r),
        .O(RESET_CHANNEL_Buffer0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET_CHANNEL_Buffer0),
        .Q(reset_channel_i),
        .R(1'b0));
  FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(1'b0));
  FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(LANE_UP),
        .Q(lane_up_r),
        .R(1'b0));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [1]),
        .Q(soft_err_r[1]),
        .R(1'b0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [0]),
        .Q(soft_err_r[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    verify_r_i_1
       (.I0(reset_channel_i),
        .I1(verify_r_reg),
        .O(wait_for_lane_up_r0));
endmodule

module aurora_8b10b_CHANNEL_INIT_SM
   (reset_lanes_i,
    gen_ver_i,
    CHANNEL_UP_Buffer_reg_0,
    start_rx_i,
    gtrxreset_i,
    SS,
    p_0_in,
    SR,
    user_clk,
    got_v_i,
    wait_for_lane_up_r0,
    START_RX_Buffer_reg_0,
    txver_count_r0,
    D,
    reset_channel_i);
  output reset_lanes_i;
  output gen_ver_i;
  output CHANNEL_UP_Buffer_reg_0;
  output start_rx_i;
  output gtrxreset_i;
  output [0:0]SS;
  output p_0_in;
  output [0:0]SR;
  input user_clk;
  input got_v_i;
  input wait_for_lane_up_r0;
  input START_RX_Buffer_reg_0;
  input txver_count_r0;
  input [0:0]D;
  input reset_channel_i;

  wire CHANNEL_UP_Buffer_reg_0;
  wire [0:0]D;
  wire D_0;
  wire GTRXRESET_OUT_i_1_n_0;
  wire GTRXRESET_OUT_i_2_n_0;
  wire Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire START_RX_Buffer0;
  wire START_RX_Buffer_reg_0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire \free_count_r[13]_i_2_n_0 ;
  wire \free_count_r[13]_i_3_n_0 ;
  wire \free_count_r[13]_i_4_n_0 ;
  wire \free_count_r[13]_i_5_n_0 ;
  wire \free_count_r[1]_i_2_n_0 ;
  wire \free_count_r[1]_i_3_n_0 ;
  wire \free_count_r[5]_i_2_n_0 ;
  wire \free_count_r[5]_i_3_n_0 ;
  wire \free_count_r[5]_i_4_n_0 ;
  wire \free_count_r[5]_i_5_n_0 ;
  wire \free_count_r[9]_i_2_n_0 ;
  wire \free_count_r[9]_i_3_n_0 ;
  wire \free_count_r[9]_i_4_n_0 ;
  wire \free_count_r[9]_i_5_n_0 ;
  wire [0:13]free_count_r_reg;
  wire \free_count_r_reg[13]_i_1_n_0 ;
  wire \free_count_r_reg[13]_i_1_n_1 ;
  wire \free_count_r_reg[13]_i_1_n_2 ;
  wire \free_count_r_reg[13]_i_1_n_3 ;
  wire \free_count_r_reg[13]_i_1_n_4 ;
  wire \free_count_r_reg[13]_i_1_n_5 ;
  wire \free_count_r_reg[13]_i_1_n_6 ;
  wire \free_count_r_reg[13]_i_1_n_7 ;
  wire \free_count_r_reg[1]_i_1_n_3 ;
  wire \free_count_r_reg[1]_i_1_n_6 ;
  wire \free_count_r_reg[1]_i_1_n_7 ;
  wire \free_count_r_reg[5]_i_1_n_0 ;
  wire \free_count_r_reg[5]_i_1_n_1 ;
  wire \free_count_r_reg[5]_i_1_n_2 ;
  wire \free_count_r_reg[5]_i_1_n_3 ;
  wire \free_count_r_reg[5]_i_1_n_4 ;
  wire \free_count_r_reg[5]_i_1_n_5 ;
  wire \free_count_r_reg[5]_i_1_n_6 ;
  wire \free_count_r_reg[5]_i_1_n_7 ;
  wire \free_count_r_reg[9]_i_1_n_0 ;
  wire \free_count_r_reg[9]_i_1_n_1 ;
  wire \free_count_r_reg[9]_i_1_n_2 ;
  wire \free_count_r_reg[9]_i_1_n_3 ;
  wire \free_count_r_reg[9]_i_1_n_4 ;
  wire \free_count_r_reg[9]_i_1_n_5 ;
  wire \free_count_r_reg[9]_i_1_n_6 ;
  wire \free_count_r_reg[9]_i_1_n_7 ;
  wire gen_ver_i;
  wire got_first_v_r;
  wire got_first_v_r_i_1_n_0;
  wire got_v_i;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_i;
  wire next_ready_c;
  wire next_verify_c;
  wire p_0_in;
  wire [15:15]p_2_out;
  wire p_3_in;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire \rxver_count_r_reg[1]_srl2_i_1_n_0 ;
  wire \rxver_count_r_reg[1]_srl2_n_0 ;
  wire \rxver_count_r_reg_n_0_[2] ;
  wire start_rx_i;
  wire txver_count_r0;
  wire \txver_count_r_reg[6]_srl7_n_0 ;
  wire \txver_count_r_reg_n_0_[7] ;
  wire user_clk;
  wire \v_count_r_reg[14]_srl15_n_0 ;
  wire \v_count_r_reg_n_0_[15] ;
  wire \verify_watchdog_r_reg[14]_srl15_i_1_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_4_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;

  FDRE CHANNEL_UP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(CHANNEL_UP_Buffer_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    FRAME_ERR_Buffer_i_1
       (.I0(start_rx_i),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(gtrxreset_extend_r[3]),
        .I2(gtrxreset_extend_r[0]),
        .I3(gtrxreset_extend_r[1]),
        .I4(GTRXRESET_OUT_i_2_n_0),
        .O(GTRXRESET_OUT_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[5]),
        .I1(gtrxreset_extend_r[4]),
        .I2(gtrxreset_extend_r[7]),
        .I3(gtrxreset_extend_r[6]),
        .O(GTRXRESET_OUT_i_2_n_0));
  FDRE GTRXRESET_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GTRXRESET_OUT_i_1_n_0),
        .Q(gtrxreset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    START_RX_Buffer_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX_Buffer0));
  FDRE START_RX_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(START_RX_Buffer0),
        .Q(start_rx_i),
        .R(START_RX_Buffer_reg_0));
  FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h28)) 
    bad_v_r_i_1
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(\v_count_r_reg_n_0_[15] ),
        .O(bad_v_r0));
  FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h1)) 
    do_nfc_r_i_1
       (.I0(CHANNEL_UP_Buffer_reg_0),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\free_count_r[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\free_count_r[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\free_count_r[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\free_count_r[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\free_count_r[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\free_count_r[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\free_count_r[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\free_count_r[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\free_count_r[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\free_count_r[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\free_count_r[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\free_count_r[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\free_count_r[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\free_count_r[9]_i_5_n_0 ));
  FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_6 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_4 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_5 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_6 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_7 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\free_count_r_reg[13]_i_1_n_0 ,\free_count_r_reg[13]_i_1_n_1 ,\free_count_r_reg[13]_i_1_n_2 ,\free_count_r_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[13]_i_1_n_4 ,\free_count_r_reg[13]_i_1_n_5 ,\free_count_r_reg[13]_i_1_n_6 ,\free_count_r_reg[13]_i_1_n_7 }),
        .S({\free_count_r[13]_i_2_n_0 ,\free_count_r[13]_i_3_n_0 ,\free_count_r[13]_i_4_n_0 ,\free_count_r[13]_i_5_n_0 }));
  FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_7 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\free_count_r_reg[5]_i_1_n_0 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\free_count_r_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\free_count_r_reg[1]_i_1_n_6 ,\free_count_r_reg[1]_i_1_n_7 }),
        .S({1'b0,1'b0,\free_count_r[1]_i_2_n_0 ,\free_count_r[1]_i_3_n_0 }));
  FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_4 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_5 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_6 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_7 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\free_count_r_reg[9]_i_1_n_0 ),
        .CO({\free_count_r_reg[5]_i_1_n_0 ,\free_count_r_reg[5]_i_1_n_1 ,\free_count_r_reg[5]_i_1_n_2 ,\free_count_r_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[5]_i_1_n_4 ,\free_count_r_reg[5]_i_1_n_5 ,\free_count_r_reg[5]_i_1_n_6 ,\free_count_r_reg[5]_i_1_n_7 }),
        .S({\free_count_r[5]_i_2_n_0 ,\free_count_r[5]_i_3_n_0 ,\free_count_r[5]_i_4_n_0 ,\free_count_r[5]_i_5_n_0 }));
  FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_4 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_5 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_6 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_7 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\free_count_r_reg[13]_i_1_n_0 ),
        .CO({\free_count_r_reg[9]_i_1_n_0 ,\free_count_r_reg[9]_i_1_n_1 ,\free_count_r_reg[9]_i_1_n_2 ,\free_count_r_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[9]_i_1_n_4 ,\free_count_r_reg[9]_i_1_n_5 ,\free_count_r_reg[9]_i_1_n_6 ,\free_count_r_reg[9]_i_1_n_7 }),
        .S({\free_count_r[9]_i_2_n_0 ,\free_count_r[9]_i_3_n_0 ,\free_count_r[9]_i_4_n_0 ,\free_count_r[9]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(got_first_v_r_i_1_n_0));
  FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_first_v_r_i_1_n_0),
        .Q(got_first_v_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gtreset_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(Q),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A88)) 
    gtreset_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(\verify_watchdog_r_reg_n_0_[15] ),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(bad_v_r),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(START_RX_Buffer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q),
        .Q(gtrxreset_extend_r[7]),
        .R(START_RX_Buffer_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \lfsr[15]_i_1__0 
       (.I0(D),
        .I1(CHANNEL_UP_Buffer_reg_0),
        .I2(reset_lanes_i),
        .O(SS));
  FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    ready_r_i_1__0
       (.I0(ready_r),
        .I1(gen_ver_i),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(\txver_count_r_reg_n_0_[7] ),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(reset_lanes_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    reset_lanes_flop_i_i_1
       (.I0(p_3_in),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(START_RX_Buffer_reg_0),
        .O(D_0));
  (* srl_bus_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
  SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\rxver_count_r_reg[1]_srl2_i_1_n_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\rxver_count_r_reg[1]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(all_lanes_v_r),
        .I1(\v_count_r_reg_n_0_[15] ),
        .I2(gen_ver_i),
        .O(\rxver_count_r_reg[1]_srl2_i_1_n_0 ));
  FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(\rxver_count_r_reg[1]_srl2_i_1_n_0 ),
        .D(\rxver_count_r_reg[1]_srl2_n_0 ),
        .Q(\rxver_count_r_reg_n_0_[2] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
  SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(txver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\txver_count_r_reg[6]_srl7_n_0 ));
  FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(txver_count_r0),
        .D(\txver_count_r_reg[6]_srl7_n_0 ),
        .Q(\txver_count_r_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 " *) 
  SRL16E \v_count_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\v_count_r_reg[14]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \v_count_r_reg[14]_srl15_i_1 
       (.I0(\v_count_r_reg_n_0_[15] ),
        .I1(gen_ver_i),
        .I2(got_first_v_r),
        .I3(all_lanes_v_r),
        .O(p_2_out));
  FDRE \v_count_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\v_count_r_reg[14]_srl15_n_0 ),
        .Q(\v_count_r_reg_n_0_[15] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    verify_r_i_2
       (.I0(wait_for_lane_up_r),
        .I1(\rxver_count_r_reg_n_0_[2] ),
        .I2(\txver_count_r_reg_n_0_[7] ),
        .I3(gen_ver_i),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I2(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ),
        .I3(gen_ver_i),
        .O(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[10]),
        .I2(free_count_r_reg[1]),
        .I3(free_count_r_reg[11]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[9]),
        .I1(free_count_r_reg[13]),
        .I2(free_count_r_reg[2]),
        .I3(free_count_r_reg[7]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_4 
       (.I0(free_count_r_reg[4]),
        .I1(free_count_r_reg[5]),
        .I2(free_count_r_reg[8]),
        .I3(free_count_r_reg[0]),
        .I4(free_count_r_reg[12]),
        .I5(free_count_r_reg[6]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ),
        .D(\verify_watchdog_r_reg[14]_srl15_n_0 ),
        .Q(\verify_watchdog_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

module aurora_8b10b_DESCRAMBLER_TOP
   (rx_neg_i,
    got_v_i,
    \data_nxt2_reg[25]_0 ,
    \data_nxt2_reg[24]_0 ,
    \data_nxt2_reg[26]_0 ,
    \data_nxt2_reg[8]_0 ,
    counter4_r0,
    counter3_r0,
    \data_nxt2_reg[26]_1 ,
    Q,
    neqOp,
    \lfsr_reg[15] ,
    \lfsr_reg[15]_0 ,
    rx_pe_data_striped_i,
    \RX_SNF_Buffer_reg[0]_0 ,
    \RX_SNF_Buffer_reg[0]_1 ,
    \RX_PE_DATA_V_reg[0]_0 ,
    rx_sp_descram_in,
    user_clk,
    rx_spa_descram_in,
    rx_neg_descram_in,
    got_v_descram_in,
    rx_pe_data_descram_in,
    \counter4_r_reg[15] ,
    gen_spa_i,
    start_rx_i,
    SS,
    EN,
    \DOUT_reg[0] ,
    D,
    \DOUT_reg[15] ,
    \DOUT_reg[14] ,
    \DOUT_reg[13] ,
    \DOUT_reg[12] ,
    \DOUT_reg[11] ,
    \DOUT_reg[10] ,
    \DOUT_reg[9] ,
    \DOUT_reg[8] ,
    \DOUT_reg[5] ,
    \DOUT_reg[4] ,
    \DOUT_reg[1] ,
    \DOUT_reg[0]_0 ,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 ,
    \RX_PE_DATA_V_reg[0]_1 ,
    \RX_SNF_Buffer_reg[0]_2 ,
    \RX_SUF_Buffer_reg[0]_0 );
  output rx_neg_i;
  output got_v_i;
  output \data_nxt2_reg[25]_0 ;
  output \data_nxt2_reg[24]_0 ;
  output \data_nxt2_reg[26]_0 ;
  output [4:0]\data_nxt2_reg[8]_0 ;
  output counter4_r0;
  output counter3_r0;
  output [3:0]\data_nxt2_reg[26]_1 ;
  output [1:0]Q;
  output neqOp;
  output [11:0]\lfsr_reg[15] ;
  output [11:0]\lfsr_reg[15]_0 ;
  output [0:31]rx_pe_data_striped_i;
  output \RX_SNF_Buffer_reg[0]_0 ;
  output [1:0]\RX_SNF_Buffer_reg[0]_1 ;
  output [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  input rx_sp_descram_in;
  input user_clk;
  input rx_spa_descram_in;
  input rx_neg_descram_in;
  input got_v_descram_in;
  input [0:31]rx_pe_data_descram_in;
  input \counter4_r_reg[15] ;
  input gen_spa_i;
  input start_rx_i;
  input [0:0]SS;
  input EN;
  input \DOUT_reg[0] ;
  input [1:0]D;
  input \DOUT_reg[15] ;
  input \DOUT_reg[14] ;
  input \DOUT_reg[13] ;
  input \DOUT_reg[12] ;
  input \DOUT_reg[11] ;
  input \DOUT_reg[10] ;
  input \DOUT_reg[9] ;
  input \DOUT_reg[8] ;
  input \DOUT_reg[5] ;
  input \DOUT_reg[4] ;
  input \DOUT_reg[1] ;
  input \DOUT_reg[0]_0 ;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;
  input [1:0]\RX_PE_DATA_V_reg[0]_1 ;
  input [1:0]\RX_SNF_Buffer_reg[0]_2 ;
  input [1:0]\RX_SUF_Buffer_reg[0]_0 ;

  wire [1:0]D;
  wire \DOUT_reg[0] ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10] ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11] ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12] ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13] ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14] ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15] ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1] ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4] ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5] ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8] ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9] ;
  wire \DOUT_reg[9]_0 ;
  wire EN;
  wire [1:0]Q;
  wire [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  wire [1:0]\RX_PE_DATA_V_reg[0]_1 ;
  wire \RX_SNF_Buffer_reg[0]_0 ;
  wire [1:0]\RX_SNF_Buffer_reg[0]_1 ;
  wire [1:0]\RX_SNF_Buffer_reg[0]_2 ;
  wire [1:0]\RX_SUF_Buffer_reg[0]_0 ;
  wire [0:0]SS;
  wire \bypass_r_reg_n_0_[0] ;
  wire \bypass_r_reg_n_0_[1] ;
  wire counter3_r0;
  wire counter4_r0;
  wire \counter4_r_reg[15] ;
  wire \data_nxt2_reg[24]_0 ;
  wire \data_nxt2_reg[25]_0 ;
  wire \data_nxt2_reg[26]_0 ;
  wire [3:0]\data_nxt2_reg[26]_1 ;
  wire [4:0]\data_nxt2_reg[8]_0 ;
  wire \data_nxt2_reg_n_0_[0] ;
  wire \data_nxt2_reg_n_0_[12] ;
  wire \data_nxt2_reg_n_0_[13] ;
  wire \data_nxt2_reg_n_0_[14] ;
  wire \data_nxt2_reg_n_0_[15] ;
  wire \data_nxt2_reg_n_0_[16] ;
  wire \data_nxt2_reg_n_0_[17] ;
  wire \data_nxt2_reg_n_0_[18] ;
  wire \data_nxt2_reg_n_0_[19] ;
  wire \data_nxt2_reg_n_0_[1] ;
  wire \data_nxt2_reg_n_0_[20] ;
  wire \data_nxt2_reg_n_0_[21] ;
  wire \data_nxt2_reg_n_0_[22] ;
  wire \data_nxt2_reg_n_0_[23] ;
  wire \data_nxt2_reg_n_0_[28] ;
  wire \data_nxt2_reg_n_0_[29] ;
  wire \data_nxt2_reg_n_0_[2] ;
  wire \data_nxt2_reg_n_0_[30] ;
  wire \data_nxt2_reg_n_0_[31] ;
  wire \data_nxt2_reg_n_0_[3] ;
  wire \data_nxt2_reg_n_0_[4] ;
  wire \data_nxt2_reg_n_0_[5] ;
  wire \data_nxt2_reg_n_0_[6] ;
  wire \data_nxt2_reg_n_0_[7] ;
  wire gen_spa_i;
  wire got_v_descram_in;
  wire got_v_i;
  wire [11:0]\lfsr_reg[15] ;
  wire [11:0]\lfsr_reg[15]_0 ;
  wire neqOp;
  wire rx_neg_descram_in;
  wire rx_neg_i;
  wire [0:31]rx_pe_data_descram_in;
  wire [0:31]rx_pe_data_striped_i;
  wire rx_sp_descram_in;
  wire rx_sp_i;
  wire rx_spa_descram_in;
  wire rx_spa_i;
  wire \stage_1_count_value_r[1]_i_2_n_0 ;
  wire start_rx_i;
  wire user_clk;

  FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_descram_in),
        .Q(got_v_i),
        .R(1'b0));
  FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_neg_descram_in),
        .Q(rx_neg_i),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PE_DATA_V_reg[0]_1 [1]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PE_DATA_V_reg[0]_1 [0]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_SNF_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SNF_Buffer_reg[0]_2 [1]),
        .Q(\RX_SNF_Buffer_reg[0]_1 [1]),
        .R(1'b0));
  FDRE \RX_SNF_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SNF_Buffer_reg[0]_2 [0]),
        .Q(\RX_SNF_Buffer_reg[0]_1 [0]),
        .R(1'b0));
  FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_descram_in),
        .Q(rx_spa_i),
        .R(1'b0));
  FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_descram_in),
        .Q(rx_sp_i),
        .R(1'b0));
  FDRE \RX_SUF_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SUF_Buffer_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_SUF_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SUF_Buffer_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  aurora_8b10b_SCRAMBLER_28 aurora_8b10b_descrambler0_i
       (.\DOUT_reg[0]_0 (\DOUT_reg[0]_1 ),
        .\DOUT_reg[10]_0 (\DOUT_reg[10]_0 ),
        .\DOUT_reg[11]_0 (\DOUT_reg[11]_0 ),
        .\DOUT_reg[12]_0 (\DOUT_reg[12]_0 ),
        .\DOUT_reg[13]_0 (\DOUT_reg[13]_0 ),
        .\DOUT_reg[14]_0 (\DOUT_reg[14]_0 ),
        .\DOUT_reg[15]_0 (\DOUT_reg[15]_0 ),
        .\DOUT_reg[1]_0 (\DOUT_reg[1]_0 ),
        .\DOUT_reg[4]_0 (\DOUT_reg[4]_0 ),
        .\DOUT_reg[5]_0 (\DOUT_reg[5]_0 ),
        .\DOUT_reg[8]_0 (\DOUT_reg[8]_0 ),
        .\DOUT_reg[9]_0 (\DOUT_reg[9]_0 ),
        .EN(EN),
        .Q(\lfsr_reg[15] ),
        .SS(SS),
        .rx_pe_data_descram_in({rx_pe_data_descram_in[8],rx_pe_data_descram_in[9],rx_pe_data_descram_in[12],rx_pe_data_descram_in[13]}),
        .rx_pe_data_striped_i({rx_pe_data_striped_i[0],rx_pe_data_striped_i[1],rx_pe_data_striped_i[2],rx_pe_data_striped_i[3],rx_pe_data_striped_i[4],rx_pe_data_striped_i[5],rx_pe_data_striped_i[6],rx_pe_data_striped_i[7],rx_pe_data_striped_i[8],rx_pe_data_striped_i[9],rx_pe_data_striped_i[10],rx_pe_data_striped_i[11],rx_pe_data_striped_i[12],rx_pe_data_striped_i[13],rx_pe_data_striped_i[14],rx_pe_data_striped_i[15]}),
        .\stage_1_data_r_reg[0] ({\data_nxt2_reg_n_0_[0] ,\data_nxt2_reg_n_0_[1] ,\data_nxt2_reg_n_0_[2] ,\data_nxt2_reg_n_0_[3] ,\data_nxt2_reg_n_0_[4] ,\data_nxt2_reg_n_0_[5] ,\data_nxt2_reg_n_0_[6] ,\data_nxt2_reg_n_0_[7] ,\data_nxt2_reg_n_0_[12] ,\data_nxt2_reg_n_0_[13] ,\data_nxt2_reg_n_0_[14] ,\data_nxt2_reg_n_0_[15] }),
        .\stage_1_data_r_reg[0]_0 (\bypass_r_reg_n_0_[0] ),
        .\stage_1_data_r_reg[8] (\data_nxt2_reg[8]_0 [4:1]),
        .user_clk(user_clk));
  aurora_8b10b_SCRAMBLER_29 aurora_8b10b_descrambler1_i
       (.\DOUT_reg[0]_0 (\DOUT_reg[0] ),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_0 ),
        .\DOUT_reg[10]_0 (\DOUT_reg[10] ),
        .\DOUT_reg[11]_0 (\DOUT_reg[11] ),
        .\DOUT_reg[12]_0 (\DOUT_reg[12] ),
        .\DOUT_reg[13]_0 (\DOUT_reg[13] ),
        .\DOUT_reg[14]_0 (\DOUT_reg[14] ),
        .\DOUT_reg[15]_0 (\DOUT_reg[15] ),
        .\DOUT_reg[1]_0 (\DOUT_reg[1] ),
        .\DOUT_reg[4]_0 (\DOUT_reg[4] ),
        .\DOUT_reg[5]_0 (\DOUT_reg[5] ),
        .\DOUT_reg[8]_0 (\DOUT_reg[8] ),
        .\DOUT_reg[9]_0 (\DOUT_reg[9] ),
        .Q(\lfsr_reg[15]_0 ),
        .SS(SS),
        .rx_pe_data_descram_in({rx_pe_data_descram_in[24],rx_pe_data_descram_in[25],rx_pe_data_descram_in[28],rx_pe_data_descram_in[29]}),
        .rx_pe_data_striped_i({rx_pe_data_striped_i[16],rx_pe_data_striped_i[17],rx_pe_data_striped_i[18],rx_pe_data_striped_i[19],rx_pe_data_striped_i[20],rx_pe_data_striped_i[21],rx_pe_data_striped_i[22],rx_pe_data_striped_i[23],rx_pe_data_striped_i[24],rx_pe_data_striped_i[25],rx_pe_data_striped_i[26],rx_pe_data_striped_i[27],rx_pe_data_striped_i[28],rx_pe_data_striped_i[29],rx_pe_data_striped_i[30],rx_pe_data_striped_i[31]}),
        .\stage_1_data_r_reg[16] ({\data_nxt2_reg_n_0_[16] ,\data_nxt2_reg_n_0_[17] ,\data_nxt2_reg_n_0_[18] ,\data_nxt2_reg_n_0_[19] ,\data_nxt2_reg_n_0_[20] ,\data_nxt2_reg_n_0_[21] ,\data_nxt2_reg_n_0_[22] ,\data_nxt2_reg_n_0_[23] ,\data_nxt2_reg_n_0_[28] ,\data_nxt2_reg_n_0_[29] ,\data_nxt2_reg_n_0_[30] ,\data_nxt2_reg_n_0_[31] }),
        .\stage_1_data_r_reg[16]_0 (\bypass_r_reg_n_0_[1] ),
        .\stage_1_data_r_reg[24] (\data_nxt2_reg[24]_0 ),
        .\stage_1_data_r_reg[25] (\data_nxt2_reg[25]_0 ),
        .\stage_1_data_r_reg[26] (\data_nxt2_reg[26]_0 ),
        .\stage_1_data_r_reg[27] (\data_nxt2_reg[8]_0 [0]),
        .user_clk(user_clk));
  FDRE \bypass_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\bypass_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bypass_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\bypass_r_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(gen_spa_i),
        .O(counter3_r0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(\counter4_r_reg[15] ),
        .O(counter4_r0));
  FDRE \data_nxt2_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[0]),
        .Q(\data_nxt2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[10]),
        .Q(\data_nxt2_reg[8]_0 [2]),
        .R(1'b0));
  FDRE \data_nxt2_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[11]),
        .Q(\data_nxt2_reg[8]_0 [1]),
        .R(1'b0));
  FDRE \data_nxt2_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[12]),
        .Q(\data_nxt2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[13]),
        .Q(\data_nxt2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[14]),
        .Q(\data_nxt2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[15]),
        .Q(\data_nxt2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[16]),
        .Q(\data_nxt2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[17]),
        .Q(\data_nxt2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[18]),
        .Q(\data_nxt2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[19]),
        .Q(\data_nxt2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[1]),
        .Q(\data_nxt2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[20]),
        .Q(\data_nxt2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[21]),
        .Q(\data_nxt2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[22]),
        .Q(\data_nxt2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[23]),
        .Q(\data_nxt2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[24]),
        .Q(\data_nxt2_reg[24]_0 ),
        .R(1'b0));
  FDRE \data_nxt2_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[25]),
        .Q(\data_nxt2_reg[25]_0 ),
        .R(1'b0));
  FDRE \data_nxt2_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[26]),
        .Q(\data_nxt2_reg[26]_0 ),
        .R(1'b0));
  FDRE \data_nxt2_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[27]),
        .Q(\data_nxt2_reg[8]_0 [0]),
        .R(1'b0));
  FDRE \data_nxt2_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[28]),
        .Q(\data_nxt2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[29]),
        .Q(\data_nxt2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[2]),
        .Q(\data_nxt2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[30]),
        .Q(\data_nxt2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[31]),
        .Q(\data_nxt2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[3]),
        .Q(\data_nxt2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[4]),
        .Q(\data_nxt2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[5]),
        .Q(\data_nxt2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[6]),
        .Q(\data_nxt2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[7]),
        .Q(\data_nxt2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_nxt2_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[8]),
        .Q(\data_nxt2_reg[8]_0 [4]),
        .R(1'b0));
  FDRE \data_nxt2_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_descram_in[9]),
        .Q(\data_nxt2_reg[8]_0 [3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    load_ufc_control_code_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(neqOp));
  LUT5 #(
    .INIT(32'h80000000)) 
    \stage_1_count_value_r[0]_i_1 
       (.I0(\data_nxt2_reg[26]_0 ),
        .I1(\data_nxt2_reg[25]_0 ),
        .I2(\data_nxt2_reg[24]_0 ),
        .I3(Q[0]),
        .I4(start_rx_i),
        .O(\data_nxt2_reg[26]_1 [3]));
  LUT6 #(
    .INIT(64'h6A00FF006A000000)) 
    \stage_1_count_value_r[1]_i_1 
       (.I0(\data_nxt2_reg[24]_0 ),
        .I1(\data_nxt2_reg[25]_0 ),
        .I2(\data_nxt2_reg[26]_0 ),
        .I3(\stage_1_count_value_r[1]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\data_nxt2_reg[8]_0 [4]),
        .O(\data_nxt2_reg[26]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \stage_1_count_value_r[1]_i_2 
       (.I0(start_rx_i),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\stage_1_count_value_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08F8F80800000000)) 
    \stage_1_count_value_r[2]_i_1 
       (.I0(\data_nxt2_reg[8]_0 [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\data_nxt2_reg[25]_0 ),
        .I4(\data_nxt2_reg[26]_0 ),
        .I5(start_rx_i),
        .O(\data_nxt2_reg[26]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0800C8C0)) 
    \stage_1_count_value_r[3]_i_1 
       (.I0(Q[1]),
        .I1(start_rx_i),
        .I2(Q[0]),
        .I3(\data_nxt2_reg[8]_0 [2]),
        .I4(\data_nxt2_reg[26]_0 ),
        .O(\data_nxt2_reg[26]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    stage_1_load_nfc_r_i_1
       (.I0(\RX_SNF_Buffer_reg[0]_1 [1]),
        .I1(\RX_SNF_Buffer_reg[0]_1 [0]),
        .O(\RX_SNF_Buffer_reg[0]_0 ));
endmodule

module aurora_8b10b_ERR_DETECT_4BYTE
   (begin_r0,
    hard_err_i,
    \SOFT_ERR_Buffer_reg[0]_0 ,
    good_cnt_r3,
    user_clk,
    hard_err_gt0,
    reset_lanes_i,
    enable_err_detect_i,
    \soft_err_r_reg[0]_0 );
  output begin_r0;
  output hard_err_i;
  output [1:0]\SOFT_ERR_Buffer_reg[0]_0 ;
  input good_cnt_r3;
  input user_clk;
  input hard_err_gt0;
  input reset_lanes_i;
  input enable_err_detect_i;
  input [3:0]\soft_err_r_reg[0]_0 ;

  wire [1:0]\SOFT_ERR_Buffer_reg[0]_0 ;
  wire begin_r0;
  wire cnt_good_code_r;
  wire cnt_good_code_r_i_3_n_0;
  wire cnt_good_code_r_i_4_n_0;
  wire cnt_soft_err_r;
  wire enable_err_detect_i;
  wire \err_cnt_r[0]_i_1_n_0 ;
  wire \err_cnt_r[1]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_2_n_0 ;
  wire \err_cnt_r_reg_n_0_[0] ;
  wire \err_cnt_r_reg_n_0_[1] ;
  wire good_cnt_r3;
  wire \good_cnt_r[3]_i_1_n_0 ;
  wire [3:0]good_cnt_r_reg;
  wire hard_err_frm_soft_err;
  wire hard_err_gt;
  wire hard_err_gt0;
  wire hard_err_i;
  wire next_good_code_c;
  wire next_soft_err_c;
  wire next_start_c;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [1:0]p_3_out;
  wire [3:0]plusOp;
  wire reset_lanes_i;
  wire [3:0]\soft_err_r_reg[0]_0 ;
  wire \soft_err_r_reg_n_0_[0] ;
  wire \soft_err_r_reg_n_0_[3] ;
  wire start_r;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR_Buffer[0]_i_1 
       (.I0(p_2_in),
        .I1(\soft_err_r_reg_n_0_[0] ),
        .O(p_3_out[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR_Buffer[1]_i_1 
       (.I0(\soft_err_r_reg_n_0_[3] ),
        .I1(p_1_in),
        .O(p_3_out[0]));
  FDRE \SOFT_ERR_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(\SOFT_ERR_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SOFT_ERR_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\SOFT_ERR_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    align_r_i_1
       (.I0(reset_lanes_i),
        .I1(p_0_in),
        .I2(hard_err_frm_soft_err),
        .I3(hard_err_gt),
        .O(begin_r0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    cnt_good_code_r_i_2
       (.I0(cnt_good_code_r_i_3_n_0),
        .I1(cnt_good_code_r_i_4_n_0),
        .I2(cnt_good_code_r),
        .I3(cnt_soft_err_r),
        .O(next_good_code_c));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    cnt_good_code_r_i_3
       (.I0(\soft_err_r_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(p_1_in),
        .I3(\soft_err_r_reg_n_0_[3] ),
        .O(cnt_good_code_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    cnt_good_code_r_i_4
       (.I0(good_cnt_r_reg[2]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[1]),
        .I3(good_cnt_r_reg[3]),
        .O(cnt_good_code_r_i_4_n_0));
  FDRE cnt_good_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_good_code_c),
        .Q(cnt_good_code_r),
        .R(good_cnt_r3));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    cnt_soft_err_r_i_1
       (.I0(cnt_soft_err_r),
        .I1(start_r),
        .I2(cnt_good_code_r),
        .I3(cnt_good_code_r_i_3_n_0),
        .O(next_soft_err_c));
  FDRE cnt_soft_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_soft_err_c),
        .Q(cnt_soft_err_r),
        .R(good_cnt_r3));
  LUT5 #(
    .INIT(32'hBEBE4140)) 
    \err_cnt_r[0]_i_1 
       (.I0(p_0_in),
        .I1(\err_cnt_r[2]_i_2_n_0 ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r_reg_n_0_[1] ),
        .I4(\err_cnt_r_reg_n_0_[0] ),
        .O(\err_cnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hCCCC6CC8)) 
    \err_cnt_r[1]_i_1 
       (.I0(\err_cnt_r_reg_n_0_[0] ),
        .I1(\err_cnt_r_reg_n_0_[1] ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r[2]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\err_cnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \err_cnt_r[2]_i_1 
       (.I0(\err_cnt_r_reg_n_0_[0] ),
        .I1(\err_cnt_r_reg_n_0_[1] ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r[2]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\err_cnt_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \err_cnt_r[2]_i_2 
       (.I0(good_cnt_r_reg[1]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[3]),
        .I3(good_cnt_r_reg[2]),
        .O(\err_cnt_r[2]_i_2_n_0 ));
  FDRE \err_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[0]_i_1_n_0 ),
        .Q(\err_cnt_r_reg_n_0_[0] ),
        .R(good_cnt_r3));
  FDRE \err_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[1]_i_1_n_0 ),
        .Q(\err_cnt_r_reg_n_0_[1] ),
        .R(good_cnt_r3));
  FDRE \err_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(good_cnt_r3));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \good_cnt_r[0]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \good_cnt_r[1]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .I1(good_cnt_r_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \good_cnt_r[2]_i_1 
       (.I0(good_cnt_r_reg[2]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[1]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \good_cnt_r[3]_i_1 
       (.I0(start_r),
        .I1(cnt_soft_err_r),
        .I2(enable_err_detect_i),
        .I3(cnt_good_code_r),
        .O(\good_cnt_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \good_cnt_r[3]_i_2 
       (.I0(good_cnt_r_reg[3]),
        .I1(good_cnt_r_reg[1]),
        .I2(good_cnt_r_reg[0]),
        .I3(good_cnt_r_reg[2]),
        .O(plusOp[3]));
  FDRE \good_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(good_cnt_r_reg[0]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(good_cnt_r_reg[1]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(good_cnt_r_reg[2]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(good_cnt_r_reg[3]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE hard_err_frm_soft_err_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(hard_err_frm_soft_err),
        .R(good_cnt_r3));
  FDRE hard_err_gt_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_gt0),
        .Q(hard_err_gt),
        .R(good_cnt_r3));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    hard_err_r_i_1
       (.I0(hard_err_gt),
        .I1(hard_err_frm_soft_err),
        .I2(p_0_in),
        .O(hard_err_i));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [3]),
        .Q(\soft_err_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [2]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \soft_err_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \soft_err_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [0]),
        .Q(\soft_err_r_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A88)) 
    start_r_i_1
       (.I0(cnt_good_code_r_i_3_n_0),
        .I1(start_r),
        .I2(cnt_good_code_r_i_4_n_0),
        .I3(cnt_good_code_r),
        .O(next_start_c));
  FDSE start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_start_c),
        .Q(start_r),
        .S(good_cnt_r3));
endmodule

module aurora_8b10b_GLOBAL_LOGIC
   (reset_lanes_i,
    gen_v_flop_1_i,
    GEN_A,
    gen_k_flop_0_i,
    gen_r_flop_0_i,
    CHANNEL_UP_Buffer_reg,
    start_rx_i,
    gtrxreset_i,
    SOFT_ERR,
    HARD_ERR,
    SS,
    p_0_in,
    SR,
    user_clk,
    got_v_i,
    \downcounter_r_reg[2] ,
    hard_err_i,
    LANE_UP,
    D,
    POWER_DOWN,
    \soft_err_r_reg[0] );
  output reset_lanes_i;
  output [2:0]gen_v_flop_1_i;
  output GEN_A;
  output [3:0]gen_k_flop_0_i;
  output [3:0]gen_r_flop_0_i;
  output CHANNEL_UP_Buffer_reg;
  output start_rx_i;
  output gtrxreset_i;
  output SOFT_ERR;
  output HARD_ERR;
  output [0:0]SS;
  output p_0_in;
  output [0:0]SR;
  input user_clk;
  input got_v_i;
  input \downcounter_r_reg[2] ;
  input hard_err_i;
  input LANE_UP;
  input [0:0]D;
  input POWER_DOWN;
  input [1:0]\soft_err_r_reg[0] ;

  wire CHANNEL_UP_Buffer_reg;
  wire [0:0]D;
  wire GEN_A;
  wire HARD_ERR;
  wire LANE_UP;
  wire POWER_DOWN;
  wire SOFT_ERR;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \downcounter_r_reg[2] ;
  wire [3:0]gen_k_flop_0_i;
  wire [3:0]gen_r_flop_0_i;
  wire [2:0]gen_v_flop_1_i;
  wire gen_ver_i;
  wire got_v_i;
  wire gtrxreset_i;
  wire hard_err_i;
  wire p_0_in;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire [1:0]\soft_err_r_reg[0] ;
  wire start_rx_i;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r0;

  aurora_8b10b_CHANNEL_ERR_DETECT channel_err_detect_i
       (.HARD_ERR(HARD_ERR),
        .LANE_UP(LANE_UP),
        .POWER_DOWN(POWER_DOWN),
        .SOFT_ERR(SOFT_ERR),
        .hard_err_i(hard_err_i),
        .reset_channel_i(reset_channel_i),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .user_clk(user_clk),
        .verify_r_reg(\downcounter_r_reg[2] ),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_CHANNEL_INIT_SM channel_init_sm_i
       (.CHANNEL_UP_Buffer_reg_0(CHANNEL_UP_Buffer_reg),
        .D(D),
        .SR(SR),
        .SS(SS),
        .START_RX_Buffer_reg_0(\downcounter_r_reg[2] ),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .p_0_in(p_0_in),
        .reset_channel_i(reset_channel_i),
        .reset_lanes_i(reset_lanes_i),
        .start_rx_i(start_rx_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.GEN_A(GEN_A),
        .\downcounter_r_reg[2]_0 (\downcounter_r_reg[2] ),
        .gen_k_flop_0_i_0(gen_k_flop_0_i),
        .gen_r_flop_0_i_0(gen_r_flop_0_i),
        .gen_v_flop_1_i_0(gen_v_flop_1_i),
        .gen_ver_i(gen_ver_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_GT_WRAPPER
   (TX_RESETDONE_OUT,
    gtpe2_i,
    TXN,
    TXP,
    rx_realign_i,
    TX_OUT_CLK,
    DRPDO_OUT,
    RXDATA,
    gtpe2_i_0,
    RXCHARISK,
    gt_common_reset_out,
    RX_RESETDONE_OUT,
    gtpe2_i_1,
    first_v_received_r_reg,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    ENABLE_ERR_DETECT_Buffer_reg,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    hard_err_gt0,
    tx_lock,
    rxfsm_rxresetdone_r3_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ,
    quad1_common_lock_in,
    drpclk_in,
    RXN,
    RXP,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    POWER_DOWN,
    LOOPBACK,
    TXDATA,
    gtpe2_i_8,
    gtrxreset_i,
    init_clk_in,
    link_reset_comb_r,
    AR,
    D,
    \left_align_select_r_reg[0] ,
    left_align_select_r,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \word_aligned_data_r_reg[16] ,
    first_v_received_r,
    PLL_NOT_LOCKED,
    DRPADDR_IN,
    DRPDI_IN,
    DRPWE_IN,
    DRPEN_IN);
  output TX_RESETDONE_OUT;
  output gtpe2_i;
  output TXN;
  output TXP;
  output rx_realign_i;
  output TX_OUT_CLK;
  output [15:0]DRPDO_OUT;
  output [31:0]RXDATA;
  output [3:0]gtpe2_i_0;
  output [3:0]RXCHARISK;
  output gt_common_reset_out;
  output RX_RESETDONE_OUT;
  output gtpe2_i_1;
  output first_v_received_r_reg;
  output gtpe2_i_2;
  output gtpe2_i_3;
  output gtpe2_i_4;
  output [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  output [5:0]gtpe2_i_5;
  output [7:0]gtpe2_i_6;
  output gtpe2_i_7;
  output hard_err_gt0;
  output tx_lock;
  output rxfsm_rxresetdone_r3_reg_0;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ;
  input quad1_common_lock_in;
  input drpclk_in;
  input RXN;
  input RXP;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]gtpe2_i_8;
  input gtrxreset_i;
  input init_clk_in;
  input link_reset_comb_r;
  input [0:0]AR;
  input D;
  input \left_align_select_r_reg[0] ;
  input [0:0]left_align_select_r;
  input \left_align_select_r_reg[1] ;
  input consecutive_commas_r;
  input begin_r;
  input enable_err_detect_i;
  input [5:0]\word_aligned_data_r_reg[16] ;
  input first_v_received_r;
  input PLL_NOT_LOCKED;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire [0:0]AR;
  wire D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RXN;
  wire RXP;
  wire RX_RESETDONE_OUT;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire TX_RESETDONE_OUT;
  wire aurora_8b10b_multi_gt_i_n_4;
  wire aurora_8b10b_multi_gt_i_n_6;
  wire begin_r;
  wire consecutive_commas_r;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire first_v_received_r_reg;
  wire gt0_rxresetdone_r3_reg_srl3_n_0;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_common_reset_out;
  wire gt_rx_reset_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i;
  wire [3:0]gtpe2_i_0;
  wire gtpe2_i_1;
  wire gtpe2_i_2;
  wire gtpe2_i_3;
  wire gtpe2_i_4;
  wire [5:0]gtpe2_i_5;
  wire [7:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire [3:0]gtpe2_i_8;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_pulse;
  wire gtrxreset_pulse0;
  wire gtrxreset_r1;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire gtrxreset_sync;
  wire hard_err_gt0;
  wire init_clk_in;
  wire [0:0]left_align_select_r;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[1] ;
  wire link_reset_comb_r;
  wire link_reset_r2;
  wire quad1_common_lock_in;
  wire [10:0]rx_cdrlock_counter;
  wire \rx_cdrlock_counter[0]_i_2_n_0 ;
  wire \rx_cdrlock_counter[10]_i_2_n_0 ;
  wire \rx_cdrlock_counter[2]_i_1_n_0 ;
  wire \rx_cdrlock_counter_reg_n_0_[0] ;
  wire \rx_cdrlock_counter_reg_n_0_[10] ;
  wire \rx_cdrlock_counter_reg_n_0_[1] ;
  wire \rx_cdrlock_counter_reg_n_0_[2] ;
  wire \rx_cdrlock_counter_reg_n_0_[3] ;
  wire \rx_cdrlock_counter_reg_n_0_[4] ;
  wire \rx_cdrlock_counter_reg_n_0_[5] ;
  wire \rx_cdrlock_counter_reg_n_0_[6] ;
  wire \rx_cdrlock_counter_reg_n_0_[7] ;
  wire \rx_cdrlock_counter_reg_n_0_[8] ;
  wire \rx_cdrlock_counter_reg_n_0_[9] ;
  wire rx_cdrlocked_i_1_n_0;
  wire rx_cdrlocked_i_2_n_0;
  wire rx_cdrlocked_reg_n_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_rxresetdone_r3_reg_0;
  wire rxfsm_soft_reset_r;
  wire rxfsm_soft_reset_r_i_1_n_0;
  wire sync_clk;
  wire tx_lock;
  wire txfsm_txresetdone_r;
  wire user_clk;
  wire [5:0]\word_aligned_data_r_reg[16] ;

  aurora_8b10b_multi_gt aurora_8b10b_multi_gt_i
       (.D(D),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT_Buffer_reg(ENABLE_ERR_DETECT_Buffer_reg),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXN(RXN),
        .RXP(RXP),
        .SR(gt_rx_reset_i),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .begin_r(begin_r),
        .consecutive_commas_r(consecutive_commas_r),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .first_v_received_r_reg(first_v_received_r_reg),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(aurora_8b10b_multi_gt_i_n_4),
        .gtpe2_i_1(aurora_8b10b_multi_gt_i_n_6),
        .gtpe2_i_10(gtpe2_i_8),
        .gtpe2_i_2(gtpe2_i_0),
        .gtpe2_i_3(gtpe2_i_1),
        .gtpe2_i_4(gtpe2_i_2),
        .gtpe2_i_5(gtpe2_i_3),
        .gtpe2_i_6(gtpe2_i_4),
        .gtpe2_i_7(gtpe2_i_5),
        .gtpe2_i_8(gtpe2_i_6),
        .gtpe2_i_9(gtpe2_i_7),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .left_align_select_r(left_align_select_r),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .sync_clk(sync_clk),
        .user_clk(user_clk),
        .\word_aligned_data_r_reg[16] (\word_aligned_data_r_reg[16] ));
  (* srl_name = "U0/\\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_multi_gt_i_n_4),
        .Q(gt0_rxresetdone_r3_reg_srl3_n_0));
  (* srl_name = "U0/\\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_multi_gt_i_n_6),
        .Q(gt0_txresetdone_r3_reg_srl3_n_0));
  (* equivalent_register_removal = "no" *) 
  FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_0),
        .Q(gt_rx_reset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rxresetdone_r_i_1
       (.I0(RX_RESETDONE_OUT),
        .O(rxfsm_rxresetdone_r3_reg_0));
  aurora_8b10b_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg_0(rx_cdrlocked_reg_n_0),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_tx_startup_fsm gt_txresetfsm_i
       (.AR(AR),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .out(TX_RESETDONE_OUT),
        .quad1_common_lock_in(quad1_common_lock_in),
        .tx_lock(tx_lock),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized6 gtrxreset_cdc_sync
       (.gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_sync),
        .user_clk(user_clk));
  LUT2 #(
    .INIT(4'h2)) 
    gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(gtrxreset_pulse0));
  FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_pulse0),
        .Q(gtrxreset_pulse),
        .R(1'b0));
  FDRE gtrxreset_r1_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_sync),
        .Q(gtrxreset_r1),
        .R(1'b0));
  FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r1),
        .Q(gtrxreset_r2),
        .R(1'b0));
  FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
  FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_comb_r),
        .Q(link_reset_r2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFDF)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter[0]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[10] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[0] ),
        .O(rx_cdrlock_counter[0]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \rx_cdrlock_counter[0]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[7] ),
        .O(\rx_cdrlock_counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rx_cdrlock_counter[10]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[10] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I4(\rx_cdrlock_counter[10]_i_2_n_0 ),
        .I5(\rx_cdrlock_counter_reg_n_0_[9] ),
        .O(rx_cdrlock_counter[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_cdrlock_counter[10]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[4] ),
        .O(\rx_cdrlock_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .O(rx_cdrlock_counter[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .O(\rx_cdrlock_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[2] ),
        .O(rx_cdrlock_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rx_cdrlock_counter[4]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[4] ),
        .O(rx_cdrlock_counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rx_cdrlock_counter[5]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[4] ),
        .O(rx_cdrlock_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I1(\rx_cdrlock_counter[10]_i_2_n_0 ),
        .O(rx_cdrlock_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\rx_cdrlock_counter[10]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter_reg_n_0_[6] ),
        .O(rx_cdrlock_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I3(\rx_cdrlock_counter[10]_i_2_n_0 ),
        .O(rx_cdrlock_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I1(\rx_cdrlock_counter[10]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[8] ),
        .O(rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[0]),
        .Q(\rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[10]),
        .Q(\rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[1]),
        .Q(\rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\rx_cdrlock_counter[2]_i_1_n_0 ),
        .Q(\rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[3]),
        .Q(\rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[4]),
        .Q(\rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[5]),
        .Q(\rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[6]),
        .Q(\rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[7]),
        .Q(\rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[8]),
        .Q(\rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[9]),
        .Q(\rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt_rx_reset_i));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT5 #(
    .INIT(32'hFFFF1500)) 
    rx_cdrlocked_i_1
       (.I0(rx_cdrlocked_i_2_n_0),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter[0]_i_2_n_0 ),
        .I4(rx_cdrlocked_reg_n_0),
        .O(rx_cdrlocked_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    rx_cdrlocked_i_2
       (.I0(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[10] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[9] ),
        .O(rx_cdrlocked_i_2_n_0));
  FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlocked_i_1_n_0),
        .Q(rx_cdrlocked_reg_n_0),
        .R(gt_rx_reset_i));
  (* equivalent_register_removal = "no" *) 
  FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(RX_RESETDONE_OUT),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_rxresetdone_r3_reg_srl3_n_0),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    rxfsm_soft_reset_r_i_1
       (.I0(AR),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(rxfsm_soft_reset_r_i_1_n_0));
  FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxfsm_soft_reset_r_i_1_n_0),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
  FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_txresetdone_r3_reg_srl3_n_0),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

module aurora_8b10b_HOTPLUG
   (LINK_RESET_OUT,
    user_clk,
    init_clk_in,
    HPCNT_RESET,
    reset_lanes_i,
    D);
  output LINK_RESET_OUT;
  input user_clk;
  input init_clk_in;
  input HPCNT_RESET;
  input reset_lanes_i;
  input [0:0]D;

  wire [0:0]D;
  wire HPCNT_RESET;
  wire LINK_RESET_OUT;
  wire [21:0]\hotplug_count_synth.count_for_reset_r_reg ;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_r;
  wire link_reset_r_i_2_n_0;
  wire link_reset_r_i_3_n_0;
  wire link_reset_r_i_4_n_0;
  wire link_reset_r_i_5_n_0;
  wire p_0_in;
  wire reset_lanes_i;
  wire rx_cc_cdc_sync_n_0;
  wire rx_cc_cdc_sync_n_1;
  wire rx_cc_cdc_sync_n_10;
  wire rx_cc_cdc_sync_n_11;
  wire rx_cc_cdc_sync_n_12;
  wire rx_cc_cdc_sync_n_13;
  wire rx_cc_cdc_sync_n_14;
  wire rx_cc_cdc_sync_n_15;
  wire rx_cc_cdc_sync_n_16;
  wire rx_cc_cdc_sync_n_17;
  wire rx_cc_cdc_sync_n_18;
  wire rx_cc_cdc_sync_n_19;
  wire rx_cc_cdc_sync_n_2;
  wire rx_cc_cdc_sync_n_20;
  wire rx_cc_cdc_sync_n_21;
  wire rx_cc_cdc_sync_n_3;
  wire rx_cc_cdc_sync_n_4;
  wire rx_cc_cdc_sync_n_5;
  wire rx_cc_cdc_sync_n_6;
  wire rx_cc_cdc_sync_n_7;
  wire rx_cc_cdc_sync_n_8;
  wire rx_cc_cdc_sync_n_9;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire rx_cc_extend_r2_i_2_n_0;
  wire user_clk;

  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_3),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [0]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_9),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_8),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_15),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [12]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_14),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_13),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [14]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_12),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [15]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_19),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [16]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_18),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [17]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_17),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [18]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_16),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [19]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_2),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_21),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [20]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_20),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [21]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_1),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_0),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_7),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [4]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_6),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [5]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_5),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [6]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_4),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [7]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_11),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [8]));
  FDCE #(
    .INIT(1'b0)) 
    \hotplug_count_synth.count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(HPCNT_RESET),
        .D(rx_cc_cdc_sync_n_10),
        .Q(\hotplug_count_synth.count_for_reset_r_reg [9]));
  FDRE #(
    .INIT(1'b0)) 
    \hotplug_enable.LINK_RESET_OUT_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(LINK_RESET_OUT),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    link_reset_r_i_1
       (.I0(link_reset_r_i_2_n_0),
        .I1(link_reset_r_i_3_n_0),
        .I2(link_reset_r_i_4_n_0),
        .I3(link_reset_r_i_5_n_0),
        .O(link_reset_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_r_i_2
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [12]),
        .I1(\hotplug_count_synth.count_for_reset_r_reg [13]),
        .I2(\hotplug_count_synth.count_for_reset_r_reg [10]),
        .I3(\hotplug_count_synth.count_for_reset_r_reg [11]),
        .I4(\hotplug_count_synth.count_for_reset_r_reg [15]),
        .I5(\hotplug_count_synth.count_for_reset_r_reg [14]),
        .O(link_reset_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_r_i_3
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [18]),
        .I1(\hotplug_count_synth.count_for_reset_r_reg [19]),
        .I2(\hotplug_count_synth.count_for_reset_r_reg [16]),
        .I3(\hotplug_count_synth.count_for_reset_r_reg [17]),
        .I4(\hotplug_count_synth.count_for_reset_r_reg [21]),
        .I5(\hotplug_count_synth.count_for_reset_r_reg [20]),
        .O(link_reset_r_i_3_n_0));
  LUT5 #(
    .INIT(32'h78F8F8F8)) 
    link_reset_r_i_4
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [2]),
        .I1(\hotplug_count_synth.count_for_reset_r_reg [3]),
        .I2(\hotplug_count_synth.count_for_reset_r_reg [4]),
        .I3(\hotplug_count_synth.count_for_reset_r_reg [1]),
        .I4(\hotplug_count_synth.count_for_reset_r_reg [0]),
        .O(link_reset_r_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    link_reset_r_i_5
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [5]),
        .I1(\hotplug_count_synth.count_for_reset_r_reg [6]),
        .I2(\hotplug_count_synth.count_for_reset_r_reg [7]),
        .I3(\hotplug_count_synth.count_for_reset_r_reg [9]),
        .I4(\hotplug_count_synth.count_for_reset_r_reg [8]),
        .O(link_reset_r_i_5_n_0));
  FDRE link_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_r),
        .R(1'b0));
  aurora_8b10b_cdc_sync__parameterized6_27 rx_cc_cdc_sync
       (.O({rx_cc_cdc_sync_n_0,rx_cc_cdc_sync_n_1,rx_cc_cdc_sync_n_2,rx_cc_cdc_sync_n_3}),
        .\hotplug_count_synth.count_for_reset_r_reg (\hotplug_count_synth.count_for_reset_r_reg ),
        .\hotplug_count_synth.count_for_reset_r_reg[11] ({rx_cc_cdc_sync_n_8,rx_cc_cdc_sync_n_9,rx_cc_cdc_sync_n_10,rx_cc_cdc_sync_n_11}),
        .\hotplug_count_synth.count_for_reset_r_reg[15] ({rx_cc_cdc_sync_n_12,rx_cc_cdc_sync_n_13,rx_cc_cdc_sync_n_14,rx_cc_cdc_sync_n_15}),
        .\hotplug_count_synth.count_for_reset_r_reg[19] ({rx_cc_cdc_sync_n_16,rx_cc_cdc_sync_n_17,rx_cc_cdc_sync_n_18,rx_cc_cdc_sync_n_19}),
        .\hotplug_count_synth.count_for_reset_r_reg[21] ({rx_cc_cdc_sync_n_20,rx_cc_cdc_sync_n_21}),
        .\hotplug_count_synth.count_for_reset_r_reg[7] ({rx_cc_cdc_sync_n_4,rx_cc_cdc_sync_n_5,rx_cc_cdc_sync_n_6,rx_cc_cdc_sync_n_7}),
        .init_clk_in(init_clk_in),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(rx_cc_extend_r[3]),
        .I2(rx_cc_extend_r[0]),
        .I3(rx_cc_extend_r[1]),
        .I4(rx_cc_extend_r2_i_2_n_0),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[5]),
        .I1(rx_cc_extend_r[4]),
        .I2(rx_cc_extend_r[7]),
        .I3(rx_cc_extend_r[6]),
        .O(rx_cc_extend_r2_i_2_n_0));
  FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(reset_lanes_i));
endmodule

module aurora_8b10b_IDLE_AND_VER_GEN
   (gen_v_flop_1_i_0,
    GEN_A,
    gen_k_flop_0_i_0,
    gen_r_flop_0_i_0,
    txver_count_r0,
    user_clk,
    gen_ver_i,
    \downcounter_r_reg[2]_0 );
  output [2:0]gen_v_flop_1_i_0;
  output GEN_A;
  output [3:0]gen_k_flop_0_i_0;
  output [3:0]gen_r_flop_0_i_0;
  output txver_count_r0;
  input user_clk;
  input gen_ver_i;
  input \downcounter_r_reg[2]_0 ;

  wire D;
  wire D0_out;
  wire D1_out;
  wire GEN_A;
  wire did_ver_i;
  wire [0:2]down_count_r;
  wire \down_count_r[0]_i_1_n_0 ;
  wire \down_count_r[1]_i_1_n_0 ;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r_reg[2]_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire [3:0]gen_k_flop_0_i_0;
  wire gen_k_flop_0_i_i_1_n_0;
  wire gen_k_flop_1_i_i_1_n_0;
  wire gen_k_flop_2_i_i_1_n_0;
  wire gen_k_flop_3_i_i_1_n_0;
  wire [3:0]gen_r_flop_0_i_0;
  wire gen_r_flop_0_i_i_1_n_0;
  wire [2:0]gen_v_flop_1_i_0;
  wire gen_ver_i;
  wire \lfsr_reg[3]_i_1_n_0 ;
  wire \lfsr_reg_reg_n_0_[0] ;
  wire \lfsr_reg_reg_n_0_[3] ;
  wire p_0_in;
  wire p_1_in;
  wire prev_cycle_gen_ver_r;
  wire txver_count_r0;
  wire user_clk;
  wire ver_counter_c;

  FDRE DID_VER_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_c),
        .Q(did_ver_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \down_count_r[0]_i_1 
       (.I0(p_0_in),
        .I1(\lfsr_reg_reg_n_0_[3] ),
        .O(\down_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \down_count_r[1]_i_1 
       (.I0(p_0_in),
        .I1(\lfsr_reg_reg_n_0_[3] ),
        .O(\down_count_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[0]_i_1_n_0 ),
        .Q(down_count_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[1]_i_1_n_0 ),
        .Q(down_count_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_3_i_i_1_n_0),
        .Q(down_count_r[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \downcounter_r[0]_i_1 
       (.I0(down_count_r[0]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3C2)) 
    \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \downcounter_r[2]_i_1 
       (.I0(down_count_r[2]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(\downcounter_r_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(\downcounter_r_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(\downcounter_r_reg[2]_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D1_out),
        .Q(GEN_A),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    gen_a_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(gen_ver_i),
        .I4(did_ver_i),
        .O(D1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i_i_1_n_0),
        .Q(gen_k_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD5D5D5D5D5D5D5C0)) 
    gen_k_flop_0_i_i_1
       (.I0(\lfsr_reg_reg_n_0_[0] ),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(gen_k_flop_0_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_1_i_i_1_n_0),
        .Q(gen_k_flop_0_i_0[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_1_i_i_1
       (.I0(p_1_in),
        .O(gen_k_flop_1_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_2_i_i_1_n_0),
        .Q(gen_k_flop_0_i_0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_2_i_i_1
       (.I0(p_0_in),
        .O(gen_k_flop_2_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_3_i_i_1_n_0),
        .Q(gen_k_flop_0_i_0[0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_3_i_i_1
       (.I0(\lfsr_reg_reg_n_0_[3] ),
        .O(gen_k_flop_3_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i_i_1_n_0),
        .Q(gen_r_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FE00FE00FE00)) 
    gen_r_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\lfsr_reg_reg_n_0_[0] ),
        .I4(did_ver_i),
        .I5(gen_ver_i),
        .O(gen_r_flop_0_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(gen_r_flop_0_i_0[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(gen_r_flop_0_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg_reg_n_0_[3] ),
        .Q(gen_r_flop_0_i_0[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(gen_v_flop_1_i_0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_1_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(D0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(gen_v_flop_1_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(gen_v_flop_1_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h55A9)) 
    \lfsr_reg[3]_i_1 
       (.I0(\lfsr_reg_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(\lfsr_reg_reg_n_0_[3] ),
        .O(\lfsr_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\lfsr_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg_reg_n_0_[3] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg[3]_i_1_n_0 ),
        .Q(\lfsr_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* srl_name = "U0/\\aurora_8b10b_global_logic_i/idle_and_ver_gen_i/ver_counter_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(D),
        .Q(ver_counter_c));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    ver_counter_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .I2(prev_cycle_gen_ver_r),
        .O(D));
endmodule

module aurora_8b10b_LANE_INIT_SM_4BYTE
   (LANE_UP,
    ready_r_reg_0,
    align_r_reg_0,
    gen_spa_i,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \counter2_r_reg[0]_0 ,
    rx_polarity_i,
    gen_sp_i,
    good_cnt_r3,
    left_align_select_r,
    \counter2_r_reg[0]_1 ,
    reset_lanes_i,
    user_clk,
    begin_r0,
    counter4_r0,
    counter3_r0,
    rx_realign_i,
    rx_neg_i,
    reset_count_r_reg_0,
    reset_count_r_reg_1,
    \left_align_select_r_reg[1] ,
    gen_sp_r,
    \RX_CHAR_IS_COMMA_R_reg[3]_0 );
  output LANE_UP;
  output ready_r_reg_0;
  output align_r_reg_0;
  output gen_spa_i;
  output consecutive_commas_r;
  output begin_r;
  output enable_err_detect_i;
  output \counter2_r_reg[0]_0 ;
  output rx_polarity_i;
  output gen_sp_i;
  output good_cnt_r3;
  output [0:0]left_align_select_r;
  output \counter2_r_reg[0]_1 ;
  input reset_lanes_i;
  input user_clk;
  input begin_r0;
  input counter4_r0;
  input counter3_r0;
  input rx_realign_i;
  input rx_neg_i;
  input reset_count_r_reg_0;
  input reset_count_r_reg_1;
  input \left_align_select_r_reg[1] ;
  input gen_sp_r;
  input [3:0]\RX_CHAR_IS_COMMA_R_reg[3]_0 ;

  wire ENABLE_ERR_DETECT_Buffer0;
  wire LANE_UP;
  wire [3:0]\RX_CHAR_IS_COMMA_R_reg[3]_0 ;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[0] ;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[3] ;
  wire align_r_reg_0;
  wire begin_r;
  wire begin_r0;
  wire begin_r_i_2_n_0;
  wire consecutive_commas_r;
  wire consecutive_commas_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire \counter1_r[0]_i_3_n_0 ;
  wire \counter1_r[2]_i_1_n_0 ;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire \counter1_r_reg_n_0_[5] ;
  wire \counter1_r_reg_n_0_[6] ;
  wire \counter1_r_reg_n_0_[7] ;
  wire \counter2_r_reg[0]_0 ;
  wire \counter2_r_reg[0]_1 ;
  wire \counter2_r_reg[14]_srl14_n_0 ;
  wire \counter2_r_reg_n_0_[15] ;
  wire counter3_r0;
  wire \counter3_r_reg[2]_srl3_n_0 ;
  wire \counter3_r_reg_n_0_[3] ;
  wire counter4_r0;
  wire \counter4_r_reg[14]_srl15_n_0 ;
  wire \counter4_r_reg_n_0_[15] ;
  wire counter5_r0;
  wire \counter5_r_reg[14]_srl15_n_0 ;
  wire \counter5_r_reg_n_0_[15] ;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire gen_sp_i;
  wire gen_sp_r;
  wire gen_spa_i;
  wire good_cnt_r3;
  wire [0:0]left_align_select_r;
  wire \left_align_select_r_reg[1] ;
  wire next_ack_c;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire [7:0]p_0_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire polarity_r;
  wire prev_count_128d_done_r;
  wire ready_r_reg_0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_count_r_reg_0;
  wire reset_count_r_reg_1;
  wire reset_lanes_i;
  wire rx_neg_i;
  wire rx_polarity_i;
  wire rx_polarity_r_i_1_n_0;
  wire rx_realign_i;
  wire tx_reset_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ENABLE_ERR_DETECT_Buffer_i_1
       (.I0(gen_spa_i),
        .I1(ready_r_reg_0),
        .O(ENABLE_ERR_DETECT_Buffer0));
  FDRE ENABLE_ERR_DETECT_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT_Buffer0),
        .Q(enable_err_detect_i),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [0]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [3]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_CHAR_IS_K_Buffer[2]_i_3 
       (.I0(\counter2_r_reg[0]_0 ),
        .I1(gen_sp_r),
        .O(\counter2_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0444FFFF04440444)) 
    ack_r_i_1
       (.I0(\counter5_r_reg_n_0_[15] ),
        .I1(gen_spa_i),
        .I2(\counter3_r_reg_n_0_[3] ),
        .I3(\counter2_r_reg_n_0_[15] ),
        .I4(rx_neg_i),
        .I5(polarity_r),
        .O(next_ack_c));
  FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(gen_spa_i),
        .R(begin_r0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    align_r_i_2
       (.I0(count_128d_done_r),
        .I1(align_r_reg_0),
        .I2(tx_reset_i),
        .I3(count_8d_done_r),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r_reg_0),
        .R(begin_r0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    begin_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(polarity_r),
        .I3(rx_neg_i),
        .I4(begin_r_i_2_n_0),
        .O(next_begin_c));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    begin_r_i_2
       (.I0(gen_spa_i),
        .I1(\counter5_r_reg_n_0_[15] ),
        .I2(\counter4_r_reg_n_0_[15] ),
        .I3(ready_r_reg_0),
        .O(begin_r_i_2_n_0));
  FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(begin_r0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_good_code_r_i_1
       (.I0(enable_err_detect_i),
        .O(good_cnt_r3));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    consecutive_commas_r_i_1
       (.I0(align_r_reg_0),
        .I1(p_0_in2_in),
        .I2(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .I3(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .I4(p_1_in),
        .O(consecutive_commas_r0));
  FDRE consecutive_commas_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(consecutive_commas_r0),
        .Q(consecutive_commas_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1_r[0]_i_1 
       (.I0(ready_r_reg_0),
        .I1(reset_count_r),
        .O(counter1_r0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \counter1_r[0]_i_2 
       (.I0(count_128d_done_r),
        .I1(count_32d_done_r),
        .I2(\counter1_r[0]_i_3_n_0 ),
        .I3(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter1_r[0]_i_3 
       (.I0(count_8d_done_r),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .I4(\counter1_r_reg_n_0_[3] ),
        .O(\counter1_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r[0]_i_3_n_0 ),
        .I2(count_32d_done_r),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter1_r[2]_i_1 
       (.I0(count_32d_done_r),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(\counter1_r_reg_n_0_[5] ),
        .I3(\counter1_r_reg_n_0_[7] ),
        .I4(\counter1_r_reg_n_0_[6] ),
        .I5(count_8d_done_r),
        .O(\counter1_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter1_r[3]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(count_8d_done_r),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter1_r[4]_i_1 
       (.I0(count_8d_done_r),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter1_r[5]_i_1 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[6]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[7]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[6]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(\counter1_r[2]_i_1_n_0 ),
        .Q(count_32d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[4]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[5] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[6] ),
        .R(counter1_r0));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[7] ),
        .S(counter1_r0));
  FDRE \counter2_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_spa_i),
        .Q(\counter2_r_reg[0]_0 ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter2_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter2_r_reg[14]_srl14 " *) 
  SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\counter2_r_reg[0]_0 ),
        .Q(\counter2_r_reg[14]_srl14_n_0 ));
  FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\counter2_r_reg[14]_srl14_n_0 ),
        .Q(\counter2_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter3_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 " *) 
  SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(counter3_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter3_r_reg[2]_srl3_n_0 ));
  FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(counter3_r0),
        .D(\counter3_r_reg[2]_srl3_n_0 ),
        .Q(\counter3_r_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter4_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 " *) 
  SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r_reg_0),
        .Q(\counter4_r_reg[14]_srl15_n_0 ));
  FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\counter4_r_reg[14]_srl15_n_0 ),
        .Q(\counter4_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter5_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_aurora_lane_4byte_0_i/aurora_8b10b_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 " *) 
  SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter5_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter5_r_reg[14]_srl15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(gen_spa_i),
        .O(counter5_r0));
  FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(counter5_r0),
        .D(\counter5_r_reg[14]_srl15_n_0 ),
        .Q(\counter5_r_reg_n_0_[15] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
  FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    gen_sp_r_i_1
       (.I0(ready_r_reg_0),
        .I1(gen_spa_i),
        .O(gen_sp_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r_reg_0),
        .Q(LANE_UP),
        .R(reset_lanes_i));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \left_align_select_r[1]_i_2 
       (.I0(align_r_reg_0),
        .I1(ready_r_reg_0),
        .I2(\left_align_select_r_reg[1] ),
        .O(left_align_select_r));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    polarity_r_i_1
       (.I0(count_32d_done_r),
        .I1(realign_r),
        .I2(rx_realign_i),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(begin_r0));
  FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    ready_r_i_1
       (.I0(\counter4_r_reg_n_0_[15] ),
        .I1(ready_r_reg_0),
        .I2(\counter5_r_reg_n_0_[15] ),
        .I3(gen_spa_i),
        .I4(\counter3_r_reg_n_0_[3] ),
        .I5(\counter2_r_reg_n_0_[15] ),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r_reg_0),
        .R(begin_r0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFF040404)) 
    realign_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(count_32d_done_r),
        .I3(align_r_reg_0),
        .I4(count_128d_done_r),
        .O(next_realign_c));
  FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(begin_r0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B0BFB0B)) 
    reset_count_r_i_1
       (.I0(reset_count_r_reg_0),
        .I1(reset_count_r_reg_1),
        .I2(tx_reset_i),
        .I3(count_8d_done_r),
        .I4(begin_r),
        .I5(reset_lanes_i),
        .O(reset_count_r0));
  FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    rst_r_i_1
       (.I0(begin_r),
        .I1(count_8d_done_r),
        .I2(tx_reset_i),
        .O(next_rst_c));
  FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(tx_reset_i),
        .R(begin_r0));
  LUT3 #(
    .INIT(8'h78)) 
    rx_polarity_r_i_1
       (.I0(rx_neg_i),
        .I1(polarity_r),
        .I2(rx_polarity_i),
        .O(rx_polarity_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_polarity_r_i_1_n_0),
        .Q(rx_polarity_i),
        .R(1'b0));
endmodule

module aurora_8b10b_LEFT_ALIGN_CONTROL
   (MUX_SELECT,
    mux_select_c,
    user_clk);
  output [0:0]MUX_SELECT;
  input [0:0]mux_select_c;
  input user_clk;

  wire [0:0]MUX_SELECT;
  wire [0:0]mux_select_c;
  wire user_clk;

  FDRE \MUX_SELECT_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(mux_select_c),
        .Q(MUX_SELECT),
        .R(1'b0));
endmodule

module aurora_8b10b_LEFT_ALIGN_MUX
   (\MUXED_DATA_Buffer_reg[0]_0 ,
    Q,
    MUX_SELECT,
    user_clk);
  output [31:0]\MUXED_DATA_Buffer_reg[0]_0 ;
  input [31:0]Q;
  input [0:0]MUX_SELECT;
  input user_clk;

  wire [31:0]\MUXED_DATA_Buffer_reg[0]_0 ;
  wire [0:0]MUX_SELECT;
  wire [31:0]Q;
  wire [0:15]muxed_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[0]_i_1 
       (.I0(Q[15]),
        .I1(MUX_SELECT),
        .I2(Q[31]),
        .O(muxed_data_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[10]_i_1 
       (.I0(Q[5]),
        .I1(MUX_SELECT),
        .I2(Q[21]),
        .O(muxed_data_c[10]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[11]_i_1 
       (.I0(Q[4]),
        .I1(MUX_SELECT),
        .I2(Q[20]),
        .O(muxed_data_c[11]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[12]_i_1 
       (.I0(Q[3]),
        .I1(MUX_SELECT),
        .I2(Q[19]),
        .O(muxed_data_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[13]_i_1 
       (.I0(Q[2]),
        .I1(MUX_SELECT),
        .I2(Q[18]),
        .O(muxed_data_c[13]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[14]_i_1 
       (.I0(Q[1]),
        .I1(MUX_SELECT),
        .I2(Q[17]),
        .O(muxed_data_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[15]_i_1 
       (.I0(Q[0]),
        .I1(MUX_SELECT),
        .I2(Q[16]),
        .O(muxed_data_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[1]_i_1 
       (.I0(Q[14]),
        .I1(MUX_SELECT),
        .I2(Q[30]),
        .O(muxed_data_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[2]_i_1 
       (.I0(Q[13]),
        .I1(MUX_SELECT),
        .I2(Q[29]),
        .O(muxed_data_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[3]_i_1 
       (.I0(Q[12]),
        .I1(MUX_SELECT),
        .I2(Q[28]),
        .O(muxed_data_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[4]_i_1 
       (.I0(Q[11]),
        .I1(MUX_SELECT),
        .I2(Q[27]),
        .O(muxed_data_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[5]_i_1 
       (.I0(Q[10]),
        .I1(MUX_SELECT),
        .I2(Q[26]),
        .O(muxed_data_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[6]_i_1 
       (.I0(Q[9]),
        .I1(MUX_SELECT),
        .I2(Q[25]),
        .O(muxed_data_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[7]_i_1 
       (.I0(Q[8]),
        .I1(MUX_SELECT),
        .I2(Q[24]),
        .O(muxed_data_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[8]_i_1 
       (.I0(Q[7]),
        .I1(MUX_SELECT),
        .I2(Q[23]),
        .O(muxed_data_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[9]_i_1 
       (.I0(Q[6]),
        .I1(MUX_SELECT),
        .I2(Q[22]),
        .O(muxed_data_c[9]));
  FDRE \MUXED_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[0]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[10]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[11]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[12]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[13]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[14]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[15]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[1]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[2]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[3]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[4]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[5]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[6]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[7]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[8]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[9]),
        .Q(\MUXED_DATA_Buffer_reg[0]_0 [22]),
        .R(1'b0));
endmodule

module aurora_8b10b_LL_TO_AXI
   (M_AXI_RX_TKEEP,
    rx_eof,
    \m_axi_rx_tkeep[1] );
  output [2:0]M_AXI_RX_TKEEP;
  input rx_eof;
  input [1:0]\m_axi_rx_tkeep[1] ;

  wire [2:0]M_AXI_RX_TKEEP;
  wire [1:0]\m_axi_rx_tkeep[1] ;
  wire rx_eof;

  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \M_AXI_RX_TKEEP[1]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [0]),
        .I2(\m_axi_rx_tkeep[1] [1]),
        .O(M_AXI_RX_TKEEP[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \M_AXI_RX_TKEEP[2]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [1]),
        .O(M_AXI_RX_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \M_AXI_RX_TKEEP[3]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [1]),
        .I2(\m_axi_rx_tkeep[1] [0]),
        .O(M_AXI_RX_TKEEP[0]));
endmodule

module aurora_8b10b_OUTPUT_MUX
   (M_AXI_RX_TDATA,
    Q,
    user_clk,
    \OUTPUT_DATA_Buffer_reg[16]_0 ,
    OUTPUT_SELECT_Buffer);
  output [0:31]M_AXI_RX_TDATA;
  input [31:0]Q;
  input user_clk;
  input [15:0]\OUTPUT_DATA_Buffer_reg[16]_0 ;
  input [0:0]OUTPUT_SELECT_Buffer;

  wire [0:31]M_AXI_RX_TDATA;
  wire [15:0]\OUTPUT_DATA_Buffer_reg[16]_0 ;
  wire [0:0]OUTPUT_SELECT_Buffer;
  wire [31:0]Q;
  wire [16:31]output_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[16]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [15]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[15]),
        .O(output_data_c[16]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[17]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [14]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[14]),
        .O(output_data_c[17]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[18]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [13]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[13]),
        .O(output_data_c[18]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[19]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [12]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[12]),
        .O(output_data_c[19]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[20]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [11]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[11]),
        .O(output_data_c[20]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[21]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [10]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[10]),
        .O(output_data_c[21]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[22]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [9]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[9]),
        .O(output_data_c[22]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[23]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [8]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[8]),
        .O(output_data_c[23]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[24]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [7]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[7]),
        .O(output_data_c[24]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[25]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [6]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[6]),
        .O(output_data_c[25]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[26]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [5]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[5]),
        .O(output_data_c[26]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[27]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [4]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[4]),
        .O(output_data_c[27]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[28]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [3]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[3]),
        .O(output_data_c[28]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[29]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [2]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[2]),
        .O(output_data_c[29]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[30]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [1]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[1]),
        .O(output_data_c[30]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA_Buffer[31]_i_1 
       (.I0(\OUTPUT_DATA_Buffer_reg[16]_0 [0]),
        .I1(OUTPUT_SELECT_Buffer),
        .I2(Q[0]),
        .O(output_data_c[31]));
  FDRE \OUTPUT_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(M_AXI_RX_TDATA[0]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(M_AXI_RX_TDATA[10]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(M_AXI_RX_TDATA[11]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(M_AXI_RX_TDATA[12]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(M_AXI_RX_TDATA[13]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(M_AXI_RX_TDATA[14]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(M_AXI_RX_TDATA[15]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[16]),
        .Q(M_AXI_RX_TDATA[16]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[17]),
        .Q(M_AXI_RX_TDATA[17]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[18]),
        .Q(M_AXI_RX_TDATA[18]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[19]),
        .Q(M_AXI_RX_TDATA[19]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(M_AXI_RX_TDATA[1]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[20]),
        .Q(M_AXI_RX_TDATA[20]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[21]),
        .Q(M_AXI_RX_TDATA[21]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[22]),
        .Q(M_AXI_RX_TDATA[22]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[23]),
        .Q(M_AXI_RX_TDATA[23]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[24]),
        .Q(M_AXI_RX_TDATA[24]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[25]),
        .Q(M_AXI_RX_TDATA[25]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[26]),
        .Q(M_AXI_RX_TDATA[26]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[27]),
        .Q(M_AXI_RX_TDATA[27]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[28]),
        .Q(M_AXI_RX_TDATA[28]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[29]),
        .Q(M_AXI_RX_TDATA[29]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(M_AXI_RX_TDATA[2]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[30]),
        .Q(M_AXI_RX_TDATA[30]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[31]),
        .Q(M_AXI_RX_TDATA[31]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(M_AXI_RX_TDATA[3]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(M_AXI_RX_TDATA[4]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(M_AXI_RX_TDATA[5]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(M_AXI_RX_TDATA[6]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(M_AXI_RX_TDATA[7]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(M_AXI_RX_TDATA[8]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(M_AXI_RX_TDATA[9]),
        .R(1'b0));
endmodule

module aurora_8b10b_OUTPUT_SWITCH_CONTROL
   (OUTPUT_SELECT_Buffer,
    output_select_c,
    user_clk);
  output [0:0]OUTPUT_SELECT_Buffer;
  input [0:0]output_select_c;
  input user_clk;

  wire [0:0]OUTPUT_SELECT_Buffer;
  wire [0:0]output_select_c;
  wire user_clk;

  FDRE \OUTPUT_SELECT_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_select_c),
        .Q(OUTPUT_SELECT_Buffer),
        .R(1'b0));
endmodule

module aurora_8b10b_RESET_LOGIC
   (link_reset_comb_r,
    SYSTEM_RESET_reg_0,
    new_pkt_r,
    PLL_NOT_LOCKED,
    out,
    init_clk_in,
    user_clk,
    tx_lock,
    gt_rxresetdone_r2_reg_0,
    gt_txresetdone_r2_reg_0,
    LINK_RESET_OUT,
    CHANNEL_UP,
    new_pkt_r_reg,
    tx_dst_rdy,
    S_AXI_TX_TVALID,
    S_AXI_TX_TLAST);
  output link_reset_comb_r;
  output SYSTEM_RESET_reg_0;
  output new_pkt_r;
  input PLL_NOT_LOCKED;
  input out;
  input init_clk_in;
  input user_clk;
  input tx_lock;
  input gt_rxresetdone_r2_reg_0;
  input gt_txresetdone_r2_reg_0;
  input LINK_RESET_OUT;
  input CHANNEL_UP;
  input new_pkt_r_reg;
  input tx_dst_rdy;
  input S_AXI_TX_TVALID;
  input S_AXI_TX_TLAST;

  wire CHANNEL_UP;
  wire LINK_RESET_OUT;
  wire PLL_NOT_LOCKED;
  wire SYSTEM_RESET0_n_0;
  wire SYSTEM_RESET_reg_0;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TVALID;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r2_reg_0;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r2_reg_0;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire out;
  wire pll_not_locked_sync;
  wire scndry_out;
  wire tx_dst_rdy;
  wire tx_lock;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;

  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    SYSTEM_RESET0
       (.I0(pll_not_locked_sync),
        .I1(out),
        .I2(gt_txresetdone_r3),
        .I3(gt_rxresetdone_r3),
        .I4(scndry_out),
        .I5(tx_lock_sync),
        .O(SYSTEM_RESET0_n_0));
  FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(SYSTEM_RESET_reg_0),
        .R(1'b0));
  FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
  FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
  FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
  FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
  FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
  FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_txresetdone_r));
  aurora_8b10b_cdc_sync__parameterized3_22 link_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .out(scndry_out),
        .user_clk(user_clk));
  FDRE link_reset_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(LINK_RESET_OUT),
        .Q(link_reset_comb_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000404040444040)) 
    new_pkt_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(CHANNEL_UP),
        .I2(new_pkt_r_reg),
        .I3(tx_dst_rdy),
        .I4(S_AXI_TX_TVALID),
        .I5(S_AXI_TX_TLAST),
        .O(new_pkt_r));
  aurora_8b10b_cdc_sync_23 pll_not_locked_cdc_sync
       (.PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .out(pll_not_locked_sync),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized3_24 tx_lock_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r),
        .user_clk(user_clk));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock),
        .Q(tx_lock_comb_r),
        .R(1'b0));
endmodule

module aurora_8b10b_RX_LL
   (rx_eof,
    FRAME_ERR,
    M_AXI_RX_TLAST,
    M_AXI_RX_TVALID,
    \nfc_counter_r_reg[0] ,
    \RX_REM_Buffer_reg[0] ,
    M_AXI_RX_TDATA,
    M_AXI_UFC_RX_TDATA,
    M_AXI_UFC_RX_TKEEP,
    M_AXI_UFC_RX_TLAST,
    M_AXI_UFC_RX_TVALID,
    stage_1_load_nfc_r_reg,
    user_clk,
    SR,
    \nfc_lane_index_r_reg[1] ,
    neqOp,
    \stage_1_lane_mask_r_reg[1] ,
    p_8_out,
    p_9_out,
    Q,
    rx_pe_data_striped_i,
    tx_dst_rdy,
    D_0,
    start_rx_i,
    D,
    \stage_1_count_value_r_reg[0] ,
    \rx_data_v_r_reg[0] );
  output rx_eof;
  output FRAME_ERR;
  output M_AXI_RX_TLAST;
  output M_AXI_RX_TVALID;
  output [0:0]\nfc_counter_r_reg[0] ;
  output [1:0]\RX_REM_Buffer_reg[0] ;
  output [0:31]M_AXI_RX_TDATA;
  output [0:31]M_AXI_UFC_RX_TDATA;
  output [0:0]M_AXI_UFC_RX_TKEEP;
  output M_AXI_UFC_RX_TLAST;
  output M_AXI_UFC_RX_TVALID;
  input stage_1_load_nfc_r_reg;
  input user_clk;
  input [0:0]SR;
  input [0:0]\nfc_lane_index_r_reg[1] ;
  input neqOp;
  input [1:0]\stage_1_lane_mask_r_reg[1] ;
  input [1:0]p_8_out;
  input [1:0]p_9_out;
  input [1:0]Q;
  input [0:31]rx_pe_data_striped_i;
  input tx_dst_rdy;
  input D_0;
  input start_rx_i;
  input [7:0]D;
  input [3:0]\stage_1_count_value_r_reg[0] ;
  input [1:0]\rx_data_v_r_reg[0] ;

  wire [7:0]D;
  wire D_0;
  wire FRAME_ERR;
  wire \MUXED_DATA_Buffer[16]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[17]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[18]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[19]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[20]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[21]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[22]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[23]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[24]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[25]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[26]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[27]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[28]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[29]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[30]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[31]_i_1_n_0 ;
  wire [0:31]M_AXI_RX_TDATA;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire [0:31]M_AXI_UFC_RX_TDATA;
  wire [0:0]M_AXI_UFC_RX_TKEEP;
  wire M_AXI_UFC_RX_TLAST;
  wire M_AXI_UFC_RX_TVALID;
  wire [1:0]Q;
  wire [1:0]\RX_REM_Buffer_reg[0] ;
  wire [0:15]SHIFTED_DATA_Buffer;
  wire [0:0]SR;
  wire \STORAGE_DATA_Buffer[0]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[10]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[11]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[12]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[13]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[14]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[15]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[16]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[17]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[18]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[19]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[1]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[20]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[21]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[22]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[23]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[24]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[25]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[26]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[27]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[28]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[29]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[2]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[30]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[31]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[3]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[4]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[5]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[6]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[7]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[8]_i_1_n_0 ;
  wire \STORAGE_DATA_Buffer[9]_i_1_n_0 ;
  wire [4:9]STORAGE_SELECT_Buffer;
  wire [0:0]UFC_OUTPUT_SELECT_Buffer;
  wire UFC_START;
  wire barrel_shifter_control_i;
  wire neqOp;
  wire [0:0]\nfc_counter_r_reg[0] ;
  wire [0:0]\nfc_lane_index_r_reg[1] ;
  wire [15:0]p_1_in;
  wire [1:0]p_8_out;
  wire [1:0]p_9_out;
  wire [0:1]pdu_data_v_i;
  wire [0:1]pdu_ecp_i;
  wire [0:1]pdu_scp_i;
  wire plusOp20;
  wire [1:0]\rx_data_v_r_reg[0] ;
  wire rx_eof;
  wire rx_ll_pdu_datapath_i_n_54;
  wire rx_ll_pdu_datapath_i_n_55;
  wire rx_ll_pdu_datapath_i_n_56;
  wire rx_ll_pdu_datapath_i_n_57;
  wire rx_ll_pdu_datapath_i_n_58;
  wire rx_ll_pdu_datapath_i_n_59;
  wire rx_ll_pdu_datapath_i_n_60;
  wire rx_ll_pdu_datapath_i_n_61;
  wire rx_ll_pdu_datapath_i_n_62;
  wire rx_ll_pdu_datapath_i_n_63;
  wire rx_ll_pdu_datapath_i_n_64;
  wire rx_ll_pdu_datapath_i_n_65;
  wire rx_ll_pdu_datapath_i_n_66;
  wire rx_ll_pdu_datapath_i_n_67;
  wire rx_ll_pdu_datapath_i_n_68;
  wire rx_ll_pdu_datapath_i_n_69;
  wire rx_ll_ufc_datapath_i_n_17;
  wire rx_ll_ufc_datapath_i_n_18;
  wire rx_ll_ufc_datapath_i_n_19;
  wire rx_ll_ufc_datapath_i_n_20;
  wire rx_ll_ufc_datapath_i_n_21;
  wire rx_ll_ufc_datapath_i_n_22;
  wire rx_ll_ufc_datapath_i_n_23;
  wire rx_ll_ufc_datapath_i_n_24;
  wire rx_ll_ufc_datapath_i_n_25;
  wire rx_ll_ufc_datapath_i_n_26;
  wire rx_ll_ufc_datapath_i_n_27;
  wire rx_ll_ufc_datapath_i_n_28;
  wire rx_ll_ufc_datapath_i_n_29;
  wire rx_ll_ufc_datapath_i_n_30;
  wire rx_ll_ufc_datapath_i_n_31;
  wire rx_ll_ufc_datapath_i_n_32;
  wire [0:31]rx_pe_data_striped_i;
  wire [3:0]\stage_1_count_value_r_reg[0] ;
  wire [0:31]stage_1_data_r;
  wire [1:0]\stage_1_lane_mask_r_reg[1] ;
  wire stage_1_load_nfc_r_reg;
  wire \stage_1_rx_ll_deframer_i/S1_in ;
  wire start_rx_i;
  wire tx_dst_rdy;
  wire ufc_filter_i_n_10;
  wire ufc_filter_i_n_11;
  wire ufc_filter_i_n_12;
  wire ufc_filter_i_n_13;
  wire ufc_filter_i_n_14;
  wire ufc_filter_i_n_15;
  wire ufc_filter_i_n_16;
  wire ufc_filter_i_n_17;
  wire ufc_filter_i_n_18;
  wire ufc_filter_i_n_19;
  wire ufc_filter_i_n_20;
  wire ufc_filter_i_n_21;
  wire ufc_filter_i_n_22;
  wire ufc_filter_i_n_23;
  wire ufc_filter_i_n_24;
  wire ufc_filter_i_n_25;
  wire ufc_filter_i_n_26;
  wire ufc_filter_i_n_27;
  wire ufc_filter_i_n_28;
  wire ufc_filter_i_n_29;
  wire ufc_filter_i_n_30;
  wire ufc_filter_i_n_31;
  wire ufc_filter_i_n_32;
  wire ufc_filter_i_n_33;
  wire ufc_filter_i_n_34;
  wire ufc_filter_i_n_35;
  wire ufc_filter_i_n_36;
  wire ufc_filter_i_n_37;
  wire ufc_filter_i_n_38;
  wire ufc_filter_i_n_39;
  wire ufc_filter_i_n_40;
  wire ufc_filter_i_n_44;
  wire ufc_filter_i_n_45;
  wire ufc_filter_i_n_6;
  wire ufc_filter_i_n_7;
  wire ufc_filter_i_n_8;
  wire ufc_filter_i_n_9;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[16]_i_1 
       (.I0(SHIFTED_DATA_Buffer[0]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_17),
        .O(\MUXED_DATA_Buffer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[17]_i_1 
       (.I0(SHIFTED_DATA_Buffer[1]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_18),
        .O(\MUXED_DATA_Buffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[18]_i_1 
       (.I0(SHIFTED_DATA_Buffer[2]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_19),
        .O(\MUXED_DATA_Buffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[19]_i_1 
       (.I0(SHIFTED_DATA_Buffer[3]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_20),
        .O(\MUXED_DATA_Buffer[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[20]_i_1 
       (.I0(SHIFTED_DATA_Buffer[4]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_21),
        .O(\MUXED_DATA_Buffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[21]_i_1 
       (.I0(SHIFTED_DATA_Buffer[5]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_22),
        .O(\MUXED_DATA_Buffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[22]_i_1 
       (.I0(SHIFTED_DATA_Buffer[6]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_23),
        .O(\MUXED_DATA_Buffer[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[23]_i_1 
       (.I0(SHIFTED_DATA_Buffer[7]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_24),
        .O(\MUXED_DATA_Buffer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[24]_i_1 
       (.I0(SHIFTED_DATA_Buffer[8]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_25),
        .O(\MUXED_DATA_Buffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[25]_i_1 
       (.I0(SHIFTED_DATA_Buffer[9]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_26),
        .O(\MUXED_DATA_Buffer[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[26]_i_1 
       (.I0(SHIFTED_DATA_Buffer[10]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_27),
        .O(\MUXED_DATA_Buffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[27]_i_1 
       (.I0(SHIFTED_DATA_Buffer[11]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_28),
        .O(\MUXED_DATA_Buffer[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[28]_i_1 
       (.I0(SHIFTED_DATA_Buffer[12]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_29),
        .O(\MUXED_DATA_Buffer[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[29]_i_1 
       (.I0(SHIFTED_DATA_Buffer[13]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_30),
        .O(\MUXED_DATA_Buffer[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[30]_i_1 
       (.I0(SHIFTED_DATA_Buffer[14]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_31),
        .O(\MUXED_DATA_Buffer[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[31]_i_1 
       (.I0(SHIFTED_DATA_Buffer[15]),
        .I1(UFC_OUTPUT_SELECT_Buffer),
        .I2(rx_ll_ufc_datapath_i_n_32),
        .O(\MUXED_DATA_Buffer[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[0]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_54),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[15]),
        .O(\STORAGE_DATA_Buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[10]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_64),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[5]),
        .O(\STORAGE_DATA_Buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[11]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_65),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[4]),
        .O(\STORAGE_DATA_Buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[12]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_66),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[3]),
        .O(\STORAGE_DATA_Buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[13]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_67),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[2]),
        .O(\STORAGE_DATA_Buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[14]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_68),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[1]),
        .O(\STORAGE_DATA_Buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[15]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_69),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[0]),
        .O(\STORAGE_DATA_Buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[16]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_54),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[15]),
        .O(\STORAGE_DATA_Buffer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[17]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_55),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[14]),
        .O(\STORAGE_DATA_Buffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[18]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_56),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[13]),
        .O(\STORAGE_DATA_Buffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[19]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_57),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[12]),
        .O(\STORAGE_DATA_Buffer[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[1]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_55),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[14]),
        .O(\STORAGE_DATA_Buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[20]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_58),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[11]),
        .O(\STORAGE_DATA_Buffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[21]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_59),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[10]),
        .O(\STORAGE_DATA_Buffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[22]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_60),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[9]),
        .O(\STORAGE_DATA_Buffer[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[23]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_61),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[8]),
        .O(\STORAGE_DATA_Buffer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[24]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_62),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[7]),
        .O(\STORAGE_DATA_Buffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[25]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_63),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[6]),
        .O(\STORAGE_DATA_Buffer[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[26]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_64),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[5]),
        .O(\STORAGE_DATA_Buffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[27]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_65),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[4]),
        .O(\STORAGE_DATA_Buffer[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[28]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_66),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[3]),
        .O(\STORAGE_DATA_Buffer[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[29]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_67),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[2]),
        .O(\STORAGE_DATA_Buffer[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[2]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_56),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[13]),
        .O(\STORAGE_DATA_Buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[30]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_68),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[1]),
        .O(\STORAGE_DATA_Buffer[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[31]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_69),
        .I1(STORAGE_SELECT_Buffer[9]),
        .I2(p_1_in[0]),
        .O(\STORAGE_DATA_Buffer[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[3]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_57),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[12]),
        .O(\STORAGE_DATA_Buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[4]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_58),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[11]),
        .O(\STORAGE_DATA_Buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[5]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_59),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[10]),
        .O(\STORAGE_DATA_Buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[6]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_60),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[9]),
        .O(\STORAGE_DATA_Buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[7]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_61),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[8]),
        .O(\STORAGE_DATA_Buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[8]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_62),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[7]),
        .O(\STORAGE_DATA_Buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA_Buffer[9]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_63),
        .I1(STORAGE_SELECT_Buffer[4]),
        .I2(p_1_in[6]),
        .O(\STORAGE_DATA_Buffer[9]_i_1_n_0 ));
  aurora_8b10b_RX_LL_NFC nfc_module_i
       (.D(D),
        .D_0(D_0),
        .SR(SR),
        .\nfc_counter_r_reg[0]_0 (\nfc_counter_r_reg[0] ),
        .\nfc_lane_index_r_reg[1]_0 (\nfc_lane_index_r_reg[1] ),
        .stage_1_load_nfc_r_reg_0(stage_1_load_nfc_r_reg),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
  aurora_8b10b_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D({pdu_scp_i[0],pdu_scp_i[1]}),
        .FRAME_ERR(FRAME_ERR),
        .\MUXED_DATA_Buffer_reg[0] ({p_1_in,rx_ll_pdu_datapath_i_n_54,rx_ll_pdu_datapath_i_n_55,rx_ll_pdu_datapath_i_n_56,rx_ll_pdu_datapath_i_n_57,rx_ll_pdu_datapath_i_n_58,rx_ll_pdu_datapath_i_n_59,rx_ll_pdu_datapath_i_n_60,rx_ll_pdu_datapath_i_n_61,rx_ll_pdu_datapath_i_n_62,rx_ll_pdu_datapath_i_n_63,rx_ll_pdu_datapath_i_n_64,rx_ll_pdu_datapath_i_n_65,rx_ll_pdu_datapath_i_n_66,rx_ll_pdu_datapath_i_n_67,rx_ll_pdu_datapath_i_n_68,rx_ll_pdu_datapath_i_n_69}),
        .M_AXI_RX_TDATA(M_AXI_RX_TDATA),
        .M_AXI_RX_TLAST(M_AXI_RX_TLAST),
        .M_AXI_RX_TVALID(M_AXI_RX_TVALID),
        .Q({pdu_data_v_i[0],pdu_data_v_i[1]}),
        .\RX_REM_Buffer_reg[0]_0 (\RX_REM_Buffer_reg[0] ),
        .S1_in(\stage_1_rx_ll_deframer_i/S1_in ),
        .SR(SR),
        .\STORAGE_DATA_Buffer_reg[0] ({\STORAGE_DATA_Buffer[0]_i_1_n_0 ,\STORAGE_DATA_Buffer[1]_i_1_n_0 ,\STORAGE_DATA_Buffer[2]_i_1_n_0 ,\STORAGE_DATA_Buffer[3]_i_1_n_0 ,\STORAGE_DATA_Buffer[4]_i_1_n_0 ,\STORAGE_DATA_Buffer[5]_i_1_n_0 ,\STORAGE_DATA_Buffer[6]_i_1_n_0 ,\STORAGE_DATA_Buffer[7]_i_1_n_0 ,\STORAGE_DATA_Buffer[8]_i_1_n_0 ,\STORAGE_DATA_Buffer[9]_i_1_n_0 ,\STORAGE_DATA_Buffer[10]_i_1_n_0 ,\STORAGE_DATA_Buffer[11]_i_1_n_0 ,\STORAGE_DATA_Buffer[12]_i_1_n_0 ,\STORAGE_DATA_Buffer[13]_i_1_n_0 ,\STORAGE_DATA_Buffer[14]_i_1_n_0 ,\STORAGE_DATA_Buffer[15]_i_1_n_0 ,\STORAGE_DATA_Buffer[16]_i_1_n_0 ,\STORAGE_DATA_Buffer[17]_i_1_n_0 ,\STORAGE_DATA_Buffer[18]_i_1_n_0 ,\STORAGE_DATA_Buffer[19]_i_1_n_0 ,\STORAGE_DATA_Buffer[20]_i_1_n_0 ,\STORAGE_DATA_Buffer[21]_i_1_n_0 ,\STORAGE_DATA_Buffer[22]_i_1_n_0 ,\STORAGE_DATA_Buffer[23]_i_1_n_0 ,\STORAGE_DATA_Buffer[24]_i_1_n_0 ,\STORAGE_DATA_Buffer[25]_i_1_n_0 ,\STORAGE_DATA_Buffer[26]_i_1_n_0 ,\STORAGE_DATA_Buffer[27]_i_1_n_0 ,\STORAGE_DATA_Buffer[28]_i_1_n_0 ,\STORAGE_DATA_Buffer[29]_i_1_n_0 ,\STORAGE_DATA_Buffer[30]_i_1_n_0 ,\STORAGE_DATA_Buffer[31]_i_1_n_0 }),
        .STORAGE_SELECT_Buffer({STORAGE_SELECT_Buffer[4],STORAGE_SELECT_Buffer[9]}),
        .data_after_start_muxcy_1(ufc_filter_i_n_45),
        .in_frame_muxcy_0(ufc_filter_i_n_40),
        .in_frame_muxcy_1(ufc_filter_i_n_39),
        .rx_eof(rx_eof),
        .\stage_1_data_r_reg[0]_0 ({stage_1_data_r[0],stage_1_data_r[1],stage_1_data_r[2],stage_1_data_r[3],stage_1_data_r[4],stage_1_data_r[5],stage_1_data_r[6],stage_1_data_r[7],stage_1_data_r[8],stage_1_data_r[9],stage_1_data_r[10],stage_1_data_r[11],stage_1_data_r[12],stage_1_data_r[13],stage_1_data_r[14],stage_1_data_r[15],stage_1_data_r[16],stage_1_data_r[17],stage_1_data_r[18],stage_1_data_r[19],stage_1_data_r[20],stage_1_data_r[21],stage_1_data_r[22],stage_1_data_r[23],stage_1_data_r[24],stage_1_data_r[25],stage_1_data_r[26],stage_1_data_r[27],stage_1_data_r[28],stage_1_data_r[29],stage_1_data_r[30],stage_1_data_r[31]}),
        .\stage_1_data_r_reg[0]_1 (ufc_filter_i_n_6),
        .\stage_1_data_r_reg[10]_0 (ufc_filter_i_n_16),
        .\stage_1_data_r_reg[11]_0 (ufc_filter_i_n_17),
        .\stage_1_data_r_reg[12]_0 (ufc_filter_i_n_18),
        .\stage_1_data_r_reg[13]_0 (ufc_filter_i_n_19),
        .\stage_1_data_r_reg[14]_0 (ufc_filter_i_n_20),
        .\stage_1_data_r_reg[15]_0 (ufc_filter_i_n_21),
        .\stage_1_data_r_reg[16]_0 (ufc_filter_i_n_22),
        .\stage_1_data_r_reg[17]_0 (ufc_filter_i_n_23),
        .\stage_1_data_r_reg[18]_0 (ufc_filter_i_n_24),
        .\stage_1_data_r_reg[19]_0 (ufc_filter_i_n_25),
        .\stage_1_data_r_reg[1]_0 (ufc_filter_i_n_7),
        .\stage_1_data_r_reg[20]_0 (ufc_filter_i_n_26),
        .\stage_1_data_r_reg[21]_0 (ufc_filter_i_n_27),
        .\stage_1_data_r_reg[22]_0 (ufc_filter_i_n_28),
        .\stage_1_data_r_reg[23]_0 (ufc_filter_i_n_29),
        .\stage_1_data_r_reg[24]_0 (ufc_filter_i_n_30),
        .\stage_1_data_r_reg[25]_0 (ufc_filter_i_n_31),
        .\stage_1_data_r_reg[26]_0 (ufc_filter_i_n_32),
        .\stage_1_data_r_reg[27]_0 (ufc_filter_i_n_33),
        .\stage_1_data_r_reg[28]_0 (ufc_filter_i_n_34),
        .\stage_1_data_r_reg[29]_0 (ufc_filter_i_n_35),
        .\stage_1_data_r_reg[2]_0 (ufc_filter_i_n_8),
        .\stage_1_data_r_reg[30]_0 (ufc_filter_i_n_36),
        .\stage_1_data_r_reg[31]_0 (ufc_filter_i_n_37),
        .\stage_1_data_r_reg[3]_0 (ufc_filter_i_n_9),
        .\stage_1_data_r_reg[4]_0 (ufc_filter_i_n_10),
        .\stage_1_data_r_reg[5]_0 (ufc_filter_i_n_11),
        .\stage_1_data_r_reg[6]_0 (ufc_filter_i_n_12),
        .\stage_1_data_r_reg[7]_0 (ufc_filter_i_n_13),
        .\stage_1_data_r_reg[8]_0 (ufc_filter_i_n_14),
        .\stage_1_data_r_reg[9]_0 (ufc_filter_i_n_15),
        .\stage_1_ecp_r_reg[0]_0 ({pdu_ecp_i[0],pdu_ecp_i[1]}),
        .stage_1_pad_r_reg_0(ufc_filter_i_n_38),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  aurora_8b10b_RX_LL_UFC_DATAPATH rx_ll_ufc_datapath_i
       (.\MUXED_DATA_Buffer_reg[16] (rx_ll_ufc_datapath_i_n_17),
        .\MUXED_DATA_Buffer_reg[16]_0 (\MUXED_DATA_Buffer[16]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[17] (rx_ll_ufc_datapath_i_n_18),
        .\MUXED_DATA_Buffer_reg[17]_0 (\MUXED_DATA_Buffer[17]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[18] (rx_ll_ufc_datapath_i_n_19),
        .\MUXED_DATA_Buffer_reg[18]_0 (\MUXED_DATA_Buffer[18]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[19] (rx_ll_ufc_datapath_i_n_20),
        .\MUXED_DATA_Buffer_reg[19]_0 (\MUXED_DATA_Buffer[19]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[20] (rx_ll_ufc_datapath_i_n_21),
        .\MUXED_DATA_Buffer_reg[20]_0 (\MUXED_DATA_Buffer[20]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[21] (rx_ll_ufc_datapath_i_n_22),
        .\MUXED_DATA_Buffer_reg[21]_0 (\MUXED_DATA_Buffer[21]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[22] (rx_ll_ufc_datapath_i_n_23),
        .\MUXED_DATA_Buffer_reg[22]_0 (\MUXED_DATA_Buffer[22]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[23] (rx_ll_ufc_datapath_i_n_24),
        .\MUXED_DATA_Buffer_reg[23]_0 (\MUXED_DATA_Buffer[23]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[24] (rx_ll_ufc_datapath_i_n_25),
        .\MUXED_DATA_Buffer_reg[24]_0 (\MUXED_DATA_Buffer[24]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[25] (rx_ll_ufc_datapath_i_n_26),
        .\MUXED_DATA_Buffer_reg[25]_0 (\MUXED_DATA_Buffer[25]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[26] (rx_ll_ufc_datapath_i_n_27),
        .\MUXED_DATA_Buffer_reg[26]_0 (\MUXED_DATA_Buffer[26]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[27] (rx_ll_ufc_datapath_i_n_28),
        .\MUXED_DATA_Buffer_reg[27]_0 (\MUXED_DATA_Buffer[27]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[28] (rx_ll_ufc_datapath_i_n_29),
        .\MUXED_DATA_Buffer_reg[28]_0 (\MUXED_DATA_Buffer[28]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[29] (rx_ll_ufc_datapath_i_n_30),
        .\MUXED_DATA_Buffer_reg[29]_0 (\MUXED_DATA_Buffer[29]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[30] (rx_ll_ufc_datapath_i_n_31),
        .\MUXED_DATA_Buffer_reg[30]_0 (\MUXED_DATA_Buffer[30]_i_1_n_0 ),
        .\MUXED_DATA_Buffer_reg[31] (rx_ll_ufc_datapath_i_n_32),
        .\MUXED_DATA_Buffer_reg[31]_0 (\MUXED_DATA_Buffer[31]_i_1_n_0 ),
        .M_AXI_UFC_RX_TDATA(M_AXI_UFC_RX_TDATA),
        .M_AXI_UFC_RX_TKEEP(M_AXI_UFC_RX_TKEEP),
        .M_AXI_UFC_RX_TLAST(M_AXI_UFC_RX_TLAST),
        .M_AXI_UFC_RX_TVALID(M_AXI_UFC_RX_TVALID),
        .Q({plusOp20,ufc_filter_i_n_44}),
        .\SHIFTED_DATA_Buffer_reg[0] ({SHIFTED_DATA_Buffer[0],SHIFTED_DATA_Buffer[1],SHIFTED_DATA_Buffer[2],SHIFTED_DATA_Buffer[3],SHIFTED_DATA_Buffer[4],SHIFTED_DATA_Buffer[5],SHIFTED_DATA_Buffer[6],SHIFTED_DATA_Buffer[7],SHIFTED_DATA_Buffer[8],SHIFTED_DATA_Buffer[9],SHIFTED_DATA_Buffer[10],SHIFTED_DATA_Buffer[11],SHIFTED_DATA_Buffer[12],SHIFTED_DATA_Buffer[13],SHIFTED_DATA_Buffer[14],SHIFTED_DATA_Buffer[15]}),
        .\SHIFTED_DATA_Buffer_reg[0]_0 ({stage_1_data_r[0],stage_1_data_r[1],stage_1_data_r[2],stage_1_data_r[3],stage_1_data_r[4],stage_1_data_r[5],stage_1_data_r[6],stage_1_data_r[7],stage_1_data_r[8],stage_1_data_r[9],stage_1_data_r[10],stage_1_data_r[11],stage_1_data_r[12],stage_1_data_r[13],stage_1_data_r[14],stage_1_data_r[15],stage_1_data_r[16],stage_1_data_r[17],stage_1_data_r[18],stage_1_data_r[19],stage_1_data_r[20],stage_1_data_r[21],stage_1_data_r[22],stage_1_data_r[23],stage_1_data_r[24],stage_1_data_r[25],stage_1_data_r[26],stage_1_data_r[27],stage_1_data_r[28],stage_1_data_r[29],stage_1_data_r[30],stage_1_data_r[31]}),
        .SR(SR),
        .\UFC_OUTPUT_SELECT_Buffer_reg[5] (UFC_OUTPUT_SELECT_Buffer),
        .UFC_START(UFC_START),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .user_clk(user_clk));
  aurora_8b10b_UFC_FILTER ufc_filter_i
       (.D({pdu_scp_i[0],pdu_scp_i[1]}),
        .\PDU_DATA_V_Buffer_reg[0]_0 ({pdu_data_v_i[0],pdu_data_v_i[1]}),
        .\PDU_ECP_Buffer_reg[0]_0 ({pdu_ecp_i[0],pdu_ecp_i[1]}),
        .\PDU_ECP_Buffer_reg[0]_1 (ufc_filter_i_n_40),
        .\PDU_ECP_Buffer_reg[1]_0 (ufc_filter_i_n_39),
        .\PDU_PAD_Buffer_reg[0]_0 (ufc_filter_i_n_38),
        .\PDU_SCP_Buffer_reg[1]_0 (ufc_filter_i_n_45),
        .Q(Q),
        .S1_in(\stage_1_rx_ll_deframer_i/S1_in ),
        .SR(SR),
        .\UFC_DATA_V_Buffer_reg[0]_0 ({plusOp20,ufc_filter_i_n_44}),
        .UFC_START(UFC_START),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .neqOp(neqOp),
        .p_8_out(p_8_out),
        .p_9_out(p_9_out),
        .\rx_data_v_r_reg[0]_0 (\rx_data_v_r_reg[0] ),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .\stage_1_count_value_r_reg[0]_0 (\stage_1_count_value_r_reg[0] ),
        .\stage_1_lane_mask_r_reg[1]_0 (\stage_1_lane_mask_r_reg[1] ),
        .user_clk(user_clk),
        .user_clk_0(ufc_filter_i_n_6),
        .user_clk_1(ufc_filter_i_n_7),
        .user_clk_10(ufc_filter_i_n_16),
        .user_clk_11(ufc_filter_i_n_17),
        .user_clk_12(ufc_filter_i_n_18),
        .user_clk_13(ufc_filter_i_n_19),
        .user_clk_14(ufc_filter_i_n_20),
        .user_clk_15(ufc_filter_i_n_21),
        .user_clk_16(ufc_filter_i_n_22),
        .user_clk_17(ufc_filter_i_n_23),
        .user_clk_18(ufc_filter_i_n_24),
        .user_clk_19(ufc_filter_i_n_25),
        .user_clk_2(ufc_filter_i_n_8),
        .user_clk_20(ufc_filter_i_n_26),
        .user_clk_21(ufc_filter_i_n_27),
        .user_clk_22(ufc_filter_i_n_28),
        .user_clk_23(ufc_filter_i_n_29),
        .user_clk_24(ufc_filter_i_n_30),
        .user_clk_25(ufc_filter_i_n_31),
        .user_clk_26(ufc_filter_i_n_32),
        .user_clk_27(ufc_filter_i_n_33),
        .user_clk_28(ufc_filter_i_n_34),
        .user_clk_29(ufc_filter_i_n_35),
        .user_clk_3(ufc_filter_i_n_9),
        .user_clk_30(ufc_filter_i_n_36),
        .user_clk_31(ufc_filter_i_n_37),
        .user_clk_4(ufc_filter_i_n_10),
        .user_clk_5(ufc_filter_i_n_11),
        .user_clk_6(ufc_filter_i_n_12),
        .user_clk_7(ufc_filter_i_n_13),
        .user_clk_8(ufc_filter_i_n_14),
        .user_clk_9(ufc_filter_i_n_15));
endmodule

module aurora_8b10b_RX_LL_DEFRAMER
   (mux_select_c,
    \AFTER_SCP_Buffer_reg[1]_0 ,
    \AFTER_SCP_Buffer_reg[1]_1 ,
    \stage_1_ecp_r_reg[1] ,
    \DEFRAMED_DATA_V_Buffer_reg[0]_0 ,
    \stage_1_ecp_r_reg[1]_0 ,
    in_frame_muxcy_0_0,
    D,
    in_frame_muxcy_1_0,
    S1_in,
    data_after_start_muxcy_1_0,
    SR,
    user_clk,
    Q,
    stage_2_frame_err_r_reg,
    \DEFRAMED_DATA_V_Buffer_reg[0]_1 );
  output [0:0]mux_select_c;
  output \AFTER_SCP_Buffer_reg[1]_0 ;
  output \AFTER_SCP_Buffer_reg[1]_1 ;
  output \stage_1_ecp_r_reg[1] ;
  output [1:0]\DEFRAMED_DATA_V_Buffer_reg[0]_0 ;
  output \stage_1_ecp_r_reg[1]_0 ;
  input in_frame_muxcy_0_0;
  input [1:0]D;
  input in_frame_muxcy_1_0;
  input S1_in;
  input data_after_start_muxcy_1_0;
  input [0:0]SR;
  input user_clk;
  input [1:0]Q;
  input [1:0]stage_2_frame_err_r_reg;
  input [1:0]\DEFRAMED_DATA_V_Buffer_reg[0]_1 ;

  wire \AFTER_SCP_Buffer_reg[1]_0 ;
  wire \AFTER_SCP_Buffer_reg[1]_1 ;
  wire CI;
  wire [1:0]D;
  wire \DEFRAMED_DATA_V_Buffer[0]_i_1_n_0 ;
  wire \DEFRAMED_DATA_V_Buffer[1]_i_1_n_0 ;
  wire [1:0]\DEFRAMED_DATA_V_Buffer_reg[0]_0 ;
  wire [1:0]\DEFRAMED_DATA_V_Buffer_reg[0]_1 ;
  wire [1:0]Q;
  wire S1_in;
  wire [0:0]SR;
  wire after_scp_c_1;
  wire data_after_start_muxcy_1_0;
  wire data_after_start_muxcy_1_n_0;
  wire in_frame_c_0;
  wire in_frame_c_1;
  wire in_frame_muxcy_0_0;
  wire in_frame_muxcy_1_0;
  wire [0:0]mux_select_c;
  wire [0:1]stage_1_after_scp_r;
  wire [0:1]stage_1_data_v_r;
  wire \stage_1_ecp_r_reg[1] ;
  wire \stage_1_ecp_r_reg[1]_0 ;
  wire [0:1]stage_1_in_frame_r;
  wire [1:0]stage_2_frame_err_r_reg;
  wire user_clk;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED;

  FDRE \AFTER_SCP_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(after_scp_c_1),
        .Q(stage_1_after_scp_r[0]),
        .R(SR));
  FDRE \AFTER_SCP_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(data_after_start_muxcy_1_n_0),
        .Q(stage_1_after_scp_r[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \COUNT_Buffer[0]_i_1 
       (.I0(stage_1_data_v_r[0]),
        .I1(stage_1_data_v_r[1]),
        .O(\DEFRAMED_DATA_V_Buffer_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT_Buffer[1]_i_1 
       (.I0(stage_1_data_v_r[0]),
        .I1(stage_1_data_v_r[1]),
        .O(\DEFRAMED_DATA_V_Buffer_reg[0]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V_Buffer[0]_i_1 
       (.I0(in_frame_c_1),
        .I1(\DEFRAMED_DATA_V_Buffer_reg[0]_1 [1]),
        .O(\DEFRAMED_DATA_V_Buffer[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V_Buffer[1]_i_1 
       (.I0(in_frame_c_0),
        .I1(\DEFRAMED_DATA_V_Buffer_reg[0]_1 [0]),
        .O(\DEFRAMED_DATA_V_Buffer[1]_i_1_n_0 ));
  FDRE \DEFRAMED_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V_Buffer[0]_i_1_n_0 ),
        .Q(stage_1_data_v_r[0]),
        .R(SR));
  FDRE \DEFRAMED_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V_Buffer[1]_i_1_n_0 ),
        .Q(stage_1_data_v_r[1]),
        .R(SR));
  FDRE \IN_FRAME_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(CI),
        .Q(stage_1_in_frame_r[0]),
        .R(SR));
  FDRE \IN_FRAME_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_1),
        .Q(stage_1_in_frame_r[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MUX_SELECT_Buffer[2]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(mux_select_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 data_after_start_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],data_after_start_muxcy_1_n_0,after_scp_c_1}),
        .CYINIT(1'b0),
        .DI({NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],1'b1,1'b1}),
        .O(NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED[3:2],data_after_start_muxcy_1_0,S1_in}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 in_frame_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],in_frame_c_0,in_frame_c_1}),
        .CYINIT(CI),
        .DI({NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],D[0],D[1]}),
        .O(NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED[3:2],in_frame_muxcy_1_0,in_frame_muxcy_0_0}));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_0),
        .Q(CI),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_end_after_start_r_i_1
       (.I0(Q[0]),
        .I1(stage_1_after_scp_r[1]),
        .I2(Q[1]),
        .I3(stage_1_after_scp_r[0]),
        .O(\stage_1_ecp_r_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    stage_2_end_before_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(\AFTER_SCP_Buffer_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    stage_2_frame_err_r_i_1
       (.I0(Q[0]),
        .I1(stage_1_in_frame_r[1]),
        .I2(stage_2_frame_err_r_reg[0]),
        .I3(Q[1]),
        .I4(stage_1_in_frame_r[0]),
        .I5(stage_2_frame_err_r_reg[1]),
        .O(\stage_1_ecp_r_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_start_with_data_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(stage_1_data_v_r[1]),
        .I2(stage_1_after_scp_r[0]),
        .I3(stage_1_data_v_r[0]),
        .O(\AFTER_SCP_Buffer_reg[1]_0 ));
endmodule

module aurora_8b10b_RX_LL_NFC
   (\nfc_counter_r_reg[0]_0 ,
    stage_1_load_nfc_r_reg_0,
    user_clk,
    SR,
    \nfc_lane_index_r_reg[1]_0 ,
    tx_dst_rdy,
    D_0,
    D);
  output [0:0]\nfc_counter_r_reg[0]_0 ;
  input stage_1_load_nfc_r_reg_0;
  input user_clk;
  input [0:0]SR;
  input [0:0]\nfc_lane_index_r_reg[1]_0 ;
  input tx_dst_rdy;
  input D_0;
  input [7:0]D;

  wire [7:0]D;
  wire D_0;
  wire [0:0]SR;
  wire [0:7]channel_fcnb_r;
  wire [0:3]fcnb_r;
  wire \fcnb_r[0]_i_1_n_0 ;
  wire \fcnb_r[1]_i_1_n_0 ;
  wire \fcnb_r[2]_i_1_n_0 ;
  wire \fcnb_r[3]_i_1_n_0 ;
  wire load_nfc_r;
  wire \nfc_counter_r[0]_i_1_n_0 ;
  wire \nfc_counter_r[0]_i_3_n_0 ;
  wire \nfc_counter_r[1]_i_2_n_0 ;
  wire \nfc_counter_r[1]_i_3_n_0 ;
  wire \nfc_counter_r[2]_i_2_n_0 ;
  wire \nfc_counter_r[3]_i_2_n_0 ;
  wire \nfc_counter_r[4]_i_2_n_0 ;
  wire \nfc_counter_r[4]_i_3_n_0 ;
  wire \nfc_counter_r[5]_i_2_n_0 ;
  wire \nfc_counter_r[6]_i_2_n_0 ;
  wire \nfc_counter_r[7]_i_2_n_0 ;
  wire [0:0]\nfc_counter_r_reg[0]_0 ;
  wire \nfc_counter_r_reg_n_0_[1] ;
  wire \nfc_counter_r_reg_n_0_[2] ;
  wire \nfc_counter_r_reg_n_0_[3] ;
  wire \nfc_counter_r_reg_n_0_[4] ;
  wire \nfc_counter_r_reg_n_0_[5] ;
  wire \nfc_counter_r_reg_n_0_[6] ;
  wire \nfc_counter_r_reg_n_0_[7] ;
  wire \nfc_counter_r_reg_n_0_[8] ;
  wire [0:0]nfc_lane_index_r;
  wire [0:0]\nfc_lane_index_r_reg[1]_0 ;
  wire [8:0]p_0_in;
  wire stage_1_load_nfc_r;
  wire stage_1_load_nfc_r_reg_0;
  wire tx_dst_rdy;
  wire user_clk;
  wire xoff_r;
  wire xoff_r_i_1_n_0;

  FDRE \channel_fcnb_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(channel_fcnb_r[0]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(channel_fcnb_r[1]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(channel_fcnb_r[2]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(channel_fcnb_r[3]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(channel_fcnb_r[4]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(channel_fcnb_r[5]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(channel_fcnb_r[6]),
        .R(1'b0));
  FDRE \channel_fcnb_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(channel_fcnb_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fcnb_r[0]_i_1 
       (.I0(channel_fcnb_r[4]),
        .I1(nfc_lane_index_r),
        .I2(channel_fcnb_r[0]),
        .O(\fcnb_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fcnb_r[1]_i_1 
       (.I0(channel_fcnb_r[5]),
        .I1(nfc_lane_index_r),
        .I2(channel_fcnb_r[1]),
        .O(\fcnb_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fcnb_r[2]_i_1 
       (.I0(channel_fcnb_r[6]),
        .I1(nfc_lane_index_r),
        .I2(channel_fcnb_r[2]),
        .O(\fcnb_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fcnb_r[3]_i_1 
       (.I0(channel_fcnb_r[7]),
        .I1(nfc_lane_index_r),
        .I2(channel_fcnb_r[3]),
        .O(\fcnb_r[3]_i_1_n_0 ));
  FDRE \fcnb_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fcnb_r[0]_i_1_n_0 ),
        .Q(fcnb_r[0]),
        .R(SR));
  FDRE \fcnb_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fcnb_r[1]_i_1_n_0 ),
        .Q(fcnb_r[1]),
        .R(SR));
  FDRE \fcnb_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fcnb_r[2]_i_1_n_0 ),
        .Q(fcnb_r[2]),
        .R(SR));
  FDRE \fcnb_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fcnb_r[3]_i_1_n_0 ),
        .Q(fcnb_r[3]),
        .R(SR));
  FDRE load_nfc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_load_nfc_r),
        .Q(load_nfc_r),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \nfc_counter_r[0]_i_1 
       (.I0(load_nfc_r),
        .I1(xoff_r),
        .I2(tx_dst_rdy),
        .I3(D_0),
        .I4(\nfc_counter_r_reg[0]_0 ),
        .O(\nfc_counter_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AA9FFFF2AA90000)) 
    \nfc_counter_r[0]_i_2 
       (.I0(fcnb_r[0]),
        .I1(fcnb_r[1]),
        .I2(fcnb_r[3]),
        .I3(fcnb_r[2]),
        .I4(load_nfc_r),
        .I5(\nfc_counter_r[0]_i_3_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \nfc_counter_r[0]_i_3 
       (.I0(\nfc_counter_r_reg[0]_0 ),
        .I1(\nfc_counter_r_reg_n_0_[2] ),
        .I2(\nfc_counter_r_reg_n_0_[4] ),
        .I3(\nfc_counter_r[4]_i_3_n_0 ),
        .I4(\nfc_counter_r_reg_n_0_[3] ),
        .I5(\nfc_counter_r_reg_n_0_[1] ),
        .O(\nfc_counter_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h101F1F101F101F10)) 
    \nfc_counter_r[1]_i_1 
       (.I0(fcnb_r[0]),
        .I1(\nfc_counter_r[1]_i_2_n_0 ),
        .I2(load_nfc_r),
        .I3(\nfc_counter_r_reg_n_0_[1] ),
        .I4(\nfc_counter_r[1]_i_3_n_0 ),
        .I5(\nfc_counter_r_reg_n_0_[2] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \nfc_counter_r[1]_i_2 
       (.I0(fcnb_r[1]),
        .I1(fcnb_r[3]),
        .I2(fcnb_r[2]),
        .O(\nfc_counter_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \nfc_counter_r[1]_i_3 
       (.I0(\nfc_counter_r_reg_n_0_[3] ),
        .I1(\nfc_counter_r_reg_n_0_[5] ),
        .I2(\nfc_counter_r_reg_n_0_[6] ),
        .I3(\nfc_counter_r_reg_n_0_[8] ),
        .I4(\nfc_counter_r_reg_n_0_[7] ),
        .I5(\nfc_counter_r_reg_n_0_[4] ),
        .O(\nfc_counter_r[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h202F2F20)) 
    \nfc_counter_r[2]_i_1 
       (.I0(\nfc_counter_r[2]_i_2_n_0 ),
        .I1(fcnb_r[0]),
        .I2(load_nfc_r),
        .I3(\nfc_counter_r_reg_n_0_[2] ),
        .I4(\nfc_counter_r[1]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \nfc_counter_r[2]_i_2 
       (.I0(fcnb_r[2]),
        .I1(fcnb_r[3]),
        .I2(fcnb_r[1]),
        .O(\nfc_counter_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1514FFFF15140000)) 
    \nfc_counter_r[3]_i_1 
       (.I0(fcnb_r[0]),
        .I1(fcnb_r[1]),
        .I2(fcnb_r[2]),
        .I3(fcnb_r[3]),
        .I4(load_nfc_r),
        .I5(\nfc_counter_r[3]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \nfc_counter_r[3]_i_2 
       (.I0(\nfc_counter_r_reg_n_0_[3] ),
        .I1(\nfc_counter_r_reg_n_0_[5] ),
        .I2(\nfc_counter_r_reg_n_0_[6] ),
        .I3(\nfc_counter_r_reg_n_0_[8] ),
        .I4(\nfc_counter_r_reg_n_0_[7] ),
        .I5(\nfc_counter_r_reg_n_0_[4] ),
        .O(\nfc_counter_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h140014FF14FF1400)) 
    \nfc_counter_r[4]_i_1 
       (.I0(fcnb_r[0]),
        .I1(\nfc_counter_r[4]_i_2_n_0 ),
        .I2(fcnb_r[1]),
        .I3(load_nfc_r),
        .I4(\nfc_counter_r_reg_n_0_[4] ),
        .I5(\nfc_counter_r[4]_i_3_n_0 ),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \nfc_counter_r[4]_i_2 
       (.I0(fcnb_r[2]),
        .I1(fcnb_r[3]),
        .O(\nfc_counter_r[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \nfc_counter_r[4]_i_3 
       (.I0(\nfc_counter_r_reg_n_0_[5] ),
        .I1(\nfc_counter_r_reg_n_0_[6] ),
        .I2(\nfc_counter_r_reg_n_0_[8] ),
        .I3(\nfc_counter_r_reg_n_0_[7] ),
        .O(\nfc_counter_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04FF0400040004FF)) 
    \nfc_counter_r[5]_i_1 
       (.I0(fcnb_r[0]),
        .I1(\nfc_counter_r[4]_i_2_n_0 ),
        .I2(fcnb_r[1]),
        .I3(load_nfc_r),
        .I4(\nfc_counter_r[5]_i_2_n_0 ),
        .I5(\nfc_counter_r_reg_n_0_[5] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \nfc_counter_r[5]_i_2 
       (.I0(\nfc_counter_r_reg_n_0_[7] ),
        .I1(\nfc_counter_r_reg_n_0_[8] ),
        .I2(\nfc_counter_r_reg_n_0_[6] ),
        .O(\nfc_counter_r[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \nfc_counter_r[6]_i_1 
       (.I0(\nfc_counter_r[6]_i_2_n_0 ),
        .I1(load_nfc_r),
        .I2(\nfc_counter_r_reg_n_0_[6] ),
        .I3(\nfc_counter_r_reg_n_0_[8] ),
        .I4(\nfc_counter_r_reg_n_0_[7] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \nfc_counter_r[6]_i_2 
       (.I0(fcnb_r[0]),
        .I1(fcnb_r[2]),
        .I2(fcnb_r[3]),
        .I3(fcnb_r[1]),
        .O(\nfc_counter_r[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \nfc_counter_r[7]_i_1 
       (.I0(\nfc_counter_r[7]_i_2_n_0 ),
        .I1(load_nfc_r),
        .I2(\nfc_counter_r_reg_n_0_[8] ),
        .I3(\nfc_counter_r_reg_n_0_[7] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \nfc_counter_r[7]_i_2 
       (.I0(fcnb_r[0]),
        .I1(fcnb_r[2]),
        .I2(fcnb_r[3]),
        .I3(fcnb_r[1]),
        .O(\nfc_counter_r[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \nfc_counter_r[8]_i_1 
       (.I0(load_nfc_r),
        .I1(\nfc_counter_r_reg_n_0_[8] ),
        .O(p_0_in[0]));
  FDSE \nfc_counter_r_reg[0] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(\nfc_counter_r_reg[0]_0 ),
        .S(SR));
  FDRE \nfc_counter_r_reg[1] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\nfc_counter_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[2] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\nfc_counter_r_reg_n_0_[2] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[3] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\nfc_counter_r_reg_n_0_[3] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[4] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\nfc_counter_r_reg_n_0_[4] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[5] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\nfc_counter_r_reg_n_0_[5] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[6] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\nfc_counter_r_reg_n_0_[6] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[7] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\nfc_counter_r_reg_n_0_[7] ),
        .R(SR));
  FDRE \nfc_counter_r_reg[8] 
       (.C(user_clk),
        .CE(\nfc_counter_r[0]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\nfc_counter_r_reg_n_0_[8] ),
        .R(SR));
  FDRE \nfc_lane_index_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\nfc_lane_index_r_reg[1]_0 ),
        .Q(nfc_lane_index_r),
        .R(1'b0));
  FDRE stage_1_load_nfc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_load_nfc_r_reg_0),
        .Q(stage_1_load_nfc_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    xoff_r_i_1
       (.I0(fcnb_r[2]),
        .I1(fcnb_r[3]),
        .I2(fcnb_r[1]),
        .I3(fcnb_r[0]),
        .I4(load_nfc_r),
        .I5(xoff_r),
        .O(xoff_r_i_1_n_0));
  FDRE xoff_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(xoff_r_i_1_n_0),
        .Q(xoff_r),
        .R(SR));
endmodule

module aurora_8b10b_RX_LL_PDU_DATAPATH
   (rx_eof,
    FRAME_ERR,
    \stage_1_data_r_reg[0]_0 ,
    M_AXI_RX_TLAST,
    M_AXI_RX_TVALID,
    \RX_REM_Buffer_reg[0]_0 ,
    \MUXED_DATA_Buffer_reg[0] ,
    STORAGE_SELECT_Buffer,
    M_AXI_RX_TDATA,
    in_frame_muxcy_0,
    D,
    in_frame_muxcy_1,
    S1_in,
    data_after_start_muxcy_1,
    SR,
    user_clk,
    stage_1_pad_r_reg_0,
    \stage_1_data_r_reg[0]_1 ,
    \stage_1_data_r_reg[1]_0 ,
    \stage_1_data_r_reg[2]_0 ,
    \stage_1_data_r_reg[3]_0 ,
    \stage_1_data_r_reg[4]_0 ,
    \stage_1_data_r_reg[5]_0 ,
    \stage_1_data_r_reg[6]_0 ,
    \stage_1_data_r_reg[7]_0 ,
    \stage_1_data_r_reg[8]_0 ,
    \stage_1_data_r_reg[9]_0 ,
    \stage_1_data_r_reg[10]_0 ,
    \stage_1_data_r_reg[11]_0 ,
    \stage_1_data_r_reg[12]_0 ,
    \stage_1_data_r_reg[13]_0 ,
    \stage_1_data_r_reg[14]_0 ,
    \stage_1_data_r_reg[15]_0 ,
    \stage_1_data_r_reg[16]_0 ,
    \stage_1_data_r_reg[17]_0 ,
    \stage_1_data_r_reg[18]_0 ,
    \stage_1_data_r_reg[19]_0 ,
    \stage_1_data_r_reg[20]_0 ,
    \stage_1_data_r_reg[21]_0 ,
    \stage_1_data_r_reg[22]_0 ,
    \stage_1_data_r_reg[23]_0 ,
    \stage_1_data_r_reg[24]_0 ,
    \stage_1_data_r_reg[25]_0 ,
    \stage_1_data_r_reg[26]_0 ,
    \stage_1_data_r_reg[27]_0 ,
    \stage_1_data_r_reg[28]_0 ,
    \stage_1_data_r_reg[29]_0 ,
    \stage_1_data_r_reg[30]_0 ,
    \stage_1_data_r_reg[31]_0 ,
    start_rx_i,
    Q,
    \stage_1_ecp_r_reg[0]_0 ,
    \STORAGE_DATA_Buffer_reg[0] );
  output rx_eof;
  output FRAME_ERR;
  output [31:0]\stage_1_data_r_reg[0]_0 ;
  output M_AXI_RX_TLAST;
  output M_AXI_RX_TVALID;
  output [1:0]\RX_REM_Buffer_reg[0]_0 ;
  output [31:0]\MUXED_DATA_Buffer_reg[0] ;
  output [1:0]STORAGE_SELECT_Buffer;
  output [0:31]M_AXI_RX_TDATA;
  input in_frame_muxcy_0;
  input [1:0]D;
  input in_frame_muxcy_1;
  input S1_in;
  input data_after_start_muxcy_1;
  input [0:0]SR;
  input user_clk;
  input stage_1_pad_r_reg_0;
  input \stage_1_data_r_reg[0]_1 ;
  input \stage_1_data_r_reg[1]_0 ;
  input \stage_1_data_r_reg[2]_0 ;
  input \stage_1_data_r_reg[3]_0 ;
  input \stage_1_data_r_reg[4]_0 ;
  input \stage_1_data_r_reg[5]_0 ;
  input \stage_1_data_r_reg[6]_0 ;
  input \stage_1_data_r_reg[7]_0 ;
  input \stage_1_data_r_reg[8]_0 ;
  input \stage_1_data_r_reg[9]_0 ;
  input \stage_1_data_r_reg[10]_0 ;
  input \stage_1_data_r_reg[11]_0 ;
  input \stage_1_data_r_reg[12]_0 ;
  input \stage_1_data_r_reg[13]_0 ;
  input \stage_1_data_r_reg[14]_0 ;
  input \stage_1_data_r_reg[15]_0 ;
  input \stage_1_data_r_reg[16]_0 ;
  input \stage_1_data_r_reg[17]_0 ;
  input \stage_1_data_r_reg[18]_0 ;
  input \stage_1_data_r_reg[19]_0 ;
  input \stage_1_data_r_reg[20]_0 ;
  input \stage_1_data_r_reg[21]_0 ;
  input \stage_1_data_r_reg[22]_0 ;
  input \stage_1_data_r_reg[23]_0 ;
  input \stage_1_data_r_reg[24]_0 ;
  input \stage_1_data_r_reg[25]_0 ;
  input \stage_1_data_r_reg[26]_0 ;
  input \stage_1_data_r_reg[27]_0 ;
  input \stage_1_data_r_reg[28]_0 ;
  input \stage_1_data_r_reg[29]_0 ;
  input \stage_1_data_r_reg[30]_0 ;
  input \stage_1_data_r_reg[31]_0 ;
  input start_rx_i;
  input [1:0]Q;
  input [1:0]\stage_1_ecp_r_reg[0]_0 ;
  input [31:0]\STORAGE_DATA_Buffer_reg[0] ;

  wire [1:0]D;
  wire EOF_N_Buffer;
  wire FRAME_ERR;
  wire FRAME_ERR_RESULT_Buffer;
  wire FRAME_ERR_RESULT_Buffer0;
  wire [31:0]\MUXED_DATA_Buffer_reg[0] ;
  wire [2:2]MUX_SELECT;
  wire [0:31]M_AXI_RX_TDATA;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire [0:0]OUTPUT_SELECT_Buffer;
  wire [1:0]Q;
  wire [0:1]RX_REM_Buffer;
  wire [1:0]\RX_REM_Buffer_reg[0]_0 ;
  wire S1_in;
  wire [0:0]SR;
  wire SRC_RDY_N_Buffer;
  wire [0:31]STORAGE_DATA;
  wire [31:0]\STORAGE_DATA_Buffer_reg[0] ;
  wire [1:0]STORAGE_SELECT_Buffer;
  wire [0:1]ce_command_c;
  wire data_after_start_muxcy_1;
  wire end_storage_r0;
  wire in_frame_muxcy_0;
  wire in_frame_muxcy_1;
  wire [2:2]mux_select_c;
  wire [9:9]output_select_c;
  wire p_0_in0;
  wire [1:0]plusOp;
  wire rx_eof;
  wire [1:1]rx_rem_c;
  wire rx_src_rdy;
  wire sideband_output_i_n_1;
  wire [31:0]\stage_1_data_r_reg[0]_0 ;
  wire \stage_1_data_r_reg[0]_1 ;
  wire \stage_1_data_r_reg[10]_0 ;
  wire \stage_1_data_r_reg[11]_0 ;
  wire \stage_1_data_r_reg[12]_0 ;
  wire \stage_1_data_r_reg[13]_0 ;
  wire \stage_1_data_r_reg[14]_0 ;
  wire \stage_1_data_r_reg[15]_0 ;
  wire \stage_1_data_r_reg[16]_0 ;
  wire \stage_1_data_r_reg[17]_0 ;
  wire \stage_1_data_r_reg[18]_0 ;
  wire \stage_1_data_r_reg[19]_0 ;
  wire \stage_1_data_r_reg[1]_0 ;
  wire \stage_1_data_r_reg[20]_0 ;
  wire \stage_1_data_r_reg[21]_0 ;
  wire \stage_1_data_r_reg[22]_0 ;
  wire \stage_1_data_r_reg[23]_0 ;
  wire \stage_1_data_r_reg[24]_0 ;
  wire \stage_1_data_r_reg[25]_0 ;
  wire \stage_1_data_r_reg[26]_0 ;
  wire \stage_1_data_r_reg[27]_0 ;
  wire \stage_1_data_r_reg[28]_0 ;
  wire \stage_1_data_r_reg[29]_0 ;
  wire \stage_1_data_r_reg[2]_0 ;
  wire \stage_1_data_r_reg[30]_0 ;
  wire \stage_1_data_r_reg[31]_0 ;
  wire \stage_1_data_r_reg[3]_0 ;
  wire \stage_1_data_r_reg[4]_0 ;
  wire \stage_1_data_r_reg[5]_0 ;
  wire \stage_1_data_r_reg[6]_0 ;
  wire \stage_1_data_r_reg[7]_0 ;
  wire \stage_1_data_r_reg[8]_0 ;
  wire \stage_1_data_r_reg[9]_0 ;
  wire [0:1]stage_1_ecp_r;
  wire [1:0]\stage_1_ecp_r_reg[0]_0 ;
  wire stage_1_pad_r;
  wire stage_1_pad_r_reg_0;
  wire stage_1_rx_ll_deframer_i_n_1;
  wire stage_1_rx_ll_deframer_i_n_2;
  wire stage_1_rx_ll_deframer_i_n_3;
  wire stage_1_rx_ll_deframer_i_n_6;
  wire [0:1]stage_1_scp_r;
  wire [0:31]stage_2_data_r;
  wire [1:1]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_2_valid_data_counter_i_n_2;
  wire stage_2_valid_data_counter_i_n_5;
  wire stage_3_end_storage_r;
  wire stage_3_storage_ce_control_i_n_1;
  wire stage_3_storage_count_control_i_n_2;
  wire stage_3_storage_count_control_i_n_3;
  wire [0:1]stage_3_storage_count_r;
  wire start_rx_i;
  wire user_clk;

  FDRE FRAME_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT_Buffer),
        .Q(FRAME_ERR),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_RX_TLAST_INST_0
       (.I0(rx_eof),
        .O(M_AXI_RX_TLAST));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_RX_TVALID_INST_0
       (.I0(rx_src_rdy),
        .O(M_AXI_RX_TVALID));
  FDRE RX_EOF_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N_Buffer),
        .Q(rx_eof),
        .R(1'b0));
  FDRE \RX_REM_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_REM_Buffer[0]),
        .Q(\RX_REM_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_REM_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_REM_Buffer[1]),
        .Q(\RX_REM_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDSE RX_SRC_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N_Buffer),
        .Q(rx_src_rdy),
        .S(SR));
  aurora_8b10b_OUTPUT_MUX output_mux_i
       (.M_AXI_RX_TDATA(M_AXI_RX_TDATA),
        .\OUTPUT_DATA_Buffer_reg[16]_0 (\MUXED_DATA_Buffer_reg[0] [31:16]),
        .OUTPUT_SELECT_Buffer(OUTPUT_SELECT_Buffer),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .user_clk(user_clk));
  aurora_8b10b_SIDEBAND_OUTPUT sideband_output_i
       (.D(rx_rem_c),
        .EOF_N_Buffer(EOF_N_Buffer),
        .EOF_N_Buffer_reg_0(stage_3_storage_count_control_i_n_2),
        .FRAME_ERR_RESULT_Buffer(FRAME_ERR_RESULT_Buffer),
        .FRAME_ERR_RESULT_Buffer0(FRAME_ERR_RESULT_Buffer0),
        .Q(stage_3_storage_count_r[0]),
        .\RX_REM_Buffer_reg[0]_0 ({RX_REM_Buffer[0],RX_REM_Buffer[1]}),
        .SRC_RDY_N_Buffer(SRC_RDY_N_Buffer),
        .end_storage_r0(end_storage_r0),
        .output_select_c(output_select_c),
        .pad_storage_r_reg_0(stage_2_valid_data_counter_i_n_5),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_frame_err_r_reg(sideband_output_i_n_1),
        .stage_2_pad_r(stage_2_pad_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  FDRE \stage_1_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_1 ),
        .Q(\stage_1_data_r_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[10]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[11]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[12]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[13]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[14]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[15]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[16]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[17]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[18]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[19]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[1]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[20]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[21]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[22]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[23]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[24]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[25]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[26]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[27]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[28]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[29]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[2]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[30]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[31]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[3]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[4]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[5]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[6]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[7]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[8]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[9]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \stage_1_ecp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [1]),
        .Q(stage_1_ecp_r[0]),
        .R(1'b0));
  FDRE \stage_1_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [0]),
        .Q(stage_1_ecp_r[1]),
        .R(1'b0));
  FDRE stage_1_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r_reg_0),
        .Q(stage_1_pad_r),
        .R(1'b0));
  aurora_8b10b_RX_LL_DEFRAMER stage_1_rx_ll_deframer_i
       (.\AFTER_SCP_Buffer_reg[1]_0 (stage_1_rx_ll_deframer_i_n_1),
        .\AFTER_SCP_Buffer_reg[1]_1 (stage_1_rx_ll_deframer_i_n_2),
        .D(D),
        .\DEFRAMED_DATA_V_Buffer_reg[0]_0 (plusOp),
        .\DEFRAMED_DATA_V_Buffer_reg[0]_1 (Q),
        .Q({stage_1_ecp_r[0],stage_1_ecp_r[1]}),
        .S1_in(S1_in),
        .SR(SR),
        .data_after_start_muxcy_1_0(data_after_start_muxcy_1),
        .in_frame_muxcy_0_0(in_frame_muxcy_0),
        .in_frame_muxcy_1_0(in_frame_muxcy_1),
        .mux_select_c(mux_select_c),
        .\stage_1_ecp_r_reg[1] (stage_1_rx_ll_deframer_i_n_3),
        .\stage_1_ecp_r_reg[1]_0 (stage_1_rx_ll_deframer_i_n_6),
        .stage_2_frame_err_r_reg({stage_1_scp_r[0],stage_1_scp_r[1]}),
        .user_clk(user_clk));
  FDRE \stage_1_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(stage_1_scp_r[0]),
        .R(1'b0));
  FDRE \stage_1_scp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(stage_1_scp_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [31]),
        .Q(stage_2_data_r[0]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [21]),
        .Q(stage_2_data_r[10]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [20]),
        .Q(stage_2_data_r[11]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [19]),
        .Q(stage_2_data_r[12]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [18]),
        .Q(stage_2_data_r[13]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [17]),
        .Q(stage_2_data_r[14]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [16]),
        .Q(stage_2_data_r[15]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [15]),
        .Q(stage_2_data_r[16]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [14]),
        .Q(stage_2_data_r[17]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [13]),
        .Q(stage_2_data_r[18]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [12]),
        .Q(stage_2_data_r[19]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [30]),
        .Q(stage_2_data_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [11]),
        .Q(stage_2_data_r[20]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [10]),
        .Q(stage_2_data_r[21]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [9]),
        .Q(stage_2_data_r[22]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [8]),
        .Q(stage_2_data_r[23]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [7]),
        .Q(stage_2_data_r[24]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [6]),
        .Q(stage_2_data_r[25]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [5]),
        .Q(stage_2_data_r[26]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [4]),
        .Q(stage_2_data_r[27]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [3]),
        .Q(stage_2_data_r[28]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [2]),
        .Q(stage_2_data_r[29]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [29]),
        .Q(stage_2_data_r[2]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [1]),
        .Q(stage_2_data_r[30]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [0]),
        .Q(stage_2_data_r[31]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [28]),
        .Q(stage_2_data_r[3]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [27]),
        .Q(stage_2_data_r[4]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [26]),
        .Q(stage_2_data_r[5]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [25]),
        .Q(stage_2_data_r[6]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [24]),
        .Q(stage_2_data_r[7]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [23]),
        .Q(stage_2_data_r[8]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [22]),
        .Q(stage_2_data_r[9]),
        .R(1'b0));
  FDRE stage_2_end_after_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_3),
        .Q(stage_2_end_after_start_r),
        .R(SR));
  FDRE stage_2_end_before_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_2),
        .Q(stage_2_end_before_start_r),
        .R(SR));
  FDRE stage_2_frame_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_6),
        .Q(stage_2_frame_err_r),
        .R(SR));
  aurora_8b10b_LEFT_ALIGN_CONTROL stage_2_left_align_control_i
       (.MUX_SELECT(MUX_SELECT),
        .mux_select_c(mux_select_c),
        .user_clk(user_clk));
  FDRE stage_2_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r),
        .Q(stage_2_pad_r),
        .R(1'b0));
  FDRE stage_2_start_with_data_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_1),
        .Q(stage_2_start_with_data_r),
        .R(SR));
  aurora_8b10b_VALID_DATA_COUNTER_25 stage_2_valid_data_counter_i
       (.\COUNT_Buffer_reg[0]_0 (stage_2_valid_data_counter_i_n_2),
        .\COUNT_Buffer_reg[0]_1 ({ce_command_c[0],ce_command_c[1]}),
        .\COUNT_Buffer_reg[0]_2 (plusOp),
        .D(rx_rem_c),
        .FRAME_ERR_RESULT_Buffer0(FRAME_ERR_RESULT_Buffer0),
        .FRAME_ERR_RESULT_Buffer_reg(stage_3_storage_count_control_i_n_3),
        .Q(stage_2_data_v_count_r),
        .SR(SR),
        .end_storage_r0(end_storage_r0),
        .end_storage_r_reg(stage_2_valid_data_counter_i_n_5),
        .stage_2_end_after_start_r(stage_2_end_after_start_r),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .\storage_count_r_reg[0] ({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .user_clk(user_clk));
  aurora_8b10b_LEFT_ALIGN_MUX stage_3_left_align_datapath_mux_i
       (.\MUXED_DATA_Buffer_reg[0]_0 (\MUXED_DATA_Buffer_reg[0] ),
        .MUX_SELECT(MUX_SELECT),
        .Q({stage_2_data_r[0],stage_2_data_r[1],stage_2_data_r[2],stage_2_data_r[3],stage_2_data_r[4],stage_2_data_r[5],stage_2_data_r[6],stage_2_data_r[7],stage_2_data_r[8],stage_2_data_r[9],stage_2_data_r[10],stage_2_data_r[11],stage_2_data_r[12],stage_2_data_r[13],stage_2_data_r[14],stage_2_data_r[15],stage_2_data_r[16],stage_2_data_r[17],stage_2_data_r[18],stage_2_data_r[19],stage_2_data_r[20],stage_2_data_r[21],stage_2_data_r[22],stage_2_data_r[23],stage_2_data_r[24],stage_2_data_r[25],stage_2_data_r[26],stage_2_data_r[27],stage_2_data_r[28],stage_2_data_r[29],stage_2_data_r[30],stage_2_data_r[31]}),
        .user_clk(user_clk));
  aurora_8b10b_OUTPUT_SWITCH_CONTROL stage_3_output_switch_control_i
       (.OUTPUT_SELECT_Buffer(OUTPUT_SELECT_Buffer),
        .output_select_c(output_select_c),
        .user_clk(user_clk));
  aurora_8b10b_STORAGE_CE_CONTROL stage_3_storage_ce_control_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .Q({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .SR(SR),
        .user_clk(user_clk));
  aurora_8b10b_STORAGE_COUNT_CONTROL stage_3_storage_count_control_i
       (.D(stage_2_valid_data_counter_i_n_2),
        .Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .SR(sideband_output_i_n_1),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_2_start_with_data_r_reg(stage_3_storage_count_control_i_n_2),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .\storage_count_r_reg[0]_0 (stage_3_storage_count_control_i_n_3),
        .\storage_count_r_reg[1]_0 (stage_2_data_v_count_r),
        .user_clk(user_clk));
  aurora_8b10b_STORAGE_SWITCH_CONTROL stage_3_storage_switch_control_i
       (.Q(stage_3_storage_count_r[1]),
        .STORAGE_SELECT_Buffer(STORAGE_SELECT_Buffer),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
  aurora_8b10b_STORAGE_MUX stage_4_storage_mux_i
       (.E({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .\STORAGE_DATA_Buffer_reg[0]_0 (\STORAGE_DATA_Buffer_reg[0] ),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_RX_LL_UFC_DATAPATH
   (\UFC_OUTPUT_SELECT_Buffer_reg[5] ,
    \SHIFTED_DATA_Buffer_reg[0] ,
    \MUXED_DATA_Buffer_reg[16] ,
    \MUXED_DATA_Buffer_reg[17] ,
    \MUXED_DATA_Buffer_reg[18] ,
    \MUXED_DATA_Buffer_reg[19] ,
    \MUXED_DATA_Buffer_reg[20] ,
    \MUXED_DATA_Buffer_reg[21] ,
    \MUXED_DATA_Buffer_reg[22] ,
    \MUXED_DATA_Buffer_reg[23] ,
    \MUXED_DATA_Buffer_reg[24] ,
    \MUXED_DATA_Buffer_reg[25] ,
    \MUXED_DATA_Buffer_reg[26] ,
    \MUXED_DATA_Buffer_reg[27] ,
    \MUXED_DATA_Buffer_reg[28] ,
    \MUXED_DATA_Buffer_reg[29] ,
    \MUXED_DATA_Buffer_reg[30] ,
    \MUXED_DATA_Buffer_reg[31] ,
    M_AXI_UFC_RX_TDATA,
    M_AXI_UFC_RX_TKEEP,
    M_AXI_UFC_RX_TLAST,
    M_AXI_UFC_RX_TVALID,
    SR,
    UFC_START,
    user_clk,
    barrel_shifter_control_i,
    Q,
    \SHIFTED_DATA_Buffer_reg[0]_0 ,
    \MUXED_DATA_Buffer_reg[16]_0 ,
    \MUXED_DATA_Buffer_reg[17]_0 ,
    \MUXED_DATA_Buffer_reg[18]_0 ,
    \MUXED_DATA_Buffer_reg[19]_0 ,
    \MUXED_DATA_Buffer_reg[20]_0 ,
    \MUXED_DATA_Buffer_reg[21]_0 ,
    \MUXED_DATA_Buffer_reg[22]_0 ,
    \MUXED_DATA_Buffer_reg[23]_0 ,
    \MUXED_DATA_Buffer_reg[24]_0 ,
    \MUXED_DATA_Buffer_reg[25]_0 ,
    \MUXED_DATA_Buffer_reg[26]_0 ,
    \MUXED_DATA_Buffer_reg[27]_0 ,
    \MUXED_DATA_Buffer_reg[28]_0 ,
    \MUXED_DATA_Buffer_reg[29]_0 ,
    \MUXED_DATA_Buffer_reg[30]_0 ,
    \MUXED_DATA_Buffer_reg[31]_0 );
  output [0:0]\UFC_OUTPUT_SELECT_Buffer_reg[5] ;
  output [15:0]\SHIFTED_DATA_Buffer_reg[0] ;
  output \MUXED_DATA_Buffer_reg[16] ;
  output \MUXED_DATA_Buffer_reg[17] ;
  output \MUXED_DATA_Buffer_reg[18] ;
  output \MUXED_DATA_Buffer_reg[19] ;
  output \MUXED_DATA_Buffer_reg[20] ;
  output \MUXED_DATA_Buffer_reg[21] ;
  output \MUXED_DATA_Buffer_reg[22] ;
  output \MUXED_DATA_Buffer_reg[23] ;
  output \MUXED_DATA_Buffer_reg[24] ;
  output \MUXED_DATA_Buffer_reg[25] ;
  output \MUXED_DATA_Buffer_reg[26] ;
  output \MUXED_DATA_Buffer_reg[27] ;
  output \MUXED_DATA_Buffer_reg[28] ;
  output \MUXED_DATA_Buffer_reg[29] ;
  output \MUXED_DATA_Buffer_reg[30] ;
  output \MUXED_DATA_Buffer_reg[31] ;
  output [0:31]M_AXI_UFC_RX_TDATA;
  output [0:0]M_AXI_UFC_RX_TKEEP;
  output M_AXI_UFC_RX_TLAST;
  output M_AXI_UFC_RX_TVALID;
  input [0:0]SR;
  input UFC_START;
  input user_clk;
  input barrel_shifter_control_i;
  input [1:0]Q;
  input [31:0]\SHIFTED_DATA_Buffer_reg[0]_0 ;
  input \MUXED_DATA_Buffer_reg[16]_0 ;
  input \MUXED_DATA_Buffer_reg[17]_0 ;
  input \MUXED_DATA_Buffer_reg[18]_0 ;
  input \MUXED_DATA_Buffer_reg[19]_0 ;
  input \MUXED_DATA_Buffer_reg[20]_0 ;
  input \MUXED_DATA_Buffer_reg[21]_0 ;
  input \MUXED_DATA_Buffer_reg[22]_0 ;
  input \MUXED_DATA_Buffer_reg[23]_0 ;
  input \MUXED_DATA_Buffer_reg[24]_0 ;
  input \MUXED_DATA_Buffer_reg[25]_0 ;
  input \MUXED_DATA_Buffer_reg[26]_0 ;
  input \MUXED_DATA_Buffer_reg[27]_0 ;
  input \MUXED_DATA_Buffer_reg[28]_0 ;
  input \MUXED_DATA_Buffer_reg[29]_0 ;
  input \MUXED_DATA_Buffer_reg[30]_0 ;
  input \MUXED_DATA_Buffer_reg[31]_0 ;

  wire BARREL_SHIFTER_CONTROL_Buffer;
  wire \MUXED_DATA_Buffer_reg[16] ;
  wire \MUXED_DATA_Buffer_reg[16]_0 ;
  wire \MUXED_DATA_Buffer_reg[17] ;
  wire \MUXED_DATA_Buffer_reg[17]_0 ;
  wire \MUXED_DATA_Buffer_reg[18] ;
  wire \MUXED_DATA_Buffer_reg[18]_0 ;
  wire \MUXED_DATA_Buffer_reg[19] ;
  wire \MUXED_DATA_Buffer_reg[19]_0 ;
  wire \MUXED_DATA_Buffer_reg[20] ;
  wire \MUXED_DATA_Buffer_reg[20]_0 ;
  wire \MUXED_DATA_Buffer_reg[21] ;
  wire \MUXED_DATA_Buffer_reg[21]_0 ;
  wire \MUXED_DATA_Buffer_reg[22] ;
  wire \MUXED_DATA_Buffer_reg[22]_0 ;
  wire \MUXED_DATA_Buffer_reg[23] ;
  wire \MUXED_DATA_Buffer_reg[23]_0 ;
  wire \MUXED_DATA_Buffer_reg[24] ;
  wire \MUXED_DATA_Buffer_reg[24]_0 ;
  wire \MUXED_DATA_Buffer_reg[25] ;
  wire \MUXED_DATA_Buffer_reg[25]_0 ;
  wire \MUXED_DATA_Buffer_reg[26] ;
  wire \MUXED_DATA_Buffer_reg[26]_0 ;
  wire \MUXED_DATA_Buffer_reg[27] ;
  wire \MUXED_DATA_Buffer_reg[27]_0 ;
  wire \MUXED_DATA_Buffer_reg[28] ;
  wire \MUXED_DATA_Buffer_reg[28]_0 ;
  wire \MUXED_DATA_Buffer_reg[29] ;
  wire \MUXED_DATA_Buffer_reg[29]_0 ;
  wire \MUXED_DATA_Buffer_reg[30] ;
  wire \MUXED_DATA_Buffer_reg[30]_0 ;
  wire \MUXED_DATA_Buffer_reg[31] ;
  wire \MUXED_DATA_Buffer_reg[31]_0 ;
  wire [0:31]M_AXI_UFC_RX_TDATA;
  wire [0:0]M_AXI_UFC_RX_TKEEP;
  wire M_AXI_UFC_RX_TLAST;
  wire M_AXI_UFC_RX_TVALID;
  wire [1:0]Q;
  wire [16:31]SHIFTED_DATA_Buffer;
  wire [15:0]\SHIFTED_DATA_Buffer_reg[0] ;
  wire [31:0]\SHIFTED_DATA_Buffer_reg[0]_0 ;
  wire [0:0]SR;
  wire UFC_EOF_N_Buffer;
  wire [1:1]UFC_OUTPUT_SELECT_Buffer;
  wire [0:0]\UFC_OUTPUT_SELECT_Buffer_reg[5] ;
  wire UFC_SRC_RDY_N_Buffer;
  wire UFC_START;
  wire [2:5]UFC_STORAGE_SELECT_Buffer;
  wire [0:1]barrel_shifted_count_r;
  wire barrel_shifter_control_i;
  wire rx_ufc_eof;
  wire [0:0]rx_ufc_rem;
  wire rx_ufc_src_rdy;
  wire stage_1_ufc_start_r;
  wire [1:1]storage_count_2x_c;
  wire ufc_sideband_output_i_n_0;
  wire ufc_storage_count_control_i_n_0;
  wire ufc_storage_count_control_i_n_1;
  wire ufc_storage_count_control_i_n_3;
  wire ufc_storage_count_control_i_n_4;
  wire ufc_storage_count_control_i_n_5;
  wire ufc_storage_count_control_i_n_6;
  wire ufc_storage_count_control_i_n_7;
  wire ufc_storage_mux_i_n_0;
  wire ufc_storage_mux_i_n_1;
  wire ufc_storage_mux_i_n_10;
  wire ufc_storage_mux_i_n_11;
  wire ufc_storage_mux_i_n_12;
  wire ufc_storage_mux_i_n_13;
  wire ufc_storage_mux_i_n_14;
  wire ufc_storage_mux_i_n_15;
  wire ufc_storage_mux_i_n_2;
  wire ufc_storage_mux_i_n_3;
  wire ufc_storage_mux_i_n_4;
  wire ufc_storage_mux_i_n_5;
  wire ufc_storage_mux_i_n_6;
  wire ufc_storage_mux_i_n_7;
  wire ufc_storage_mux_i_n_8;
  wire ufc_storage_mux_i_n_9;
  wire \ufc_storage_switch_control_i/_n_0 ;
  wire ufc_storage_switch_control_i_n_0;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \M_AXI_UFC_RX_TKEEP[3]_INST_0 
       (.I0(rx_ufc_eof),
        .I1(rx_ufc_rem),
        .O(M_AXI_UFC_RX_TKEEP));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_UFC_RX_TLAST_INST_0
       (.I0(rx_ufc_eof),
        .O(M_AXI_UFC_RX_TLAST));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_UFC_RX_TVALID_INST_0
       (.I0(rx_ufc_src_rdy),
        .O(M_AXI_UFC_RX_TVALID));
  FDRE UFC_RX_EOF_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_EOF_N_Buffer),
        .Q(rx_ufc_eof),
        .R(1'b0));
  FDRE \UFC_RX_REM_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_sideband_output_i_n_0),
        .Q(rx_ufc_rem),
        .R(1'b0));
  FDSE UFC_RX_SRC_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_SRC_RDY_N_Buffer),
        .Q(rx_ufc_src_rdy),
        .S(SR));
  FDRE stage_1_ufc_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_START),
        .Q(stage_1_ufc_start_r),
        .R(SR));
  aurora_8b10b_UFC_BARREL_SHIFTER_CONTROL ufc_barrel_shifter_control_i
       (.BARREL_SHIFTER_CONTROL_Buffer(BARREL_SHIFTER_CONTROL_Buffer),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .user_clk(user_clk));
  aurora_8b10b_UFC_BARREL_SHIFTER ufc_barrel_shifter_i
       (.BARREL_SHIFTER_CONTROL_Buffer(BARREL_SHIFTER_CONTROL_Buffer),
        .SHIFTED_DATA_Buffer({SHIFTED_DATA_Buffer[16],SHIFTED_DATA_Buffer[17],SHIFTED_DATA_Buffer[18],SHIFTED_DATA_Buffer[19],SHIFTED_DATA_Buffer[20],SHIFTED_DATA_Buffer[21],SHIFTED_DATA_Buffer[22],SHIFTED_DATA_Buffer[23],SHIFTED_DATA_Buffer[24],SHIFTED_DATA_Buffer[25],SHIFTED_DATA_Buffer[26],SHIFTED_DATA_Buffer[27],SHIFTED_DATA_Buffer[28],SHIFTED_DATA_Buffer[29],SHIFTED_DATA_Buffer[30],SHIFTED_DATA_Buffer[31]}),
        .\SHIFTED_DATA_Buffer_reg[0]_0 (\SHIFTED_DATA_Buffer_reg[0] ),
        .\SHIFTED_DATA_Buffer_reg[0]_1 (\SHIFTED_DATA_Buffer_reg[0]_0 ),
        .user_clk(user_clk));
  aurora_8b10b_UFC_OUTPUT_MUX ufc_output_mux_i
       (.D({ufc_storage_mux_i_n_0,ufc_storage_mux_i_n_1,ufc_storage_mux_i_n_2,ufc_storage_mux_i_n_3,ufc_storage_mux_i_n_4,ufc_storage_mux_i_n_5,ufc_storage_mux_i_n_6,ufc_storage_mux_i_n_7,ufc_storage_mux_i_n_8,ufc_storage_mux_i_n_9,ufc_storage_mux_i_n_10,ufc_storage_mux_i_n_11,ufc_storage_mux_i_n_12,ufc_storage_mux_i_n_13,ufc_storage_mux_i_n_14,ufc_storage_mux_i_n_15}),
        .\MUXED_DATA_Buffer_reg[16]_0 (\MUXED_DATA_Buffer_reg[16]_0 ),
        .\MUXED_DATA_Buffer_reg[17]_0 (\MUXED_DATA_Buffer_reg[17]_0 ),
        .\MUXED_DATA_Buffer_reg[18]_0 (\MUXED_DATA_Buffer_reg[18]_0 ),
        .\MUXED_DATA_Buffer_reg[19]_0 (\MUXED_DATA_Buffer_reg[19]_0 ),
        .\MUXED_DATA_Buffer_reg[20]_0 (\MUXED_DATA_Buffer_reg[20]_0 ),
        .\MUXED_DATA_Buffer_reg[21]_0 (\MUXED_DATA_Buffer_reg[21]_0 ),
        .\MUXED_DATA_Buffer_reg[22]_0 (\MUXED_DATA_Buffer_reg[22]_0 ),
        .\MUXED_DATA_Buffer_reg[23]_0 (\MUXED_DATA_Buffer_reg[23]_0 ),
        .\MUXED_DATA_Buffer_reg[24]_0 (\MUXED_DATA_Buffer_reg[24]_0 ),
        .\MUXED_DATA_Buffer_reg[25]_0 (\MUXED_DATA_Buffer_reg[25]_0 ),
        .\MUXED_DATA_Buffer_reg[26]_0 (\MUXED_DATA_Buffer_reg[26]_0 ),
        .\MUXED_DATA_Buffer_reg[27]_0 (\MUXED_DATA_Buffer_reg[27]_0 ),
        .\MUXED_DATA_Buffer_reg[28]_0 (\MUXED_DATA_Buffer_reg[28]_0 ),
        .\MUXED_DATA_Buffer_reg[29]_0 (\MUXED_DATA_Buffer_reg[29]_0 ),
        .\MUXED_DATA_Buffer_reg[30]_0 (\MUXED_DATA_Buffer_reg[30]_0 ),
        .\MUXED_DATA_Buffer_reg[31]_0 (\MUXED_DATA_Buffer_reg[31]_0 ),
        .M_AXI_UFC_RX_TDATA(M_AXI_UFC_RX_TDATA),
        .UFC_OUTPUT_SELECT_Buffer(UFC_OUTPUT_SELECT_Buffer),
        .user_clk(user_clk));
  aurora_8b10b_UFC_OUTPUT_SWITCH_CONTROL ufc_output_switch_control_i
       (.Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .UFC_OUTPUT_SELECT_Buffer(UFC_OUTPUT_SELECT_Buffer),
        .\UFC_OUTPUT_SELECT_Buffer_reg[4]_0 (ufc_storage_count_control_i_n_5),
        .\UFC_OUTPUT_SELECT_Buffer_reg[5]_0 (\UFC_OUTPUT_SELECT_Buffer_reg[5] ),
        .user_clk(user_clk));
  aurora_8b10b_UFC_SIDEBAND_OUTPUT ufc_sideband_output_i
       (.SR(SR),
        .UFC_EOF_N_Buffer(UFC_EOF_N_Buffer),
        .UFC_EOF_N_Buffer_reg_0(ufc_storage_count_control_i_n_0),
        .\UFC_REM_Buffer_reg[0]_0 (ufc_sideband_output_i_n_0),
        .\UFC_REM_Buffer_reg[0]_1 (ufc_storage_count_control_i_n_7),
        .UFC_SRC_RDY_N_Buffer(UFC_SRC_RDY_N_Buffer),
        .UFC_SRC_RDY_N_Buffer_reg_0(ufc_storage_count_control_i_n_5),
        .user_clk(user_clk));
  aurora_8b10b_UFC_STORAGE_COUNT_CONTROL ufc_storage_count_control_i
       (.D(ufc_storage_count_control_i_n_6),
        .Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .SR(SR),
        .UFC_EOF_N_Buffer_reg({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .stage_1_ufc_start_r(stage_1_ufc_start_r),
        .stage_1_ufc_start_r_reg(ufc_storage_count_control_i_n_0),
        .stage_1_ufc_start_r_reg_0(ufc_storage_count_control_i_n_7),
        .\storage_count_r_reg[0]_0 (ufc_storage_count_control_i_n_5),
        .\storage_count_r_reg[1]_0 (ufc_storage_count_control_i_n_3),
        .\storage_count_r_reg[1]_1 (ufc_storage_count_control_i_n_4),
        .user_clk(user_clk));
  aurora_8b10b_UFC_STORAGE_MUX ufc_storage_mux_i
       (.D({ufc_storage_mux_i_n_0,ufc_storage_mux_i_n_1,ufc_storage_mux_i_n_2,ufc_storage_mux_i_n_3,ufc_storage_mux_i_n_4,ufc_storage_mux_i_n_5,ufc_storage_mux_i_n_6,ufc_storage_mux_i_n_7,ufc_storage_mux_i_n_8,ufc_storage_mux_i_n_9,ufc_storage_mux_i_n_10,ufc_storage_mux_i_n_11,ufc_storage_mux_i_n_12,ufc_storage_mux_i_n_13,ufc_storage_mux_i_n_14,ufc_storage_mux_i_n_15}),
        .\MUXED_DATA_Buffer_reg[0]_0 (ufc_storage_switch_control_i_n_0),
        .\MUXED_DATA_Buffer_reg[0]_1 (\SHIFTED_DATA_Buffer_reg[0] ),
        .\MUXED_DATA_Buffer_reg[16]_0 (\MUXED_DATA_Buffer_reg[16] ),
        .\MUXED_DATA_Buffer_reg[17]_0 (\MUXED_DATA_Buffer_reg[17] ),
        .\MUXED_DATA_Buffer_reg[18]_0 (\MUXED_DATA_Buffer_reg[18] ),
        .\MUXED_DATA_Buffer_reg[19]_0 (\MUXED_DATA_Buffer_reg[19] ),
        .\MUXED_DATA_Buffer_reg[20]_0 (\MUXED_DATA_Buffer_reg[20] ),
        .\MUXED_DATA_Buffer_reg[21]_0 (\MUXED_DATA_Buffer_reg[21] ),
        .\MUXED_DATA_Buffer_reg[22]_0 (\MUXED_DATA_Buffer_reg[22] ),
        .\MUXED_DATA_Buffer_reg[23]_0 (\MUXED_DATA_Buffer_reg[23] ),
        .\MUXED_DATA_Buffer_reg[24]_0 (\MUXED_DATA_Buffer_reg[24] ),
        .\MUXED_DATA_Buffer_reg[25]_0 (\MUXED_DATA_Buffer_reg[25] ),
        .\MUXED_DATA_Buffer_reg[26]_0 (\MUXED_DATA_Buffer_reg[26] ),
        .\MUXED_DATA_Buffer_reg[27]_0 (\MUXED_DATA_Buffer_reg[27] ),
        .\MUXED_DATA_Buffer_reg[28]_0 (\MUXED_DATA_Buffer_reg[28] ),
        .\MUXED_DATA_Buffer_reg[29]_0 (\MUXED_DATA_Buffer_reg[29] ),
        .\MUXED_DATA_Buffer_reg[30]_0 (\MUXED_DATA_Buffer_reg[30] ),
        .\MUXED_DATA_Buffer_reg[31]_0 (\MUXED_DATA_Buffer_reg[31] ),
        .SHIFTED_DATA_Buffer({SHIFTED_DATA_Buffer[16],SHIFTED_DATA_Buffer[17],SHIFTED_DATA_Buffer[18],SHIFTED_DATA_Buffer[19],SHIFTED_DATA_Buffer[20],SHIFTED_DATA_Buffer[21],SHIFTED_DATA_Buffer[22],SHIFTED_DATA_Buffer[23],SHIFTED_DATA_Buffer[24],SHIFTED_DATA_Buffer[25],SHIFTED_DATA_Buffer[26],SHIFTED_DATA_Buffer[27],SHIFTED_DATA_Buffer[28],SHIFTED_DATA_Buffer[29],SHIFTED_DATA_Buffer[30],SHIFTED_DATA_Buffer[31]}),
        .UFC_STORAGE_SELECT_Buffer({UFC_STORAGE_SELECT_Buffer[2],UFC_STORAGE_SELECT_Buffer[4],UFC_STORAGE_SELECT_Buffer[5]}),
        .user_clk(user_clk));
  aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL ufc_storage_switch_control_i
       (.D(ufc_storage_count_control_i_n_6),
        .Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .\UFC_STORAGE_SELECT_Buffer_reg[0]_0 (ufc_storage_switch_control_i_n_0),
        .\UFC_STORAGE_SELECT_Buffer_reg[0]_1 (ufc_storage_count_control_i_n_3),
        .\UFC_STORAGE_SELECT_Buffer_reg[1]_0 (ufc_storage_count_control_i_n_4),
        .\UFC_STORAGE_SELECT_Buffer_reg[2]_0 ({UFC_STORAGE_SELECT_Buffer[2],UFC_STORAGE_SELECT_Buffer[4],UFC_STORAGE_SELECT_Buffer[5]}),
        .\UFC_STORAGE_SELECT_Buffer_reg[4]_0 (\ufc_storage_switch_control_i/_n_0 ),
        .\UFC_STORAGE_SELECT_Buffer_reg[4]_1 ({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .stage_1_ufc_start_r(stage_1_ufc_start_r),
        .user_clk(user_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \ufc_storage_switch_control_i/ 
       (.I0(ufc_storage_count_control_i_n_1),
        .O(\ufc_storage_switch_control_i/_n_0 ));
  aurora_8b10b_VALID_DATA_COUNTER ufc_valid_data_counter
       (.\COUNT_Buffer_reg[0]_0 ({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .Q(Q),
        .SR(SR),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_SCRAMBLER
   (SS,
    Q,
    DOUT,
    clear_nxt2,
    reset_lanes_i,
    \lfsr_reg[15]_0 ,
    gen_v_r2,
    D,
    \DOUT_reg[0]_0 ,
    user_clk,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 );
  output [0:0]SS;
  output [11:0]Q;
  output [15:0]DOUT;
  input clear_nxt2;
  input reset_lanes_i;
  input \lfsr_reg[15]_0 ;
  input gen_v_r2;
  input [3:0]D;
  input \DOUT_reg[0]_0 ;
  input user_clk;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;

  wire [3:0]D;
  wire [15:0]DOUT;
  wire \DOUT[2]_i_1_n_0 ;
  wire \DOUT[3]_i_1_n_0 ;
  wire \DOUT[6]_i_1_n_0 ;
  wire \DOUT[7]_i_1_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9]_0 ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire clear_nxt2;
  wire gen_v_r2;
  wire [12:3]lfsrNext;
  wire \lfsr_reg[15]_0 ;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire reset_lanes_i;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1 
       (.I0(p_6_in),
        .I1(D[0]),
        .O(\DOUT[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1 
       (.I0(p_3_in),
        .I1(D[1]),
        .O(\DOUT[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1 
       (.I0(p_0_in),
        .I1(D[2]),
        .O(\DOUT[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1 
       (.I0(p_1_in),
        .I1(D[3]),
        .O(\DOUT[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[0]_1 ),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[10]_0 ),
        .Q(DOUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[11]_0 ),
        .Q(DOUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[12]_0 ),
        .Q(DOUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[13]_0 ),
        .Q(DOUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[14]_0 ),
        .Q(DOUT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[15]_0 ),
        .Q(DOUT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[1]_0 ),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[2]_i_1_n_0 ),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[3]_i_1_n_0 ),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[4]_0 ),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[5]_0 ),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[6]_i_1_n_0 ),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[7]_i_1_n_0 ),
        .Q(DOUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[8]_0 ),
        .Q(DOUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[9]_0 ),
        .Q(DOUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \lfsr[15]_i_1__2 
       (.I0(clear_nxt2),
        .I1(reset_lanes_i),
        .I2(\lfsr_reg[15]_0 ),
        .I3(gen_v_r2),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_SCRAMBLER" *) 
module aurora_8b10b_SCRAMBLER_26
   (Q,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[7]_0 ,
    \DOUT_reg[6]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[3]_0 ,
    \DOUT_reg[2]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_0 ,
    D,
    SS,
    EN,
    user_clk,
    \DOUT_reg[15]_1 ,
    \DOUT_reg[14]_1 ,
    \DOUT_reg[13]_1 ,
    \DOUT_reg[12]_1 ,
    \DOUT_reg[11]_1 ,
    \DOUT_reg[10]_1 ,
    \DOUT_reg[9]_1 ,
    \DOUT_reg[8]_1 ,
    \DOUT_reg[5]_1 ,
    \DOUT_reg[4]_1 ,
    \DOUT_reg[1]_1 ,
    \DOUT_reg[0]_1 );
  output [11:0]Q;
  output \DOUT_reg[15]_0 ;
  output \DOUT_reg[14]_0 ;
  output \DOUT_reg[13]_0 ;
  output \DOUT_reg[12]_0 ;
  output \DOUT_reg[11]_0 ;
  output \DOUT_reg[10]_0 ;
  output \DOUT_reg[9]_0 ;
  output \DOUT_reg[8]_0 ;
  output \DOUT_reg[7]_0 ;
  output \DOUT_reg[6]_0 ;
  output \DOUT_reg[5]_0 ;
  output \DOUT_reg[4]_0 ;
  output \DOUT_reg[3]_0 ;
  output \DOUT_reg[2]_0 ;
  output \DOUT_reg[1]_0 ;
  output \DOUT_reg[0]_0 ;
  input [3:0]D;
  input [0:0]SS;
  input EN;
  input user_clk;
  input \DOUT_reg[15]_1 ;
  input \DOUT_reg[14]_1 ;
  input \DOUT_reg[13]_1 ;
  input \DOUT_reg[12]_1 ;
  input \DOUT_reg[11]_1 ;
  input \DOUT_reg[10]_1 ;
  input \DOUT_reg[9]_1 ;
  input \DOUT_reg[8]_1 ;
  input \DOUT_reg[5]_1 ;
  input \DOUT_reg[4]_1 ;
  input \DOUT_reg[1]_1 ;
  input \DOUT_reg[0]_1 ;

  wire [3:0]D;
  wire \DOUT[2]_i_1__0_n_0 ;
  wire \DOUT[3]_i_1__0_n_0 ;
  wire \DOUT[6]_i_1__0_n_0 ;
  wire \DOUT[7]_i_1__0_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[10]_1 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[11]_1 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[12]_1 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[13]_1 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[14]_1 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[15]_1 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[1]_1 ;
  wire \DOUT_reg[2]_0 ;
  wire \DOUT_reg[3]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[4]_1 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[5]_1 ;
  wire \DOUT_reg[6]_0 ;
  wire \DOUT_reg[7]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[8]_1 ;
  wire \DOUT_reg[9]_0 ;
  wire \DOUT_reg[9]_1 ;
  wire EN;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__0 
       (.I0(p_6_in),
        .I1(D[0]),
        .O(\DOUT[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__0 
       (.I0(p_3_in),
        .I1(D[1]),
        .O(\DOUT[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__0 
       (.I0(p_0_in),
        .I1(D[2]),
        .O(\DOUT[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__0 
       (.I0(p_1_in),
        .I1(D[3]),
        .O(\DOUT[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[0]_1 ),
        .Q(\DOUT_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[10]_1 ),
        .Q(\DOUT_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[11]_1 ),
        .Q(\DOUT_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[12]_1 ),
        .Q(\DOUT_reg[12]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[13]_1 ),
        .Q(\DOUT_reg[13]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[14]_1 ),
        .Q(\DOUT_reg[14]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[15]_1 ),
        .Q(\DOUT_reg[15]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[1]_1 ),
        .Q(\DOUT_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[2]_i_1__0_n_0 ),
        .Q(\DOUT_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[3]_i_1__0_n_0 ),
        .Q(\DOUT_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[4]_1 ),
        .Q(\DOUT_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[5]_1 ),
        .Q(\DOUT_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[6]_i_1__0_n_0 ),
        .Q(\DOUT_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[7]_i_1__0_n_0 ),
        .Q(\DOUT_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[8]_1 ),
        .Q(\DOUT_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[9]_1 ),
        .Q(\DOUT_reg[9]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__0 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__0 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__0 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__0 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__0 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__0 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__0 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(user_clk),
        .CE(EN),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[10] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[11] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[13] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[14] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[15] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(user_clk),
        .CE(EN),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[7] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_SCRAMBLER" *) 
module aurora_8b10b_SCRAMBLER_28
   (Q,
    rx_pe_data_striped_i,
    rx_pe_data_descram_in,
    \stage_1_data_r_reg[0] ,
    \stage_1_data_r_reg[0]_0 ,
    \stage_1_data_r_reg[8] ,
    SS,
    EN,
    user_clk,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_0 );
  output [11:0]Q;
  output [15:0]rx_pe_data_striped_i;
  input [3:0]rx_pe_data_descram_in;
  input [11:0]\stage_1_data_r_reg[0] ;
  input [0:0]\stage_1_data_r_reg[0]_0 ;
  input [3:0]\stage_1_data_r_reg[8] ;
  input [0:0]SS;
  input EN;
  input user_clk;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_0 ;

  wire [15:0]DOUT;
  wire \DOUT[2]_i_1__2_n_0 ;
  wire \DOUT[3]_i_1__2_n_0 ;
  wire \DOUT[6]_i_1__2_n_0 ;
  wire \DOUT[7]_i_1__2_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9]_0 ;
  wire EN;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire [3:0]rx_pe_data_descram_in;
  wire [15:0]rx_pe_data_striped_i;
  wire [11:0]\stage_1_data_r_reg[0] ;
  wire [0:0]\stage_1_data_r_reg[0]_0 ;
  wire [3:0]\stage_1_data_r_reg[8] ;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__2 
       (.I0(p_6_in),
        .I1(rx_pe_data_descram_in[0]),
        .O(\DOUT[2]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__2 
       (.I0(p_3_in),
        .I1(rx_pe_data_descram_in[1]),
        .O(\DOUT[3]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__2 
       (.I0(p_0_in),
        .I1(rx_pe_data_descram_in[2]),
        .O(\DOUT[6]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__2 
       (.I0(p_1_in),
        .I1(rx_pe_data_descram_in[3]),
        .O(\DOUT[7]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[0]_0 ),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[10]_0 ),
        .Q(DOUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[11]_0 ),
        .Q(DOUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[12]_0 ),
        .Q(DOUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[13]_0 ),
        .Q(DOUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[14]_0 ),
        .Q(DOUT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[15]_0 ),
        .Q(DOUT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[1]_0 ),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[2]_i_1__2_n_0 ),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[3]_i_1__2_n_0 ),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[4]_0 ),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[5]_0 ),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[6]_i_1__2_n_0 ),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT[7]_i_1__2_n_0 ),
        .Q(DOUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[8]_0 ),
        .Q(DOUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(EN),
        .D(\DOUT_reg[9]_0 ),
        .Q(DOUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[0]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [11]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[15]),
        .O(rx_pe_data_striped_i[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[10]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[8] [1]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[5]),
        .O(rx_pe_data_striped_i[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[11]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[8] [0]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[4]),
        .O(rx_pe_data_striped_i[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[12]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [3]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[3]),
        .O(rx_pe_data_striped_i[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[13]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [2]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[2]),
        .O(rx_pe_data_striped_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[14]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [1]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[1]),
        .O(rx_pe_data_striped_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[15]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [0]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[0]),
        .O(rx_pe_data_striped_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[1]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [10]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[14]),
        .O(rx_pe_data_striped_i[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[2]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [9]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[13]),
        .O(rx_pe_data_striped_i[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[3]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [8]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[12]),
        .O(rx_pe_data_striped_i[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[4]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [7]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[11]),
        .O(rx_pe_data_striped_i[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[5]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [6]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[10]),
        .O(rx_pe_data_striped_i[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[6]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [5]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[9]),
        .O(rx_pe_data_striped_i[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[7]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[0] [4]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[8]),
        .O(rx_pe_data_striped_i[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[8]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[8] [3]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[7]),
        .O(rx_pe_data_striped_i[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[9]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[8] [2]),
        .I1(\stage_1_data_r_reg[0]_0 ),
        .I2(DOUT[6]),
        .O(rx_pe_data_striped_i[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__1 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__1 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__1 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__1 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(user_clk),
        .CE(EN),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[10] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[11] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[13] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[14] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[15] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(user_clk),
        .CE(EN),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(user_clk),
        .CE(EN),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[7] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(user_clk),
        .CE(EN),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_SCRAMBLER" *) 
module aurora_8b10b_SCRAMBLER_29
   (Q,
    rx_pe_data_striped_i,
    rx_pe_data_descram_in,
    \stage_1_data_r_reg[16] ,
    \stage_1_data_r_reg[16]_0 ,
    \stage_1_data_r_reg[24] ,
    \stage_1_data_r_reg[25] ,
    \stage_1_data_r_reg[26] ,
    \stage_1_data_r_reg[27] ,
    SS,
    \DOUT_reg[0]_0 ,
    user_clk,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 );
  output [11:0]Q;
  output [15:0]rx_pe_data_striped_i;
  input [3:0]rx_pe_data_descram_in;
  input [11:0]\stage_1_data_r_reg[16] ;
  input [0:0]\stage_1_data_r_reg[16]_0 ;
  input \stage_1_data_r_reg[24] ;
  input \stage_1_data_r_reg[25] ;
  input \stage_1_data_r_reg[26] ;
  input [0:0]\stage_1_data_r_reg[27] ;
  input [0:0]SS;
  input \DOUT_reg[0]_0 ;
  input user_clk;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;

  wire \DOUT[2]_i_1__1_n_0 ;
  wire \DOUT[3]_i_1__1_n_0 ;
  wire \DOUT[6]_i_1__1_n_0 ;
  wire \DOUT[7]_i_1__1_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9]_0 ;
  wire \DOUT_reg_n_0_[0] ;
  wire \DOUT_reg_n_0_[10] ;
  wire \DOUT_reg_n_0_[11] ;
  wire \DOUT_reg_n_0_[12] ;
  wire \DOUT_reg_n_0_[13] ;
  wire \DOUT_reg_n_0_[14] ;
  wire \DOUT_reg_n_0_[15] ;
  wire \DOUT_reg_n_0_[1] ;
  wire \DOUT_reg_n_0_[2] ;
  wire \DOUT_reg_n_0_[3] ;
  wire \DOUT_reg_n_0_[4] ;
  wire \DOUT_reg_n_0_[5] ;
  wire \DOUT_reg_n_0_[6] ;
  wire \DOUT_reg_n_0_[7] ;
  wire \DOUT_reg_n_0_[8] ;
  wire \DOUT_reg_n_0_[9] ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire [3:0]rx_pe_data_descram_in;
  wire [15:0]rx_pe_data_striped_i;
  wire [11:0]\stage_1_data_r_reg[16] ;
  wire [0:0]\stage_1_data_r_reg[16]_0 ;
  wire \stage_1_data_r_reg[24] ;
  wire \stage_1_data_r_reg[25] ;
  wire \stage_1_data_r_reg[26] ;
  wire [0:0]\stage_1_data_r_reg[27] ;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__1 
       (.I0(p_6_in),
        .I1(rx_pe_data_descram_in[0]),
        .O(\DOUT[2]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__1 
       (.I0(p_3_in),
        .I1(rx_pe_data_descram_in[1]),
        .O(\DOUT[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__1 
       (.I0(p_0_in),
        .I1(rx_pe_data_descram_in[2]),
        .O(\DOUT[6]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__1 
       (.I0(p_1_in),
        .I1(rx_pe_data_descram_in[3]),
        .O(\DOUT[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[0]_1 ),
        .Q(\DOUT_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[10]_0 ),
        .Q(\DOUT_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[11]_0 ),
        .Q(\DOUT_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[12]_0 ),
        .Q(\DOUT_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[13]_0 ),
        .Q(\DOUT_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[14]_0 ),
        .Q(\DOUT_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[15]_0 ),
        .Q(\DOUT_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[1]_0 ),
        .Q(\DOUT_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[2]_i_1__1_n_0 ),
        .Q(\DOUT_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[3]_i_1__1_n_0 ),
        .Q(\DOUT_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[4]_0 ),
        .Q(\DOUT_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[5]_0 ),
        .Q(\DOUT_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[6]_i_1__1_n_0 ),
        .Q(\DOUT_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[7]_i_1__1_n_0 ),
        .Q(\DOUT_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[8]_0 ),
        .Q(\DOUT_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[9]_0 ),
        .Q(\DOUT_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[16]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [11]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[15] ),
        .O(rx_pe_data_striped_i[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[17]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [10]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[14] ),
        .O(rx_pe_data_striped_i[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[18]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [9]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[13] ),
        .O(rx_pe_data_striped_i[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[19]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [8]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[12] ),
        .O(rx_pe_data_striped_i[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[20]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [7]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[11] ),
        .O(rx_pe_data_striped_i[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[21]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [6]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[10] ),
        .O(rx_pe_data_striped_i[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[22]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [5]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[9] ),
        .O(rx_pe_data_striped_i[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[23]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [4]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[8] ),
        .O(rx_pe_data_striped_i[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[24]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[24] ),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[7] ),
        .O(rx_pe_data_striped_i[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[25]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[25] ),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[6] ),
        .O(rx_pe_data_striped_i[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[26]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[26] ),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[5] ),
        .O(rx_pe_data_striped_i[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[27]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[27] ),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[4] ),
        .O(rx_pe_data_striped_i[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[28]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [3]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[3] ),
        .O(rx_pe_data_striped_i[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[29]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [2]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[2] ),
        .O(rx_pe_data_striped_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[30]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [1]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[1] ),
        .O(rx_pe_data_striped_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PDU_DATA_Buffer_reg[31]_srl2_i_1 
       (.I0(\stage_1_data_r_reg[16] [0]),
        .I1(\stage_1_data_r_reg[16]_0 ),
        .I2(\DOUT_reg_n_0_[0] ),
        .O(rx_pe_data_striped_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__2 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__2 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__2 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__2 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__2 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__2 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__2 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__2 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__2 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

module aurora_8b10b_SCRAMBLER_TOP
   (Q,
    \lfsr_reg[15] ,
    TXDATA,
    \CHAR_IS_K_OUT_reg[3]_0 ,
    gen_cc_r,
    user_clk,
    reset_lanes_i,
    \lfsr_reg[15]_0 ,
    gen_v_r2,
    D,
    \DOUT_reg[0] ,
    EN,
    \bypass_r_reg[1]_0 ,
    \DOUT_reg[15] ,
    \DOUT_reg[14] ,
    \DOUT_reg[13] ,
    \DOUT_reg[12] ,
    \DOUT_reg[11] ,
    \DOUT_reg[10] ,
    \DOUT_reg[9] ,
    \DOUT_reg[8] ,
    \DOUT_reg[5] ,
    \DOUT_reg[4] ,
    \DOUT_reg[1] ,
    \DOUT_reg[0]_0 ,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 ,
    \CHAR_IS_K_OUT_reg[3]_1 );
  output [11:0]Q;
  output [11:0]\lfsr_reg[15] ;
  output [31:0]TXDATA;
  output [3:0]\CHAR_IS_K_OUT_reg[3]_0 ;
  input gen_cc_r;
  input user_clk;
  input reset_lanes_i;
  input \lfsr_reg[15]_0 ;
  input gen_v_r2;
  input [31:0]D;
  input \DOUT_reg[0] ;
  input EN;
  input [1:0]\bypass_r_reg[1]_0 ;
  input \DOUT_reg[15] ;
  input \DOUT_reg[14] ;
  input \DOUT_reg[13] ;
  input \DOUT_reg[12] ;
  input \DOUT_reg[11] ;
  input \DOUT_reg[10] ;
  input \DOUT_reg[9] ;
  input \DOUT_reg[8] ;
  input \DOUT_reg[5] ;
  input \DOUT_reg[4] ;
  input \DOUT_reg[1] ;
  input \DOUT_reg[0]_0 ;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;
  input [3:0]\CHAR_IS_K_OUT_reg[3]_1 ;

  wire [3:0]\CHAR_IS_K_OUT_reg[3]_0 ;
  wire [3:0]\CHAR_IS_K_OUT_reg[3]_1 ;
  wire [31:0]D;
  wire [15:0]DOUT;
  wire \DOUT_reg[0] ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10] ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11] ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12] ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13] ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14] ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15] ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1] ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4] ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5] ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8] ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9] ;
  wire \DOUT_reg[9]_0 ;
  wire EN;
  wire [11:0]Q;
  wire [31:0]TXDATA;
  wire aurora_8b10b_scrambler0_i_n_0;
  wire aurora_8b10b_scrambler1_i_n_12;
  wire aurora_8b10b_scrambler1_i_n_13;
  wire aurora_8b10b_scrambler1_i_n_14;
  wire aurora_8b10b_scrambler1_i_n_15;
  wire aurora_8b10b_scrambler1_i_n_16;
  wire aurora_8b10b_scrambler1_i_n_17;
  wire aurora_8b10b_scrambler1_i_n_18;
  wire aurora_8b10b_scrambler1_i_n_19;
  wire aurora_8b10b_scrambler1_i_n_20;
  wire aurora_8b10b_scrambler1_i_n_21;
  wire aurora_8b10b_scrambler1_i_n_22;
  wire aurora_8b10b_scrambler1_i_n_23;
  wire aurora_8b10b_scrambler1_i_n_24;
  wire aurora_8b10b_scrambler1_i_n_25;
  wire aurora_8b10b_scrambler1_i_n_26;
  wire aurora_8b10b_scrambler1_i_n_27;
  wire [1:0]bypass_r;
  wire [1:0]\bypass_r_reg[1]_0 ;
  wire clear_nxt2;
  wire [31:0]data_nxt;
  wire gen_cc_r;
  wire gen_v_r2;
  wire [11:0]\lfsr_reg[15] ;
  wire \lfsr_reg[15]_0 ;
  wire reset_lanes_i;
  wire user_clk;

  FDRE \CHAR_IS_K_OUT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [0]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [1]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [2]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [3]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [3]),
        .R(1'b0));
  aurora_8b10b_SCRAMBLER aurora_8b10b_scrambler0_i
       (.D({D[7:6],D[3:2]}),
        .DOUT(DOUT),
        .\DOUT_reg[0]_0 (\DOUT_reg[0] ),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_0 ),
        .\DOUT_reg[10]_0 (\DOUT_reg[10] ),
        .\DOUT_reg[11]_0 (\DOUT_reg[11] ),
        .\DOUT_reg[12]_0 (\DOUT_reg[12] ),
        .\DOUT_reg[13]_0 (\DOUT_reg[13] ),
        .\DOUT_reg[14]_0 (\DOUT_reg[14] ),
        .\DOUT_reg[15]_0 (\DOUT_reg[15] ),
        .\DOUT_reg[1]_0 (\DOUT_reg[1] ),
        .\DOUT_reg[4]_0 (\DOUT_reg[4] ),
        .\DOUT_reg[5]_0 (\DOUT_reg[5] ),
        .\DOUT_reg[8]_0 (\DOUT_reg[8] ),
        .\DOUT_reg[9]_0 (\DOUT_reg[9] ),
        .Q(Q),
        .SS(aurora_8b10b_scrambler0_i_n_0),
        .clear_nxt2(clear_nxt2),
        .gen_v_r2(gen_v_r2),
        .\lfsr_reg[15]_0 (\lfsr_reg[15]_0 ),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_SCRAMBLER_26 aurora_8b10b_scrambler1_i
       (.D({D[23:22],D[19:18]}),
        .\DOUT_reg[0]_0 (aurora_8b10b_scrambler1_i_n_27),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_1 ),
        .\DOUT_reg[10]_0 (aurora_8b10b_scrambler1_i_n_17),
        .\DOUT_reg[10]_1 (\DOUT_reg[10]_0 ),
        .\DOUT_reg[11]_0 (aurora_8b10b_scrambler1_i_n_16),
        .\DOUT_reg[11]_1 (\DOUT_reg[11]_0 ),
        .\DOUT_reg[12]_0 (aurora_8b10b_scrambler1_i_n_15),
        .\DOUT_reg[12]_1 (\DOUT_reg[12]_0 ),
        .\DOUT_reg[13]_0 (aurora_8b10b_scrambler1_i_n_14),
        .\DOUT_reg[13]_1 (\DOUT_reg[13]_0 ),
        .\DOUT_reg[14]_0 (aurora_8b10b_scrambler1_i_n_13),
        .\DOUT_reg[14]_1 (\DOUT_reg[14]_0 ),
        .\DOUT_reg[15]_0 (aurora_8b10b_scrambler1_i_n_12),
        .\DOUT_reg[15]_1 (\DOUT_reg[15]_0 ),
        .\DOUT_reg[1]_0 (aurora_8b10b_scrambler1_i_n_26),
        .\DOUT_reg[1]_1 (\DOUT_reg[1]_0 ),
        .\DOUT_reg[2]_0 (aurora_8b10b_scrambler1_i_n_25),
        .\DOUT_reg[3]_0 (aurora_8b10b_scrambler1_i_n_24),
        .\DOUT_reg[4]_0 (aurora_8b10b_scrambler1_i_n_23),
        .\DOUT_reg[4]_1 (\DOUT_reg[4]_0 ),
        .\DOUT_reg[5]_0 (aurora_8b10b_scrambler1_i_n_22),
        .\DOUT_reg[5]_1 (\DOUT_reg[5]_0 ),
        .\DOUT_reg[6]_0 (aurora_8b10b_scrambler1_i_n_21),
        .\DOUT_reg[7]_0 (aurora_8b10b_scrambler1_i_n_20),
        .\DOUT_reg[8]_0 (aurora_8b10b_scrambler1_i_n_19),
        .\DOUT_reg[8]_1 (\DOUT_reg[8]_0 ),
        .\DOUT_reg[9]_0 (aurora_8b10b_scrambler1_i_n_18),
        .\DOUT_reg[9]_1 (\DOUT_reg[9]_0 ),
        .EN(EN),
        .Q(\lfsr_reg[15] ),
        .SS(aurora_8b10b_scrambler0_i_n_0),
        .user_clk(user_clk));
  FDRE \bypass_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\bypass_r_reg[1]_0 [0]),
        .Q(bypass_r[0]),
        .R(1'b0));
  FDRE \bypass_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\bypass_r_reg[1]_0 [1]),
        .Q(bypass_r[1]),
        .R(1'b0));
  FDRE clear_nxt2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_r),
        .Q(clear_nxt2),
        .R(1'b0));
  FDRE \data_nxt_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(data_nxt[0]),
        .R(1'b0));
  FDRE \data_nxt_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(data_nxt[10]),
        .R(1'b0));
  FDRE \data_nxt_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(data_nxt[11]),
        .R(1'b0));
  FDRE \data_nxt_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(data_nxt[12]),
        .R(1'b0));
  FDRE \data_nxt_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(data_nxt[13]),
        .R(1'b0));
  FDRE \data_nxt_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(data_nxt[14]),
        .R(1'b0));
  FDRE \data_nxt_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(data_nxt[15]),
        .R(1'b0));
  FDRE \data_nxt_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(data_nxt[16]),
        .R(1'b0));
  FDRE \data_nxt_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(data_nxt[17]),
        .R(1'b0));
  FDRE \data_nxt_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(data_nxt[18]),
        .R(1'b0));
  FDRE \data_nxt_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(data_nxt[19]),
        .R(1'b0));
  FDRE \data_nxt_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(data_nxt[1]),
        .R(1'b0));
  FDRE \data_nxt_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(data_nxt[20]),
        .R(1'b0));
  FDRE \data_nxt_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(data_nxt[21]),
        .R(1'b0));
  FDRE \data_nxt_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(data_nxt[22]),
        .R(1'b0));
  FDRE \data_nxt_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(data_nxt[23]),
        .R(1'b0));
  FDRE \data_nxt_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[24]),
        .Q(data_nxt[24]),
        .R(1'b0));
  FDRE \data_nxt_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[25]),
        .Q(data_nxt[25]),
        .R(1'b0));
  FDRE \data_nxt_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[26]),
        .Q(data_nxt[26]),
        .R(1'b0));
  FDRE \data_nxt_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[27]),
        .Q(data_nxt[27]),
        .R(1'b0));
  FDRE \data_nxt_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[28]),
        .Q(data_nxt[28]),
        .R(1'b0));
  FDRE \data_nxt_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[29]),
        .Q(data_nxt[29]),
        .R(1'b0));
  FDRE \data_nxt_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(data_nxt[2]),
        .R(1'b0));
  FDRE \data_nxt_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[30]),
        .Q(data_nxt[30]),
        .R(1'b0));
  FDRE \data_nxt_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[31]),
        .Q(data_nxt[31]),
        .R(1'b0));
  FDRE \data_nxt_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(data_nxt[3]),
        .R(1'b0));
  FDRE \data_nxt_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(data_nxt[4]),
        .R(1'b0));
  FDRE \data_nxt_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(data_nxt[5]),
        .R(1'b0));
  FDRE \data_nxt_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(data_nxt[6]),
        .R(1'b0));
  FDRE \data_nxt_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(data_nxt[7]),
        .R(1'b0));
  FDRE \data_nxt_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(data_nxt[8]),
        .R(1'b0));
  FDRE \data_nxt_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(data_nxt[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_19
       (.I0(data_nxt[7]),
        .I1(bypass_r[0]),
        .I2(DOUT[7]),
        .O(TXDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_20
       (.I0(data_nxt[6]),
        .I1(bypass_r[0]),
        .I2(DOUT[6]),
        .O(TXDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_21
       (.I0(data_nxt[5]),
        .I1(bypass_r[0]),
        .I2(DOUT[5]),
        .O(TXDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_22
       (.I0(data_nxt[4]),
        .I1(bypass_r[0]),
        .I2(DOUT[4]),
        .O(TXDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_23
       (.I0(data_nxt[3]),
        .I1(bypass_r[0]),
        .I2(DOUT[3]),
        .O(TXDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_24
       (.I0(data_nxt[2]),
        .I1(bypass_r[0]),
        .I2(DOUT[2]),
        .O(TXDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_25
       (.I0(data_nxt[1]),
        .I1(bypass_r[0]),
        .I2(DOUT[1]),
        .O(TXDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_26
       (.I0(data_nxt[0]),
        .I1(bypass_r[0]),
        .I2(DOUT[0]),
        .O(TXDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_27
       (.I0(data_nxt[15]),
        .I1(bypass_r[0]),
        .I2(DOUT[15]),
        .O(TXDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_28
       (.I0(data_nxt[14]),
        .I1(bypass_r[0]),
        .I2(DOUT[14]),
        .O(TXDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_29
       (.I0(data_nxt[13]),
        .I1(bypass_r[0]),
        .I2(DOUT[13]),
        .O(TXDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_30
       (.I0(data_nxt[12]),
        .I1(bypass_r[0]),
        .I2(DOUT[12]),
        .O(TXDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_31
       (.I0(data_nxt[11]),
        .I1(bypass_r[0]),
        .I2(DOUT[11]),
        .O(TXDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_32
       (.I0(data_nxt[10]),
        .I1(bypass_r[0]),
        .I2(DOUT[10]),
        .O(TXDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_33
       (.I0(data_nxt[9]),
        .I1(bypass_r[0]),
        .I2(DOUT[9]),
        .O(TXDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_34
       (.I0(data_nxt[8]),
        .I1(bypass_r[0]),
        .I2(DOUT[8]),
        .O(TXDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_35
       (.I0(data_nxt[23]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_20),
        .O(TXDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_36
       (.I0(data_nxt[22]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_21),
        .O(TXDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_37
       (.I0(data_nxt[21]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_22),
        .O(TXDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_38
       (.I0(data_nxt[20]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_23),
        .O(TXDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_39
       (.I0(data_nxt[19]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_24),
        .O(TXDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_40
       (.I0(data_nxt[18]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_25),
        .O(TXDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_41
       (.I0(data_nxt[17]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_26),
        .O(TXDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_42
       (.I0(data_nxt[16]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_27),
        .O(TXDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_43
       (.I0(data_nxt[31]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_12),
        .O(TXDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_44
       (.I0(data_nxt[30]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_13),
        .O(TXDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_45
       (.I0(data_nxt[29]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_14),
        .O(TXDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_46
       (.I0(data_nxt[28]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_15),
        .O(TXDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_47
       (.I0(data_nxt[27]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_16),
        .O(TXDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_48
       (.I0(data_nxt[26]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_17),
        .O(TXDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_49
       (.I0(data_nxt[25]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_18),
        .O(TXDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_50
       (.I0(data_nxt[24]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_scrambler1_i_n_19),
        .O(TXDATA[0]));
endmodule

module aurora_8b10b_SIDEBAND_OUTPUT
   (stage_3_end_storage_r,
    stage_2_frame_err_r_reg,
    SRC_RDY_N_Buffer,
    EOF_N_Buffer,
    FRAME_ERR_RESULT_Buffer,
    output_select_c,
    \RX_REM_Buffer_reg[0]_0 ,
    end_storage_r0,
    user_clk,
    EOF_N_Buffer_reg_0,
    FRAME_ERR_RESULT_Buffer0,
    D,
    stage_2_start_with_data_r,
    stage_2_pad_r,
    stage_2_end_before_start_r,
    pad_storage_r_reg_0,
    Q,
    stage_2_frame_err_r,
    start_rx_i);
  output stage_3_end_storage_r;
  output stage_2_frame_err_r_reg;
  output SRC_RDY_N_Buffer;
  output EOF_N_Buffer;
  output FRAME_ERR_RESULT_Buffer;
  output [0:0]output_select_c;
  output [1:0]\RX_REM_Buffer_reg[0]_0 ;
  input end_storage_r0;
  input user_clk;
  input EOF_N_Buffer_reg_0;
  input FRAME_ERR_RESULT_Buffer0;
  input [0:0]D;
  input stage_2_start_with_data_r;
  input stage_2_pad_r;
  input stage_2_end_before_start_r;
  input pad_storage_r_reg_0;
  input [0:0]Q;
  input stage_2_frame_err_r;
  input start_rx_i;

  wire [0:0]D;
  wire EOF_N_Buffer;
  wire EOF_N_Buffer_reg_0;
  wire FRAME_ERR_RESULT_Buffer;
  wire FRAME_ERR_RESULT_Buffer0;
  wire [0:0]Q;
  wire [1:0]\RX_REM_Buffer_reg[0]_0 ;
  wire SRC_RDY_N_Buffer;
  wire SRC_RDY_N_Buffer_i_1_n_0;
  wire end_storage_r0;
  wire [0:0]output_select_c;
  wire pad_storage_r;
  wire pad_storage_r_i_1_n_0;
  wire pad_storage_r_reg_0;
  wire [0:0]rx_rem_c;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_frame_err_r_reg;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire start_rx_i;
  wire user_clk;

  FDRE EOF_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N_Buffer_reg_0),
        .Q(EOF_N_Buffer),
        .R(1'b0));
  FDRE FRAME_ERR_RESULT_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT_Buffer0),
        .Q(FRAME_ERR_RESULT_Buffer),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \OUTPUT_SELECT_Buffer[9]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .O(output_select_c));
  LUT4 #(
    .INIT(16'h00EF)) 
    \RX_REM_Buffer[1]_i_1 
       (.I0(stage_2_start_with_data_r),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_pad_r),
        .I3(pad_storage_r),
        .O(rx_rem_c));
  FDRE \RX_REM_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(\RX_REM_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_REM_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_rem_c),
        .Q(\RX_REM_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    SRC_RDY_N_Buffer_i_1
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_2_end_before_start_r),
        .I3(pad_storage_r_reg_0),
        .O(SRC_RDY_N_Buffer_i_1_n_0));
  FDSE SRC_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N_Buffer_i_1_n_0),
        .Q(SRC_RDY_N_Buffer),
        .S(stage_2_frame_err_r_reg));
  FDRE end_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(end_storage_r0),
        .Q(stage_3_end_storage_r),
        .R(stage_2_frame_err_r_reg));
  LUT6 #(
    .INIT(64'hAABAFFFFAAAAAAAA)) 
    pad_storage_r_i_1
       (.I0(stage_2_pad_r),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_before_start_r),
        .I4(pad_storage_r_reg_0),
        .I5(pad_storage_r),
        .O(pad_storage_r_i_1_n_0));
  FDRE pad_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(pad_storage_r_i_1_n_0),
        .Q(pad_storage_r),
        .R(stage_2_frame_err_r_reg));
  LUT2 #(
    .INIT(4'hB)) 
    \storage_count_r[0]_i_1 
       (.I0(stage_2_frame_err_r),
        .I1(start_rx_i),
        .O(stage_2_frame_err_r_reg));
endmodule

module aurora_8b10b_STANDARD_CC_MODULE
   (DO_CC_I,
    WARN_CC,
    s_axi_ufc_tx_tvalid,
    \cc_count_r_reg[5]_0 ,
    user_clk,
    S_AXI_UFC_TX_REQ,
    S_AXI_NFC_ACK,
    S_AXI_NFC_REQ);
  output DO_CC_I;
  output WARN_CC;
  output s_axi_ufc_tx_tvalid;
  input \cc_count_r_reg[5]_0 ;
  input user_clk;
  input S_AXI_UFC_TX_REQ;
  input S_AXI_NFC_ACK;
  input S_AXI_NFC_REQ;

  wire DO_CC_I;
  wire DO_CC_i_1_n_0;
  wire S_AXI_NFC_ACK;
  wire S_AXI_NFC_REQ;
  wire S_AXI_UFC_TX_REQ;
  wire WARN_CC;
  wire WARN_CC_i_1_n_0;
  wire \cc_count_r_reg[5]_0 ;
  wire \cc_count_r_reg_n_0_[5] ;
  wire cc_idle_count_done_c;
  wire count_13d_flop_r_reg_r_n_0;
  wire \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ;
  wire count_13d_srl_r_reg_gate_n_0;
  wire count_13d_srl_r_reg_r_0_n_0;
  wire count_13d_srl_r_reg_r_1_n_0;
  wire count_13d_srl_r_reg_r_2_n_0;
  wire count_13d_srl_r_reg_r_3_n_0;
  wire count_13d_srl_r_reg_r_4_n_0;
  wire count_13d_srl_r_reg_r_5_n_0;
  wire count_13d_srl_r_reg_r_6_n_0;
  wire count_13d_srl_r_reg_r_7_n_0;
  wire count_13d_srl_r_reg_r_8_n_0;
  wire count_13d_srl_r_reg_r_9_n_0;
  wire count_13d_srl_r_reg_r_n_0;
  wire count_16d_flop_r;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_srl_r0;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire [1:0]p_2_in;
  wire [2:2]p_3_out;
  wire \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ;
  wire \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;
  wire s_axi_ufc_tx_tvalid;
  wire user_clk;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DO_CC_i_1
       (.I0(reset_r),
        .I1(p_3_out),
        .I2(p_2_in[1]),
        .I3(\cc_count_r_reg_n_0_[5] ),
        .I4(p_2_in[0]),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(DO_CC_I),
        .R(\cc_count_r_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'hD555C000)) 
    WARN_CC_i_1
       (.I0(p_3_out),
        .I1(count_16d_srl_r0),
        .I2(\count_16d_srl_r_reg_n_0_[14] ),
        .I3(\count_24d_srl_r_reg_n_0_[10] ),
        .I4(WARN_CC),
        .O(WARN_CC_i_1_n_0));
  FDRE WARN_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(WARN_CC_i_1_n_0),
        .Q(WARN_CC),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[1]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\cc_count_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_flop_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(count_13d_flop_r_reg_r_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ),
        .Q(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_gate_n_0),
        .Q(count_16d_srl_r0),
        .R(\cc_count_r_reg[5]_0 ));
  (* srl_bus_name = "U0/\\standard_cc_module_i/count_13d_srl_r_reg " *) 
  (* srl_name = "U0/\\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 " *) 
  SRL16E \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ),
        .Q(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1 
       (.I0(count_16d_srl_r0),
        .I1(reset_r),
        .O(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    count_13d_srl_r_reg_gate
       (.I0(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .I1(count_13d_srl_r_reg_r_9_n_0),
        .O(count_13d_srl_r_reg_gate_n_0));
  FDRE count_13d_srl_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_0
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_0_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_1
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_0_n_0),
        .Q(count_13d_srl_r_reg_r_1_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_2
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_1_n_0),
        .Q(count_13d_srl_r_reg_r_2_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_3
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_2_n_0),
        .Q(count_13d_srl_r_reg_r_3_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_4
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_3_n_0),
        .Q(count_13d_srl_r_reg_r_4_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_5
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_4_n_0),
        .Q(count_13d_srl_r_reg_r_5_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_6
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_5_n_0),
        .Q(count_13d_srl_r_reg_r_6_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_7
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_6_n_0),
        .Q(count_13d_srl_r_reg_r_7_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_8
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_7_n_0),
        .Q(count_13d_srl_r_reg_r_8_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_9
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_8_n_0),
        .Q(count_13d_srl_r_reg_r_9_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .I2(reset_r),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  FDRE count_16d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(\cc_count_r_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .I3(reset_r),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  FDRE count_24d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(\cc_count_r_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(\cc_count_r_reg[5]_0 ));
  (* srl_bus_name = "U0/\\standard_cc_module_i/prepare_count_r_reg " *) 
  (* srl_name = "U0/\\standard_cc_module_i/prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1 
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2 
       (.C(user_clk),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ),
        .Q(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .R(1'b0));
  FDRE \prepare_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prepare_count_r_reg_gate_n_0),
        .Q(p_3_out),
        .R(\cc_count_r_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    prepare_count_r_reg_gate
       (.I0(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .I1(count_13d_srl_r_reg_r_2_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(\cc_count_r_reg[5]_0 ),
        .Q(reset_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000202)) 
    \ufc_message_count_r[0]_i_2 
       (.I0(S_AXI_UFC_TX_REQ),
        .I1(DO_CC_I),
        .I2(WARN_CC),
        .I3(S_AXI_NFC_ACK),
        .I4(S_AXI_NFC_REQ),
        .O(s_axi_ufc_tx_tvalid));
endmodule

module aurora_8b10b_STORAGE_CE_CONTROL
   (Q,
    SR,
    D,
    user_clk);
  output [1:0]Q;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire user_clk;

  FDRE \STORAGE_CE_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \STORAGE_CE_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

module aurora_8b10b_STORAGE_COUNT_CONTROL
   (Q,
    stage_2_start_with_data_r_reg,
    \storage_count_r_reg[0]_0 ,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    \storage_count_r_reg[1]_0 ,
    stage_2_end_before_start_r,
    SR,
    D,
    user_clk);
  output [1:0]Q;
  output stage_2_start_with_data_r_reg;
  output \storage_count_r_reg[0]_0 ;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input [0:0]\storage_count_r_reg[1]_0 ;
  input stage_2_end_before_start_r;
  input [0:0]SR;
  input [0:0]D;
  input user_clk;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_2_start_with_data_r_reg;
  wire stage_3_end_storage_r;
  wire \storage_count_r[1]_i_1_n_0 ;
  wire \storage_count_r_reg[0]_0 ;
  wire [0:0]\storage_count_r_reg[1]_0 ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h0000777F)) 
    EOF_N_Buffer_i_1
       (.I0(stage_2_start_with_data_r),
        .I1(stage_2_end_before_start_r),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(stage_3_end_storage_r),
        .O(stage_2_start_with_data_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h1)) 
    FRAME_ERR_RESULT_Buffer_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\storage_count_r_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \storage_count_r[1]_i_1 
       (.I0(Q[0]),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .I3(\storage_count_r_reg[1]_0 ),
        .O(\storage_count_r[1]_i_1_n_0 ));
  FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(Q[1]),
        .R(SR));
  FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\storage_count_r[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
endmodule

module aurora_8b10b_STORAGE_MUX
   (Q,
    E,
    \STORAGE_DATA_Buffer_reg[0]_0 ,
    user_clk);
  output [31:0]Q;
  input [1:0]E;
  input [31:0]\STORAGE_DATA_Buffer_reg[0]_0 ;
  input user_clk;

  wire [1:0]E;
  wire [31:0]Q;
  wire [31:0]\STORAGE_DATA_Buffer_reg[0]_0 ;
  wire user_clk;

  FDRE \STORAGE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \STORAGE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_Buffer_reg[0]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
endmodule

module aurora_8b10b_STORAGE_SWITCH_CONTROL
   (STORAGE_SELECT_Buffer,
    Q,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    user_clk);
  output [1:0]STORAGE_SELECT_Buffer;
  input [0:0]Q;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input user_clk;

  wire [0:0]Q;
  wire [1:0]STORAGE_SELECT_Buffer;
  wire \STORAGE_SELECT_Buffer[4]_i_1_n_0 ;
  wire \STORAGE_SELECT_Buffer[9]_i_1_n_0 ;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \STORAGE_SELECT_Buffer[4]_i_1 
       (.I0(Q),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .O(\STORAGE_SELECT_Buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \STORAGE_SELECT_Buffer[9]_i_1 
       (.I0(Q),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .O(\STORAGE_SELECT_Buffer[9]_i_1_n_0 ));
  FDRE \STORAGE_SELECT_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT_Buffer[4]_i_1_n_0 ),
        .Q(STORAGE_SELECT_Buffer[1]),
        .R(1'b0));
  FDRE \STORAGE_SELECT_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT_Buffer[9]_i_1_n_0 ),
        .Q(STORAGE_SELECT_Buffer[0]),
        .R(1'b0));
endmodule

module aurora_8b10b_SYM_DEC_4BYTE
   (\left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    rx_sp_descram_in,
    rx_spa_descram_in,
    rx_neg_descram_in,
    got_v_descram_in,
    D,
    rx_pe_data_descram_in,
    first_v_received_r,
    \RX_SNF_Buffer_reg[0]_0 ,
    \RX_PAD_Buffer_reg[1]_0 ,
    Q,
    \RX_PE_DATA_V_Buffer_reg[0]_0 ,
    reset_lanes_flop_i,
    EN,
    \previous_cycle_data_r_reg[7]_0 ,
    \RX_PE_DATA_Buffer_reg[16]_0 ,
    \RX_PE_DATA_Buffer_reg[17]_0 ,
    \RX_PE_DATA_Buffer_reg[18]_0 ,
    \RX_PE_DATA_Buffer_reg[19]_0 ,
    \RX_PE_DATA_Buffer_reg[20]_0 ,
    \RX_PE_DATA_Buffer_reg[21]_0 ,
    \RX_PE_DATA_Buffer_reg[22]_0 ,
    \RX_PE_DATA_Buffer_reg[23]_0 ,
    \RX_PE_DATA_Buffer_reg[26]_0 ,
    \RX_PE_DATA_Buffer_reg[27]_0 ,
    \RX_PE_DATA_Buffer_reg[30]_0 ,
    \RX_PE_DATA_Buffer_reg[31]_0 ,
    \RX_PE_DATA_Buffer_reg[0]_0 ,
    \RX_PE_DATA_Buffer_reg[1]_0 ,
    \RX_PE_DATA_Buffer_reg[2]_0 ,
    \RX_PE_DATA_Buffer_reg[3]_0 ,
    \RX_PE_DATA_Buffer_reg[4]_0 ,
    \RX_PE_DATA_Buffer_reg[5]_0 ,
    \RX_PE_DATA_Buffer_reg[6]_0 ,
    \RX_PE_DATA_Buffer_reg[7]_0 ,
    \RX_PE_DATA_Buffer_reg[10]_0 ,
    \RX_PE_DATA_Buffer_reg[11]_0 ,
    \RX_PE_DATA_Buffer_reg[14]_0 ,
    \RX_PE_DATA_Buffer_reg[15]_0 ,
    \RX_SUF_Buffer_reg[0]_0 ,
    p_9_out,
    p_8_out,
    \left_align_select_r_reg[0]_1 ,
    user_clk,
    \left_align_select_r_reg[1]_1 ,
    \word_aligned_control_bits_r_reg[3]_0 ,
    \DOUT_reg[0] ,
    reset_lanes_i,
    RXDATA,
    RXCHARISK,
    \DOUT_reg[0]_0 ,
    \DOUT_reg[0]_1 ,
    LANE_UP,
    \word_aligned_data_r_reg[24]_0 ,
    \word_aligned_data_r_reg[16]_0 );
  output \left_align_select_r_reg[0]_0 ;
  output \left_align_select_r_reg[1]_0 ;
  output rx_sp_descram_in;
  output rx_spa_descram_in;
  output rx_neg_descram_in;
  output got_v_descram_in;
  output [0:0]D;
  output [0:31]rx_pe_data_descram_in;
  output first_v_received_r;
  output [1:0]\RX_SNF_Buffer_reg[0]_0 ;
  output [1:0]\RX_PAD_Buffer_reg[1]_0 ;
  output [1:0]Q;
  output [1:0]\RX_PE_DATA_V_Buffer_reg[0]_0 ;
  output reset_lanes_flop_i;
  output EN;
  output [5:0]\previous_cycle_data_r_reg[7]_0 ;
  output \RX_PE_DATA_Buffer_reg[16]_0 ;
  output \RX_PE_DATA_Buffer_reg[17]_0 ;
  output \RX_PE_DATA_Buffer_reg[18]_0 ;
  output \RX_PE_DATA_Buffer_reg[19]_0 ;
  output \RX_PE_DATA_Buffer_reg[20]_0 ;
  output \RX_PE_DATA_Buffer_reg[21]_0 ;
  output \RX_PE_DATA_Buffer_reg[22]_0 ;
  output \RX_PE_DATA_Buffer_reg[23]_0 ;
  output \RX_PE_DATA_Buffer_reg[26]_0 ;
  output \RX_PE_DATA_Buffer_reg[27]_0 ;
  output \RX_PE_DATA_Buffer_reg[30]_0 ;
  output \RX_PE_DATA_Buffer_reg[31]_0 ;
  output \RX_PE_DATA_Buffer_reg[0]_0 ;
  output \RX_PE_DATA_Buffer_reg[1]_0 ;
  output \RX_PE_DATA_Buffer_reg[2]_0 ;
  output \RX_PE_DATA_Buffer_reg[3]_0 ;
  output \RX_PE_DATA_Buffer_reg[4]_0 ;
  output \RX_PE_DATA_Buffer_reg[5]_0 ;
  output \RX_PE_DATA_Buffer_reg[6]_0 ;
  output \RX_PE_DATA_Buffer_reg[7]_0 ;
  output \RX_PE_DATA_Buffer_reg[10]_0 ;
  output \RX_PE_DATA_Buffer_reg[11]_0 ;
  output \RX_PE_DATA_Buffer_reg[14]_0 ;
  output \RX_PE_DATA_Buffer_reg[15]_0 ;
  output [1:0]\RX_SUF_Buffer_reg[0]_0 ;
  output [1:0]p_9_out;
  output [1:0]p_8_out;
  input \left_align_select_r_reg[0]_1 ;
  input user_clk;
  input \left_align_select_r_reg[1]_1 ;
  input \word_aligned_control_bits_r_reg[3]_0 ;
  input \DOUT_reg[0] ;
  input reset_lanes_i;
  input [31:0]RXDATA;
  input [3:0]RXCHARISK;
  input [11:0]\DOUT_reg[0]_0 ;
  input [11:0]\DOUT_reg[0]_1 ;
  input LANE_UP;
  input [7:0]\word_aligned_data_r_reg[24]_0 ;
  input [5:0]\word_aligned_data_r_reg[16]_0 ;

  wire [0:0]D;
  wire \DOUT_reg[0] ;
  wire [11:0]\DOUT_reg[0]_0 ;
  wire [11:0]\DOUT_reg[0]_1 ;
  wire EN;
  wire \EXP_IN_inferred__0/i__n_0 ;
  wire \EXP_IN_inferred__1/i__n_0 ;
  wire \EXP_IN_inferred__10/i__n_0 ;
  wire \EXP_IN_inferred__11/i__n_0 ;
  wire \EXP_IN_inferred__12/i__n_0 ;
  wire \EXP_IN_inferred__13/i__n_0 ;
  wire \EXP_IN_inferred__14/i__n_0 ;
  wire \EXP_IN_inferred__15/i__n_0 ;
  wire \EXP_IN_inferred__16/i__n_0 ;
  wire \EXP_IN_inferred__17/i__n_0 ;
  wire \EXP_IN_inferred__18/i__n_0 ;
  wire \EXP_IN_inferred__19/i__n_0 ;
  wire \EXP_IN_inferred__2/i__n_0 ;
  wire \EXP_IN_inferred__20/i__n_0 ;
  wire \EXP_IN_inferred__21/i__n_0 ;
  wire \EXP_IN_inferred__22/i__n_0 ;
  wire \EXP_IN_inferred__23/i__n_0 ;
  wire \EXP_IN_inferred__24/i__n_0 ;
  wire \EXP_IN_inferred__26/i__n_0 ;
  wire \EXP_IN_inferred__27/i__n_0 ;
  wire \EXP_IN_inferred__28/i__n_0 ;
  wire \EXP_IN_inferred__3/i__n_0 ;
  wire \EXP_IN_inferred__32/i__n_0 ;
  wire \EXP_IN_inferred__33/i__n_0 ;
  wire \EXP_IN_inferred__34/i__n_0 ;
  wire \EXP_IN_inferred__36/i__n_0 ;
  wire \EXP_IN_inferred__37/i__n_0 ;
  wire \EXP_IN_inferred__4/i__n_0 ;
  wire \EXP_IN_inferred__46/i__n_0 ;
  wire \EXP_IN_inferred__47/i__n_0 ;
  wire \EXP_IN_inferred__48/i__n_0 ;
  wire \EXP_IN_inferred__49/i__n_0 ;
  wire \EXP_IN_inferred__5/i__n_0 ;
  wire \EXP_IN_inferred__8/i__n_0 ;
  wire \EXP_IN_inferred__9/i__n_0 ;
  wire EXP_IN_n_0;
  wire GOT_V_Buffer_i_2_n_0;
  wire LANE_UP;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RX_CC_Buffer_i_1_n_0;
  wire RX_CC_Buffer_i_2_n_0;
  wire RX_CC_Buffer_i_3_n_0;
  wire RX_NEG_Buffer0;
  wire [1:0]\RX_PAD_Buffer_reg[1]_0 ;
  wire \RX_PE_DATA_Buffer_reg[0]_0 ;
  wire \RX_PE_DATA_Buffer_reg[10]_0 ;
  wire \RX_PE_DATA_Buffer_reg[11]_0 ;
  wire \RX_PE_DATA_Buffer_reg[14]_0 ;
  wire \RX_PE_DATA_Buffer_reg[15]_0 ;
  wire \RX_PE_DATA_Buffer_reg[16]_0 ;
  wire \RX_PE_DATA_Buffer_reg[17]_0 ;
  wire \RX_PE_DATA_Buffer_reg[18]_0 ;
  wire \RX_PE_DATA_Buffer_reg[19]_0 ;
  wire \RX_PE_DATA_Buffer_reg[1]_0 ;
  wire \RX_PE_DATA_Buffer_reg[20]_0 ;
  wire \RX_PE_DATA_Buffer_reg[21]_0 ;
  wire \RX_PE_DATA_Buffer_reg[22]_0 ;
  wire \RX_PE_DATA_Buffer_reg[23]_0 ;
  wire \RX_PE_DATA_Buffer_reg[26]_0 ;
  wire \RX_PE_DATA_Buffer_reg[27]_0 ;
  wire \RX_PE_DATA_Buffer_reg[2]_0 ;
  wire \RX_PE_DATA_Buffer_reg[30]_0 ;
  wire \RX_PE_DATA_Buffer_reg[31]_0 ;
  wire \RX_PE_DATA_Buffer_reg[3]_0 ;
  wire \RX_PE_DATA_Buffer_reg[4]_0 ;
  wire \RX_PE_DATA_Buffer_reg[5]_0 ;
  wire \RX_PE_DATA_Buffer_reg[6]_0 ;
  wire \RX_PE_DATA_Buffer_reg[7]_0 ;
  wire [1:0]\RX_PE_DATA_V_Buffer_reg[0]_0 ;
  wire [1:1]RX_SNF_Buffer;
  wire [1:0]\RX_SNF_Buffer_reg[0]_0 ;
  wire RX_SPA_Buffer_i_2_n_0;
  wire RX_SP_Buffer_i_2_n_0;
  wire RX_SP_Buffer_i_3_n_0;
  wire \RX_SUF_Buffer[0]_i_1_n_0 ;
  wire \RX_SUF_Buffer[1]_i_1_n_0 ;
  wire [1:0]\RX_SUF_Buffer_reg[0]_0 ;
  wire first_v_received_r;
  wire first_v_received_r_i_1_n_0;
  wire got_v_descram_in;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire [3:0]p_0_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in21_in;
  wire p_0_in30_in;
  wire p_0_in32_in;
  wire p_15_in;
  wire p_18_in;
  wire p_1_in;
  wire p_24_in;
  wire [7:0]p_2_in;
  wire p_2_in34_in;
  wire [1:0]p_2_out;
  wire p_36_in;
  wire p_3_in;
  wire [1:0]p_3_out;
  wire [1:0]p_5_out;
  wire p_6_in25_in;
  wire p_6_in38_in;
  wire [1:0]p_8_out;
  wire [1:0]p_9_out;
  wire [2:0]previous_cycle_control_r;
  wire [5:0]\previous_cycle_data_r_reg[7]_0 ;
  wire \previous_cycle_data_r_reg_n_0_[16] ;
  wire \previous_cycle_data_r_reg_n_0_[17] ;
  wire \previous_cycle_data_r_reg_n_0_[18] ;
  wire \previous_cycle_data_r_reg_n_0_[19] ;
  wire \previous_cycle_data_r_reg_n_0_[20] ;
  wire \previous_cycle_data_r_reg_n_0_[21] ;
  wire \previous_cycle_data_r_reg_n_0_[22] ;
  wire \previous_cycle_data_r_reg_n_0_[23] ;
  wire \previous_cycle_data_r_reg_n_0_[2] ;
  wire \previous_cycle_data_r_reg_n_0_[5] ;
  wire reset_lanes_flop_i;
  wire reset_lanes_i;
  wire [1:7]rx_cc_r;
  wire \rx_ecp_d_r_reg_n_0_[3] ;
  wire \rx_ecp_d_r_reg_n_0_[5] ;
  wire \rx_ecp_d_r_reg_n_0_[7] ;
  wire rx_neg_descram_in;
  wire [0:2]rx_pad_d_r;
  wire \rx_pe_control_r_reg_n_0_[3] ;
  wire [0:31]rx_pe_data_descram_in;
  wire [0:31]rx_pe_data_r;
  wire \rx_scp_d_r_reg_n_0_[3] ;
  wire \rx_scp_d_r_reg_n_0_[7] ;
  wire \rx_snf_d_r[2]_i_1_n_0 ;
  wire \rx_snf_d_r_reg_n_0_[1] ;
  wire rx_sp_descram_in;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:7]rx_sp_r;
  wire \rx_sp_r[2]_i_1_n_0 ;
  wire \rx_sp_r[3]_i_1_n_0 ;
  wire \rx_sp_r[4]_i_1_n_0 ;
  wire \rx_sp_r[5]_i_1_n_0 ;
  wire \rx_sp_r[6]_i_1_n_0 ;
  wire \rx_sp_r[7]_i_1_n_0 ;
  wire rx_spa_descram_in;
  wire [0:1]rx_spa_neg_d_r;
  wire [2:7]rx_spa_r;
  wire [2:7]rx_v_d_r;
  wire std_bool;
  wire std_bool11_out;
  wire std_bool13_in;
  wire std_bool13_out;
  wire std_bool16_in;
  wire std_bool1_out;
  wire user_clk;
  wire [0:3]word_aligned_control_bits_r;
  wire \word_aligned_control_bits_r[0]_i_1_n_0 ;
  wire \word_aligned_control_bits_r[1]_i_1_n_0 ;
  wire \word_aligned_control_bits_r[2]_i_1_n_0 ;
  wire \word_aligned_control_bits_r_reg[3]_0 ;
  wire \word_aligned_data_r[0]_i_1_n_0 ;
  wire \word_aligned_data_r[10]_i_1_n_0 ;
  wire \word_aligned_data_r[11]_i_1_n_0 ;
  wire \word_aligned_data_r[12]_i_1_n_0 ;
  wire \word_aligned_data_r[13]_i_1_n_0 ;
  wire \word_aligned_data_r[14]_i_1_n_0 ;
  wire \word_aligned_data_r[15]_i_1_n_0 ;
  wire \word_aligned_data_r[18]_i_1_n_0 ;
  wire \word_aligned_data_r[1]_i_1_n_0 ;
  wire \word_aligned_data_r[21]_i_1_n_0 ;
  wire \word_aligned_data_r[2]_i_1_n_0 ;
  wire \word_aligned_data_r[3]_i_1_n_0 ;
  wire \word_aligned_data_r[4]_i_1_n_0 ;
  wire \word_aligned_data_r[5]_i_1_n_0 ;
  wire \word_aligned_data_r[6]_i_1_n_0 ;
  wire \word_aligned_data_r[7]_i_1_n_0 ;
  wire \word_aligned_data_r[8]_i_1_n_0 ;
  wire \word_aligned_data_r[9]_i_1_n_0 ;
  wire [5:0]\word_aligned_data_r_reg[16]_0 ;
  wire [7:0]\word_aligned_data_r_reg[24]_0 ;
  wire \word_aligned_data_r_reg_n_0_[0] ;
  wire \word_aligned_data_r_reg_n_0_[12] ;
  wire \word_aligned_data_r_reg_n_0_[13] ;
  wire \word_aligned_data_r_reg_n_0_[14] ;
  wire \word_aligned_data_r_reg_n_0_[15] ;
  wire \word_aligned_data_r_reg_n_0_[16] ;
  wire \word_aligned_data_r_reg_n_0_[17] ;
  wire \word_aligned_data_r_reg_n_0_[18] ;
  wire \word_aligned_data_r_reg_n_0_[19] ;
  wire \word_aligned_data_r_reg_n_0_[1] ;
  wire \word_aligned_data_r_reg_n_0_[20] ;
  wire \word_aligned_data_r_reg_n_0_[21] ;
  wire \word_aligned_data_r_reg_n_0_[22] ;
  wire \word_aligned_data_r_reg_n_0_[23] ;
  wire \word_aligned_data_r_reg_n_0_[24] ;
  wire \word_aligned_data_r_reg_n_0_[25] ;
  wire \word_aligned_data_r_reg_n_0_[26] ;
  wire \word_aligned_data_r_reg_n_0_[27] ;
  wire \word_aligned_data_r_reg_n_0_[28] ;
  wire \word_aligned_data_r_reg_n_0_[29] ;
  wire \word_aligned_data_r_reg_n_0_[2] ;
  wire \word_aligned_data_r_reg_n_0_[30] ;
  wire \word_aligned_data_r_reg_n_0_[31] ;
  wire \word_aligned_data_r_reg_n_0_[3] ;
  wire \word_aligned_data_r_reg_n_0_[4] ;
  wire \word_aligned_data_r_reg_n_0_[5] ;
  wire \word_aligned_data_r_reg_n_0_[6] ;
  wire \word_aligned_data_r_reg_n_0_[7] ;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__1 
       (.I0(rx_pe_data_descram_in[31]),
        .I1(\DOUT_reg[0]_0 [11]),
        .O(\RX_PE_DATA_Buffer_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__2 
       (.I0(rx_pe_data_descram_in[15]),
        .I1(\DOUT_reg[0]_1 [11]),
        .O(\RX_PE_DATA_Buffer_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__1 
       (.I0(rx_pe_data_descram_in[21]),
        .I1(\DOUT_reg[0]_0 [5]),
        .O(\RX_PE_DATA_Buffer_reg[21]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__2 
       (.I0(rx_pe_data_descram_in[5]),
        .I1(\DOUT_reg[0]_1 [5]),
        .O(\RX_PE_DATA_Buffer_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__1 
       (.I0(rx_pe_data_descram_in[20]),
        .I1(\DOUT_reg[0]_0 [4]),
        .O(\RX_PE_DATA_Buffer_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__2 
       (.I0(rx_pe_data_descram_in[4]),
        .I1(\DOUT_reg[0]_1 [4]),
        .O(\RX_PE_DATA_Buffer_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__1 
       (.I0(rx_pe_data_descram_in[19]),
        .I1(\DOUT_reg[0]_0 [3]),
        .O(\RX_PE_DATA_Buffer_reg[19]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__2 
       (.I0(rx_pe_data_descram_in[3]),
        .I1(\DOUT_reg[0]_1 [3]),
        .O(\RX_PE_DATA_Buffer_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__1 
       (.I0(rx_pe_data_descram_in[18]),
        .I1(\DOUT_reg[0]_0 [2]),
        .O(\RX_PE_DATA_Buffer_reg[18]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__2 
       (.I0(rx_pe_data_descram_in[2]),
        .I1(\DOUT_reg[0]_1 [2]),
        .O(\RX_PE_DATA_Buffer_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__1 
       (.I0(rx_pe_data_descram_in[17]),
        .I1(\DOUT_reg[0]_0 [1]),
        .O(\RX_PE_DATA_Buffer_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__2 
       (.I0(rx_pe_data_descram_in[1]),
        .I1(\DOUT_reg[0]_1 [1]),
        .O(\RX_PE_DATA_Buffer_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__1 
       (.I0(rx_pe_data_descram_in[16]),
        .I1(\DOUT_reg[0]_0 [0]),
        .O(\RX_PE_DATA_Buffer_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__2 
       (.I0(rx_pe_data_descram_in[0]),
        .I1(\DOUT_reg[0]_1 [0]),
        .O(\RX_PE_DATA_Buffer_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__1 
       (.I0(rx_pe_data_descram_in[30]),
        .I1(\DOUT_reg[0]_0 [10]),
        .O(\RX_PE_DATA_Buffer_reg[30]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__2 
       (.I0(rx_pe_data_descram_in[14]),
        .I1(\DOUT_reg[0]_1 [10]),
        .O(\RX_PE_DATA_Buffer_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__1 
       (.I0(rx_pe_data_descram_in[27]),
        .I1(\DOUT_reg[0]_0 [9]),
        .O(\RX_PE_DATA_Buffer_reg[27]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__2 
       (.I0(rx_pe_data_descram_in[11]),
        .I1(\DOUT_reg[0]_1 [9]),
        .O(\RX_PE_DATA_Buffer_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__1 
       (.I0(rx_pe_data_descram_in[26]),
        .I1(\DOUT_reg[0]_0 [8]),
        .O(\RX_PE_DATA_Buffer_reg[26]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__2 
       (.I0(rx_pe_data_descram_in[10]),
        .I1(\DOUT_reg[0]_1 [8]),
        .O(\RX_PE_DATA_Buffer_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__1 
       (.I0(rx_pe_data_descram_in[23]),
        .I1(\DOUT_reg[0]_0 [7]),
        .O(\RX_PE_DATA_Buffer_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__2 
       (.I0(rx_pe_data_descram_in[7]),
        .I1(\DOUT_reg[0]_1 [7]),
        .O(\RX_PE_DATA_Buffer_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__1 
       (.I0(rx_pe_data_descram_in[22]),
        .I1(\DOUT_reg[0]_0 [6]),
        .O(\RX_PE_DATA_Buffer_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__2 
       (.I0(rx_pe_data_descram_in[6]),
        .I1(\DOUT_reg[0]_1 [6]),
        .O(\RX_PE_DATA_Buffer_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    EXP_IN
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[5] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(EXP_IN_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[30] ),
        .I2(\word_aligned_data_r_reg_n_0_[28] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(\EXP_IN_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__10/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[14] ),
        .I1(\word_aligned_data_r_reg_n_0_[15] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(\EXP_IN_inferred__10/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__11/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(\EXP_IN_inferred__11/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__12/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[28] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(\EXP_IN_inferred__12/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__13/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg_n_0_[27] ),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(\EXP_IN_inferred__13/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__14/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[22] ),
        .I1(\word_aligned_data_r_reg_n_0_[23] ),
        .I2(\word_aligned_data_r_reg_n_0_[21] ),
        .I3(\word_aligned_data_r_reg_n_0_[20] ),
        .O(\EXP_IN_inferred__14/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__15/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[16] ),
        .I1(\word_aligned_data_r_reg_n_0_[18] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\EXP_IN_inferred__15/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__16/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__16/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__17/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\EXP_IN_inferred__17/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__18/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[0] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__18/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__19/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[31] ),
        .I1(\word_aligned_data_r_reg_n_0_[29] ),
        .I2(\word_aligned_data_r_reg_n_0_[28] ),
        .I3(\word_aligned_data_r_reg_n_0_[30] ),
        .O(\EXP_IN_inferred__19/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[27] ),
        .I1(\word_aligned_data_r_reg_n_0_[25] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg_n_0_[26] ),
        .O(\EXP_IN_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__20/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[22] ),
        .I1(\word_aligned_data_r_reg_n_0_[21] ),
        .I2(\word_aligned_data_r_reg_n_0_[20] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\EXP_IN_inferred__20/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__21/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[18] ),
        .I1(\word_aligned_data_r_reg_n_0_[19] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[16] ),
        .O(\EXP_IN_inferred__21/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__22/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[14] ),
        .O(\EXP_IN_inferred__22/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__23/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\EXP_IN_inferred__23/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__24/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[2] ),
        .I1(\word_aligned_data_r_reg_n_0_[3] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[0] ),
        .O(\EXP_IN_inferred__24/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__26/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[2] ),
        .I1(\word_aligned_data_r_reg_n_0_[1] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__26/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__27/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[17] ),
        .I1(\word_aligned_data_r_reg_n_0_[18] ),
        .I2(\word_aligned_data_r_reg_n_0_[16] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\EXP_IN_inferred__27/i__n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__28/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__28/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__29/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(std_bool13_in));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[21] ),
        .I1(\word_aligned_data_r_reg_n_0_[22] ),
        .I2(\word_aligned_data_r_reg_n_0_[20] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\EXP_IN_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__30/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(std_bool16_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__32/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[24] ),
        .I2(\word_aligned_data_r_reg_n_0_[26] ),
        .I3(\word_aligned_data_r_reg_n_0_[27] ),
        .O(\EXP_IN_inferred__32/i__n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__33/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[17] ),
        .I1(\word_aligned_data_r_reg_n_0_[16] ),
        .I2(\word_aligned_data_r_reg_n_0_[18] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\EXP_IN_inferred__33/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__34/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\EXP_IN_inferred__34/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__36/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__36/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__37/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(\EXP_IN_inferred__37/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[19] ),
        .I1(\word_aligned_data_r_reg_n_0_[17] ),
        .I2(\word_aligned_data_r_reg_n_0_[16] ),
        .I3(\word_aligned_data_r_reg_n_0_[18] ),
        .O(\EXP_IN_inferred__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__46/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[28] ),
        .I1(\word_aligned_data_r_reg_n_0_[29] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(\EXP_IN_inferred__46/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__47/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[20] ),
        .I1(\word_aligned_data_r_reg_n_0_[21] ),
        .I2(\word_aligned_data_r_reg_n_0_[22] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\EXP_IN_inferred__47/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__48/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__48/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__49/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[4] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\EXP_IN_inferred__49/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__5/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__5/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__6/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(std_bool));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__8/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[30] ),
        .I1(\word_aligned_data_r_reg_n_0_[31] ),
        .I2(\word_aligned_data_r_reg_n_0_[29] ),
        .I3(\word_aligned_data_r_reg_n_0_[28] ),
        .O(\EXP_IN_inferred__8/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__9/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[26] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg_n_0_[27] ),
        .O(\EXP_IN_inferred__9/i__n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    GOT_V_Buffer_i_1
       (.I0(RX_SP_Buffer_i_2_n_0),
        .I1(GOT_V_Buffer_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(\rx_snf_d_r_reg_n_0_[1] ),
        .I4(rx_v_d_r[3]),
        .I5(rx_v_d_r[2]),
        .O(std_bool1_out));
  LUT4 #(
    .INIT(16'h7FFF)) 
    GOT_V_Buffer_i_2
       (.I0(rx_v_d_r[5]),
        .I1(rx_v_d_r[4]),
        .I2(rx_v_d_r[7]),
        .I3(rx_v_d_r[6]),
        .O(GOT_V_Buffer_i_2_n_0));
  FDRE GOT_V_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool1_out),
        .Q(got_v_descram_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RX_CC_Buffer_i_1
       (.I0(p_1_in),
        .I1(\rx_pe_control_r_reg_n_0_[3] ),
        .I2(p_3_in),
        .I3(p_0_in30_in),
        .I4(RX_CC_Buffer_i_2_n_0),
        .I5(RX_CC_Buffer_i_3_n_0),
        .O(RX_CC_Buffer_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_Buffer_i_2
       (.I0(rx_cc_r[5]),
        .I1(p_0_in21_in),
        .I2(rx_cc_r[7]),
        .I3(p_2_in34_in),
        .O(RX_CC_Buffer_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_Buffer_i_3
       (.I0(p_24_in),
        .I1(rx_cc_r[1]),
        .I2(rx_cc_r[3]),
        .I3(p_6_in38_in),
        .O(RX_CC_Buffer_i_3_n_0));
  FDRE RX_CC_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC_Buffer_i_1_n_0),
        .Q(D),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    RX_NEG_Buffer_i_1
       (.I0(rx_spa_neg_d_r[1]),
        .I1(rx_spa_neg_d_r[0]),
        .I2(rx_sp_neg_d_r[1]),
        .I3(rx_sp_neg_d_r[0]),
        .I4(p_0_in30_in),
        .O(RX_NEG_Buffer0));
  FDRE RX_NEG_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG_Buffer0),
        .Q(rx_neg_descram_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \RX_PAD_Buffer[0]_i_1 
       (.I0(rx_pad_d_r[0]),
        .I1(rx_spa_r[3]),
        .I2(p_3_in),
        .I3(p_0_in30_in),
        .O(p_3_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \RX_PAD_Buffer[1]_i_1 
       (.I0(rx_pad_d_r[2]),
        .I1(rx_spa_r[7]),
        .I2(p_1_in),
        .I3(\rx_pe_control_r_reg_n_0_[3] ),
        .O(p_3_out[0]));
  FDRE \RX_PAD_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_PAD_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[0]),
        .Q(rx_pe_data_descram_in[0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(rx_pe_data_descram_in[10]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[11]),
        .Q(rx_pe_data_descram_in[11]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[12]),
        .Q(rx_pe_data_descram_in[12]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[13]),
        .Q(rx_pe_data_descram_in[13]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[14]),
        .Q(rx_pe_data_descram_in[14]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[15]),
        .Q(rx_pe_data_descram_in[15]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[16]),
        .Q(rx_pe_data_descram_in[16]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[17]),
        .Q(rx_pe_data_descram_in[17]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[18]),
        .Q(rx_pe_data_descram_in[18]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[19]),
        .Q(rx_pe_data_descram_in[19]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[1]),
        .Q(rx_pe_data_descram_in[1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[20]),
        .Q(rx_pe_data_descram_in[20]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[21]),
        .Q(rx_pe_data_descram_in[21]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[22]),
        .Q(rx_pe_data_descram_in[22]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[23]),
        .Q(rx_pe_data_descram_in[23]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[24]),
        .Q(rx_pe_data_descram_in[24]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[25]),
        .Q(rx_pe_data_descram_in[25]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[26]),
        .Q(rx_pe_data_descram_in[26]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[27]),
        .Q(rx_pe_data_descram_in[27]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[28]),
        .Q(rx_pe_data_descram_in[28]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[29]),
        .Q(rx_pe_data_descram_in[29]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[2]),
        .Q(rx_pe_data_descram_in[2]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[30]),
        .Q(rx_pe_data_descram_in[30]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[31]),
        .Q(rx_pe_data_descram_in[31]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[3]),
        .Q(rx_pe_data_descram_in[3]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[4]),
        .Q(rx_pe_data_descram_in[4]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[5]),
        .Q(rx_pe_data_descram_in[5]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[6]),
        .Q(rx_pe_data_descram_in[6]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[7]),
        .Q(rx_pe_data_descram_in[7]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(rx_pe_data_descram_in[8]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(rx_pe_data_descram_in[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V_Buffer[0]_i_1 
       (.I0(p_3_in),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V_Buffer[1]_i_1 
       (.I0(p_1_in),
        .O(p_2_out[0]));
  FDRE \RX_PE_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(\RX_PE_DATA_V_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(\RX_PE_DATA_V_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SNF_Buffer[0]_i_1 
       (.I0(p_3_in),
        .I1(p_18_in),
        .I2(\rx_snf_d_r_reg_n_0_[1] ),
        .O(p_5_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_SNF_Buffer[1]_i_1 
       (.I0(first_v_received_r),
        .I1(RX_SNF_Buffer),
        .O(\RX_SNF_Buffer_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SNF_Buffer[1]_i_1__0 
       (.I0(p_1_in),
        .I1(p_0_in17_in),
        .I2(rx_spa_r[5]),
        .O(p_5_out[0]));
  FDRE \RX_SNF_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_5_out[1]),
        .Q(\RX_SNF_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_SNF_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_5_out[0]),
        .Q(RX_SNF_Buffer),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SPA_Buffer_i_1
       (.I0(RX_SP_Buffer_i_2_n_0),
        .I1(RX_SPA_Buffer_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(\rx_snf_d_r_reg_n_0_[1] ),
        .I4(rx_spa_r[3]),
        .I5(rx_spa_r[2]),
        .O(std_bool11_out));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SPA_Buffer_i_2
       (.I0(rx_spa_r[5]),
        .I1(rx_spa_r[4]),
        .I2(rx_spa_r[7]),
        .I3(rx_spa_r[6]),
        .O(RX_SPA_Buffer_i_2_n_0));
  FDRE RX_SPA_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool11_out),
        .Q(rx_spa_descram_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SP_Buffer_i_1
       (.I0(RX_SP_Buffer_i_2_n_0),
        .I1(RX_SP_Buffer_i_3_n_0),
        .I2(rx_sp_r[0]),
        .I3(\rx_snf_d_r_reg_n_0_[1] ),
        .I4(rx_sp_r[3]),
        .I5(rx_sp_r[2]),
        .O(std_bool13_out));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    RX_SP_Buffer_i_2
       (.I0(\rx_pe_control_r_reg_n_0_[3] ),
        .I1(p_0_in30_in),
        .I2(p_3_in),
        .I3(p_1_in),
        .O(RX_SP_Buffer_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SP_Buffer_i_3
       (.I0(rx_sp_r[5]),
        .I1(rx_sp_r[4]),
        .I2(rx_sp_r[7]),
        .I3(rx_sp_r[6]),
        .O(RX_SP_Buffer_i_3_n_0));
  FDRE RX_SP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool13_out),
        .Q(rx_sp_descram_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SUF_Buffer[0]_i_1 
       (.I0(p_3_in),
        .I1(p_15_in),
        .I2(\rx_snf_d_r_reg_n_0_[1] ),
        .O(\RX_SUF_Buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SUF_Buffer[1]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in14_in),
        .I2(rx_spa_r[5]),
        .O(\RX_SUF_Buffer[1]_i_1_n_0 ));
  FDRE \RX_SUF_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SUF_Buffer[0]_i_1_n_0 ),
        .Q(\RX_SUF_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_SUF_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SUF_Buffer[1]_i_1_n_0 ),
        .Q(\RX_SUF_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \bypass_r[0]_i_1 
       (.I0(Q[1]),
        .I1(\RX_PE_DATA_V_Buffer_reg[0]_0 [1]),
        .I2(got_v_descram_in),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\RX_PAD_Buffer_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \bypass_r[1]_i_1 
       (.I0(Q[0]),
        .I1(\RX_PE_DATA_V_Buffer_reg[0]_0 [0]),
        .I2(got_v_descram_in),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\RX_PAD_Buffer_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    first_v_received_r_i_1
       (.I0(LANE_UP),
        .I1(first_v_received_r),
        .I2(std_bool1_out),
        .O(first_v_received_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(first_v_received_r_i_1_n_0),
        .Q(first_v_received_r),
        .R(1'b0));
  FDRE \left_align_select_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[0]_1 ),
        .Q(\left_align_select_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \left_align_select_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[1]_1 ),
        .Q(\left_align_select_r_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \lfsr[15]_i_1 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(got_v_descram_in),
        .I3(\RX_PE_DATA_V_Buffer_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(reset_lanes_flop_i));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \lfsr[15]_i_2 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(got_v_descram_in),
        .I3(\RX_PE_DATA_V_Buffer_reg[0]_0 [1]),
        .I4(Q[1]),
        .O(EN));
  FDRE \previous_cycle_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[3]),
        .Q(previous_cycle_control_r[0]),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[2]),
        .Q(previous_cycle_control_r[1]),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[1]),
        .Q(previous_cycle_control_r[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[24]),
        .Q(\previous_cycle_data_r_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[18]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[19]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[20]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[21]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[22]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[23]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[8]),
        .Q(\previous_cycle_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[9]),
        .Q(\previous_cycle_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[10]),
        .Q(\previous_cycle_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[11]),
        .Q(\previous_cycle_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[25]),
        .Q(\previous_cycle_data_r_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[12]),
        .Q(\previous_cycle_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[13]),
        .Q(\previous_cycle_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[14]),
        .Q(\previous_cycle_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[15]),
        .Q(\previous_cycle_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[26]),
        .Q(\previous_cycle_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[27]),
        .Q(\previous_cycle_data_r_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[28]),
        .Q(\previous_cycle_data_r_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[29]),
        .Q(\previous_cycle_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[30]),
        .Q(\previous_cycle_data_r_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[31]),
        .Q(\previous_cycle_data_r_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[16]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[17]),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__49/i__n_0 ),
        .Q(rx_cc_r[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__48/i__n_0 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__47/i__n_0 ),
        .Q(rx_cc_r[5]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__46/i__n_0 ),
        .Q(rx_cc_r[7]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__24/i__n_0 ),
        .Q(p_24_in),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__23/i__n_0 ),
        .Q(p_6_in25_in),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__22/i__n_0 ),
        .Q(\rx_ecp_d_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__21/i__n_0 ),
        .Q(p_0_in21_in),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__20/i__n_0 ),
        .Q(\rx_ecp_d_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__19/i__n_0 ),
        .Q(\rx_ecp_d_r_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_ecp_r_reg[0]_srl3_i_1 
       (.I0(p_0_in30_in),
        .I1(p_3_in),
        .I2(p_6_in25_in),
        .I3(p_24_in),
        .I4(\rx_ecp_d_r_reg_n_0_[3] ),
        .I5(p_6_in38_in),
        .O(p_9_out[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_ecp_r_reg[1]_srl3_i_1 
       (.I0(\rx_pe_control_r_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\rx_ecp_d_r_reg_n_0_[5] ),
        .I3(p_0_in21_in),
        .I4(\rx_ecp_d_r_reg_n_0_[7] ),
        .I5(p_2_in34_in),
        .O(p_9_out[0]));
  FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__11/i__n_0 ),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
  FDRE \rx_pad_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__9/i__n_0 ),
        .Q(rx_pad_d_r[2]),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[0]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[1]),
        .Q(p_0_in30_in),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[2]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[3]),
        .Q(\rx_pe_control_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[0] ),
        .Q(rx_pe_data_r[0]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rx_pe_data_r[10]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(rx_pe_data_r[11]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[12] ),
        .Q(rx_pe_data_r[12]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[13] ),
        .Q(rx_pe_data_r[13]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[14] ),
        .Q(rx_pe_data_r[14]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[15] ),
        .Q(rx_pe_data_r[15]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[16] ),
        .Q(rx_pe_data_r[16]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[17] ),
        .Q(rx_pe_data_r[17]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[18] ),
        .Q(rx_pe_data_r[18]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[19] ),
        .Q(rx_pe_data_r[19]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[1] ),
        .Q(rx_pe_data_r[1]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[20] ),
        .Q(rx_pe_data_r[20]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[21] ),
        .Q(rx_pe_data_r[21]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[22] ),
        .Q(rx_pe_data_r[22]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[23] ),
        .Q(rx_pe_data_r[23]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[24] ),
        .Q(rx_pe_data_r[24]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[25] ),
        .Q(rx_pe_data_r[25]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[26] ),
        .Q(rx_pe_data_r[26]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[27] ),
        .Q(rx_pe_data_r[27]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[28] ),
        .Q(rx_pe_data_r[28]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[29] ),
        .Q(rx_pe_data_r[29]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[2] ),
        .Q(rx_pe_data_r[2]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[30] ),
        .Q(rx_pe_data_r[30]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[31] ),
        .Q(rx_pe_data_r[31]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[3] ),
        .Q(rx_pe_data_r[3]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[4] ),
        .Q(rx_pe_data_r[4]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[5] ),
        .Q(rx_pe_data_r[5]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[6] ),
        .Q(rx_pe_data_r[6]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[7] ),
        .Q(rx_pe_data_r[7]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rx_pe_data_r[8]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rx_pe_data_r[9]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__18/i__n_0 ),
        .Q(p_36_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__17/i__n_0 ),
        .Q(p_6_in38_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__16/i__n_0 ),
        .Q(\rx_scp_d_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__15/i__n_0 ),
        .Q(p_0_in32_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__13/i__n_0 ),
        .Q(p_2_in34_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__12/i__n_0 ),
        .Q(\rx_scp_d_r_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_scp_r_reg[0]_srl3_i_1 
       (.I0(p_0_in30_in),
        .I1(p_3_in),
        .I2(\rx_snf_d_r_reg_n_0_[1] ),
        .I3(p_36_in),
        .I4(\rx_scp_d_r_reg_n_0_[3] ),
        .I5(p_6_in38_in),
        .O(p_8_out[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_scp_r_reg[1]_srl3_i_1 
       (.I0(\rx_pe_control_r_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(rx_spa_r[5]),
        .I3(p_0_in32_in),
        .I4(\rx_scp_d_r_reg_n_0_[7] ),
        .I5(p_2_in34_in),
        .O(p_8_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_snf_d_r[2]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[17] ),
        .I1(\word_aligned_data_r_reg_n_0_[18] ),
        .I2(\word_aligned_data_r_reg_n_0_[16] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\rx_snf_d_r[2]_i_1_n_0 ));
  FDRE \rx_snf_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__26/i__n_0 ),
        .Q(p_18_in),
        .R(1'b0));
  FDRE \rx_snf_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(EXP_IN_n_0),
        .Q(\rx_snf_d_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_snf_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_snf_d_r[2]_i_1_n_0 ),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool16_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool13_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \rx_sp_r[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\rx_sp_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[3]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(\rx_sp_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[4]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[18] ),
        .I1(\word_aligned_data_r_reg_n_0_[19] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[16] ),
        .O(\rx_sp_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[5]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[21] ),
        .I1(\word_aligned_data_r_reg_n_0_[23] ),
        .I2(\word_aligned_data_r_reg_n_0_[22] ),
        .I3(\word_aligned_data_r_reg_n_0_[20] ),
        .O(\rx_sp_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[6]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg_n_0_[27] ),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(\rx_sp_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[7]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[31] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[28] ),
        .O(\rx_sp_r[7]_i_1_n_0 ));
  FDRE \rx_sp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__0/i__n_0 ),
        .Q(rx_sp_r[0]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[2]_i_1_n_0 ),
        .Q(rx_sp_r[2]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[3]_i_1_n_0 ),
        .Q(rx_sp_r[3]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[4]_i_1_n_0 ),
        .Q(rx_sp_r[4]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[5]_i_1_n_0 ),
        .Q(rx_sp_r[5]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[6]_i_1_n_0 ),
        .Q(rx_sp_r[6]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_sp_r[7]_i_1_n_0 ),
        .Q(rx_sp_r[7]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__37/i__n_0 ),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__36/i__n_0 ),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__34/i__n_0 ),
        .Q(rx_spa_r[2]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__10/i__n_0 ),
        .Q(rx_spa_r[3]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__33/i__n_0 ),
        .Q(rx_spa_r[4]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__14/i__n_0 ),
        .Q(rx_spa_r[5]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__32/i__n_0 ),
        .Q(rx_spa_r[6]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__8/i__n_0 ),
        .Q(rx_spa_r[7]),
        .R(1'b0));
  FDRE \rx_suf_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__28/i__n_0 ),
        .Q(p_15_in),
        .R(1'b0));
  FDRE \rx_suf_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__27/i__n_0 ),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__5/i__n_0 ),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__4/i__n_0 ),
        .Q(rx_v_d_r[4]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__3/i__n_0 ),
        .Q(rx_v_d_r[5]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__2/i__n_0 ),
        .Q(rx_v_d_r[6]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__1/i__n_0 ),
        .Q(rx_v_d_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_control_bits_r[0]_i_1 
       (.I0(previous_cycle_control_r[2]),
        .I1(previous_cycle_control_r[1]),
        .I2(RXCHARISK[0]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(previous_cycle_control_r[0]),
        .O(\word_aligned_control_bits_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_control_bits_r[1]_i_1 
       (.I0(RXCHARISK[1]),
        .I1(previous_cycle_control_r[1]),
        .I2(previous_cycle_control_r[0]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXCHARISK[0]),
        .O(\word_aligned_control_bits_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_control_bits_r[2]_i_1 
       (.I0(previous_cycle_control_r[0]),
        .I1(RXCHARISK[1]),
        .I2(RXCHARISK[2]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXCHARISK[0]),
        .O(\word_aligned_control_bits_r[2]_i_1_n_0 ));
  FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[0]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[1]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[2]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[2]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[3]_0 ),
        .Q(word_aligned_control_bits_r[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[0]_i_1 
       (.I0(RXDATA[7]),
        .I1(\previous_cycle_data_r_reg_n_0_[23] ),
        .I2(\previous_cycle_data_r_reg[7]_0 [5]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[7]),
        .O(\word_aligned_data_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[10]_i_1 
       (.I0(p_2_in[5]),
        .I1(RXDATA[5]),
        .I2(RXDATA[13]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg_n_0_[5] ),
        .O(\word_aligned_data_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[11]_i_1 
       (.I0(RXDATA[12]),
        .I1(p_2_in[4]),
        .I2(RXDATA[4]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[7]_0 [3]),
        .O(\word_aligned_data_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[12]_i_1 
       (.I0(RXDATA[11]),
        .I1(p_2_in[3]),
        .I2(RXDATA[3]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[7]_0 [2]),
        .O(\word_aligned_data_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[13]_i_1 
       (.I0(RXDATA[10]),
        .I1(p_2_in[2]),
        .I2(RXDATA[2]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg_n_0_[2] ),
        .O(\word_aligned_data_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[14]_i_1 
       (.I0(RXDATA[9]),
        .I1(p_2_in[1]),
        .I2(RXDATA[1]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[7]_0 [1]),
        .O(\word_aligned_data_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[15]_i_1 
       (.I0(RXDATA[8]),
        .I1(p_2_in[0]),
        .I2(RXDATA[0]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[7]_0 [0]),
        .O(\word_aligned_data_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[18]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[5] ),
        .I1(RXDATA[13]),
        .I2(RXDATA[21]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXDATA[5]),
        .O(\word_aligned_data_r[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[1]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[22] ),
        .I1(\previous_cycle_data_r_reg[7]_0 [4]),
        .I2(RXDATA[6]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[6]),
        .O(\word_aligned_data_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[21]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[2] ),
        .I1(RXDATA[2]),
        .I2(RXDATA[18]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXDATA[10]),
        .O(\word_aligned_data_r[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[2]_i_1 
       (.I0(RXDATA[5]),
        .I1(\previous_cycle_data_r_reg_n_0_[21] ),
        .I2(\previous_cycle_data_r_reg_n_0_[5] ),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[5]),
        .O(\word_aligned_data_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[3]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[20] ),
        .I1(\previous_cycle_data_r_reg[7]_0 [3]),
        .I2(RXDATA[4]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[4]),
        .O(\word_aligned_data_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[4]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[19] ),
        .I1(\previous_cycle_data_r_reg[7]_0 [2]),
        .I2(RXDATA[3]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[3]),
        .O(\word_aligned_data_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[5]_i_1 
       (.I0(RXDATA[2]),
        .I1(\previous_cycle_data_r_reg_n_0_[18] ),
        .I2(p_2_in[2]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(\previous_cycle_data_r_reg_n_0_[2] ),
        .O(\word_aligned_data_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[6]_i_1 
       (.I0(RXDATA[1]),
        .I1(\previous_cycle_data_r_reg_n_0_[17] ),
        .I2(\previous_cycle_data_r_reg[7]_0 [1]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[1]),
        .O(\word_aligned_data_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[7]_i_1 
       (.I0(RXDATA[0]),
        .I1(\previous_cycle_data_r_reg_n_0_[16] ),
        .I2(p_2_in[0]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(\previous_cycle_data_r_reg[7]_0 [0]),
        .O(\word_aligned_data_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[8]_i_1 
       (.I0(RXDATA[15]),
        .I1(p_2_in[7]),
        .I2(\previous_cycle_data_r_reg[7]_0 [5]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXDATA[7]),
        .O(\word_aligned_data_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[9]_i_1 
       (.I0(RXDATA[14]),
        .I1(p_2_in[6]),
        .I2(\previous_cycle_data_r_reg[7]_0 [4]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXDATA[6]),
        .O(\word_aligned_data_r[9]_i_1_n_0 ));
  FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[0]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[10]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[11]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[12]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[13]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[14]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[15]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [4]),
        .Q(\word_aligned_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[18]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[1]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[21]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [7]),
        .Q(\word_aligned_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [6]),
        .Q(\word_aligned_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [4]),
        .Q(\word_aligned_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[2]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[3]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[4]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[5]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[6]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[7]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[8]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[9]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

module aurora_8b10b_SYM_GEN_4BYTE
   (gen_cc_r,
    gen_sp_r,
    \TX_CHAR_IS_K_Buffer_reg[3]_0 ,
    \TX_CHAR_IS_K_Buffer_reg[3]_1 ,
    EN,
    reset_lanes_flop_i,
    \TX_DATA_Buffer_reg[15]_0 ,
    D,
    \TX_DATA_Buffer_reg[14]_0 ,
    \TX_DATA_Buffer_reg[13]_0 ,
    \TX_DATA_Buffer_reg[12]_0 ,
    \TX_DATA_Buffer_reg[11]_0 ,
    \TX_DATA_Buffer_reg[10]_0 ,
    \TX_DATA_Buffer_reg[9]_0 ,
    \TX_DATA_Buffer_reg[8]_0 ,
    \TX_DATA_Buffer_reg[5]_0 ,
    \TX_DATA_Buffer_reg[4]_0 ,
    \TX_DATA_Buffer_reg[1]_0 ,
    \TX_DATA_Buffer_reg[0]_0 ,
    \TX_DATA_Buffer_reg[31]_0 ,
    \TX_DATA_Buffer_reg[30]_0 ,
    \TX_DATA_Buffer_reg[29]_0 ,
    \TX_DATA_Buffer_reg[28]_0 ,
    \TX_DATA_Buffer_reg[27]_0 ,
    \TX_DATA_Buffer_reg[26]_0 ,
    \TX_DATA_Buffer_reg[25]_0 ,
    \TX_DATA_Buffer_reg[24]_0 ,
    \TX_DATA_Buffer_reg[21]_0 ,
    \TX_DATA_Buffer_reg[20]_0 ,
    \TX_DATA_Buffer_reg[17]_0 ,
    \TX_DATA_Buffer_reg[16]_0 ,
    gen_cc_i,
    user_clk,
    gen_sp_i,
    GEN_SUF,
    GEN_SNF,
    GEN_ECP,
    GEN_SCP,
    GEN_A,
    gen_v_r2,
    \DOUT_reg[0] ,
    reset_lanes_i,
    Q,
    \DOUT_reg[0]_0 ,
    \TX_CHAR_IS_K_Buffer_reg[0]_0 ,
    \TX_DATA_Buffer_reg[24]_1 ,
    \gen_v_r_reg[1]_0 ,
    \gen_pad_r_reg[0]_0 ,
    \tx_pe_data_v_r_reg[0]_0 ,
    \gen_r_r_reg[0]_0 ,
    \gen_k_r_reg[0]_0 ,
    \fc_nb_r_reg[0]_0 ,
    \tx_pe_data_r_reg[0]_0 );
  output gen_cc_r;
  output gen_sp_r;
  output [3:0]\TX_CHAR_IS_K_Buffer_reg[3]_0 ;
  output [1:0]\TX_CHAR_IS_K_Buffer_reg[3]_1 ;
  output EN;
  output reset_lanes_flop_i;
  output \TX_DATA_Buffer_reg[15]_0 ;
  output [31:0]D;
  output \TX_DATA_Buffer_reg[14]_0 ;
  output \TX_DATA_Buffer_reg[13]_0 ;
  output \TX_DATA_Buffer_reg[12]_0 ;
  output \TX_DATA_Buffer_reg[11]_0 ;
  output \TX_DATA_Buffer_reg[10]_0 ;
  output \TX_DATA_Buffer_reg[9]_0 ;
  output \TX_DATA_Buffer_reg[8]_0 ;
  output \TX_DATA_Buffer_reg[5]_0 ;
  output \TX_DATA_Buffer_reg[4]_0 ;
  output \TX_DATA_Buffer_reg[1]_0 ;
  output \TX_DATA_Buffer_reg[0]_0 ;
  output \TX_DATA_Buffer_reg[31]_0 ;
  output \TX_DATA_Buffer_reg[30]_0 ;
  output \TX_DATA_Buffer_reg[29]_0 ;
  output \TX_DATA_Buffer_reg[28]_0 ;
  output \TX_DATA_Buffer_reg[27]_0 ;
  output \TX_DATA_Buffer_reg[26]_0 ;
  output \TX_DATA_Buffer_reg[25]_0 ;
  output \TX_DATA_Buffer_reg[24]_0 ;
  output \TX_DATA_Buffer_reg[21]_0 ;
  output \TX_DATA_Buffer_reg[20]_0 ;
  output \TX_DATA_Buffer_reg[17]_0 ;
  output \TX_DATA_Buffer_reg[16]_0 ;
  input gen_cc_i;
  input user_clk;
  input gen_sp_i;
  input [0:0]GEN_SUF;
  input [0:0]GEN_SNF;
  input [0:0]GEN_ECP;
  input [0:0]GEN_SCP;
  input GEN_A;
  input gen_v_r2;
  input \DOUT_reg[0] ;
  input reset_lanes_i;
  input [11:0]Q;
  input [11:0]\DOUT_reg[0]_0 ;
  input \TX_CHAR_IS_K_Buffer_reg[0]_0 ;
  input \TX_DATA_Buffer_reg[24]_1 ;
  input [2:0]\gen_v_r_reg[1]_0 ;
  input [1:0]\gen_pad_r_reg[0]_0 ;
  input [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  input [3:0]\gen_r_r_reg[0]_0 ;
  input [3:0]\gen_k_r_reg[0]_0 ;
  input [3:0]\fc_nb_r_reg[0]_0 ;
  input [31:0]\tx_pe_data_r_reg[0]_0 ;

  wire [31:0]D;
  wire \DOUT_reg[0] ;
  wire [11:0]\DOUT_reg[0]_0 ;
  wire EN;
  wire GEN_A;
  wire [0:0]GEN_ECP;
  wire [0:0]GEN_SCP;
  wire [0:0]GEN_SNF;
  wire [0:0]GEN_SUF;
  wire [11:0]Q;
  wire \TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ;
  wire TX_CHAR_IS_K_Buffer_reg0;
  wire TX_CHAR_IS_K_Buffer_reg014_out;
  wire TX_CHAR_IS_K_Buffer_reg03_out;
  wire TX_CHAR_IS_K_Buffer_reg08_out;
  wire \TX_CHAR_IS_K_Buffer_reg[0]_0 ;
  wire [3:0]\TX_CHAR_IS_K_Buffer_reg[3]_0 ;
  wire [1:0]\TX_CHAR_IS_K_Buffer_reg[3]_1 ;
  wire \TX_DATA_Buffer[0]_i_1_n_0 ;
  wire \TX_DATA_Buffer[10]_i_1_n_0 ;
  wire \TX_DATA_Buffer[11]_i_1_n_0 ;
  wire \TX_DATA_Buffer[12]_i_1_n_0 ;
  wire \TX_DATA_Buffer[13]_i_1_n_0 ;
  wire \TX_DATA_Buffer[14]_i_1_n_0 ;
  wire \TX_DATA_Buffer[14]_i_2_n_0 ;
  wire \TX_DATA_Buffer[15]_i_1_n_0 ;
  wire \TX_DATA_Buffer[15]_i_2_n_0 ;
  wire \TX_DATA_Buffer[15]_i_3_n_0 ;
  wire \TX_DATA_Buffer[16]_i_1_n_0 ;
  wire \TX_DATA_Buffer[17]_i_1_n_0 ;
  wire \TX_DATA_Buffer[18]_i_1_n_0 ;
  wire \TX_DATA_Buffer[18]_i_2_n_0 ;
  wire \TX_DATA_Buffer[19]_i_1_n_0 ;
  wire \TX_DATA_Buffer[1]_i_1_n_0 ;
  wire \TX_DATA_Buffer[20]_i_1_n_0 ;
  wire \TX_DATA_Buffer[20]_i_2_n_0 ;
  wire \TX_DATA_Buffer[21]_i_1_n_0 ;
  wire \TX_DATA_Buffer[21]_i_2_n_0 ;
  wire \TX_DATA_Buffer[21]_i_3_n_0 ;
  wire \TX_DATA_Buffer[21]_i_4_n_0 ;
  wire \TX_DATA_Buffer[22]_i_1_n_0 ;
  wire \TX_DATA_Buffer[22]_i_2_n_0 ;
  wire \TX_DATA_Buffer[22]_i_3_n_0 ;
  wire \TX_DATA_Buffer[23]_i_1_n_0 ;
  wire \TX_DATA_Buffer[23]_i_2_n_0 ;
  wire \TX_DATA_Buffer[23]_i_3_n_0 ;
  wire \TX_DATA_Buffer[23]_i_4_n_0 ;
  wire \TX_DATA_Buffer[23]_i_5_n_0 ;
  wire \TX_DATA_Buffer[23]_i_6_n_0 ;
  wire \TX_DATA_Buffer[24]_i_1_n_0 ;
  wire \TX_DATA_Buffer[25]_i_1_n_0 ;
  wire \TX_DATA_Buffer[26]_i_1_n_0 ;
  wire \TX_DATA_Buffer[27]_i_1_n_0 ;
  wire \TX_DATA_Buffer[28]_i_1_n_0 ;
  wire \TX_DATA_Buffer[28]_i_2_n_0 ;
  wire \TX_DATA_Buffer[29]_i_1_n_0 ;
  wire \TX_DATA_Buffer[29]_i_2_n_0 ;
  wire \TX_DATA_Buffer[2]_i_1_n_0 ;
  wire \TX_DATA_Buffer[30]_i_1_n_0 ;
  wire \TX_DATA_Buffer[30]_i_2_n_0 ;
  wire \TX_DATA_Buffer[31]_i_1_n_0 ;
  wire \TX_DATA_Buffer[31]_i_2_n_0 ;
  wire \TX_DATA_Buffer[31]_i_3_n_0 ;
  wire \TX_DATA_Buffer[3]_i_1_n_0 ;
  wire \TX_DATA_Buffer[4]_i_1_n_0 ;
  wire \TX_DATA_Buffer[5]_i_1_n_0 ;
  wire \TX_DATA_Buffer[5]_i_2_n_0 ;
  wire \TX_DATA_Buffer[6]_i_1_n_0 ;
  wire \TX_DATA_Buffer[6]_i_2_n_0 ;
  wire \TX_DATA_Buffer[6]_i_3_n_0 ;
  wire \TX_DATA_Buffer[7]_i_1_n_0 ;
  wire \TX_DATA_Buffer[7]_i_2_n_0 ;
  wire \TX_DATA_Buffer[7]_i_3_n_0 ;
  wire \TX_DATA_Buffer[7]_i_4_n_0 ;
  wire \TX_DATA_Buffer[7]_i_5_n_0 ;
  wire \TX_DATA_Buffer[8]_i_1_n_0 ;
  wire \TX_DATA_Buffer[9]_i_1_n_0 ;
  wire \TX_DATA_Buffer_reg[0]_0 ;
  wire \TX_DATA_Buffer_reg[10]_0 ;
  wire \TX_DATA_Buffer_reg[11]_0 ;
  wire \TX_DATA_Buffer_reg[12]_0 ;
  wire \TX_DATA_Buffer_reg[13]_0 ;
  wire \TX_DATA_Buffer_reg[14]_0 ;
  wire \TX_DATA_Buffer_reg[15]_0 ;
  wire \TX_DATA_Buffer_reg[16]_0 ;
  wire \TX_DATA_Buffer_reg[17]_0 ;
  wire \TX_DATA_Buffer_reg[1]_0 ;
  wire \TX_DATA_Buffer_reg[20]_0 ;
  wire \TX_DATA_Buffer_reg[21]_0 ;
  wire \TX_DATA_Buffer_reg[24]_0 ;
  wire \TX_DATA_Buffer_reg[24]_1 ;
  wire \TX_DATA_Buffer_reg[25]_0 ;
  wire \TX_DATA_Buffer_reg[26]_0 ;
  wire \TX_DATA_Buffer_reg[27]_0 ;
  wire \TX_DATA_Buffer_reg[28]_0 ;
  wire \TX_DATA_Buffer_reg[29]_0 ;
  wire \TX_DATA_Buffer_reg[30]_0 ;
  wire \TX_DATA_Buffer_reg[31]_0 ;
  wire \TX_DATA_Buffer_reg[4]_0 ;
  wire \TX_DATA_Buffer_reg[5]_0 ;
  wire \TX_DATA_Buffer_reg[8]_0 ;
  wire \TX_DATA_Buffer_reg[9]_0 ;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [0:3]fc_nb_r;
  wire [3:0]\fc_nb_r_reg[0]_0 ;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire \gen_ecp_r_reg_n_0_[1] ;
  wire [3:0]\gen_k_r_reg[0]_0 ;
  wire \gen_k_r_reg_n_0_[3] ;
  wire [1:0]\gen_pad_r_reg[0]_0 ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire [3:0]\gen_r_r_reg[0]_0 ;
  wire \gen_r_r_reg_n_0_[3] ;
  wire gen_sp_i;
  wire gen_sp_r;
  wire gen_v_r2;
  wire [2:0]\gen_v_r_reg[1]_0 ;
  wire \gen_v_r_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in16_in;
  wire p_2_in;
  wire p_3_in;
  wire reset_lanes_flop_i;
  wire reset_lanes_i;
  wire [31:0]\tx_pe_data_r_reg[0]_0 ;
  wire \tx_pe_data_r_reg_n_0_[0] ;
  wire \tx_pe_data_r_reg_n_0_[1] ;
  wire \tx_pe_data_r_reg_n_0_[24] ;
  wire \tx_pe_data_r_reg_n_0_[25] ;
  wire \tx_pe_data_r_reg_n_0_[26] ;
  wire \tx_pe_data_r_reg_n_0_[27] ;
  wire \tx_pe_data_r_reg_n_0_[28] ;
  wire \tx_pe_data_r_reg_n_0_[29] ;
  wire \tx_pe_data_r_reg_n_0_[2] ;
  wire \tx_pe_data_r_reg_n_0_[30] ;
  wire \tx_pe_data_r_reg_n_0_[31] ;
  wire \tx_pe_data_r_reg_n_0_[3] ;
  wire \tx_pe_data_r_reg_n_0_[4] ;
  wire \tx_pe_data_r_reg_n_0_[5] ;
  wire \tx_pe_data_r_reg_n_0_[6] ;
  wire \tx_pe_data_r_reg_n_0_[7] ;
  wire [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1 
       (.I0(D[0]),
        .I1(Q[11]),
        .O(\TX_DATA_Buffer_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__0 
       (.I0(D[16]),
        .I1(\DOUT_reg[0]_0 [11]),
        .O(\TX_DATA_Buffer_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1 
       (.I0(D[10]),
        .I1(Q[5]),
        .O(\TX_DATA_Buffer_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__0 
       (.I0(D[26]),
        .I1(\DOUT_reg[0]_0 [5]),
        .O(\TX_DATA_Buffer_reg[26]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1 
       (.I0(D[11]),
        .I1(Q[4]),
        .O(\TX_DATA_Buffer_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__0 
       (.I0(D[27]),
        .I1(\DOUT_reg[0]_0 [4]),
        .O(\TX_DATA_Buffer_reg[27]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1 
       (.I0(D[12]),
        .I1(Q[3]),
        .O(\TX_DATA_Buffer_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__0 
       (.I0(D[28]),
        .I1(\DOUT_reg[0]_0 [3]),
        .O(\TX_DATA_Buffer_reg[28]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1 
       (.I0(D[13]),
        .I1(Q[2]),
        .O(\TX_DATA_Buffer_reg[13]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__0 
       (.I0(D[29]),
        .I1(\DOUT_reg[0]_0 [2]),
        .O(\TX_DATA_Buffer_reg[29]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1 
       (.I0(D[14]),
        .I1(Q[1]),
        .O(\TX_DATA_Buffer_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__0 
       (.I0(D[30]),
        .I1(\DOUT_reg[0]_0 [1]),
        .O(\TX_DATA_Buffer_reg[30]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1 
       (.I0(D[15]),
        .I1(Q[0]),
        .O(\TX_DATA_Buffer_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__0 
       (.I0(D[31]),
        .I1(\DOUT_reg[0]_0 [0]),
        .O(\TX_DATA_Buffer_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1 
       (.I0(D[1]),
        .I1(Q[10]),
        .O(\TX_DATA_Buffer_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__0 
       (.I0(D[17]),
        .I1(\DOUT_reg[0]_0 [10]),
        .O(\TX_DATA_Buffer_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1 
       (.I0(D[4]),
        .I1(Q[9]),
        .O(\TX_DATA_Buffer_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__0 
       (.I0(D[20]),
        .I1(\DOUT_reg[0]_0 [9]),
        .O(\TX_DATA_Buffer_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1 
       (.I0(D[5]),
        .I1(Q[8]),
        .O(\TX_DATA_Buffer_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__0 
       (.I0(D[21]),
        .I1(\DOUT_reg[0]_0 [8]),
        .O(\TX_DATA_Buffer_reg[21]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1 
       (.I0(D[8]),
        .I1(Q[7]),
        .O(\TX_DATA_Buffer_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__0 
       (.I0(D[24]),
        .I1(\DOUT_reg[0]_0 [7]),
        .O(\TX_DATA_Buffer_reg[24]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1 
       (.I0(D[9]),
        .I1(Q[6]),
        .O(\TX_DATA_Buffer_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__0 
       (.I0(D[25]),
        .I1(\DOUT_reg[0]_0 [6]),
        .O(\TX_DATA_Buffer_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAF)) 
    \TX_CHAR_IS_K_Buffer[0]_i_1 
       (.I0(gen_cc_r),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\gen_v_r_reg_n_0_[3] ),
        .I3(gen_sp_r),
        .I4(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I5(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(TX_CHAR_IS_K_Buffer_reg0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \TX_CHAR_IS_K_Buffer[1]_i_1 
       (.I0(p_1_in),
        .I1(gen_sp_r),
        .I2(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(gen_cc_r),
        .O(TX_CHAR_IS_K_Buffer_reg03_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000000B)) 
    \TX_CHAR_IS_K_Buffer[2]_i_1 
       (.I0(p_0_in12_in),
        .I1(p_1_in11_in),
        .I2(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I3(\TX_DATA_Buffer_reg[24]_1 ),
        .I4(p_3_in),
        .I5(gen_cc_r),
        .O(TX_CHAR_IS_K_Buffer_reg08_out));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TX_CHAR_IS_K_Buffer[2]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in5_in),
        .O(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \TX_CHAR_IS_K_Buffer[3]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .O(TX_CHAR_IS_K_Buffer_reg014_out));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg0),
        .Q(\TX_CHAR_IS_K_Buffer_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg03_out),
        .Q(\TX_CHAR_IS_K_Buffer_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg08_out),
        .Q(\TX_CHAR_IS_K_Buffer_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg014_out),
        .Q(\TX_CHAR_IS_K_Buffer_reg[3]_0 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00002E22)) 
    \TX_DATA_Buffer[0]_i_1 
       (.I0(gen_cc_r),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_r_reg_n_0_[31] ),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F3F0F0F2F3)) 
    \TX_DATA_Buffer[10]_i_1 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I3(\TX_DATA_Buffer[14]_i_2_n_0 ),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(data0[2]),
        .O(\TX_DATA_Buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hEECF)) 
    \TX_DATA_Buffer[11]_i_1 
       (.I0(data0[3]),
        .I1(\gen_ecp_r_reg_n_0_[1] ),
        .I2(gen_cc_r),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAAEEEEAAAF)) 
    \TX_DATA_Buffer[12]_i_1 
       (.I0(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I1(data0[4]),
        .I2(gen_sp_r),
        .I3(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(\TX_DATA_Buffer[14]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF3F2F0F0F3F2)) 
    \TX_DATA_Buffer[13]_i_1 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I3(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(data0[5]),
        .O(\TX_DATA_Buffer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEECCCCEFEE)) 
    \TX_DATA_Buffer[14]_i_1 
       (.I0(gen_sp_r),
        .I1(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I2(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I3(\TX_DATA_Buffer[14]_i_2_n_0 ),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(data0[6]),
        .O(\TX_DATA_Buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \TX_DATA_Buffer[14]_i_2 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(p_0_in4_in),
        .O(\TX_DATA_Buffer[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[15]_i_1 
       (.I0(p_0_in4_in),
        .I1(p_0_in),
        .I2(gen_cc_r),
        .I3(\gen_ecp_r_reg_n_0_[1] ),
        .I4(p_1_in),
        .I5(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAFEEEEAAAA)) 
    \TX_DATA_Buffer[15]_i_2 
       (.I0(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I1(data0[7]),
        .I2(gen_sp_r),
        .I3(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \TX_DATA_Buffer[15]_i_3 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(p_0_in4_in),
        .O(\TX_DATA_Buffer[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F2F2FFF0)) 
    \TX_DATA_Buffer[16]_i_1 
       (.I0(data1[0]),
        .I1(p_0_in12_in),
        .I2(p_1_in16_in),
        .I3(gen_cc_r),
        .I4(p_1_in11_in),
        .I5(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAFFAABAAAAA)) 
    \TX_DATA_Buffer[17]_i_1 
       (.I0(\TX_DATA_Buffer[21]_i_4_n_0 ),
        .I1(p_0_in12_in),
        .I2(data1[1]),
        .I3(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I4(p_1_in11_in),
        .I5(gen_sp_r),
        .O(\TX_DATA_Buffer[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0F0C0FFFFF5D5)) 
    \TX_DATA_Buffer[18]_i_1 
       (.I0(\TX_DATA_Buffer[22]_i_2_n_0 ),
        .I1(data1[2]),
        .I2(\TX_DATA_Buffer[18]_i_2_n_0 ),
        .I3(p_0_in12_in),
        .I4(gen_cc_r),
        .I5(\TX_DATA_Buffer[23]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \TX_DATA_Buffer[18]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in5_in),
        .I2(p_1_in11_in),
        .I3(p_1_in16_in),
        .O(\TX_DATA_Buffer[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F5F0FCF0F5)) 
    \TX_DATA_Buffer[19]_i_1 
       (.I0(gen_cc_r),
        .I1(data1[3]),
        .I2(p_1_in16_in),
        .I3(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I4(p_1_in11_in),
        .I5(p_0_in12_in),
        .O(\TX_DATA_Buffer[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2F2FFFFF2F20)) 
    \TX_DATA_Buffer[1]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[30] ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .I5(gen_sp_r),
        .O(\TX_DATA_Buffer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB888)) 
    \TX_DATA_Buffer[20]_i_1 
       (.I0(fc_nb_r[3]),
        .I1(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I2(p_1_in11_in),
        .I3(data1[4]),
        .I4(\TX_DATA_Buffer[20]_i_2_n_0 ),
        .I5(\TX_DATA_Buffer[23]_i_5_n_0 ),
        .O(\TX_DATA_Buffer[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \TX_DATA_Buffer[20]_i_2 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(\TX_DATA_Buffer[23]_i_6_n_0 ),
        .I3(p_0_in8_in),
        .I4(p_0_in6_in),
        .I5(p_3_in),
        .O(\TX_DATA_Buffer[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \TX_DATA_Buffer[21]_i_1 
       (.I0(fc_nb_r[2]),
        .I1(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I2(\TX_DATA_Buffer[21]_i_2_n_0 ),
        .I3(data1[5]),
        .I4(\TX_DATA_Buffer[21]_i_3_n_0 ),
        .I5(\TX_DATA_Buffer[21]_i_4_n_0 ),
        .O(\TX_DATA_Buffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \TX_DATA_Buffer[21]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in5_in),
        .I2(p_1_in11_in),
        .I3(p_0_in12_in),
        .O(\TX_DATA_Buffer[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111011)) 
    \TX_DATA_Buffer[21]_i_3 
       (.I0(gen_sp_r),
        .I1(\TX_DATA_Buffer[23]_i_6_n_0 ),
        .I2(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I3(p_0_in6_in),
        .I4(p_3_in),
        .I5(p_0_in8_in),
        .O(\TX_DATA_Buffer[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \TX_DATA_Buffer[21]_i_4 
       (.I0(p_0_in5_in),
        .I1(p_2_in),
        .I2(p_1_in11_in),
        .I3(gen_cc_r),
        .I4(p_1_in16_in),
        .O(\TX_DATA_Buffer[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCFCFCFCFFFE)) 
    \TX_DATA_Buffer[22]_i_1 
       (.I0(\TX_DATA_Buffer[22]_i_2_n_0 ),
        .I1(\TX_DATA_Buffer[22]_i_3_n_0 ),
        .I2(p_1_in16_in),
        .I3(gen_cc_r),
        .I4(p_1_in11_in),
        .I5(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEEEF)) 
    \TX_DATA_Buffer[22]_i_2 
       (.I0(gen_sp_r),
        .I1(p_3_in),
        .I2(p_0_in6_in),
        .I3(p_0_in8_in),
        .I4(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .O(\TX_DATA_Buffer[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA0AAA0AAACAAA0)) 
    \TX_DATA_Buffer[22]_i_3 
       (.I0(fc_nb_r[1]),
        .I1(data1[6]),
        .I2(p_2_in),
        .I3(p_0_in5_in),
        .I4(p_1_in11_in),
        .I5(p_0_in12_in),
        .O(\TX_DATA_Buffer[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[23]_i_1 
       (.I0(\TX_DATA_Buffer[23]_i_3_n_0 ),
        .I1(p_0_in8_in),
        .I2(p_0_in6_in),
        .I3(\TX_DATA_Buffer_reg[24]_1 ),
        .I4(gen_cc_r),
        .I5(p_3_in),
        .O(\TX_DATA_Buffer[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB888)) 
    \TX_DATA_Buffer[23]_i_2 
       (.I0(fc_nb_r[0]),
        .I1(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I2(p_1_in11_in),
        .I3(data1[7]),
        .I4(\TX_DATA_Buffer[23]_i_4_n_0 ),
        .I5(\TX_DATA_Buffer[23]_i_5_n_0 ),
        .O(\TX_DATA_Buffer[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA_Buffer[23]_i_3 
       (.I0(p_1_in11_in),
        .I1(p_2_in),
        .I2(p_0_in5_in),
        .I3(p_1_in16_in),
        .O(\TX_DATA_Buffer[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001010101)) 
    \TX_DATA_Buffer[23]_i_4 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(\TX_DATA_Buffer[23]_i_6_n_0 ),
        .I3(p_0_in8_in),
        .I4(p_3_in),
        .I5(p_0_in6_in),
        .O(\TX_DATA_Buffer[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCEEFC)) 
    \TX_DATA_Buffer[23]_i_5 
       (.I0(p_0_in12_in),
        .I1(p_1_in16_in),
        .I2(gen_cc_r),
        .I3(p_1_in11_in),
        .I4(p_2_in),
        .I5(p_0_in5_in),
        .O(\TX_DATA_Buffer[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA_Buffer[23]_i_6 
       (.I0(p_0_in5_in),
        .I1(p_2_in),
        .I2(p_1_in11_in),
        .O(\TX_DATA_Buffer[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \TX_DATA_Buffer[24]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[7] ),
        .I1(p_1_in11_in),
        .I2(p_2_in),
        .I3(p_0_in5_in),
        .I4(p_1_in16_in),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \TX_DATA_Buffer[25]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[6] ),
        .I1(p_1_in11_in),
        .I2(p_2_in),
        .I3(p_0_in5_in),
        .I4(p_1_in16_in),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFC)) 
    \TX_DATA_Buffer[26]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[5] ),
        .I1(p_0_in5_in),
        .I2(p_2_in),
        .I3(p_1_in16_in),
        .I4(\TX_DATA_Buffer[28]_i_2_n_0 ),
        .I5(p_1_in11_in),
        .O(\TX_DATA_Buffer[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFEFEFEFF)) 
    \TX_DATA_Buffer[27]_i_1 
       (.I0(p_0_in5_in),
        .I1(p_2_in),
        .I2(p_1_in16_in),
        .I3(gen_cc_r),
        .I4(p_1_in11_in),
        .I5(\tx_pe_data_r_reg_n_0_[4] ),
        .O(\TX_DATA_Buffer[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFC)) 
    \TX_DATA_Buffer[28]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[3] ),
        .I1(p_0_in5_in),
        .I2(p_2_in),
        .I3(p_1_in16_in),
        .I4(\TX_DATA_Buffer[28]_i_2_n_0 ),
        .I5(p_1_in11_in),
        .O(\TX_DATA_Buffer[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[28]_i_2 
       (.I0(gen_sp_r),
        .I1(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I2(gen_cc_r),
        .I3(gen_a_r),
        .I4(p_0_in16_in),
        .I5(p_0_in14_in),
        .O(\TX_DATA_Buffer[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F000BB)) 
    \TX_DATA_Buffer[29]_i_1 
       (.I0(\TX_DATA_Buffer[29]_i_2_n_0 ),
        .I1(p_0_in14_in),
        .I2(\tx_pe_data_r_reg_n_0_[2] ),
        .I3(\TX_CHAR_IS_K_Buffer[2]_i_2_n_0 ),
        .I4(p_1_in11_in),
        .I5(p_1_in16_in),
        .O(\TX_DATA_Buffer[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TX_DATA_Buffer[29]_i_2 
       (.I0(p_0_in16_in),
        .I1(gen_a_r),
        .I2(gen_cc_r),
        .I3(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I4(gen_sp_r),
        .O(\TX_DATA_Buffer[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAB)) 
    \TX_DATA_Buffer[2]_i_1 
       (.I0(\TX_DATA_Buffer[5]_i_2_n_0 ),
        .I1(gen_sp_r),
        .I2(\TX_DATA_Buffer[6]_i_3_n_0 ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\gen_pad_r_reg_n_0_[1] ),
        .I5(\tx_pe_data_r_reg_n_0_[29] ),
        .O(\TX_DATA_Buffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5410)) 
    \TX_DATA_Buffer[30]_i_1 
       (.I0(p_2_in),
        .I1(p_1_in11_in),
        .I2(\TX_DATA_Buffer[30]_i_2_n_0 ),
        .I3(\tx_pe_data_r_reg_n_0_[1] ),
        .I4(p_1_in16_in),
        .I5(p_0_in5_in),
        .O(\TX_DATA_Buffer[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11110001)) 
    \TX_DATA_Buffer[30]_i_2 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(p_0_in14_in),
        .I3(p_0_in16_in),
        .I4(gen_a_r),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[31]_i_1 
       (.I0(p_0_in14_in),
        .I1(p_0_in16_in),
        .I2(gen_a_r),
        .I3(gen_cc_r),
        .I4(\TX_DATA_Buffer_reg[24]_1 ),
        .I5(\TX_DATA_Buffer[23]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FE00FC00FE)) 
    \TX_DATA_Buffer[31]_i_2 
       (.I0(\TX_DATA_Buffer[31]_i_3_n_0 ),
        .I1(p_0_in5_in),
        .I2(p_2_in),
        .I3(p_1_in16_in),
        .I4(p_1_in11_in),
        .I5(\tx_pe_data_r_reg_n_0_[0] ),
        .O(\TX_DATA_Buffer[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF45)) 
    \TX_DATA_Buffer[31]_i_3 
       (.I0(gen_a_r),
        .I1(p_0_in16_in),
        .I2(p_0_in14_in),
        .I3(gen_cc_r),
        .I4(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I5(gen_sp_r),
        .O(\TX_DATA_Buffer[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEF0FF)) 
    \TX_DATA_Buffer[3]_i_1 
       (.I0(\gen_pad_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[28] ),
        .I2(\gen_ecp_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFEAAFEAAFFFF)) 
    \TX_DATA_Buffer[4]_i_1 
       (.I0(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I1(\tx_pe_data_r_reg_n_0_[27] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .I5(\TX_DATA_Buffer[6]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABAAAFFBABAAAAA)) 
    \TX_DATA_Buffer[5]_i_1 
       (.I0(\TX_DATA_Buffer[5]_i_2_n_0 ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_r_reg_n_0_[26] ),
        .I3(gen_sp_r),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I5(\TX_DATA_Buffer[7]_i_5_n_0 ),
        .O(\TX_DATA_Buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hF0F0FFF2)) 
    \TX_DATA_Buffer[5]_i_2 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(gen_sp_r),
        .I2(\gen_ecp_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .I4(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABAAAAAFFAA)) 
    \TX_DATA_Buffer[6]_i_1 
       (.I0(\TX_DATA_Buffer[6]_i_2_n_0 ),
        .I1(\gen_pad_r_reg_n_0_[1] ),
        .I2(\tx_pe_data_r_reg_n_0_[25] ),
        .I3(\TX_DATA_Buffer[6]_i_3_n_0 ),
        .I4(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I5(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hCCFE)) 
    \TX_DATA_Buffer[6]_i_2 
       (.I0(gen_sp_r),
        .I1(\gen_ecp_r_reg_n_0_[1] ),
        .I2(gen_cc_r),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \TX_DATA_Buffer[6]_i_3 
       (.I0(\gen_v_r_reg_n_0_[3] ),
        .I1(\gen_r_r_reg_n_0_[3] ),
        .I2(\gen_k_r_reg_n_0_[3] ),
        .O(\TX_DATA_Buffer[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[7]_i_1 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_r_r_reg_n_0_[3] ),
        .I2(gen_cc_r),
        .I3(\gen_ecp_r_reg_n_0_[1] ),
        .I4(\gen_v_r_reg_n_0_[3] ),
        .I5(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAAFEAA)) 
    \TX_DATA_Buffer[7]_i_2 
       (.I0(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I1(\tx_pe_data_r_reg_n_0_[24] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .I5(\TX_DATA_Buffer[7]_i_5_n_0 ),
        .O(\TX_DATA_Buffer[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA_Buffer[7]_i_3 
       (.I0(gen_sp_r),
        .I1(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_DATA_Buffer[7]_i_4 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(gen_cc_r),
        .I2(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \TX_DATA_Buffer[7]_i_5 
       (.I0(\gen_r_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_k_r_reg_n_0_[3] ),
        .O(\TX_DATA_Buffer[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hEEFC)) 
    \TX_DATA_Buffer[8]_i_1 
       (.I0(data0[0]),
        .I1(\gen_ecp_r_reg_n_0_[1] ),
        .I2(gen_cc_r),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAFC)) 
    \TX_DATA_Buffer[9]_i_1 
       (.I0(data0[1]),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[9]_i_1_n_0 ));
  FDRE \TX_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[10]_i_1_n_0 ),
        .Q(D[10]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[11]_i_1_n_0 ),
        .Q(D[11]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[12]_i_1_n_0 ),
        .Q(D[12]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[13]_i_1_n_0 ),
        .Q(D[13]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[14]_i_1_n_0 ),
        .Q(D[14]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[15]_i_2_n_0 ),
        .Q(D[15]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[16]_i_1_n_0 ),
        .Q(D[16]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[17]_i_1_n_0 ),
        .Q(D[17]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[18]_i_1_n_0 ),
        .Q(D[18]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[19]_i_1_n_0 ),
        .Q(D[19]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[20]_i_1_n_0 ),
        .Q(D[20]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[21]_i_1_n_0 ),
        .Q(D[21]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[22]_i_1_n_0 ),
        .Q(D[22]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[23]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[23]_i_2_n_0 ),
        .Q(D[23]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[24]_i_1_n_0 ),
        .Q(D[24]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[25]_i_1_n_0 ),
        .Q(D[25]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[26]_i_1_n_0 ),
        .Q(D[26]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[27]_i_1_n_0 ),
        .Q(D[27]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[28]_i_1_n_0 ),
        .Q(D[28]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[29]_i_1_n_0 ),
        .Q(D[29]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[30]_i_1_n_0 ),
        .Q(D[30]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[31]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[31]_i_2_n_0 ),
        .Q(D[31]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[7]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[7]_i_2_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \bypass_r[0]_i_1__0 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[3]_0 [1]),
        .I1(\TX_CHAR_IS_K_Buffer_reg[3]_0 [0]),
        .I2(gen_v_r2),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\TX_CHAR_IS_K_Buffer_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \bypass_r[1]_i_1__0 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[3]_0 [3]),
        .I1(\TX_CHAR_IS_K_Buffer_reg[3]_0 [2]),
        .I2(gen_v_r2),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\TX_CHAR_IS_K_Buffer_reg[3]_1 [1]));
  FDRE \fc_nb_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[0]_0 [3]),
        .Q(fc_nb_r[0]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[0]_0 [2]),
        .Q(fc_nb_r[1]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[0]_0 [1]),
        .Q(fc_nb_r[2]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[0]_0 [0]),
        .Q(fc_nb_r[3]),
        .R(1'b0));
  FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_A),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP),
        .Q(\gen_ecp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [3]),
        .Q(p_0_in16_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [2]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [0]),
        .Q(\gen_k_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [1]),
        .Q(p_0_in12_in),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [0]),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [3]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [2]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [0]),
        .Q(\gen_r_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP),
        .Q(p_1_in16_in),
        .R(1'b0));
  FDRE \gen_snf_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SNF),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_sp_i),
        .Q(gen_sp_r),
        .R(1'b0));
  FDRE \gen_suf_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SUF),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [2]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [0]),
        .Q(\gen_v_r_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \lfsr[15]_i_1__1 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(gen_v_r2),
        .I3(\TX_CHAR_IS_K_Buffer_reg[3]_0 [2]),
        .I4(\TX_CHAR_IS_K_Buffer_reg[3]_0 [3]),
        .O(EN));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \lfsr[15]_i_2__0 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(gen_v_r2),
        .I3(\TX_CHAR_IS_K_Buffer_reg[3]_0 [0]),
        .I4(\TX_CHAR_IS_K_Buffer_reg[3]_0 [1]),
        .O(reset_lanes_flop_i));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [31]),
        .Q(\tx_pe_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [21]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [20]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [19]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [18]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [17]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [16]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [30]),
        .Q(\tx_pe_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [7]),
        .Q(\tx_pe_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [6]),
        .Q(\tx_pe_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [5]),
        .Q(\tx_pe_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [4]),
        .Q(\tx_pe_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [3]),
        .Q(\tx_pe_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [2]),
        .Q(\tx_pe_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [29]),
        .Q(\tx_pe_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [1]),
        .Q(\tx_pe_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [28]),
        .Q(\tx_pe_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [27]),
        .Q(\tx_pe_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [26]),
        .Q(\tx_pe_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [25]),
        .Q(\tx_pe_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [24]),
        .Q(\tx_pe_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [23]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [22]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [1]),
        .Q(p_1_in11_in),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module aurora_8b10b_TX_LL
   (gen_cc_i,
    D,
    ufc_header_r_reg,
    do_nfc_r_reg,
    tx_dst_rdy,
    GEN_SCP,
    GEN_ECP,
    GEN_SNF,
    GEN_SUF,
    S_AXI_TX_TREADY,
    Q,
    \GEN_PAD_Buffer_reg[0] ,
    \TX_PE_DATA_Buffer_reg[0] ,
    \FC_NB_Buffer_reg[0] ,
    user_clk,
    p_0_in,
    DO_CC_I,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TLAST,
    \tx_pe_data_v_r_reg[1] ,
    S_AXI_TX_TVALID,
    ufc_idle_r_reg,
    S_AXI_NFC_REQ,
    WARN_CC,
    S_AXI_UFC_TX_REQ,
    TX_DST_RDY_N_Buffer_reg,
    S_AXI_NFC_NB,
    S_AXI_TX_TDATA,
    S_AXI_UFC_TX_MS);
  output gen_cc_i;
  output D;
  output ufc_header_r_reg;
  output do_nfc_r_reg;
  output tx_dst_rdy;
  output [0:0]GEN_SCP;
  output [0:0]GEN_ECP;
  output [0:0]GEN_SNF;
  output [0:0]GEN_SUF;
  output S_AXI_TX_TREADY;
  output [1:0]Q;
  output [1:0]\GEN_PAD_Buffer_reg[0] ;
  output [31:0]\TX_PE_DATA_Buffer_reg[0] ;
  output [3:0]\FC_NB_Buffer_reg[0] ;
  input user_clk;
  input p_0_in;
  input DO_CC_I;
  input [0:3]S_AXI_TX_TKEEP;
  input S_AXI_TX_TLAST;
  input \tx_pe_data_v_r_reg[1] ;
  input S_AXI_TX_TVALID;
  input ufc_idle_r_reg;
  input S_AXI_NFC_REQ;
  input WARN_CC;
  input S_AXI_UFC_TX_REQ;
  input [0:0]TX_DST_RDY_N_Buffer_reg;
  input [0:3]S_AXI_NFC_NB;
  input [0:31]S_AXI_TX_TDATA;
  input [0:2]S_AXI_UFC_TX_MS;

  wire D;
  wire DO_CC_I;
  wire [3:0]\FC_NB_Buffer_reg[0] ;
  wire [0:0]GEN_ECP;
  wire [1:0]\GEN_PAD_Buffer_reg[0] ;
  wire [0:0]GEN_SCP;
  wire [0:0]GEN_SNF;
  wire [0:0]GEN_SUF;
  wire [1:0]Q;
  wire [0:3]S_AXI_NFC_NB;
  wire S_AXI_NFC_REQ;
  wire [0:31]S_AXI_TX_TDATA;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire [0:2]S_AXI_UFC_TX_MS;
  wire S_AXI_UFC_TX_REQ;
  wire [0:0]TX_DST_RDY_N_Buffer_reg;
  wire [31:0]\TX_PE_DATA_Buffer_reg[0] ;
  wire WARN_CC;
  wire do_nfc_r_reg;
  wire gen_cc_i;
  wire p_0_in;
  wire [0:0]p_3_out;
  wire [0:0]p_4_out;
  wire pdu_ok_c;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire tx_ll_control_i_n_11;
  wire tx_ll_control_i_n_17;
  wire tx_ll_datapath_i_n_0;
  wire tx_ll_datapath_i_n_1;
  wire tx_ll_datapath_i_n_4;
  wire \tx_pe_data_v_r_reg[1] ;
  wire ufc_header_r_reg;
  wire ufc_idle_r_reg;
  wire [1:1]ufc_message_i;
  wire user_clk;

  aurora_8b10b_TX_LL_CONTROL tx_ll_control_i
       (.D(tx_ll_control_i_n_11),
        .DO_CC_I(DO_CC_I),
        .\FC_NB_Buffer_reg[0]_0 (\FC_NB_Buffer_reg[0] ),
        .GEN_ECP(GEN_ECP),
        .GEN_SCP(GEN_SCP),
        .GEN_SNF(GEN_SNF),
        .GEN_SUF(GEN_SUF),
        .Q(tx_ll_datapath_i_n_4),
        .S_AXI_NFC_NB(S_AXI_NFC_NB),
        .S_AXI_NFC_REQ(S_AXI_NFC_REQ),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .S_AXI_UFC_TX_MS(S_AXI_UFC_TX_MS),
        .S_AXI_UFC_TX_REQ(S_AXI_UFC_TX_REQ),
        .TX_DST_RDY_N_Buffer_reg_0(tx_dst_rdy),
        .TX_DST_RDY_N_Buffer_reg_1(TX_DST_RDY_N_Buffer_reg),
        .\TX_PE_DATA_V_Buffer_reg[1] (tx_ll_datapath_i_n_1),
        .WARN_CC(WARN_CC),
        .do_cc_r_reg_0(D),
        .do_nfc_r_reg_0(do_nfc_r_reg),
        .gen_cc_i(gen_cc_i),
        .idle_r_reg_0(\tx_pe_data_v_r_reg[1] ),
        .in_frame_r_reg(tx_ll_datapath_i_n_0),
        .p_0_in(p_0_in),
        .pdu_ok_c(pdu_ok_c),
        .previous_cycle_ufc_message_r_reg_0(p_4_out),
        .previous_cycle_ufc_message_r_reg_1(p_3_out),
        .s_axi_tx_tlast(tx_ll_control_i_n_17),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .ufc_header_r_reg_0(ufc_header_r_reg),
        .ufc_idle_r_reg_0(ufc_idle_r_reg),
        .ufc_message_i(ufc_message_i),
        .user_clk(user_clk));
  aurora_8b10b_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(p_4_out),
        .E(pdu_ok_c),
        .\GEN_PAD_Buffer_reg[0]_0 (\GEN_PAD_Buffer_reg[0] ),
        .Q(tx_ll_datapath_i_n_1),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .\TX_PE_DATA_Buffer_reg[0]_0 (\TX_PE_DATA_Buffer_reg[0] ),
        .\TX_PE_DATA_V_Buffer_reg[0]_0 (Q),
        .\TX_PE_DATA_V_Buffer_reg[0]_1 (D),
        .\TX_PE_DATA_V_Buffer_reg[0]_2 (do_nfc_r_reg),
        .\TX_PE_DATA_V_Buffer_reg[1]_0 (p_3_out),
        .\gen_pad_r_reg[1]_0 (tx_ll_datapath_i_n_4),
        .\gen_pad_r_reg[1]_1 (tx_ll_control_i_n_11),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_0),
        .in_frame_r_reg_1(tx_ll_control_i_n_17),
        .p_0_in(p_0_in),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1]_0 (\tx_pe_data_v_r_reg[1] ),
        .ufc_message_i(ufc_message_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r_reg_0,
    ufc_header_r_reg_0,
    do_nfc_r_reg_0,
    pdu_ok_c,
    TX_DST_RDY_N_Buffer_reg_0,
    GEN_SCP,
    GEN_ECP,
    GEN_SNF,
    GEN_SUF,
    S_AXI_TX_TREADY,
    D,
    storage_pad_r0,
    storage_v_r0,
    previous_cycle_ufc_message_r_reg_0,
    previous_cycle_ufc_message_r_reg_1,
    ufc_message_i,
    s_axi_tx_tlast,
    \FC_NB_Buffer_reg[0]_0 ,
    user_clk,
    p_0_in,
    DO_CC_I,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TLAST,
    S_AXI_TX_TVALID,
    in_frame_r_reg,
    idle_r_reg_0,
    ufc_idle_r_reg_0,
    S_AXI_NFC_REQ,
    WARN_CC,
    S_AXI_UFC_TX_REQ,
    TX_DST_RDY_N_Buffer_reg_1,
    Q,
    \TX_PE_DATA_V_Buffer_reg[1] ,
    S_AXI_NFC_NB,
    S_AXI_UFC_TX_MS);
  output gen_cc_i;
  output do_cc_r_reg_0;
  output ufc_header_r_reg_0;
  output do_nfc_r_reg_0;
  output pdu_ok_c;
  output TX_DST_RDY_N_Buffer_reg_0;
  output [0:0]GEN_SCP;
  output [0:0]GEN_ECP;
  output [0:0]GEN_SNF;
  output [0:0]GEN_SUF;
  output S_AXI_TX_TREADY;
  output [0:0]D;
  output storage_pad_r0;
  output storage_v_r0;
  output [0:0]previous_cycle_ufc_message_r_reg_0;
  output [0:0]previous_cycle_ufc_message_r_reg_1;
  output [0:0]ufc_message_i;
  output s_axi_tx_tlast;
  output [3:0]\FC_NB_Buffer_reg[0]_0 ;
  input user_clk;
  input p_0_in;
  input DO_CC_I;
  input [0:3]S_AXI_TX_TKEEP;
  input S_AXI_TX_TLAST;
  input S_AXI_TX_TVALID;
  input in_frame_r_reg;
  input idle_r_reg_0;
  input ufc_idle_r_reg_0;
  input S_AXI_NFC_REQ;
  input WARN_CC;
  input S_AXI_UFC_TX_REQ;
  input [0:0]TX_DST_RDY_N_Buffer_reg_1;
  input [0:0]Q;
  input [0:0]\TX_PE_DATA_V_Buffer_reg[1] ;
  input [0:3]S_AXI_NFC_NB;
  input [0:2]S_AXI_UFC_TX_MS;

  wire [0:0]D;
  wire DO_CC_I;
  wire \FC_NB_Buffer[3]_i_1_n_0 ;
  wire [3:0]\FC_NB_Buffer_reg[0]_0 ;
  wire [0:0]GEN_ECP;
  wire GEN_ECP_Buffer0;
  wire [0:0]GEN_SCP;
  wire GEN_SCP_Buffer0;
  wire [0:0]GEN_SNF;
  wire [0:0]GEN_SUF;
  wire [0:0]Q;
  wire [0:3]S_AXI_NFC_NB;
  wire S_AXI_NFC_REQ;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire [0:2]S_AXI_UFC_TX_MS;
  wire S_AXI_UFC_TX_REQ;
  wire TX_DST_RDY_N_Buffer_i_2_n_0;
  wire TX_DST_RDY_N_Buffer_i_3_n_0;
  wire TX_DST_RDY_N_Buffer_i_4_n_0;
  wire TX_DST_RDY_N_Buffer_i_5_n_0;
  wire TX_DST_RDY_N_Buffer_reg_0;
  wire [0:0]TX_DST_RDY_N_Buffer_reg_1;
  wire [0:0]\TX_PE_DATA_V_Buffer_reg[1] ;
  wire WARN_CC;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire [0:2]delay_ms_1_r;
  wire [0:2]delay_ms_2_r;
  wire do_cc_r_reg_0;
  wire do_nfc_r;
  wire do_nfc_r_reg_0;
  wire [0:2]fc_nb_c;
  wire gen_cc_i;
  wire idle_r;
  wire idle_r_reg_0;
  wire in_frame_r_reg;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_eof_1_c;
  wire next_ufc_header_c;
  wire next_ufc_idle_c;
  wire next_ufc_message1_c;
  wire next_ufc_message2_c;
  wire next_ufc_message3_c;
  wire next_ufc_message4_c;
  wire next_ufc_message5_c;
  wire next_ufc_message6_c;
  wire next_ufc_message7_c;
  wire next_ufc_message8_c;
  wire p_0_in;
  wire pdu_ok_c;
  wire previous_cycle_ufc_message_r;
  wire previous_cycle_ufc_message_r0;
  wire [0:0]previous_cycle_ufc_message_r_reg_0;
  wire [0:0]previous_cycle_ufc_message_r_reg_1;
  wire s_axi_tx_tlast;
  wire sof_to_data_r;
  wire sof_to_data_r_i_1_n_0;
  wire sof_to_eof_1_r;
  wire sof_to_eof_1_r_i_2_n_0;
  wire sof_to_eof_2_r;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire storage_v_r_i_3_n_0;
  wire suf_delay_1_r;
  wire suf_delay_2_r;
  wire tx_dst_rdy_n_c;
  wire ufc_header_r_i_2_n_0;
  wire ufc_header_r_reg_0;
  wire ufc_idle_r;
  wire ufc_idle_r_i_2_n_0;
  wire ufc_idle_r_i_3_n_0;
  wire ufc_idle_r_reg_0;
  wire ufc_message1_r;
  wire ufc_message2_r;
  wire ufc_message3_r;
  wire ufc_message4_r;
  wire ufc_message5_r;
  wire ufc_message6_r;
  wire ufc_message7_r;
  wire ufc_message8_r;
  wire [0:2]ufc_message_count_r;
  wire \ufc_message_count_r[0]_i_1_n_0 ;
  wire \ufc_message_count_r[1]_i_1_n_0 ;
  wire \ufc_message_count_r[2]_i_1_n_0 ;
  wire [0:0]ufc_message_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FC_NB_Buffer[0]_i_1 
       (.I0(delay_ms_2_r[0]),
        .I1(suf_delay_2_r),
        .I2(S_AXI_NFC_NB[0]),
        .O(fc_nb_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FC_NB_Buffer[1]_i_1 
       (.I0(delay_ms_2_r[1]),
        .I1(suf_delay_2_r),
        .I2(S_AXI_NFC_NB[1]),
        .O(fc_nb_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FC_NB_Buffer[2]_i_1 
       (.I0(delay_ms_2_r[2]),
        .I1(suf_delay_2_r),
        .I2(S_AXI_NFC_NB[2]),
        .O(fc_nb_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FC_NB_Buffer[3]_i_1 
       (.I0(S_AXI_NFC_NB[3]),
        .I1(suf_delay_2_r),
        .O(\FC_NB_Buffer[3]_i_1_n_0 ));
  FDRE \FC_NB_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(fc_nb_c[0]),
        .Q(\FC_NB_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \FC_NB_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(fc_nb_c[1]),
        .Q(\FC_NB_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \FC_NB_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(fc_nb_c[2]),
        .Q(\FC_NB_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \FC_NB_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\FC_NB_Buffer[3]_i_1_n_0 ),
        .Q(\FC_NB_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    GEN_ECP_Buffer_i_1
       (.I0(sof_to_eof_2_r),
        .I1(data_to_eof_2_r),
        .I2(do_cc_r_reg_0),
        .I3(do_nfc_r_reg_0),
        .O(GEN_ECP_Buffer0));
  FDRE GEN_ECP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP_Buffer0),
        .Q(GEN_ECP),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_PAD_Buffer[1]_i_1 
       (.I0(previous_cycle_ufc_message_r),
        .I1(Q),
        .I2(do_cc_r_reg_0),
        .I3(do_nfc_r_reg_0),
        .O(previous_cycle_ufc_message_r_reg_0));
  LUT4 #(
    .INIT(16'h000E)) 
    GEN_SCP_Buffer_i_1
       (.I0(sof_to_data_r),
        .I1(sof_to_eof_1_r),
        .I2(do_cc_r_reg_0),
        .I3(do_nfc_r_reg_0),
        .O(GEN_SCP_Buffer0));
  FDRE GEN_SCP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP_Buffer0),
        .Q(GEN_SCP),
        .R(p_0_in));
  FDRE GEN_SNF_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_nfc_r_reg_0),
        .Q(GEN_SNF),
        .R(p_0_in));
  FDRE GEN_SUF_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(suf_delay_2_r),
        .Q(GEN_SUF),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_TX_TREADY_INST_0
       (.I0(TX_DST_RDY_N_Buffer_reg_0),
        .O(S_AXI_TX_TREADY));
  LUT6 #(
    .INIT(64'hFDFFFDFDFDFFFDFF)) 
    TX_DST_RDY_N_Buffer_i_1
       (.I0(next_ufc_idle_c),
        .I1(TX_DST_RDY_N_Buffer_i_2_n_0),
        .I2(TX_DST_RDY_N_Buffer_i_3_n_0),
        .I3(TX_DST_RDY_N_Buffer_i_4_n_0),
        .I4(next_data_to_eof_1_c),
        .I5(TX_DST_RDY_N_Buffer_i_5_n_0),
        .O(tx_dst_rdy_n_c));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    TX_DST_RDY_N_Buffer_i_2
       (.I0(ufc_idle_r),
        .I1(ufc_header_r_reg_0),
        .I2(sof_to_eof_1_r),
        .I3(data_to_eof_1_r),
        .I4(sof_to_data_r),
        .I5(data_r),
        .O(TX_DST_RDY_N_Buffer_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEFEFEF)) 
    TX_DST_RDY_N_Buffer_i_3
       (.I0(do_nfc_r),
        .I1(DO_CC_I),
        .I2(TX_DST_RDY_N_Buffer_reg_1),
        .I3(TX_DST_RDY_N_Buffer_i_4_n_0),
        .I4(data_to_eof_1_r),
        .I5(sof_to_eof_1_r),
        .O(TX_DST_RDY_N_Buffer_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'hE)) 
    TX_DST_RDY_N_Buffer_i_4
       (.I0(do_nfc_r_reg_0),
        .I1(do_cc_r_reg_0),
        .O(TX_DST_RDY_N_Buffer_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF01FFFFFFFF)) 
    TX_DST_RDY_N_Buffer_i_5
       (.I0(idle_r),
        .I1(sof_to_eof_2_r),
        .I2(data_to_eof_2_r),
        .I3(idle_r_reg_0),
        .I4(sof_to_eof_1_r_i_2_n_0),
        .I5(S_AXI_TX_TLAST),
        .O(TX_DST_RDY_N_Buffer_i_5_n_0));
  FDSE TX_DST_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(TX_DST_RDY_N_Buffer_reg_0),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \TX_PE_DATA_V_Buffer[1]_i_1 
       (.I0(previous_cycle_ufc_message_r),
        .I1(do_nfc_r_reg_0),
        .I2(do_cc_r_reg_0),
        .I3(\TX_PE_DATA_V_Buffer_reg[1] ),
        .O(previous_cycle_ufc_message_r_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'hE0EEEEEE)) 
    data_r_i_1
       (.I0(data_r),
        .I1(sof_to_data_r),
        .I2(TX_DST_RDY_N_Buffer_reg_0),
        .I3(S_AXI_TX_TVALID),
        .I4(S_AXI_TX_TLAST),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_c),
        .Q(data_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    data_to_eof_1_r_i_1
       (.I0(TX_DST_RDY_N_Buffer_reg_0),
        .I1(S_AXI_TX_TVALID),
        .I2(S_AXI_TX_TLAST),
        .I3(data_r),
        .I4(sof_to_data_r),
        .O(next_data_to_eof_1_c));
  FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(p_0_in));
  FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(p_0_in));
  FDRE \delay_ms_1_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(S_AXI_UFC_TX_MS[0]),
        .Q(delay_ms_1_r[0]),
        .R(1'b0));
  FDRE \delay_ms_1_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(S_AXI_UFC_TX_MS[1]),
        .Q(delay_ms_1_r[1]),
        .R(1'b0));
  FDRE \delay_ms_1_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(S_AXI_UFC_TX_MS[2]),
        .Q(delay_ms_1_r[2]),
        .R(1'b0));
  FDRE \delay_ms_2_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(delay_ms_1_r[0]),
        .Q(delay_ms_2_r[0]),
        .R(1'b0));
  FDRE \delay_ms_2_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(delay_ms_1_r[1]),
        .Q(delay_ms_2_r[1]),
        .R(1'b0));
  FDRE \delay_ms_2_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(delay_ms_1_r[2]),
        .Q(delay_ms_2_r[2]),
        .R(1'b0));
  FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_I),
        .Q(do_cc_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    do_nfc_r_i_2
       (.I0(WARN_CC),
        .I1(DO_CC_I),
        .I2(previous_cycle_ufc_message_r),
        .I3(ufc_idle_r),
        .I4(do_nfc_r_reg_0),
        .I5(S_AXI_NFC_REQ),
        .O(do_nfc_r));
  FDRE do_nfc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_nfc_r),
        .Q(do_nfc_r_reg_0),
        .R(p_0_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r_reg_0),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000001160000)) 
    \gen_pad_r[1]_i_1 
       (.I0(S_AXI_TX_TKEEP[3]),
        .I1(S_AXI_TX_TKEEP[0]),
        .I2(S_AXI_TX_TKEEP[1]),
        .I3(S_AXI_TX_TKEEP[2]),
        .I4(S_AXI_TX_TLAST),
        .I5(storage_v_r_i_3_n_0),
        .O(D));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
    idle_r_i_1
       (.I0(TX_DST_RDY_N_Buffer_reg_0),
        .I1(S_AXI_TX_TVALID),
        .I2(idle_r_reg_0),
        .I3(data_to_eof_2_r),
        .I4(sof_to_eof_2_r),
        .I5(idle_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_idle_c),
        .Q(idle_r),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'hDFDF0010)) 
    in_frame_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(TX_DST_RDY_N_Buffer_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(idle_r_reg_0),
        .I4(in_frame_r_reg),
        .O(s_axi_tx_tlast));
  LUT2 #(
    .INIT(4'h1)) 
    previous_cycle_ufc_message_r_i_1
       (.I0(ufc_header_r_reg_0),
        .I1(ufc_idle_r),
        .O(previous_cycle_ufc_message_r0));
  FDRE previous_cycle_ufc_message_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(previous_cycle_ufc_message_r0),
        .Q(previous_cycle_ufc_message_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000005554)) 
    sof_to_data_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(idle_r),
        .I2(sof_to_eof_2_r),
        .I3(data_to_eof_2_r),
        .I4(idle_r_reg_0),
        .I5(sof_to_eof_1_r_i_2_n_0),
        .O(sof_to_data_r_i_1_n_0));
  FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(sof_to_data_r_i_1_n_0),
        .Q(sof_to_data_r),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0202020202020200)) 
    sof_to_eof_1_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(sof_to_eof_1_r_i_2_n_0),
        .I2(idle_r_reg_0),
        .I3(data_to_eof_2_r),
        .I4(sof_to_eof_2_r),
        .I5(idle_r),
        .O(next_sof_to_eof_1_c));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sof_to_eof_1_r_i_2
       (.I0(TX_DST_RDY_N_Buffer_reg_0),
        .I1(S_AXI_TX_TVALID),
        .O(sof_to_eof_1_r_i_2_n_0));
  FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(p_0_in));
  FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000068800000)) 
    storage_pad_r_i_1
       (.I0(S_AXI_TX_TKEEP[3]),
        .I1(S_AXI_TX_TKEEP[0]),
        .I2(S_AXI_TX_TKEEP[1]),
        .I3(S_AXI_TX_TKEEP[2]),
        .I4(S_AXI_TX_TLAST),
        .I5(storage_v_r_i_3_n_0),
        .O(storage_pad_r0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    storage_ufc_v_r_i_1
       (.I0(ufc_message2_r),
        .I1(ufc_message6_r),
        .I2(ufc_message8_r),
        .I3(ufc_message4_r),
        .O(ufc_message_i));
  LUT2 #(
    .INIT(4'h1)) 
    storage_v_r_i_1
       (.I0(do_cc_r_reg_0),
        .I1(do_nfc_r_reg_0),
        .O(pdu_ok_c));
  LUT6 #(
    .INIT(64'h00000000FDD5D557)) 
    storage_v_r_i_2
       (.I0(S_AXI_TX_TLAST),
        .I1(S_AXI_TX_TKEEP[1]),
        .I2(S_AXI_TX_TKEEP[2]),
        .I3(S_AXI_TX_TKEEP[3]),
        .I4(S_AXI_TX_TKEEP[0]),
        .I5(storage_v_r_i_3_n_0),
        .O(storage_v_r0));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    storage_v_r_i_3
       (.I0(S_AXI_TX_TVALID),
        .I1(TX_DST_RDY_N_Buffer_reg_0),
        .I2(in_frame_r_reg),
        .I3(idle_r_reg_0),
        .O(storage_v_r_i_3_n_0));
  FDRE suf_delay_1_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_header_r_reg_0),
        .Q(suf_delay_1_r),
        .R(p_0_in));
  FDRE suf_delay_2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(suf_delay_1_r),
        .Q(suf_delay_2_r),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h000000A200000000)) 
    ufc_header_r_i_1
       (.I0(ufc_header_r_i_2_n_0),
        .I1(S_AXI_NFC_REQ),
        .I2(do_nfc_r_reg_0),
        .I3(WARN_CC),
        .I4(DO_CC_I),
        .I5(S_AXI_UFC_TX_REQ),
        .O(next_ufc_header_c));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ufc_header_r_i_2
       (.I0(ufc_idle_r_i_3_n_0),
        .I1(ufc_idle_r_i_2_n_0),
        .I2(ufc_message_count_r[2]),
        .O(ufc_header_r_i_2_n_0));
  FDRE ufc_header_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_header_c),
        .Q(ufc_header_r_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    ufc_idle_r_i_1
       (.I0(ufc_message_count_r[2]),
        .I1(ufc_idle_r_i_2_n_0),
        .I2(ufc_idle_r_i_3_n_0),
        .I3(ufc_idle_r_reg_0),
        .O(next_ufc_idle_c));
  LUT6 #(
    .INIT(64'h000F5353F0FF5353)) 
    ufc_idle_r_i_2
       (.I0(ufc_message6_r),
        .I1(ufc_message2_r),
        .I2(ufc_message_count_r[0]),
        .I3(ufc_message4_r),
        .I4(ufc_message_count_r[1]),
        .I5(ufc_message8_r),
        .O(ufc_idle_r_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ufc_idle_r_i_3
       (.I0(ufc_message7_r),
        .I1(ufc_message3_r),
        .I2(ufc_idle_r),
        .I3(ufc_message5_r),
        .I4(ufc_message1_r),
        .O(ufc_idle_r_i_3_n_0));
  FDSE ufc_idle_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_idle_c),
        .Q(ufc_idle_r),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    ufc_message1_r_i_1
       (.I0(ufc_header_r_reg_0),
        .I1(ufc_message_count_r[0]),
        .I2(ufc_message_count_r[2]),
        .I3(ufc_message_count_r[1]),
        .O(next_ufc_message1_c));
  FDRE ufc_message1_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message1_c),
        .Q(ufc_message1_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    ufc_message2_r_i_1
       (.I0(ufc_header_r_reg_0),
        .I1(ufc_message_count_r[0]),
        .I2(ufc_message_count_r[2]),
        .I3(ufc_message_count_r[1]),
        .O(next_ufc_message2_c));
  FDRE ufc_message2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message2_c),
        .Q(ufc_message2_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    ufc_message3_r_i_1
       (.I0(ufc_message_count_r[2]),
        .I1(ufc_message_count_r[1]),
        .I2(ufc_message2_r),
        .I3(ufc_message_count_r[0]),
        .O(next_ufc_message3_c));
  FDRE ufc_message3_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message3_c),
        .Q(ufc_message3_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    ufc_message4_r_i_1
       (.I0(ufc_message2_r),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message_count_r[1]),
        .I3(ufc_message_count_r[0]),
        .O(next_ufc_message4_c));
  FDRE ufc_message4_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message4_c),
        .Q(ufc_message4_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    ufc_message5_r_i_1
       (.I0(ufc_message_count_r[1]),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message_count_r[0]),
        .I3(ufc_message4_r),
        .O(next_ufc_message5_c));
  FDRE ufc_message5_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message5_c),
        .Q(ufc_message5_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    ufc_message6_r_i_1
       (.I0(ufc_message_count_r[1]),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message_count_r[0]),
        .I3(ufc_message4_r),
        .O(next_ufc_message6_c));
  FDRE ufc_message6_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message6_c),
        .Q(ufc_message6_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    ufc_message7_r_i_1
       (.I0(ufc_message_count_r[0]),
        .I1(ufc_message6_r),
        .I2(ufc_message_count_r[2]),
        .I3(ufc_message_count_r[1]),
        .O(next_ufc_message7_c));
  FDRE ufc_message7_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message7_c),
        .Q(ufc_message7_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ufc_message8_r_i_1
       (.I0(ufc_message_count_r[1]),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message_count_r[0]),
        .I3(ufc_message6_r),
        .O(next_ufc_message8_c));
  FDRE ufc_message8_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message8_c),
        .Q(ufc_message8_r),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ufc_message_count_r[0]_i_1 
       (.I0(S_AXI_UFC_TX_MS[0]),
        .I1(ufc_header_r_i_2_n_0),
        .I2(ufc_idle_r_reg_0),
        .I3(ufc_message_count_r[0]),
        .O(\ufc_message_count_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ufc_message_count_r[1]_i_1 
       (.I0(S_AXI_UFC_TX_MS[1]),
        .I1(ufc_header_r_i_2_n_0),
        .I2(ufc_idle_r_reg_0),
        .I3(ufc_message_count_r[1]),
        .O(\ufc_message_count_r[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ufc_message_count_r[2]_i_1 
       (.I0(S_AXI_UFC_TX_MS[2]),
        .I1(ufc_header_r_i_2_n_0),
        .I2(ufc_idle_r_reg_0),
        .I3(ufc_message_count_r[2]),
        .O(\ufc_message_count_r[2]_i_1_n_0 ));
  FDRE \ufc_message_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[0]_i_1_n_0 ),
        .Q(ufc_message_count_r[0]),
        .R(1'b0));
  FDRE \ufc_message_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[1]_i_1_n_0 ),
        .Q(ufc_message_count_r[1]),
        .R(1'b0));
  FDRE \ufc_message_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[2]_i_1_n_0 ),
        .Q(ufc_message_count_r[2]),
        .R(1'b0));
endmodule

module aurora_8b10b_TX_LL_DATAPATH
   (in_frame_r_reg_0,
    Q,
    \TX_PE_DATA_V_Buffer_reg[0]_0 ,
    \gen_pad_r_reg[1]_0 ,
    \GEN_PAD_Buffer_reg[0]_0 ,
    \TX_PE_DATA_Buffer_reg[0]_0 ,
    E,
    storage_v_r0,
    user_clk,
    ufc_message_i,
    storage_pad_r0,
    p_0_in,
    in_frame_r_reg_1,
    \tx_pe_data_v_r_reg[1]_0 ,
    tx_dst_rdy,
    S_AXI_TX_TVALID,
    D,
    \TX_PE_DATA_V_Buffer_reg[0]_1 ,
    \TX_PE_DATA_V_Buffer_reg[0]_2 ,
    \TX_PE_DATA_V_Buffer_reg[1]_0 ,
    \gen_pad_r_reg[1]_1 ,
    S_AXI_TX_TDATA);
  output in_frame_r_reg_0;
  output [0:0]Q;
  output [1:0]\TX_PE_DATA_V_Buffer_reg[0]_0 ;
  output [0:0]\gen_pad_r_reg[1]_0 ;
  output [1:0]\GEN_PAD_Buffer_reg[0]_0 ;
  output [31:0]\TX_PE_DATA_Buffer_reg[0]_0 ;
  input [0:0]E;
  input storage_v_r0;
  input user_clk;
  input [0:0]ufc_message_i;
  input storage_pad_r0;
  input p_0_in;
  input in_frame_r_reg_1;
  input \tx_pe_data_v_r_reg[1]_0 ;
  input tx_dst_rdy;
  input S_AXI_TX_TVALID;
  input [0:0]D;
  input \TX_PE_DATA_V_Buffer_reg[0]_1 ;
  input \TX_PE_DATA_V_Buffer_reg[0]_2 ;
  input [0:0]\TX_PE_DATA_V_Buffer_reg[1]_0 ;
  input [0:0]\gen_pad_r_reg[1]_1 ;
  input [0:31]S_AXI_TX_TDATA;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]\GEN_PAD_Buffer_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:31]S_AXI_TX_TDATA;
  wire S_AXI_TX_TVALID;
  wire [31:0]\TX_PE_DATA_Buffer_reg[0]_0 ;
  wire [1:0]\TX_PE_DATA_V_Buffer_reg[0]_0 ;
  wire \TX_PE_DATA_V_Buffer_reg[0]_1 ;
  wire \TX_PE_DATA_V_Buffer_reg[0]_2 ;
  wire [0:0]\TX_PE_DATA_V_Buffer_reg[1]_0 ;
  wire [0:0]\gen_pad_r_reg[1]_0 ;
  wire [0:0]\gen_pad_r_reg[1]_1 ;
  wire \gen_pad_r_reg_n_0_[0] ;
  wire in_frame_r_reg_0;
  wire in_frame_r_reg_1;
  wire p_0_in;
  wire p_13_in;
  wire p_3_in;
  wire [1:1]p_3_out;
  wire [1:1]p_4_out;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_ufc_v_r;
  wire storage_v_r;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire [0:31]tx_pe_data_r;
  wire \tx_pe_data_v_r_reg[1]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[0] ;
  wire [0:0]ufc_message_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_PAD_Buffer[0]_i_1 
       (.I0(p_3_in),
        .I1(\gen_pad_r_reg_n_0_[0] ),
        .I2(\TX_PE_DATA_V_Buffer_reg[0]_1 ),
        .I3(\TX_PE_DATA_V_Buffer_reg[0]_2 ),
        .O(p_4_out));
  FDRE \GEN_PAD_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out),
        .Q(\GEN_PAD_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \GEN_PAD_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(\GEN_PAD_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[0]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[10]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[11]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[12]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[13]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[14]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[15]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[16]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[17]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[18]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[19]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[1]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[20]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[21]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[22]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[23]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[24]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[25]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[26]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[27]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[28]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[29]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[2]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[30]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[31]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[3]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[4]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[5]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[6]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[7]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[8]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[9]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [22]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \TX_PE_DATA_V_Buffer[0]_i_1 
       (.I0(p_3_in),
        .I1(\TX_PE_DATA_V_Buffer_reg[0]_2 ),
        .I2(\TX_PE_DATA_V_Buffer_reg[0]_1 ),
        .I3(\tx_pe_data_v_r_reg_n_0_[0] ),
        .O(p_3_out));
  FDRE \TX_PE_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\TX_PE_DATA_V_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_PE_DATA_V_Buffer_reg[1]_0 ),
        .Q(\TX_PE_DATA_V_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(\gen_pad_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(\gen_pad_r_reg[1]_1 ),
        .Q(\gen_pad_r_reg[1]_0 ),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r_reg_1),
        .Q(in_frame_r_reg_0),
        .R(p_0_in));
  FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[16]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[26]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[27]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[28]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[29]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[30]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[31]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[17]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[18]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[19]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[20]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[21]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[22]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[23]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[24]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[25]),
        .Q(storage_r[9]),
        .R(1'b0));
  FDRE storage_ufc_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_message_i),
        .Q(storage_ufc_v_r),
        .R(1'b0));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[0]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[10]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[11]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[12]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[13]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[14]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[15]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[0]),
        .Q(tx_pe_data_r[16]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[1]),
        .Q(tx_pe_data_r[17]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[2]),
        .Q(tx_pe_data_r[18]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[3]),
        .Q(tx_pe_data_r[19]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[4]),
        .Q(tx_pe_data_r[20]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[5]),
        .Q(tx_pe_data_r[21]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[6]),
        .Q(tx_pe_data_r[22]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[7]),
        .Q(tx_pe_data_r[23]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[8]),
        .Q(tx_pe_data_r[24]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[9]),
        .Q(tx_pe_data_r[25]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[10]),
        .Q(tx_pe_data_r[26]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[11]),
        .Q(tx_pe_data_r[27]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[12]),
        .Q(tx_pe_data_r[28]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[13]),
        .Q(tx_pe_data_r[29]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[14]),
        .Q(tx_pe_data_r[30]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[15]),
        .Q(tx_pe_data_r[31]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[3]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[4]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[5]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[6]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[7]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[8]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[9]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0D00)) 
    \tx_pe_data_v_r[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg[1]_0 ),
        .I1(in_frame_r_reg_0),
        .I2(tx_dst_rdy),
        .I3(S_AXI_TX_TVALID),
        .O(p_13_in));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(\tx_pe_data_v_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(p_13_in),
        .Q(Q),
        .R(1'b0));
  FDRE \tx_pe_ufc_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_ufc_v_r),
        .Q(p_3_in),
        .R(1'b0));
endmodule

module aurora_8b10b_UFC_BARREL_SHIFTER
   (\SHIFTED_DATA_Buffer_reg[0]_0 ,
    SHIFTED_DATA_Buffer,
    \SHIFTED_DATA_Buffer_reg[0]_1 ,
    BARREL_SHIFTER_CONTROL_Buffer,
    user_clk);
  output [15:0]\SHIFTED_DATA_Buffer_reg[0]_0 ;
  output [15:0]SHIFTED_DATA_Buffer;
  input [31:0]\SHIFTED_DATA_Buffer_reg[0]_1 ;
  input BARREL_SHIFTER_CONTROL_Buffer;
  input user_clk;

  wire BARREL_SHIFTER_CONTROL_Buffer;
  wire [15:0]SHIFTED_DATA_Buffer;
  wire [15:0]\SHIFTED_DATA_Buffer_reg[0]_0 ;
  wire [31:0]\SHIFTED_DATA_Buffer_reg[0]_1 ;
  wire [0:15]shifted_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[0]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [15]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [31]),
        .O(shifted_data_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[10]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [5]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [21]),
        .O(shifted_data_c[10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[11]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [4]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [20]),
        .O(shifted_data_c[11]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[12]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [3]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [19]),
        .O(shifted_data_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[13]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [2]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [18]),
        .O(shifted_data_c[13]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[14]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [1]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [17]),
        .O(shifted_data_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[15]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [0]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [16]),
        .O(shifted_data_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[1]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [14]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [30]),
        .O(shifted_data_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[2]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [13]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [29]),
        .O(shifted_data_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[3]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [12]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [28]),
        .O(shifted_data_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[4]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [11]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [27]),
        .O(shifted_data_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[5]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [10]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [26]),
        .O(shifted_data_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[6]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [9]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [25]),
        .O(shifted_data_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[7]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [8]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [24]),
        .O(shifted_data_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[8]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [7]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [23]),
        .O(shifted_data_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA_Buffer[9]_i_1 
       (.I0(\SHIFTED_DATA_Buffer_reg[0]_1 [6]),
        .I1(BARREL_SHIFTER_CONTROL_Buffer),
        .I2(\SHIFTED_DATA_Buffer_reg[0]_1 [22]),
        .O(shifted_data_c[9]));
  FDRE \SHIFTED_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[0]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[10]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[11]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[12]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[13]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[14]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[15]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [15]),
        .Q(SHIFTED_DATA_Buffer[15]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [14]),
        .Q(SHIFTED_DATA_Buffer[14]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [13]),
        .Q(SHIFTED_DATA_Buffer[13]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [12]),
        .Q(SHIFTED_DATA_Buffer[12]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[1]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [11]),
        .Q(SHIFTED_DATA_Buffer[11]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [10]),
        .Q(SHIFTED_DATA_Buffer[10]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [9]),
        .Q(SHIFTED_DATA_Buffer[9]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [8]),
        .Q(SHIFTED_DATA_Buffer[8]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [7]),
        .Q(SHIFTED_DATA_Buffer[7]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [6]),
        .Q(SHIFTED_DATA_Buffer[6]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [5]),
        .Q(SHIFTED_DATA_Buffer[5]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [4]),
        .Q(SHIFTED_DATA_Buffer[4]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [3]),
        .Q(SHIFTED_DATA_Buffer[3]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [2]),
        .Q(SHIFTED_DATA_Buffer[2]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[2]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [1]),
        .Q(SHIFTED_DATA_Buffer[1]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_Buffer_reg[0]_1 [0]),
        .Q(SHIFTED_DATA_Buffer[0]),
        .R(BARREL_SHIFTER_CONTROL_Buffer));
  FDRE \SHIFTED_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[3]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[4]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[5]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[6]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[7]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[8]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[9]),
        .Q(\SHIFTED_DATA_Buffer_reg[0]_0 [6]),
        .R(1'b0));
endmodule

module aurora_8b10b_UFC_BARREL_SHIFTER_CONTROL
   (BARREL_SHIFTER_CONTROL_Buffer,
    barrel_shifter_control_i,
    user_clk);
  output BARREL_SHIFTER_CONTROL_Buffer;
  input barrel_shifter_control_i;
  input user_clk;

  wire BARREL_SHIFTER_CONTROL_Buffer;
  wire barrel_shifter_control_i;
  wire user_clk;

  FDRE \BARREL_SHIFTER_CONTROL_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(barrel_shifter_control_i),
        .Q(BARREL_SHIFTER_CONTROL_Buffer),
        .R(1'b0));
endmodule

module aurora_8b10b_UFC_FILTER
   (UFC_START,
    barrel_shifter_control_i,
    D,
    \PDU_ECP_Buffer_reg[0]_0 ,
    user_clk_0,
    user_clk_1,
    user_clk_2,
    user_clk_3,
    user_clk_4,
    user_clk_5,
    user_clk_6,
    user_clk_7,
    user_clk_8,
    user_clk_9,
    user_clk_10,
    user_clk_11,
    user_clk_12,
    user_clk_13,
    user_clk_14,
    user_clk_15,
    user_clk_16,
    user_clk_17,
    user_clk_18,
    user_clk_19,
    user_clk_20,
    user_clk_21,
    user_clk_22,
    user_clk_23,
    user_clk_24,
    user_clk_25,
    user_clk_26,
    user_clk_27,
    user_clk_28,
    user_clk_29,
    user_clk_30,
    user_clk_31,
    \PDU_PAD_Buffer_reg[0]_0 ,
    \PDU_ECP_Buffer_reg[1]_0 ,
    \PDU_ECP_Buffer_reg[0]_1 ,
    \PDU_DATA_V_Buffer_reg[0]_0 ,
    \UFC_DATA_V_Buffer_reg[0]_0 ,
    \PDU_SCP_Buffer_reg[1]_0 ,
    S1_in,
    SR,
    neqOp,
    user_clk,
    \stage_1_lane_mask_r_reg[1]_0 ,
    p_8_out,
    p_9_out,
    Q,
    rx_pe_data_striped_i,
    \stage_1_count_value_r_reg[0]_0 ,
    \rx_data_v_r_reg[0]_0 );
  output UFC_START;
  output barrel_shifter_control_i;
  output [1:0]D;
  output [1:0]\PDU_ECP_Buffer_reg[0]_0 ;
  output user_clk_0;
  output user_clk_1;
  output user_clk_2;
  output user_clk_3;
  output user_clk_4;
  output user_clk_5;
  output user_clk_6;
  output user_clk_7;
  output user_clk_8;
  output user_clk_9;
  output user_clk_10;
  output user_clk_11;
  output user_clk_12;
  output user_clk_13;
  output user_clk_14;
  output user_clk_15;
  output user_clk_16;
  output user_clk_17;
  output user_clk_18;
  output user_clk_19;
  output user_clk_20;
  output user_clk_21;
  output user_clk_22;
  output user_clk_23;
  output user_clk_24;
  output user_clk_25;
  output user_clk_26;
  output user_clk_27;
  output user_clk_28;
  output user_clk_29;
  output user_clk_30;
  output user_clk_31;
  output \PDU_PAD_Buffer_reg[0]_0 ;
  output \PDU_ECP_Buffer_reg[1]_0 ;
  output \PDU_ECP_Buffer_reg[0]_1 ;
  output [1:0]\PDU_DATA_V_Buffer_reg[0]_0 ;
  output [1:0]\UFC_DATA_V_Buffer_reg[0]_0 ;
  output \PDU_SCP_Buffer_reg[1]_0 ;
  output S1_in;
  input [0:0]SR;
  input neqOp;
  input user_clk;
  input [1:0]\stage_1_lane_mask_r_reg[1]_0 ;
  input [1:0]p_8_out;
  input [1:0]p_9_out;
  input [1:0]Q;
  input [0:31]rx_pe_data_striped_i;
  input [3:0]\stage_1_count_value_r_reg[0]_0 ;
  input [1:0]\rx_data_v_r_reg[0]_0 ;

  wire [1:0]D;
  wire [1:1]L;
  wire \PDU_DATA_V_Buffer[0]_i_1_n_0 ;
  wire \PDU_DATA_V_Buffer[1]_i_1_n_0 ;
  wire [1:0]\PDU_DATA_V_Buffer_reg[0]_0 ;
  wire [1:0]\PDU_ECP_Buffer_reg[0]_0 ;
  wire \PDU_ECP_Buffer_reg[0]_1 ;
  wire \PDU_ECP_Buffer_reg[1]_0 ;
  wire [0:1]PDU_PAD;
  wire \PDU_PAD_Buffer_reg[0]_0 ;
  wire \PDU_SCP_Buffer_reg[1]_0 ;
  wire [1:0]Q;
  wire S1_in;
  wire [0:0]SR;
  wire \UFC_DATA_V_Buffer[1]_i_1_n_0 ;
  wire [1:0]\UFC_DATA_V_Buffer_reg[0]_0 ;
  wire UFC_START;
  wire UFC_START_Buffer_i_1_n_0;
  wire barrel_shifter_control_i;
  wire load_ufc_control_code_r;
  wire neqOp;
  wire [1:0]p_8_out;
  wire [1:0]p_9_out;
  wire [0:1]rx_data_v_r;
  wire [1:0]\rx_data_v_r_reg[0]_0 ;
  wire \rx_ecp_r_reg[0]_srl3_n_0 ;
  wire \rx_ecp_r_reg[1]_srl3_n_0 ;
  wire \rx_pad_r_reg[0]_srl2_n_0 ;
  wire \rx_pad_r_reg[1]_srl2_n_0 ;
  wire [0:31]rx_pe_data_striped_i;
  wire \rx_scp_r_reg[0]_srl3_n_0 ;
  wire \rx_scp_r_reg[1]_srl3_n_0 ;
  wire \rx_suf_r_reg_n_0_[1] ;
  wire [0:3]stage_1_count_value_r;
  wire [3:0]\stage_1_count_value_r_reg[0]_0 ;
  wire [1:0]\stage_1_lane_mask_r_reg[1]_0 ;
  wire \stage_1_lane_mask_r_reg_n_0_[1] ;
  wire [0:3]stage_2_count_value_r;
  wire \stage_2_count_value_r[0]_i_1_n_0 ;
  wire \stage_2_count_value_r[1]_i_1_n_0 ;
  wire \stage_2_count_value_r[2]_i_1_n_0 ;
  wire \stage_2_count_value_r[3]_i_1_n_0 ;
  wire stage_2_lane_mask_c_n_0;
  wire user_clk;
  wire user_clk_0;
  wire user_clk_1;
  wire user_clk_10;
  wire user_clk_11;
  wire user_clk_12;
  wire user_clk_13;
  wire user_clk_14;
  wire user_clk_15;
  wire user_clk_16;
  wire user_clk_17;
  wire user_clk_18;
  wire user_clk_19;
  wire user_clk_2;
  wire user_clk_20;
  wire user_clk_21;
  wire user_clk_22;
  wire user_clk_23;
  wire user_clk_24;
  wire user_clk_25;
  wire user_clk_26;
  wire user_clk_27;
  wire user_clk_28;
  wire user_clk_29;
  wire user_clk_3;
  wire user_clk_30;
  wire user_clk_31;
  wire user_clk_4;
  wire user_clk_5;
  wire user_clk_6;
  wire user_clk_7;
  wire user_clk_8;
  wire user_clk_9;

  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[0]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[0]),
        .Q(user_clk_0));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[10]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[10]),
        .Q(user_clk_10));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[11]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[11]),
        .Q(user_clk_11));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[12]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[12]),
        .Q(user_clk_12));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[13]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[13]),
        .Q(user_clk_13));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[14]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[14]),
        .Q(user_clk_14));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[15]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[15]),
        .Q(user_clk_15));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[16]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[16]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[16]),
        .Q(user_clk_16));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[17]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[17]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[17]),
        .Q(user_clk_17));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[18]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[18]),
        .Q(user_clk_18));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[19]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[19]),
        .Q(user_clk_19));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[1]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[1]),
        .Q(user_clk_1));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[20]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[20]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[20]),
        .Q(user_clk_20));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[21]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[21]),
        .Q(user_clk_21));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[22]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[22]),
        .Q(user_clk_22));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[23]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[23]),
        .Q(user_clk_23));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[24]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[24]),
        .Q(user_clk_24));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[25]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[25]),
        .Q(user_clk_25));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[26]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[26]),
        .Q(user_clk_26));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[27]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[27]),
        .Q(user_clk_27));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[28]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[28]),
        .Q(user_clk_28));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[29]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[29]),
        .Q(user_clk_29));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[2]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[2]),
        .Q(user_clk_2));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[30]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[30]),
        .Q(user_clk_30));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[31]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[31]),
        .Q(user_clk_31));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[3]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[3]),
        .Q(user_clk_3));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[4]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[4]),
        .Q(user_clk_4));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[5]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[5]),
        .Q(user_clk_5));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[6]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[6]),
        .Q(user_clk_6));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[7]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[7]),
        .Q(user_clk_7));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[8]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[8]),
        .Q(user_clk_8));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/PDU_DATA_Buffer_reg[9]_srl2 " *) 
  SRL16E \PDU_DATA_Buffer_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[9]),
        .Q(user_clk_9));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \PDU_DATA_V_Buffer[0]_i_1 
       (.I0(rx_data_v_r[0]),
        .I1(stage_2_count_value_r[0]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[2]),
        .I4(stage_2_count_value_r[3]),
        .O(\PDU_DATA_V_Buffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA02A802)) 
    \PDU_DATA_V_Buffer[1]_i_1 
       (.I0(rx_data_v_r[1]),
        .I1(stage_2_count_value_r[2]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[0]),
        .I4(stage_2_count_value_r[3]),
        .I5(\stage_1_lane_mask_r_reg_n_0_[1] ),
        .O(\PDU_DATA_V_Buffer[1]_i_1_n_0 ));
  FDRE \PDU_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\PDU_DATA_V_Buffer[0]_i_1_n_0 ),
        .Q(\PDU_DATA_V_Buffer_reg[0]_0 [1]),
        .R(SR));
  FDRE \PDU_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\PDU_DATA_V_Buffer[1]_i_1_n_0 ),
        .Q(\PDU_DATA_V_Buffer_reg[0]_0 [0]),
        .R(SR));
  FDRE \PDU_ECP_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_r_reg[0]_srl3_n_0 ),
        .Q(\PDU_ECP_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \PDU_ECP_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_r_reg[1]_srl3_n_0 ),
        .Q(\PDU_ECP_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \PDU_PAD_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_r_reg[0]_srl2_n_0 ),
        .Q(PDU_PAD[0]),
        .R(1'b0));
  FDRE \PDU_PAD_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_r_reg[1]_srl2_n_0 ),
        .Q(PDU_PAD[1]),
        .R(1'b0));
  FDRE \PDU_SCP_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_r_reg[0]_srl3_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \PDU_SCP_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_r_reg[1]_srl3_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFAFAFBA)) 
    \UFC_DATA_V_Buffer[1]_i_1 
       (.I0(\stage_1_lane_mask_r_reg_n_0_[1] ),
        .I1(stage_2_count_value_r[3]),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[1]),
        .I4(stage_2_count_value_r[2]),
        .O(\UFC_DATA_V_Buffer[1]_i_1_n_0 ));
  FDRE \UFC_DATA_V_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_lane_mask_c_n_0),
        .Q(\UFC_DATA_V_Buffer_reg[0]_0 [1]),
        .R(SR));
  FDRE \UFC_DATA_V_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_DATA_V_Buffer[1]_i_1_n_0 ),
        .Q(\UFC_DATA_V_Buffer_reg[0]_0 [0]),
        .R(SR));
  FDRE \UFC_MESSAGE_START_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_lane_mask_r_reg_n_0_[1] ),
        .Q(barrel_shifter_control_i),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    UFC_START_Buffer_i_1
       (.I0(\stage_1_lane_mask_r_reg_n_0_[1] ),
        .I1(L),
        .O(UFC_START_Buffer_i_1_n_0));
  FDRE UFC_START_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_START_Buffer_i_1_n_0),
        .Q(UFC_START),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_0_i_1
       (.I0(D[1]),
        .O(S1_in));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_1_i_1
       (.I0(D[0]),
        .O(\PDU_SCP_Buffer_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_0_i_1
       (.I0(\PDU_ECP_Buffer_reg[0]_0 [1]),
        .I1(D[1]),
        .O(\PDU_ECP_Buffer_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_1_i_1
       (.I0(\PDU_ECP_Buffer_reg[0]_0 [0]),
        .I1(D[0]),
        .O(\PDU_ECP_Buffer_reg[1]_0 ));
  FDRE load_ufc_control_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(neqOp),
        .Q(load_ufc_control_code_r),
        .R(SR));
  FDRE \rx_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_data_v_r_reg[0]_0 [1]),
        .Q(rx_data_v_r[0]),
        .R(SR));
  FDRE \rx_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_data_v_r_reg[0]_0 [0]),
        .Q(rx_data_v_r[1]),
        .R(SR));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_ecp_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_ecp_r_reg[0]_srl3 " *) 
  SRL16E \rx_ecp_r_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_9_out[1]),
        .Q(\rx_ecp_r_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_ecp_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_ecp_r_reg[1]_srl3 " *) 
  SRL16E \rx_ecp_r_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_9_out[0]),
        .Q(\rx_ecp_r_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_pad_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_pad_r_reg[0]_srl2 " *) 
  SRL16E \rx_pad_r_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(Q[1]),
        .Q(\rx_pad_r_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_pad_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_pad_r_reg[1]_srl2 " *) 
  SRL16E \rx_pad_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(Q[0]),
        .Q(\rx_pad_r_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_scp_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_scp_r_reg[0]_srl3 " *) 
  SRL16E \rx_scp_r_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_8_out[1]),
        .Q(\rx_scp_r_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_scp_r_reg " *) 
  (* srl_name = "U0/\\aurora_8b10b_rx_ll_i/ufc_filter_i/rx_scp_r_reg[1]_srl3 " *) 
  SRL16E \rx_scp_r_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_8_out[0]),
        .Q(\rx_scp_r_reg[1]_srl3_n_0 ));
  FDRE \rx_suf_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_lane_mask_r_reg[1]_0 [0]),
        .Q(\rx_suf_r_reg_n_0_[1] ),
        .R(SR));
  FDRE save_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_suf_r_reg_n_0_[1] ),
        .Q(L),
        .R(SR));
  FDRE \stage_1_count_value_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[0]_0 [3]),
        .Q(stage_1_count_value_r[0]),
        .R(1'b0));
  FDRE \stage_1_count_value_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[0]_0 [2]),
        .Q(stage_1_count_value_r[1]),
        .R(1'b0));
  FDRE \stage_1_count_value_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[0]_0 [1]),
        .Q(stage_1_count_value_r[2]),
        .R(1'b0));
  FDRE \stage_1_count_value_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[0]_0 [0]),
        .Q(stage_1_count_value_r[3]),
        .R(1'b0));
  FDRE \stage_1_lane_mask_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_lane_mask_r_reg[1]_0 [1]),
        .Q(\stage_1_lane_mask_r_reg_n_0_[1] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    stage_1_pad_r_i_1
       (.I0(PDU_PAD[0]),
        .I1(PDU_PAD[1]),
        .O(\PDU_PAD_Buffer_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stage_2_count_value_r[0]_i_1 
       (.I0(load_ufc_control_code_r),
        .I1(stage_1_count_value_r[0]),
        .O(\stage_2_count_value_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B88888888B8)) 
    \stage_2_count_value_r[1]_i_1 
       (.I0(stage_1_count_value_r[1]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[1]),
        .I4(stage_2_count_value_r[3]),
        .I5(stage_2_count_value_r[2]),
        .O(\stage_2_count_value_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B888B88888B88)) 
    \stage_2_count_value_r[2]_i_1 
       (.I0(stage_1_count_value_r[2]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[2]),
        .I3(stage_2_count_value_r[0]),
        .I4(stage_2_count_value_r[3]),
        .I5(stage_2_count_value_r[1]),
        .O(\stage_2_count_value_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8888888888)) 
    \stage_2_count_value_r[3]_i_1 
       (.I0(stage_1_count_value_r[3]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[2]),
        .I4(stage_2_count_value_r[1]),
        .I5(stage_2_count_value_r[3]),
        .O(\stage_2_count_value_r[3]_i_1_n_0 ));
  FDRE \stage_2_count_value_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[0]_i_1_n_0 ),
        .Q(stage_2_count_value_r[0]),
        .R(SR));
  FDRE \stage_2_count_value_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[1]_i_1_n_0 ),
        .Q(stage_2_count_value_r[1]),
        .R(SR));
  FDRE \stage_2_count_value_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[2]_i_1_n_0 ),
        .Q(stage_2_count_value_r[2]),
        .R(SR));
  FDRE \stage_2_count_value_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[3]_i_1_n_0 ),
        .Q(stage_2_count_value_r[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    stage_2_lane_mask_c
       (.I0(stage_2_count_value_r[3]),
        .I1(stage_2_count_value_r[2]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[0]),
        .O(stage_2_lane_mask_c_n_0));
endmodule

module aurora_8b10b_UFC_OUTPUT_MUX
   (M_AXI_UFC_RX_TDATA,
    D,
    user_clk,
    UFC_OUTPUT_SELECT_Buffer,
    \MUXED_DATA_Buffer_reg[16]_0 ,
    \MUXED_DATA_Buffer_reg[17]_0 ,
    \MUXED_DATA_Buffer_reg[18]_0 ,
    \MUXED_DATA_Buffer_reg[19]_0 ,
    \MUXED_DATA_Buffer_reg[20]_0 ,
    \MUXED_DATA_Buffer_reg[21]_0 ,
    \MUXED_DATA_Buffer_reg[22]_0 ,
    \MUXED_DATA_Buffer_reg[23]_0 ,
    \MUXED_DATA_Buffer_reg[24]_0 ,
    \MUXED_DATA_Buffer_reg[25]_0 ,
    \MUXED_DATA_Buffer_reg[26]_0 ,
    \MUXED_DATA_Buffer_reg[27]_0 ,
    \MUXED_DATA_Buffer_reg[28]_0 ,
    \MUXED_DATA_Buffer_reg[29]_0 ,
    \MUXED_DATA_Buffer_reg[30]_0 ,
    \MUXED_DATA_Buffer_reg[31]_0 );
  output [0:31]M_AXI_UFC_RX_TDATA;
  input [15:0]D;
  input user_clk;
  input [0:0]UFC_OUTPUT_SELECT_Buffer;
  input \MUXED_DATA_Buffer_reg[16]_0 ;
  input \MUXED_DATA_Buffer_reg[17]_0 ;
  input \MUXED_DATA_Buffer_reg[18]_0 ;
  input \MUXED_DATA_Buffer_reg[19]_0 ;
  input \MUXED_DATA_Buffer_reg[20]_0 ;
  input \MUXED_DATA_Buffer_reg[21]_0 ;
  input \MUXED_DATA_Buffer_reg[22]_0 ;
  input \MUXED_DATA_Buffer_reg[23]_0 ;
  input \MUXED_DATA_Buffer_reg[24]_0 ;
  input \MUXED_DATA_Buffer_reg[25]_0 ;
  input \MUXED_DATA_Buffer_reg[26]_0 ;
  input \MUXED_DATA_Buffer_reg[27]_0 ;
  input \MUXED_DATA_Buffer_reg[28]_0 ;
  input \MUXED_DATA_Buffer_reg[29]_0 ;
  input \MUXED_DATA_Buffer_reg[30]_0 ;
  input \MUXED_DATA_Buffer_reg[31]_0 ;

  wire [15:0]D;
  wire \MUXED_DATA_Buffer_reg[16]_0 ;
  wire \MUXED_DATA_Buffer_reg[17]_0 ;
  wire \MUXED_DATA_Buffer_reg[18]_0 ;
  wire \MUXED_DATA_Buffer_reg[19]_0 ;
  wire \MUXED_DATA_Buffer_reg[20]_0 ;
  wire \MUXED_DATA_Buffer_reg[21]_0 ;
  wire \MUXED_DATA_Buffer_reg[22]_0 ;
  wire \MUXED_DATA_Buffer_reg[23]_0 ;
  wire \MUXED_DATA_Buffer_reg[24]_0 ;
  wire \MUXED_DATA_Buffer_reg[25]_0 ;
  wire \MUXED_DATA_Buffer_reg[26]_0 ;
  wire \MUXED_DATA_Buffer_reg[27]_0 ;
  wire \MUXED_DATA_Buffer_reg[28]_0 ;
  wire \MUXED_DATA_Buffer_reg[29]_0 ;
  wire \MUXED_DATA_Buffer_reg[30]_0 ;
  wire \MUXED_DATA_Buffer_reg[31]_0 ;
  wire [0:31]M_AXI_UFC_RX_TDATA;
  wire [0:0]UFC_OUTPUT_SELECT_Buffer;
  wire user_clk;

  FDRE \MUXED_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(M_AXI_UFC_RX_TDATA[0]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(M_AXI_UFC_RX_TDATA[10]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(M_AXI_UFC_RX_TDATA[11]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(M_AXI_UFC_RX_TDATA[12]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(M_AXI_UFC_RX_TDATA[13]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(M_AXI_UFC_RX_TDATA[14]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(M_AXI_UFC_RX_TDATA[15]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[16]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[16]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[17]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[17]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[18]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[18]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[19]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[19]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(M_AXI_UFC_RX_TDATA[1]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[20]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[20]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[21]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[21]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[22]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[22]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[23]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[23]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[24]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[24]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[25]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[25]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[26]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[26]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[27]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[27]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[28]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[28]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[29]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[29]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(M_AXI_UFC_RX_TDATA[2]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[30]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[30]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer_reg[31]_0 ),
        .Q(M_AXI_UFC_RX_TDATA[31]),
        .R(UFC_OUTPUT_SELECT_Buffer));
  FDRE \MUXED_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(M_AXI_UFC_RX_TDATA[3]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(M_AXI_UFC_RX_TDATA[4]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(M_AXI_UFC_RX_TDATA[5]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(M_AXI_UFC_RX_TDATA[6]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(M_AXI_UFC_RX_TDATA[7]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(M_AXI_UFC_RX_TDATA[8]),
        .R(1'b0));
  FDRE \MUXED_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(M_AXI_UFC_RX_TDATA[9]),
        .R(1'b0));
endmodule

module aurora_8b10b_UFC_OUTPUT_SWITCH_CONTROL
   (UFC_OUTPUT_SELECT_Buffer,
    \UFC_OUTPUT_SELECT_Buffer_reg[5]_0 ,
    Q,
    \UFC_OUTPUT_SELECT_Buffer_reg[4]_0 ,
    user_clk);
  output [0:0]UFC_OUTPUT_SELECT_Buffer;
  output [0:0]\UFC_OUTPUT_SELECT_Buffer_reg[5]_0 ;
  input [1:0]Q;
  input \UFC_OUTPUT_SELECT_Buffer_reg[4]_0 ;
  input user_clk;

  wire [1:0]Q;
  wire [0:0]UFC_OUTPUT_SELECT_Buffer;
  wire \UFC_OUTPUT_SELECT_Buffer[5]_i_1_n_0 ;
  wire \UFC_OUTPUT_SELECT_Buffer_reg[4]_0 ;
  wire [0:0]\UFC_OUTPUT_SELECT_Buffer_reg[5]_0 ;
  wire user_clk;

  LUT2 #(
    .INIT(4'h4)) 
    \UFC_OUTPUT_SELECT_Buffer[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\UFC_OUTPUT_SELECT_Buffer[5]_i_1_n_0 ));
  FDRE \UFC_OUTPUT_SELECT_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_OUTPUT_SELECT_Buffer_reg[4]_0 ),
        .Q(UFC_OUTPUT_SELECT_Buffer),
        .R(1'b0));
  FDRE \UFC_OUTPUT_SELECT_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_OUTPUT_SELECT_Buffer[5]_i_1_n_0 ),
        .Q(\UFC_OUTPUT_SELECT_Buffer_reg[5]_0 ),
        .R(1'b0));
endmodule

module aurora_8b10b_UFC_SIDEBAND_OUTPUT
   (\UFC_REM_Buffer_reg[0]_0 ,
    UFC_SRC_RDY_N_Buffer,
    UFC_EOF_N_Buffer,
    \UFC_REM_Buffer_reg[0]_1 ,
    user_clk,
    SR,
    UFC_SRC_RDY_N_Buffer_reg_0,
    UFC_EOF_N_Buffer_reg_0);
  output \UFC_REM_Buffer_reg[0]_0 ;
  output UFC_SRC_RDY_N_Buffer;
  output UFC_EOF_N_Buffer;
  input \UFC_REM_Buffer_reg[0]_1 ;
  input user_clk;
  input [0:0]SR;
  input UFC_SRC_RDY_N_Buffer_reg_0;
  input UFC_EOF_N_Buffer_reg_0;

  wire [0:0]SR;
  wire UFC_EOF_N_Buffer;
  wire UFC_EOF_N_Buffer_reg_0;
  wire \UFC_REM_Buffer_reg[0]_0 ;
  wire \UFC_REM_Buffer_reg[0]_1 ;
  wire UFC_SRC_RDY_N_Buffer;
  wire UFC_SRC_RDY_N_Buffer_reg_0;
  wire user_clk;

  FDRE UFC_EOF_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_EOF_N_Buffer_reg_0),
        .Q(UFC_EOF_N_Buffer),
        .R(1'b0));
  FDRE \UFC_REM_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_REM_Buffer_reg[0]_1 ),
        .Q(\UFC_REM_Buffer_reg[0]_0 ),
        .R(1'b0));
  FDSE UFC_SRC_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_SRC_RDY_N_Buffer_reg_0),
        .Q(UFC_SRC_RDY_N_Buffer),
        .S(SR));
endmodule

module aurora_8b10b_UFC_STORAGE_COUNT_CONTROL
   (stage_1_ufc_start_r_reg,
    Q,
    \storage_count_r_reg[1]_0 ,
    \storage_count_r_reg[1]_1 ,
    \storage_count_r_reg[0]_0 ,
    D,
    stage_1_ufc_start_r_reg_0,
    stage_1_ufc_start_r,
    UFC_EOF_N_Buffer_reg,
    SR,
    user_clk);
  output stage_1_ufc_start_r_reg;
  output [1:0]Q;
  output \storage_count_r_reg[1]_0 ;
  output \storage_count_r_reg[1]_1 ;
  output \storage_count_r_reg[0]_0 ;
  output [0:0]D;
  output stage_1_ufc_start_r_reg_0;
  input stage_1_ufc_start_r;
  input [1:0]UFC_EOF_N_Buffer_reg;
  input [0:0]SR;
  input user_clk;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]UFC_EOF_N_Buffer_reg;
  wire stage_1_ufc_start_r;
  wire stage_1_ufc_start_r_reg;
  wire stage_1_ufc_start_r_reg_0;
  wire [0:1]storage_count_c;
  wire \storage_count_r_reg[0]_0 ;
  wire \storage_count_r_reg[1]_0 ;
  wire \storage_count_r_reg[1]_1 ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h55547733)) 
    UFC_EOF_N_Buffer_i_1
       (.I0(stage_1_ufc_start_r),
        .I1(Q[0]),
        .I2(UFC_EOF_N_Buffer_reg[0]),
        .I3(UFC_EOF_N_Buffer_reg[1]),
        .I4(Q[1]),
        .O(stage_1_ufc_start_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h6433)) 
    \UFC_REM_Buffer[0]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(UFC_EOF_N_Buffer_reg[0]),
        .O(stage_1_ufc_start_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h1)) 
    UFC_SRC_RDY_N_Buffer_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\storage_count_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \UFC_STORAGE_SELECT_Buffer[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\storage_count_r_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \UFC_STORAGE_SELECT_Buffer[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\storage_count_r_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hABFF)) 
    \UFC_STORAGE_SELECT_Buffer[5]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(Q[1]),
        .I2(UFC_EOF_N_Buffer_reg[1]),
        .I3(Q[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h9CC8C8C8)) 
    \storage_count_r[0]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(UFC_EOF_N_Buffer_reg[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(UFC_EOF_N_Buffer_reg[0]),
        .O(storage_count_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hAAFE5400)) 
    \storage_count_r[1]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(UFC_EOF_N_Buffer_reg[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(UFC_EOF_N_Buffer_reg[0]),
        .O(storage_count_c[1]));
  FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_count_c[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_count_c[1]),
        .Q(Q[0]),
        .R(SR));
endmodule

module aurora_8b10b_UFC_STORAGE_MUX
   (D,
    \MUXED_DATA_Buffer_reg[16]_0 ,
    \MUXED_DATA_Buffer_reg[17]_0 ,
    \MUXED_DATA_Buffer_reg[18]_0 ,
    \MUXED_DATA_Buffer_reg[19]_0 ,
    \MUXED_DATA_Buffer_reg[20]_0 ,
    \MUXED_DATA_Buffer_reg[21]_0 ,
    \MUXED_DATA_Buffer_reg[22]_0 ,
    \MUXED_DATA_Buffer_reg[23]_0 ,
    \MUXED_DATA_Buffer_reg[24]_0 ,
    \MUXED_DATA_Buffer_reg[25]_0 ,
    \MUXED_DATA_Buffer_reg[26]_0 ,
    \MUXED_DATA_Buffer_reg[27]_0 ,
    \MUXED_DATA_Buffer_reg[28]_0 ,
    \MUXED_DATA_Buffer_reg[29]_0 ,
    \MUXED_DATA_Buffer_reg[30]_0 ,
    \MUXED_DATA_Buffer_reg[31]_0 ,
    \MUXED_DATA_Buffer_reg[0]_0 ,
    user_clk,
    UFC_STORAGE_SELECT_Buffer,
    SHIFTED_DATA_Buffer,
    \MUXED_DATA_Buffer_reg[0]_1 );
  output [15:0]D;
  output \MUXED_DATA_Buffer_reg[16]_0 ;
  output \MUXED_DATA_Buffer_reg[17]_0 ;
  output \MUXED_DATA_Buffer_reg[18]_0 ;
  output \MUXED_DATA_Buffer_reg[19]_0 ;
  output \MUXED_DATA_Buffer_reg[20]_0 ;
  output \MUXED_DATA_Buffer_reg[21]_0 ;
  output \MUXED_DATA_Buffer_reg[22]_0 ;
  output \MUXED_DATA_Buffer_reg[23]_0 ;
  output \MUXED_DATA_Buffer_reg[24]_0 ;
  output \MUXED_DATA_Buffer_reg[25]_0 ;
  output \MUXED_DATA_Buffer_reg[26]_0 ;
  output \MUXED_DATA_Buffer_reg[27]_0 ;
  output \MUXED_DATA_Buffer_reg[28]_0 ;
  output \MUXED_DATA_Buffer_reg[29]_0 ;
  output \MUXED_DATA_Buffer_reg[30]_0 ;
  output \MUXED_DATA_Buffer_reg[31]_0 ;
  input \MUXED_DATA_Buffer_reg[0]_0 ;
  input user_clk;
  input [2:0]UFC_STORAGE_SELECT_Buffer;
  input [15:0]SHIFTED_DATA_Buffer;
  input [15:0]\MUXED_DATA_Buffer_reg[0]_1 ;

  wire [15:0]D;
  wire \MUXED_DATA_Buffer[0]_i_2_n_0 ;
  wire \MUXED_DATA_Buffer[10]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[11]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[12]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[13]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[14]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[15]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[16]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[17]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[18]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[19]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[1]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[20]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[21]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[22]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[23]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[24]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[25]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[26]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[27]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[28]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[29]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[2]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[30]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[31]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[3]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[4]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[5]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[6]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[7]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[8]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer[9]_i_1_n_0 ;
  wire \MUXED_DATA_Buffer_reg[0]_0 ;
  wire [15:0]\MUXED_DATA_Buffer_reg[0]_1 ;
  wire \MUXED_DATA_Buffer_reg[16]_0 ;
  wire \MUXED_DATA_Buffer_reg[17]_0 ;
  wire \MUXED_DATA_Buffer_reg[18]_0 ;
  wire \MUXED_DATA_Buffer_reg[19]_0 ;
  wire \MUXED_DATA_Buffer_reg[20]_0 ;
  wire \MUXED_DATA_Buffer_reg[21]_0 ;
  wire \MUXED_DATA_Buffer_reg[22]_0 ;
  wire \MUXED_DATA_Buffer_reg[23]_0 ;
  wire \MUXED_DATA_Buffer_reg[24]_0 ;
  wire \MUXED_DATA_Buffer_reg[25]_0 ;
  wire \MUXED_DATA_Buffer_reg[26]_0 ;
  wire \MUXED_DATA_Buffer_reg[27]_0 ;
  wire \MUXED_DATA_Buffer_reg[28]_0 ;
  wire \MUXED_DATA_Buffer_reg[29]_0 ;
  wire \MUXED_DATA_Buffer_reg[30]_0 ;
  wire \MUXED_DATA_Buffer_reg[31]_0 ;
  wire [15:0]SHIFTED_DATA_Buffer;
  wire [2:0]UFC_STORAGE_SELECT_Buffer;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[0]_i_2 
       (.I0(SHIFTED_DATA_Buffer[15]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [15]),
        .O(\MUXED_DATA_Buffer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[10]_i_1 
       (.I0(SHIFTED_DATA_Buffer[5]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [5]),
        .O(\MUXED_DATA_Buffer[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[11]_i_1 
       (.I0(SHIFTED_DATA_Buffer[4]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [4]),
        .O(\MUXED_DATA_Buffer[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[12]_i_1 
       (.I0(SHIFTED_DATA_Buffer[3]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [3]),
        .O(\MUXED_DATA_Buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[13]_i_1 
       (.I0(SHIFTED_DATA_Buffer[2]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [2]),
        .O(\MUXED_DATA_Buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[14]_i_1 
       (.I0(SHIFTED_DATA_Buffer[1]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [1]),
        .O(\MUXED_DATA_Buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[15]_i_1 
       (.I0(SHIFTED_DATA_Buffer[0]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [0]),
        .O(\MUXED_DATA_Buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[16]_i_1 
       (.I0(SHIFTED_DATA_Buffer[15]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [15]),
        .O(\MUXED_DATA_Buffer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[17]_i_1 
       (.I0(SHIFTED_DATA_Buffer[14]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [14]),
        .O(\MUXED_DATA_Buffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[18]_i_1 
       (.I0(SHIFTED_DATA_Buffer[13]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [13]),
        .O(\MUXED_DATA_Buffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[19]_i_1 
       (.I0(SHIFTED_DATA_Buffer[12]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [12]),
        .O(\MUXED_DATA_Buffer[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[1]_i_1 
       (.I0(SHIFTED_DATA_Buffer[14]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [14]),
        .O(\MUXED_DATA_Buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[20]_i_1 
       (.I0(SHIFTED_DATA_Buffer[11]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [11]),
        .O(\MUXED_DATA_Buffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[21]_i_1 
       (.I0(SHIFTED_DATA_Buffer[10]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [10]),
        .O(\MUXED_DATA_Buffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[22]_i_1 
       (.I0(SHIFTED_DATA_Buffer[9]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [9]),
        .O(\MUXED_DATA_Buffer[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[23]_i_1 
       (.I0(SHIFTED_DATA_Buffer[8]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [8]),
        .O(\MUXED_DATA_Buffer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[24]_i_1 
       (.I0(SHIFTED_DATA_Buffer[7]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [7]),
        .O(\MUXED_DATA_Buffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[25]_i_1 
       (.I0(SHIFTED_DATA_Buffer[6]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [6]),
        .O(\MUXED_DATA_Buffer[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[26]_i_1 
       (.I0(SHIFTED_DATA_Buffer[5]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [5]),
        .O(\MUXED_DATA_Buffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[27]_i_1 
       (.I0(SHIFTED_DATA_Buffer[4]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [4]),
        .O(\MUXED_DATA_Buffer[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[28]_i_1 
       (.I0(SHIFTED_DATA_Buffer[3]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [3]),
        .O(\MUXED_DATA_Buffer[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[29]_i_1 
       (.I0(SHIFTED_DATA_Buffer[2]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [2]),
        .O(\MUXED_DATA_Buffer[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[2]_i_1 
       (.I0(SHIFTED_DATA_Buffer[13]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [13]),
        .O(\MUXED_DATA_Buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[30]_i_1 
       (.I0(SHIFTED_DATA_Buffer[1]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [1]),
        .O(\MUXED_DATA_Buffer[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[31]_i_1 
       (.I0(SHIFTED_DATA_Buffer[0]),
        .I1(UFC_STORAGE_SELECT_Buffer[0]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [0]),
        .O(\MUXED_DATA_Buffer[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[3]_i_1 
       (.I0(SHIFTED_DATA_Buffer[12]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [12]),
        .O(\MUXED_DATA_Buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[4]_i_1 
       (.I0(SHIFTED_DATA_Buffer[11]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [11]),
        .O(\MUXED_DATA_Buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[5]_i_1 
       (.I0(SHIFTED_DATA_Buffer[10]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [10]),
        .O(\MUXED_DATA_Buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[6]_i_1 
       (.I0(SHIFTED_DATA_Buffer[9]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [9]),
        .O(\MUXED_DATA_Buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[7]_i_1 
       (.I0(SHIFTED_DATA_Buffer[8]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [8]),
        .O(\MUXED_DATA_Buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[8]_i_1 
       (.I0(SHIFTED_DATA_Buffer[7]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [7]),
        .O(\MUXED_DATA_Buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA_Buffer[9]_i_1 
       (.I0(SHIFTED_DATA_Buffer[6]),
        .I1(UFC_STORAGE_SELECT_Buffer[2]),
        .I2(\MUXED_DATA_Buffer_reg[0]_1 [6]),
        .O(\MUXED_DATA_Buffer[9]_i_1_n_0 ));
  FDRE \MUXED_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[0]_i_2_n_0 ),
        .Q(D[15]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[10]_i_1_n_0 ),
        .Q(D[5]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[11]_i_1_n_0 ),
        .Q(D[4]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[12]_i_1_n_0 ),
        .Q(D[3]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[13]_i_1_n_0 ),
        .Q(D[2]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[14]_i_1_n_0 ),
        .Q(D[1]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[15]_i_1_n_0 ),
        .Q(D[0]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[16]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[16]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[17]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[17]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[18]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[18]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[19]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[19]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[1]_i_1_n_0 ),
        .Q(D[14]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[20]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[20]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[21]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[21]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[22]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[22]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[23]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[23]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[24]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[24]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[25]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[25]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[26]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[26]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[27]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[27]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[28]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[28]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[29]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[29]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[2]_i_1_n_0 ),
        .Q(D[13]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[30]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[30]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[31]_i_1_n_0 ),
        .Q(\MUXED_DATA_Buffer_reg[31]_0 ),
        .R(UFC_STORAGE_SELECT_Buffer[1]));
  FDRE \MUXED_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[3]_i_1_n_0 ),
        .Q(D[12]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[4]_i_1_n_0 ),
        .Q(D[11]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[5]_i_1_n_0 ),
        .Q(D[10]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[6]_i_1_n_0 ),
        .Q(D[9]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[7]_i_1_n_0 ),
        .Q(D[8]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[8]_i_1_n_0 ),
        .Q(D[7]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
  FDRE \MUXED_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_Buffer[9]_i_1_n_0 ),
        .Q(D[6]),
        .R(\MUXED_DATA_Buffer_reg[0]_0 ));
endmodule

module aurora_8b10b_UFC_STORAGE_SWITCH_CONTROL
   (\UFC_STORAGE_SELECT_Buffer_reg[0]_0 ,
    \UFC_STORAGE_SELECT_Buffer_reg[2]_0 ,
    D,
    user_clk,
    \UFC_STORAGE_SELECT_Buffer_reg[0]_1 ,
    \UFC_STORAGE_SELECT_Buffer_reg[1]_0 ,
    Q,
    \UFC_STORAGE_SELECT_Buffer_reg[4]_0 ,
    stage_1_ufc_start_r,
    \UFC_STORAGE_SELECT_Buffer_reg[4]_1 );
  output \UFC_STORAGE_SELECT_Buffer_reg[0]_0 ;
  output [2:0]\UFC_STORAGE_SELECT_Buffer_reg[2]_0 ;
  input [0:0]D;
  input user_clk;
  input \UFC_STORAGE_SELECT_Buffer_reg[0]_1 ;
  input \UFC_STORAGE_SELECT_Buffer_reg[1]_0 ;
  input [1:0]Q;
  input \UFC_STORAGE_SELECT_Buffer_reg[4]_0 ;
  input stage_1_ufc_start_r;
  input [1:0]\UFC_STORAGE_SELECT_Buffer_reg[4]_1 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:1]UFC_STORAGE_SELECT_Buffer;
  wire \UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ;
  wire \UFC_STORAGE_SELECT_Buffer_reg[0]_0 ;
  wire \UFC_STORAGE_SELECT_Buffer_reg[0]_1 ;
  wire \UFC_STORAGE_SELECT_Buffer_reg[1]_0 ;
  wire [2:0]\UFC_STORAGE_SELECT_Buffer_reg[2]_0 ;
  wire \UFC_STORAGE_SELECT_Buffer_reg[4]_0 ;
  wire [1:0]\UFC_STORAGE_SELECT_Buffer_reg[4]_1 ;
  wire stage_1_ufc_start_r;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    \MUXED_DATA_Buffer[0]_i_1 
       (.I0(UFC_STORAGE_SELECT_Buffer[0]),
        .I1(UFC_STORAGE_SELECT_Buffer[1]),
        .O(\UFC_STORAGE_SELECT_Buffer_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hABABABBF)) 
    \UFC_STORAGE_SELECT_Buffer[0]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(Q[1]),
        .I2(\UFC_STORAGE_SELECT_Buffer_reg[4]_1 [1]),
        .I3(\UFC_STORAGE_SELECT_Buffer_reg[4]_1 [0]),
        .I4(Q[0]),
        .O(\UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_Buffer_reg[0]_1 ),
        .Q(UFC_STORAGE_SELECT_Buffer[0]),
        .R(\UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_Buffer_reg[1]_0 ),
        .Q(UFC_STORAGE_SELECT_Buffer[1]),
        .R(\UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\UFC_STORAGE_SELECT_Buffer_reg[2]_0 [2]),
        .R(\UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_Buffer_reg[4]_0 ),
        .Q(\UFC_STORAGE_SELECT_Buffer_reg[2]_0 [1]),
        .R(\UFC_STORAGE_SELECT_Buffer[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(\UFC_STORAGE_SELECT_Buffer_reg[2]_0 [0]),
        .R(1'b0));
endmodule

module aurora_8b10b_VALID_DATA_COUNTER
   (\COUNT_Buffer_reg[0]_0 ,
    Q,
    SR,
    user_clk);
  output [1:0]\COUNT_Buffer_reg[0]_0 ;
  input [1:0]Q;
  input [0:0]SR;
  input user_clk;

  wire \COUNT_Buffer[0]_i_1_n_0 ;
  wire \COUNT_Buffer[1]_i_1_n_0 ;
  wire [1:0]\COUNT_Buffer_reg[0]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \COUNT_Buffer[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\COUNT_Buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT_Buffer[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\COUNT_Buffer[1]_i_1_n_0 ));
  FDRE \COUNT_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_Buffer[0]_i_1_n_0 ),
        .Q(\COUNT_Buffer_reg[0]_0 [1]),
        .R(SR));
  FDRE \COUNT_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_Buffer[1]_i_1_n_0 ),
        .Q(\COUNT_Buffer_reg[0]_0 [0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_VALID_DATA_COUNTER" *) 
module aurora_8b10b_VALID_DATA_COUNTER_25
   (D,
    Q,
    \COUNT_Buffer_reg[0]_0 ,
    \COUNT_Buffer_reg[0]_1 ,
    end_storage_r_reg,
    FRAME_ERR_RESULT_Buffer0,
    end_storage_r0,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    \storage_count_r_reg[0] ,
    stage_2_frame_err_r,
    stage_2_end_after_start_r,
    stage_2_end_before_start_r,
    FRAME_ERR_RESULT_Buffer_reg,
    SR,
    \COUNT_Buffer_reg[0]_2 ,
    user_clk);
  output [0:0]D;
  output [0:0]Q;
  output [0:0]\COUNT_Buffer_reg[0]_0 ;
  output [1:0]\COUNT_Buffer_reg[0]_1 ;
  output end_storage_r_reg;
  output FRAME_ERR_RESULT_Buffer0;
  output end_storage_r0;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input [1:0]\storage_count_r_reg[0] ;
  input stage_2_frame_err_r;
  input stage_2_end_after_start_r;
  input stage_2_end_before_start_r;
  input FRAME_ERR_RESULT_Buffer_reg;
  input [0:0]SR;
  input [1:0]\COUNT_Buffer_reg[0]_2 ;
  input user_clk;

  wire [0:0]\COUNT_Buffer_reg[0]_0 ;
  wire [1:0]\COUNT_Buffer_reg[0]_1 ;
  wire [1:0]\COUNT_Buffer_reg[0]_2 ;
  wire [0:0]D;
  wire FRAME_ERR_RESULT_Buffer0;
  wire FRAME_ERR_RESULT_Buffer_reg;
  wire [0:0]Q;
  wire [0:0]SR;
  wire end_storage_r0;
  wire end_storage_r_i_2_n_0;
  wire end_storage_r_reg;
  wire [0:0]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [1:0]\storage_count_r_reg[0] ;
  wire user_clk;

  FDRE \COUNT_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_Buffer_reg[0]_2 [1]),
        .Q(stage_2_data_v_count_r),
        .R(SR));
  FDRE \COUNT_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_Buffer_reg[0]_2 [0]),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFECFCCCFCECFCC)) 
    FRAME_ERR_RESULT_Buffer_i_1
       (.I0(end_storage_r_i_2_n_0),
        .I1(stage_2_frame_err_r),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_after_start_r),
        .I4(stage_2_end_before_start_r),
        .I5(FRAME_ERR_RESULT_Buffer_reg),
        .O(FRAME_ERR_RESULT_Buffer0));
  LUT4 #(
    .INIT(16'h02FD)) 
    \RX_REM_Buffer[0]_i_1 
       (.I0(Q),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .I3(\storage_count_r_reg[0] [0]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEEEEE)) 
    SRC_RDY_N_Buffer_i_2
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .I3(\storage_count_r_reg[0] [0]),
        .I4(stage_2_data_v_count_r),
        .I5(\storage_count_r_reg[0] [1]),
        .O(end_storage_r_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFAFFFF)) 
    \STORAGE_CE_Buffer[0]_i_1 
       (.I0(stage_2_data_v_count_r),
        .I1(Q),
        .I2(stage_2_start_with_data_r),
        .I3(stage_3_end_storage_r),
        .I4(\storage_count_r_reg[0] [0]),
        .I5(\storage_count_r_reg[0] [1]),
        .O(\COUNT_Buffer_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \STORAGE_CE_Buffer[1]_i_1 
       (.I0(stage_2_data_v_count_r),
        .I1(\storage_count_r_reg[0] [0]),
        .I2(Q),
        .I3(stage_2_start_with_data_r),
        .I4(stage_3_end_storage_r),
        .I5(\storage_count_r_reg[0] [1]),
        .O(\COUNT_Buffer_reg[0]_1 [0]));
  LUT4 #(
    .INIT(16'h88B8)) 
    end_storage_r_i_1
       (.I0(stage_2_end_after_start_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_2_end_before_start_r),
        .I3(end_storage_r_i_2_n_0),
        .O(end_storage_r0));
  LUT4 #(
    .INIT(16'h0001)) 
    end_storage_r_i_2
       (.I0(stage_2_data_v_count_r),
        .I1(\storage_count_r_reg[0] [1]),
        .I2(Q),
        .I3(\storage_count_r_reg[0] [0]),
        .O(end_storage_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hA9AAAAABABA8A8AA)) 
    \storage_count_r[0]_i_2 
       (.I0(stage_2_data_v_count_r),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_start_with_data_r),
        .I3(Q),
        .I4(\storage_count_r_reg[0] [0]),
        .I5(\storage_count_r_reg[0] [1]),
        .O(\COUNT_Buffer_reg[0]_0 ));
endmodule

module aurora_8b10b_cdc_sync
   (out,
    RESET,
    user_clk);
  output out;
  input RESET;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire user_clk;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = RESET;
  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync_16
   (out,
    user_clk);
  output out;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync_23
   (out,
    PLL_NOT_LOCKED,
    user_clk);
  output out;
  input PLL_NOT_LOCKED;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire user_clk;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = PLL_NOT_LOCKED;
  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1
   (AR,
    HPCNT_RESET,
    GT_RESET,
    init_clk_in,
    out);
  output [0:0]AR;
  output HPCNT_RESET;
  input GT_RESET;
  input init_clk_in;
  input out;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire HPCNT_RESET;
  wire init_clk_in;
  wire out;

  assign AR[0] = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = GT_RESET;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_2 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I1(out),
        .O(HPCNT_RESET));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_0
   (out,
    RESET,
    init_clk_in);
  output out;
  input RESET;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = RESET;
  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_1
   (E,
    reset_time_out_reg,
    quad1_common_lock_in,
    init_clk_in,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    Q,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    txresetdone_s3,
    mmcm_lock_reclocked,
    reset_time_out);
  output [0:0]E;
  output reset_time_out_reg;
  input quad1_common_lock_in;
  input init_clk_in;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input [3:0]Q;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input txresetdone_s3;
  input mmcm_lock_reclocked;
  input reset_time_out;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [3:0]Q;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire txresetdone_s3;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'hFAFAFAFAFFFEFAFA)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0] ),
        .I1(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(E));
  LUT5 #(
    .INIT(32'hB8CCB800)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(txresetdone_s3),
        .I1(Q[2]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I3(Q[1]),
        .I4(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400070004)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(\FSM_sequential_tx_state_reg[0]_1 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_tx_state_reg[0]_2 ),
        .I4(\FSM_sequential_tx_state_reg[0]_3 ),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(reset_time_out_i_3_n_0),
        .I2(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h00AE00AE00AEF0AE)) 
    reset_time_out_i_2__0
       (.I0(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .I1(reset_time_out_reg_0),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(reset_time_out_0));
  LUT6 #(
    .INIT(64'h0000FF005555F544)) 
    reset_time_out_i_3
       (.I0(Q[1]),
        .I1(reset_time_out_reg_0),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(reset_time_out_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_11
   (out,
    SR,
    init_clk_in);
  output out;
  output [0:0]SR;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [0:0]SR;
  wire init_clk_in;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1__0 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_2
   (init_clk_in);
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_21
   (out,
    in0,
    drpclk_in);
  output out;
  input in0;
  input drpclk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire drpclk_in;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = in0;
  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_4
   (out,
    SR,
    init_clk_in,
    PLL_NOT_LOCKED);
  output out;
  output [0:0]SR;
  input init_clk_in;
  input PLL_NOT_LOCKED;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire PLL_NOT_LOCKED;
  wire [0:0]SR;
  wire init_clk_in;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int_inferred_i_1 
       (.I0(PLL_NOT_LOCKED),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_8
   (E,
    \FSM_sequential_rx_state_reg[1] ,
    quad1_common_lock_in,
    init_clk_in,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_2 ,
    rxresetdone_s3,
    reset_time_out_reg,
    gtrxreset_i,
    reset_time_out_reg_0,
    reset_time_out_reg_1);
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[1] ;
  input quad1_common_lock_in;
  input init_clk_in;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input rxresetdone_s3;
  input reset_time_out_reg;
  input gtrxreset_i;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [3:0]Q;
  wire gtrxreset_i;
  wire init_clk_in;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire rxresetdone_s3;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(\FSM_sequential_rx_state_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT5 #(
    .INIT(32'h000088F0)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(Q[1]),
        .I1(rxresetdone_s3),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I2(gtrxreset_i),
        .I3(Q[1]),
        .I4(reset_time_out_reg_0),
        .I5(reset_time_out_reg_1),
        .O(\FSM_sequential_rx_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized1_9
   (init_clk_in);
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3
   (out,
    run_phase_alignment_int,
    init_clk_in,
    user_clk);
  output out;
  input run_phase_alignment_int;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire run_phase_alignment_int;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_12
   (init_clk_in,
    user_clk);
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire user_clk;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(1'b0),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_13
   (out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ,
    init_clk_in,
    user_clk);
  output out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ;
  input init_clk_in;
  input user_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_14
   (out,
    rx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output out;
  input rx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire rx_fsm_reset_done_int;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_22
   (out,
    link_reset_comb_r,
    init_clk_in,
    user_clk);
  output out;
  input link_reset_comb_r;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_comb_r),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_24
   (out,
    tx_lock_comb_r,
    init_clk_in,
    user_clk);
  output out;
  input tx_lock_comb_r;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire tx_lock_comb_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock_comb_r),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_6
   (out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg_0 ,
    tx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output out;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg_0 ;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg_0 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire tx_fsm_reset_done_int;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_txresetdone_r_i_1
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized3_7
   (out,
    gtrxreset_i_0,
    init_clk_in,
    user_clk);
  output out;
  input gtrxreset_i_0;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire gtrxreset_i_0;
  wire init_clk_in;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_0),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6
   (out,
    gtrxreset_i,
    user_clk,
    init_clk_in);
  output out;
  input gtrxreset_i;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire gtrxreset_i;
  wire init_clk_in;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_10
   (out,
    rxfsm_rxresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input rxfsm_rxresetdone_r;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire rxfsm_rxresetdone_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_15
   (rxpmaresetdone_i,
    user_clk,
    init_clk_in);
  input rxpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire rxpmaresetdone_i;
  wire user_clk;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(rxpmaresetdone_i),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_17
   (out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ,
    user_clk,
    init_clk_in);
  output out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ;
  input user_clk;
  input init_clk_in;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_18
   (txpmaresetdone_i,
    user_clk,
    init_clk_in);
  input txpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire txpmaresetdone_i;
  wire user_clk;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(txpmaresetdone_i),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_19
   (out,
    SR,
    init_clk_in,
    drpclk_in);
  output out;
  input [0:0]SR;
  input init_clk_in;
  input drpclk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [0:0]SR;
  wire drpclk_in;
  wire init_clk_in;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(SR),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_20
   (AR,
    gt_common_reset_out,
    init_clk_in,
    drpclk_in);
  output [0:0]AR;
  input gt_common_reset_out;
  input init_clk_in;
  input drpclk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire drpclk_in;
  wire gt_common_reset_out;
  wire init_clk_in;

  assign AR[0] = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gt_common_reset_out),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_27
   (O,
    \hotplug_count_synth.count_for_reset_r_reg[7] ,
    \hotplug_count_synth.count_for_reset_r_reg[11] ,
    \hotplug_count_synth.count_for_reset_r_reg[15] ,
    \hotplug_count_synth.count_for_reset_r_reg[19] ,
    \hotplug_count_synth.count_for_reset_r_reg[21] ,
    rx_cc_extend_r2,
    user_clk,
    init_clk_in,
    \hotplug_count_synth.count_for_reset_r_reg );
  output [3:0]O;
  output [3:0]\hotplug_count_synth.count_for_reset_r_reg[7] ;
  output [3:0]\hotplug_count_synth.count_for_reset_r_reg[11] ;
  output [3:0]\hotplug_count_synth.count_for_reset_r_reg[15] ;
  output [3:0]\hotplug_count_synth.count_for_reset_r_reg[19] ;
  output [1:0]\hotplug_count_synth.count_for_reset_r_reg[21] ;
  input rx_cc_extend_r2;
  input user_clk;
  input init_clk_in;
  input [21:0]\hotplug_count_synth.count_for_reset_r_reg ;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [3:0]O;
  wire \hotplug_count_synth.count_for_reset_r[0]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[0]_i_4_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[0]_i_5_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[0]_i_6_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[0]_i_7_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[12]_i_2_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[12]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[12]_i_4_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[12]_i_5_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[16]_i_2_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[16]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[16]_i_4_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[16]_i_5_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[20]_i_2_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[20]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[4]_i_2_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[4]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[4]_i_4_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[4]_i_5_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[8]_i_2_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[8]_i_3_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[8]_i_4_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r[8]_i_5_n_0 ;
  wire [21:0]\hotplug_count_synth.count_for_reset_r_reg ;
  wire \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_1 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_2 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_3 ;
  wire [3:0]\hotplug_count_synth.count_for_reset_r_reg[11] ;
  wire \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_1 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_2 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_3 ;
  wire [3:0]\hotplug_count_synth.count_for_reset_r_reg[15] ;
  wire \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_1 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_2 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_3 ;
  wire [3:0]\hotplug_count_synth.count_for_reset_r_reg[19] ;
  wire \hotplug_count_synth.count_for_reset_r_reg[20]_i_1_n_3 ;
  wire [1:0]\hotplug_count_synth.count_for_reset_r_reg[21] ;
  wire \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_1 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_2 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_3 ;
  wire [3:0]\hotplug_count_synth.count_for_reset_r_reg[7] ;
  wire \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_1 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_2 ;
  wire \hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_3 ;
  wire init_clk_in;
  wire rx_cc_extend_r2;
  wire user_clk;
  wire [3:1]\NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_O_UNCONNECTED ;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r2),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_3 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_4 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [3]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_5 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [2]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_6 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [1]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \hotplug_count_synth.count_for_reset_r[0]_i_7 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [0]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[12]_i_2 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [15]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[12]_i_3 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [14]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[12]_i_4 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [13]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[12]_i_5 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [12]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[16]_i_2 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [19]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[16]_i_3 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [18]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[16]_i_4 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [17]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[16]_i_5 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [16]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[20]_i_2 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [21]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[20]_i_3 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [20]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[4]_i_2 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [7]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[4]_i_3 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [6]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[4]_i_4 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [5]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[4]_i_5 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [4]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[8]_i_2 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [11]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[8]_i_3 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [10]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[8]_i_4 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [9]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \hotplug_count_synth.count_for_reset_r[8]_i_5 
       (.I0(\hotplug_count_synth.count_for_reset_r_reg [8]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\hotplug_count_synth.count_for_reset_r[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0 ,\hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_1 ,\hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_2 ,\hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\hotplug_count_synth.count_for_reset_r[0]_i_3_n_0 }),
        .O(O),
        .S({\hotplug_count_synth.count_for_reset_r[0]_i_4_n_0 ,\hotplug_count_synth.count_for_reset_r[0]_i_5_n_0 ,\hotplug_count_synth.count_for_reset_r[0]_i_6_n_0 ,\hotplug_count_synth.count_for_reset_r[0]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[12]_i_1 
       (.CI(\hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0 ),
        .CO({\hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0 ,\hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_1 ,\hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_2 ,\hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\hotplug_count_synth.count_for_reset_r_reg[15] ),
        .S({\hotplug_count_synth.count_for_reset_r[12]_i_2_n_0 ,\hotplug_count_synth.count_for_reset_r[12]_i_3_n_0 ,\hotplug_count_synth.count_for_reset_r[12]_i_4_n_0 ,\hotplug_count_synth.count_for_reset_r[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[16]_i_1 
       (.CI(\hotplug_count_synth.count_for_reset_r_reg[12]_i_1_n_0 ),
        .CO({\hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0 ,\hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_1 ,\hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_2 ,\hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\hotplug_count_synth.count_for_reset_r_reg[19] ),
        .S({\hotplug_count_synth.count_for_reset_r[16]_i_2_n_0 ,\hotplug_count_synth.count_for_reset_r[16]_i_3_n_0 ,\hotplug_count_synth.count_for_reset_r[16]_i_4_n_0 ,\hotplug_count_synth.count_for_reset_r[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[20]_i_1 
       (.CI(\hotplug_count_synth.count_for_reset_r_reg[16]_i_1_n_0 ),
        .CO({\NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED [3:1],\hotplug_count_synth.count_for_reset_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hotplug_count_synth.count_for_reset_r_reg[20]_i_1_O_UNCONNECTED [3:2],\hotplug_count_synth.count_for_reset_r_reg[21] }),
        .S({1'b0,1'b0,\hotplug_count_synth.count_for_reset_r[20]_i_2_n_0 ,\hotplug_count_synth.count_for_reset_r[20]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[4]_i_1 
       (.CI(\hotplug_count_synth.count_for_reset_r_reg[0]_i_1_n_0 ),
        .CO({\hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0 ,\hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_1 ,\hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_2 ,\hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\hotplug_count_synth.count_for_reset_r_reg[7] ),
        .S({\hotplug_count_synth.count_for_reset_r[4]_i_2_n_0 ,\hotplug_count_synth.count_for_reset_r[4]_i_3_n_0 ,\hotplug_count_synth.count_for_reset_r[4]_i_4_n_0 ,\hotplug_count_synth.count_for_reset_r[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hotplug_count_synth.count_for_reset_r_reg[8]_i_1 
       (.CI(\hotplug_count_synth.count_for_reset_r_reg[4]_i_1_n_0 ),
        .CO({\hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_0 ,\hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_1 ,\hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_2 ,\hotplug_count_synth.count_for_reset_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\hotplug_count_synth.count_for_reset_r_reg[11] ),
        .S({\hotplug_count_synth.count_for_reset_r[8]_i_2_n_0 ,\hotplug_count_synth.count_for_reset_r[8]_i_3_n_0 ,\hotplug_count_synth.count_for_reset_r[8]_i_4_n_0 ,\hotplug_count_synth.count_for_reset_r[8]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_3
   (out,
    txfsm_txresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input txfsm_txresetdone_r;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire txfsm_txresetdone_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(txfsm_txresetdone_r),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_cdc_sync" *) 
module aurora_8b10b_cdc_sync__parameterized6_5
   (out,
    time_out_wait_bypass,
    user_clk,
    init_clk_in);
  output out;
  input time_out_wait_bypass;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire time_out_wait_bypass;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from_inst 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_cdc_to ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .R(1'b0));
endmodule

(* CC_FREQ_FACTOR = "12" *) (* EXAMPLE_SIMULATION = "0" *) (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
module aurora_8b10b_core
   (S_AXI_TX_TDATA,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TVALID,
    S_AXI_TX_TREADY,
    S_AXI_TX_TLAST,
    M_AXI_RX_TDATA,
    M_AXI_RX_TKEEP,
    M_AXI_RX_TVALID,
    M_AXI_RX_TLAST,
    S_AXI_NFC_REQ,
    S_AXI_NFC_NB,
    S_AXI_NFC_ACK,
    M_AXI_RX_SNF,
    M_AXI_RX_FC_NB,
    S_AXI_UFC_TX_REQ,
    S_AXI_UFC_TX_MS,
    S_AXI_UFC_TX_ACK,
    M_AXI_UFC_RX_TDATA,
    M_AXI_UFC_RX_TKEEP,
    M_AXI_UFC_RX_TVALID,
    M_AXI_UFC_RX_TLAST,
    RXP,
    RXN,
    TXP,
    TXN,
    gt_refclk1,
    HARD_ERR,
    SOFT_ERR,
    FRAME_ERR,
    CHANNEL_UP,
    LANE_UP,
    user_clk,
    sync_clk,
    RESET,
    POWER_DOWN,
    LOOPBACK,
    GT_RESET,
    init_clk_in,
    PLL_NOT_LOCKED,
    TX_RESETDONE_OUT,
    RX_RESETDONE_OUT,
    LINK_RESET_OUT,
    drpclk_in,
    DRPADDR_IN,
    DRPDI_IN,
    DRPDO_OUT,
    DRPEN_IN,
    DRPRDY_OUT,
    DRPWE_IN,
    TX_OUT_CLK,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    sys_reset_out,
    tx_lock);
  input [0:31]S_AXI_TX_TDATA;
  input [0:3]S_AXI_TX_TKEEP;
  input S_AXI_TX_TVALID;
  output S_AXI_TX_TREADY;
  input S_AXI_TX_TLAST;
  output [0:31]M_AXI_RX_TDATA;
  output [0:3]M_AXI_RX_TKEEP;
  output M_AXI_RX_TVALID;
  output M_AXI_RX_TLAST;
  input S_AXI_NFC_REQ;
  input [0:3]S_AXI_NFC_NB;
  output S_AXI_NFC_ACK;
  output M_AXI_RX_SNF;
  output [0:3]M_AXI_RX_FC_NB;
  input S_AXI_UFC_TX_REQ;
  input [0:2]S_AXI_UFC_TX_MS;
  output S_AXI_UFC_TX_ACK;
  output [0:31]M_AXI_UFC_RX_TDATA;
  output [0:3]M_AXI_UFC_RX_TKEEP;
  output M_AXI_UFC_RX_TVALID;
  output M_AXI_UFC_RX_TLAST;
  input RXP;
  input RXN;
  output TXP;
  output TXN;
  input gt_refclk1;
  output HARD_ERR;
  output SOFT_ERR;
  output FRAME_ERR;
  output CHANNEL_UP;
  output LANE_UP;
  input user_clk;
  input sync_clk;
  input RESET;
  input POWER_DOWN;
  input [2:0]LOOPBACK;
  input GT_RESET;
  input init_clk_in;
  input PLL_NOT_LOCKED;
  output TX_RESETDONE_OUT;
  output RX_RESETDONE_OUT;
  output LINK_RESET_OUT;
  input drpclk_in;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  output [15:0]DRPDO_OUT;
  input DRPEN_IN;
  output DRPRDY_OUT;
  input DRPWE_IN;
  output TX_OUT_CLK;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  output sys_reset_out;
  output tx_lock;

  wire \<const0> ;
  wire CHANNEL_UP;
  wire DO_CC_I;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPRDY_OUT;
  wire DRPWE_IN;
  wire [0:3]FC_NB;
  wire FRAME_ERR;
  wire GEN_SCP;
  wire GEN_SNF;
  wire GEN_SUF;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire GT_RESET;
  wire HARD_ERR;
  wire HPCNT_RESET;
  wire LANE_UP;
  wire LINK_RESET_OUT;
  wire [2:0]LOOPBACK;
  wire [0:3]M_AXI_RX_FC_NB;
  wire M_AXI_RX_SNF;
  wire [0:31]M_AXI_RX_TDATA;
  wire [1:3]\^M_AXI_RX_TKEEP ;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire [0:31]M_AXI_UFC_RX_TDATA;
  wire [2:2]\^M_AXI_UFC_RX_TKEEP ;
  wire M_AXI_UFC_RX_TLAST;
  wire M_AXI_UFC_RX_TVALID;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire RESET;
  wire RESET_0;
  wire RXN;
  wire RXP;
  wire RX_RESETDONE_OUT;
  wire SOFT_ERR;
  wire S_AXI_NFC_ACK;
  wire [0:3]S_AXI_NFC_NB;
  wire S_AXI_NFC_REQ;
  wire [0:31]S_AXI_TX_TDATA;
  wire [0:3]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire S_AXI_UFC_TX_ACK;
  wire [0:2]S_AXI_UFC_TX_MS;
  wire S_AXI_UFC_TX_REQ;
  wire [3:0]TXCHARISK_IN;
  wire [31:0]TXDATA_IN;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire TX_RESETDONE_OUT;
  wire WARN_CC;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_11;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_12;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_13;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_18;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_24;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_25;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_26;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_27;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_31;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_32;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_33;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_34;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_35;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_36;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_6;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_7;
  wire aurora_8b10b_aurora_lane_4byte_0_i_n_70;
  wire \aurora_8b10b_err_detect_4byte_i/hard_err_gt0 ;
  wire [3:0]\aurora_8b10b_err_detect_4byte_i/p_6_out ;
  wire aurora_8b10b_global_logic_i_n_18;
  wire \aurora_8b10b_lane_init_sm_4byte_i/D ;
  wire \aurora_8b10b_lane_init_sm_4byte_i/begin_r ;
  wire \aurora_8b10b_lane_init_sm_4byte_i/consecutive_commas_r ;
  wire \aurora_8b10b_sym_dec_4byte_i/first_v_received_r ;
  wire [0:0]\aurora_8b10b_sym_dec_4byte_i/left_align_select_r ;
  wire [1:0]\aurora_8b10b_sym_dec_4byte_i/p_8_out ;
  wire [1:0]\aurora_8b10b_sym_dec_4byte_i/p_9_out ;
  wire axi_to_ll_pdu_i_n_0;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:3]gen_k_i;
  wire [0:1]gen_pad_i;
  wire [0:3]gen_r_i;
  wire [1:3]gen_v_i;
  wire got_v_i;
  wire gt_common_reset_out;
  wire gt_reset_sync_init_clk;
  wire gt_wrapper_i_n_64;
  wire gt_wrapper_i_n_65;
  wire gt_wrapper_i_n_66;
  wire gt_wrapper_i_n_67;
  wire gt_wrapper_i_n_68;
  wire gt_wrapper_i_n_70;
  wire gt_wrapper_i_n_73;
  wire gt_wrapper_i_n_74;
  wire gt_wrapper_i_n_75;
  wire gt_wrapper_i_n_76;
  wire gt_wrapper_i_n_77;
  wire gt_wrapper_i_n_78;
  wire gt_wrapper_i_n_79;
  wire gt_wrapper_i_n_80;
  wire gt_wrapper_i_n_81;
  wire gt_wrapper_i_n_82;
  wire gt_wrapper_i_n_83;
  wire gt_wrapper_i_n_84;
  wire gt_wrapper_i_n_85;
  wire gt_wrapper_i_n_86;
  wire gt_wrapper_i_n_87;
  wire gt_wrapper_i_n_90;
  wire gt_wrapper_i_n_91;
  wire gtrxreset_i;
  wire hard_err_i;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire neqOp;
  wire new_pkt_r;
  wire [0:0]\nfc_module_i/nfc_counter_r_reg ;
  wire p_0_in;
  wire quad1_common_lock_in;
  wire reset_lanes_i;
  wire reset_sync_init_clk;
  wire reset_sync_user_clk;
  wire rx_cc_i;
  wire [3:0]rx_char_is_comma_i;
  wire [3:0]rx_char_is_k_i;
  wire [31:0]rx_data_i;
  wire rx_eof;
  wire [0:1]rx_pad_descram_in;
  wire [0:31]rx_pe_data_striped_i;
  wire [0:1]rx_pe_data_v_striped_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [0:1]rx_rem;
  wire [1:1]rx_snf_striped_i;
  wire [0:1]rx_suf_striped_i;
  wire [0:1]soft_err_i;
  wire standard_cc_module_i_n_2;
  wire start_rx_i;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_dst_rdy;
  wire \tx_ll_control_i/D ;
  wire tx_lock;
  wire [0:31]tx_pe_data_i;
  wire [0:1]tx_pe_data_v_i;
  wire user_clk;

  assign M_AXI_RX_TKEEP[0] = \<const0> ;
  assign M_AXI_RX_TKEEP[1:3] = \^M_AXI_RX_TKEEP [1:3];
  assign M_AXI_UFC_RX_TKEEP[0] = \<const0> ;
  assign M_AXI_UFC_RX_TKEEP[1] = \<const0> ;
  assign M_AXI_UFC_RX_TKEEP[2] = \^M_AXI_UFC_RX_TKEEP [2];
  assign M_AXI_UFC_RX_TKEEP[3] = \^M_AXI_UFC_RX_TKEEP [2];
  GND GND
       (.G(\<const0> ));
  aurora_8b10b_AURORA_LANE_4BYTE aurora_8b10b_aurora_lane_4byte_0_i
       (.\CHAR_IS_K_OUT_reg[3] ({TXCHARISK_IN[0],TXCHARISK_IN[1],TXCHARISK_IN[2],TXCHARISK_IN[3]}),
        .D(rx_cc_i),
        .\DOUT_reg[0] (CHANNEL_UP),
        .D_0(\aurora_8b10b_lane_init_sm_4byte_i/D ),
        .GEN_A(gen_a_i),
        .GEN_ECP(gen_ecp_i),
        .GEN_SCP(GEN_SCP),
        .GEN_SNF(GEN_SNF),
        .GEN_SUF(GEN_SUF),
        .HPCNT_RESET(HPCNT_RESET),
        .LANE_UP(LANE_UP),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .Q({rx_pad_descram_in[0],rx_pad_descram_in[1]}),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .\RX_CHAR_IS_COMMA_R_reg[3] (rx_char_is_comma_i),
        .\RX_PE_DATA_V_reg[0] ({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .\RX_SNF_Buffer_reg[0] (aurora_8b10b_aurora_lane_4byte_0_i_n_70),
        .\RX_SNF_Buffer_reg[0]_0 ({M_AXI_RX_SNF,rx_snf_striped_i}),
        .\RX_SUF_Buffer_reg[0] ({rx_suf_striped_i[0],rx_suf_striped_i[1]}),
        .\SOFT_ERR_Buffer_reg[0] ({soft_err_i[0],soft_err_i[1]}),
        .SS(aurora_8b10b_global_logic_i_n_18),
        .TXDATA(TXDATA_IN),
        .begin_r(\aurora_8b10b_lane_init_sm_4byte_i/begin_r ),
        .consecutive_commas_r(\aurora_8b10b_lane_init_sm_4byte_i/consecutive_commas_r ),
        .\data_nxt2_reg[24] (aurora_8b10b_aurora_lane_4byte_0_i_n_12),
        .\data_nxt2_reg[25] (aurora_8b10b_aurora_lane_4byte_0_i_n_11),
        .\data_nxt2_reg[26] (aurora_8b10b_aurora_lane_4byte_0_i_n_13),
        .\data_nxt2_reg[26]_0 ({aurora_8b10b_aurora_lane_4byte_0_i_n_24,aurora_8b10b_aurora_lane_4byte_0_i_n_25,aurora_8b10b_aurora_lane_4byte_0_i_n_26,aurora_8b10b_aurora_lane_4byte_0_i_n_27}),
        .\data_nxt2_reg[8] ({M_AXI_RX_FC_NB[0],M_AXI_RX_FC_NB[1],M_AXI_RX_FC_NB[2],M_AXI_RX_FC_NB[3],aurora_8b10b_aurora_lane_4byte_0_i_n_18}),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .\fc_nb_r_reg[0] ({FC_NB[0],FC_NB[1],FC_NB[2],FC_NB[3]}),
        .first_v_received_r(\aurora_8b10b_sym_dec_4byte_i/first_v_received_r ),
        .gen_cc_i(gen_cc_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .\gen_pad_r_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .\gen_v_r_reg[1] ({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .hard_err_gt0(\aurora_8b10b_err_detect_4byte_i/hard_err_gt0 ),
        .hard_err_i(hard_err_i),
        .init_clk_in(init_clk_in),
        .left_align_select_r(\aurora_8b10b_sym_dec_4byte_i/left_align_select_r ),
        .\left_align_select_r_reg[0] (aurora_8b10b_aurora_lane_4byte_0_i_n_6),
        .\left_align_select_r_reg[0]_0 (gt_wrapper_i_n_64),
        .\left_align_select_r_reg[1] (aurora_8b10b_aurora_lane_4byte_0_i_n_7),
        .\left_align_select_r_reg[1]_0 (gt_wrapper_i_n_66),
        .\left_align_select_r_reg[1]_1 (gt_wrapper_i_n_65),
        .neqOp(neqOp),
        .p_8_out(\aurora_8b10b_sym_dec_4byte_i/p_8_out ),
        .p_9_out(\aurora_8b10b_sym_dec_4byte_i/p_9_out ),
        .\previous_cycle_data_r_reg[7] ({aurora_8b10b_aurora_lane_4byte_0_i_n_31,aurora_8b10b_aurora_lane_4byte_0_i_n_32,aurora_8b10b_aurora_lane_4byte_0_i_n_33,aurora_8b10b_aurora_lane_4byte_0_i_n_34,aurora_8b10b_aurora_lane_4byte_0_i_n_35,aurora_8b10b_aurora_lane_4byte_0_i_n_36}),
        .reset_count_r_reg(gt_wrapper_i_n_68),
        .reset_count_r_reg_0(gt_wrapper_i_n_67),
        .reset_lanes_i(reset_lanes_i),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .\soft_err_r_reg[0] ({\aurora_8b10b_err_detect_4byte_i/p_6_out [3],gt_wrapper_i_n_70,\aurora_8b10b_err_detect_4byte_i/p_6_out [1:0]}),
        .start_rx_i(start_rx_i),
        .\tx_pe_data_r_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .\tx_pe_data_v_r_reg[0] ({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[3] (gt_wrapper_i_n_87),
        .\word_aligned_data_r_reg[16] ({gt_wrapper_i_n_73,gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78}),
        .\word_aligned_data_r_reg[24] ({gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81,gt_wrapper_i_n_82,gt_wrapper_i_n_83,gt_wrapper_i_n_84,gt_wrapper_i_n_85,gt_wrapper_i_n_86}));
  aurora_8b10b_GLOBAL_LOGIC aurora_8b10b_global_logic_i
       (.CHANNEL_UP_Buffer_reg(CHANNEL_UP),
        .D(rx_cc_i),
        .GEN_A(gen_a_i),
        .HARD_ERR(HARD_ERR),
        .LANE_UP(LANE_UP),
        .POWER_DOWN(POWER_DOWN),
        .SOFT_ERR(SOFT_ERR),
        .SR(RESET_0),
        .SS(aurora_8b10b_global_logic_i_n_18),
        .\downcounter_r_reg[2] (sys_reset_out),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .gen_v_flop_1_i({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_i(hard_err_i),
        .p_0_in(p_0_in),
        .reset_lanes_i(reset_lanes_i),
        .\soft_err_r_reg[0] ({soft_err_i[0],soft_err_i[1]}),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  aurora_8b10b_RX_LL aurora_8b10b_rx_ll_i
       (.D({M_AXI_RX_FC_NB[0],M_AXI_RX_FC_NB[1],M_AXI_RX_FC_NB[2],M_AXI_RX_FC_NB[3],aurora_8b10b_aurora_lane_4byte_0_i_n_12,aurora_8b10b_aurora_lane_4byte_0_i_n_11,aurora_8b10b_aurora_lane_4byte_0_i_n_13,aurora_8b10b_aurora_lane_4byte_0_i_n_18}),
        .D_0(\tx_ll_control_i/D ),
        .FRAME_ERR(FRAME_ERR),
        .M_AXI_RX_TDATA(M_AXI_RX_TDATA),
        .M_AXI_RX_TLAST(M_AXI_RX_TLAST),
        .M_AXI_RX_TVALID(M_AXI_RX_TVALID),
        .M_AXI_UFC_RX_TDATA(M_AXI_UFC_RX_TDATA),
        .M_AXI_UFC_RX_TKEEP(\^M_AXI_UFC_RX_TKEEP ),
        .M_AXI_UFC_RX_TLAST(M_AXI_UFC_RX_TLAST),
        .M_AXI_UFC_RX_TVALID(M_AXI_UFC_RX_TVALID),
        .Q({rx_pad_descram_in[0],rx_pad_descram_in[1]}),
        .\RX_REM_Buffer_reg[0] ({rx_rem[0],rx_rem[1]}),
        .SR(RESET_0),
        .neqOp(neqOp),
        .\nfc_counter_r_reg[0] (\nfc_module_i/nfc_counter_r_reg ),
        .\nfc_lane_index_r_reg[1] (rx_snf_striped_i),
        .p_8_out(\aurora_8b10b_sym_dec_4byte_i/p_8_out ),
        .p_9_out(\aurora_8b10b_sym_dec_4byte_i/p_9_out ),
        .\rx_data_v_r_reg[0] ({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .rx_eof(rx_eof),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .\stage_1_count_value_r_reg[0] ({aurora_8b10b_aurora_lane_4byte_0_i_n_24,aurora_8b10b_aurora_lane_4byte_0_i_n_25,aurora_8b10b_aurora_lane_4byte_0_i_n_26,aurora_8b10b_aurora_lane_4byte_0_i_n_27}),
        .\stage_1_lane_mask_r_reg[1] ({rx_suf_striped_i[0],rx_suf_striped_i[1]}),
        .stage_1_load_nfc_r_reg(aurora_8b10b_aurora_lane_4byte_0_i_n_70),
        .start_rx_i(start_rx_i),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
  aurora_8b10b_TX_LL aurora_8b10b_tx_ll_i
       (.D(\tx_ll_control_i/D ),
        .DO_CC_I(DO_CC_I),
        .\FC_NB_Buffer_reg[0] ({FC_NB[0],FC_NB[1],FC_NB[2],FC_NB[3]}),
        .GEN_ECP(gen_ecp_i),
        .\GEN_PAD_Buffer_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .GEN_SCP(GEN_SCP),
        .GEN_SNF(GEN_SNF),
        .GEN_SUF(GEN_SUF),
        .Q({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .S_AXI_NFC_NB(S_AXI_NFC_NB),
        .S_AXI_NFC_REQ(S_AXI_NFC_REQ),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .S_AXI_UFC_TX_MS(S_AXI_UFC_TX_MS),
        .S_AXI_UFC_TX_REQ(S_AXI_UFC_TX_REQ),
        .TX_DST_RDY_N_Buffer_reg(\nfc_module_i/nfc_counter_r_reg ),
        .\TX_PE_DATA_Buffer_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .WARN_CC(WARN_CC),
        .do_nfc_r_reg(S_AXI_NFC_ACK),
        .gen_cc_i(gen_cc_i),
        .p_0_in(p_0_in),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1] (axi_to_ll_pdu_i_n_0),
        .ufc_header_r_reg(S_AXI_UFC_TX_ACK),
        .ufc_idle_r_reg(standard_cc_module_i_n_2),
        .user_clk(user_clk));
  aurora_8b10b_AXI_TO_LL axi_to_ll_pdu_i
       (.new_pkt_r(new_pkt_r),
        .new_pkt_r_reg_0(axi_to_ll_pdu_i_n_0),
        .user_clk(user_clk));
  aurora_8b10b_RESET_LOGIC core_reset_logic_i
       (.CHANNEL_UP(CHANNEL_UP),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .SYSTEM_RESET_reg_0(sys_reset_out),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .gt_rxresetdone_r2_reg_0(gt_wrapper_i_n_90),
        .gt_txresetdone_r2_reg_0(gt_wrapper_i_n_91),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .out(reset_sync_user_clk),
        .tx_dst_rdy(tx_dst_rdy),
        .tx_lock(tx_lock),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized1 gt_reset_cdc_sync
       (.AR(gt_reset_sync_init_clk),
        .GT_RESET(GT_RESET),
        .HPCNT_RESET(HPCNT_RESET),
        .init_clk_in(init_clk_in),
        .out(reset_sync_init_clk));
  aurora_8b10b_GT_WRAPPER gt_wrapper_i
       (.AR(gt_reset_sync_init_clk),
        .D(\aurora_8b10b_lane_init_sm_4byte_i/D ),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT_Buffer_reg({\aurora_8b10b_err_detect_4byte_i/p_6_out [3],gt_wrapper_i_n_70,\aurora_8b10b_err_detect_4byte_i/p_6_out [1:0]}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg (gt_wrapper_i_n_91),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .POWER_DOWN(POWER_DOWN),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXN(RXN),
        .RXP(RXP),
        .RX_RESETDONE_OUT(RX_RESETDONE_OUT),
        .TXDATA(TXDATA_IN),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .begin_r(\aurora_8b10b_lane_init_sm_4byte_i/begin_r ),
        .consecutive_commas_r(\aurora_8b10b_lane_init_sm_4byte_i/consecutive_commas_r ),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(\aurora_8b10b_sym_dec_4byte_i/first_v_received_r ),
        .first_v_received_r_reg(gt_wrapper_i_n_65),
        .gt_common_reset_out(gt_common_reset_out),
        .gtpe2_i(DRPRDY_OUT),
        .gtpe2_i_0(rx_char_is_comma_i),
        .gtpe2_i_1(gt_wrapper_i_n_64),
        .gtpe2_i_2(gt_wrapper_i_n_66),
        .gtpe2_i_3(gt_wrapper_i_n_67),
        .gtpe2_i_4(gt_wrapper_i_n_68),
        .gtpe2_i_5({gt_wrapper_i_n_73,gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78}),
        .gtpe2_i_6({gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81,gt_wrapper_i_n_82,gt_wrapper_i_n_83,gt_wrapper_i_n_84,gt_wrapper_i_n_85,gt_wrapper_i_n_86}),
        .gtpe2_i_7(gt_wrapper_i_n_87),
        .gtpe2_i_8({TXCHARISK_IN[0],TXCHARISK_IN[1],TXCHARISK_IN[2],TXCHARISK_IN[3]}),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_gt0(\aurora_8b10b_err_detect_4byte_i/hard_err_gt0 ),
        .init_clk_in(init_clk_in),
        .left_align_select_r(\aurora_8b10b_sym_dec_4byte_i/left_align_select_r ),
        .\left_align_select_r_reg[0] (aurora_8b10b_aurora_lane_4byte_0_i_n_6),
        .\left_align_select_r_reg[1] (aurora_8b10b_aurora_lane_4byte_0_i_n_7),
        .link_reset_comb_r(link_reset_comb_r),
        .quad1_common_lock_in(quad1_common_lock_in),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxfsm_rxresetdone_r3_reg_0(gt_wrapper_i_n_90),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .user_clk(user_clk),
        .\word_aligned_data_r_reg[16] ({aurora_8b10b_aurora_lane_4byte_0_i_n_31,aurora_8b10b_aurora_lane_4byte_0_i_n_32,aurora_8b10b_aurora_lane_4byte_0_i_n_33,aurora_8b10b_aurora_lane_4byte_0_i_n_34,aurora_8b10b_aurora_lane_4byte_0_i_n_35,aurora_8b10b_aurora_lane_4byte_0_i_n_36}));
  aurora_8b10b_cdc_sync__parameterized1_0 hpcnt_reset_cdc_sync
       (.RESET(RESET),
        .init_clk_in(init_clk_in),
        .out(reset_sync_init_clk));
  aurora_8b10b_LL_TO_AXI ll_to_axi_pdu_i
       (.M_AXI_RX_TKEEP({\^M_AXI_RX_TKEEP [1],\^M_AXI_RX_TKEEP [2],\^M_AXI_RX_TKEEP [3]}),
        .\m_axi_rx_tkeep[1] ({rx_rem[0],rx_rem[1]}),
        .rx_eof(rx_eof));
  aurora_8b10b_cdc_sync reset_sync_user_clk_cdc_sync
       (.RESET(RESET),
        .out(reset_sync_user_clk),
        .user_clk(user_clk));
  aurora_8b10b_STANDARD_CC_MODULE standard_cc_module_i
       (.DO_CC_I(DO_CC_I),
        .S_AXI_NFC_ACK(S_AXI_NFC_ACK),
        .S_AXI_NFC_REQ(S_AXI_NFC_REQ),
        .S_AXI_UFC_TX_REQ(S_AXI_UFC_TX_REQ),
        .WARN_CC(WARN_CC),
        .\cc_count_r_reg[5]_0 (sys_reset_out),
        .s_axi_ufc_tx_tvalid(standard_cc_module_i_n_2),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_gt
   (gtpe2_i_0,
    TXN,
    TXP,
    rx_realign_i,
    gtpe2_i_1,
    TX_OUT_CLK,
    gtpe2_i_2,
    DRPDO_OUT,
    RXDATA,
    gtpe2_i_3,
    RXCHARISK,
    gtpe2_i_4,
    first_v_received_r_reg,
    gtpe2_i_5,
    gtpe2_i_6,
    gtpe2_i_7,
    ENABLE_ERR_DETECT_Buffer_reg,
    gtpe2_i_8,
    gtpe2_i_9,
    gtpe2_i_10,
    hard_err_gt0,
    drpclk_in,
    RXN,
    RXP,
    gt_tx_reset_i,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    POWER_DOWN,
    gt_txuserrdy_i,
    LOOPBACK,
    TXDATA,
    gtpe2_i_11,
    gt_common_reset_out,
    init_clk_in,
    SR,
    D,
    \left_align_select_r_reg[0] ,
    left_align_select_r,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \word_aligned_data_r_reg[16] ,
    first_v_received_r,
    DRPADDR_IN,
    DRPDI_IN,
    DRPWE_IN,
    DRPEN_IN);
  output gtpe2_i_0;
  output TXN;
  output TXP;
  output rx_realign_i;
  output gtpe2_i_1;
  output TX_OUT_CLK;
  output gtpe2_i_2;
  output [15:0]DRPDO_OUT;
  output [31:0]RXDATA;
  output [3:0]gtpe2_i_3;
  output [3:0]RXCHARISK;
  output gtpe2_i_4;
  output first_v_received_r_reg;
  output gtpe2_i_5;
  output gtpe2_i_6;
  output gtpe2_i_7;
  output [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  output [5:0]gtpe2_i_8;
  output [7:0]gtpe2_i_9;
  output gtpe2_i_10;
  output hard_err_gt0;
  input drpclk_in;
  input RXN;
  input RXP;
  input gt_tx_reset_i;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input gt_txuserrdy_i;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]gtpe2_i_11;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input D;
  input \left_align_select_r_reg[0] ;
  input [0:0]left_align_select_r;
  input \left_align_select_r_reg[1] ;
  input consecutive_commas_r;
  input begin_r;
  input enable_err_detect_i;
  input [5:0]\word_aligned_data_r_reg[16] ;
  input first_v_received_r;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire D;
  wire [4:0]DRPADDR;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN;
  wire DRPEN_IN;
  wire DRPWE;
  wire DRPWE_IN;
  wire [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire GTRXRESET;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RXN;
  wire RXP;
  wire [0:0]SR;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire begin_r;
  wire consecutive_commas_r;
  wire drp_op_done;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire first_v_received_r_reg;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire gtpe2_i_10;
  wire [3:0]gtpe2_i_11;
  wire gtpe2_i_2;
  wire [3:0]gtpe2_i_3;
  wire gtpe2_i_4;
  wire gtpe2_i_5;
  wire gtpe2_i_6;
  wire gtpe2_i_7;
  wire [5:0]gtpe2_i_8;
  wire [7:0]gtpe2_i_9;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_24;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_9;
  wire gtpe2_i_n_95;
  wire gtpe2_i_n_96;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_17;
  wire gtrxreset_seq_i_n_2;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire hard_err_gt0;
  wire [15:0]in7;
  wire init_clk_in;
  wire [0:0]left_align_select_r;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[1] ;
  wire p_0_in;
  wire rx_buf_err_i;
  wire [3:0]rx_disp_err_i;
  wire [3:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire sync_clk;
  wire tx_buf_err_i;
  wire user_clk;
  wire [5:0]\word_aligned_data_r_reg[16] ;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(31),
    .CLK_COR_MIN_LAT(24),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0111110111),
    .CLK_COR_SEQ_1_4(10'b0111110111),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(4),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE406001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b000),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,DRPADDR[4],gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,DRPADDR[0]}),
        .DRPCLK(drpclk_in),
        .DRPDI(DRPDI),
        .DRPDO(DRPDO_OUT),
        .DRPEN(DRPEN),
        .DRPRDY(gtpe2_i_0),
        .DRPWE(DRPWE),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(RXN),
        .GTPRXP(RXP),
        .GTPTXN(TXN),
        .GTPTXP(TXP),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(GTRXRESET),
        .GTTXRESET(gt_tx_reset_i),
        .LOOPBACK(LOOPBACK),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(GT0_PLL0OUTCLK_IN),
        .PLL0REFCLK(GT0_PLL0OUTREFCLK_IN),
        .PLL1CLK(GT0_PLL1OUTCLK_IN),
        .PLL1REFCLK(GT0_PLL1OUTREFCLK_IN),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtpe2_i_n_9),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(gtpe2_i_3),
        .RXCHARISK(RXCHARISK),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({gtpe2_i_n_95,gtpe2_i_n_96}),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA(RXDATA),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR(rx_disp_err_i),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXNOTINTABLE(rx_not_in_table_i),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtpe2_i_n_24),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({POWER_DOWN,POWER_DOWN}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(gtpe2_i_1),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({gtpe2_i_11[0],gtpe2_i_11[1],gtpe2_i_11[2],gtpe2_i_11[3]}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA(TXDATA),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(POWER_DOWN),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(TX_OUT_CLK),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({POWER_DOWN,POWER_DOWN}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(gtpe2_i_2),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_10
       (.I0(DRPDI_IN[8]),
        .I1(in7[8]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[8]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_11
       (.I0(DRPDI_IN[7]),
        .I1(in7[7]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[7]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_12
       (.I0(DRPDI_IN[6]),
        .I1(in7[6]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[6]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_13
       (.I0(DRPDI_IN[5]),
        .I1(in7[5]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[5]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_14
       (.I0(DRPDI_IN[4]),
        .I1(in7[4]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[4]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_15
       (.I0(DRPDI_IN[3]),
        .I1(in7[3]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[3]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_16
       (.I0(DRPDI_IN[2]),
        .I1(in7[2]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[2]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_17
       (.I0(DRPDI_IN[1]),
        .I1(in7[1]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[1]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_18
       (.I0(DRPDI_IN[0]),
        .I1(in7[0]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[0]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_3
       (.I0(DRPDI_IN[15]),
        .I1(in7[15]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[15]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_4
       (.I0(DRPDI_IN[14]),
        .I1(in7[14]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[14]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_5
       (.I0(DRPDI_IN[13]),
        .I1(in7[13]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[13]));
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_55
       (.I0(DRPADDR_IN[4]),
        .I1(drp_op_done),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_59
       (.I0(DRPADDR_IN[0]),
        .I1(drp_op_done),
        .O(DRPADDR[0]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_6
       (.I0(DRPDI_IN[12]),
        .I1(in7[12]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    gtpe2_i_i_7
       (.I0(DRPDI_IN[11]),
        .I1(p_0_in),
        .I2(gtrxreset_seq_i_n_17),
        .I3(drp_op_done),
        .O(DRPDI[11]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_8
       (.I0(DRPDI_IN[10]),
        .I1(in7[10]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[10]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_9
       (.I0(DRPDI_IN[9]),
        .I1(in7[9]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[9]));
  aurora_8b10b_gtrxreset_seq gtrxreset_seq_i
       (.DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10}),
        .DRPADDR_IN({DRPADDR_IN[8:5],DRPADDR_IN[3:1]}),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN(DRPEN),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE(DRPWE),
        .DRPWE_IN(DRPWE_IN),
        .GTRXRESET(GTRXRESET),
        .Q({gtrxreset_seq_i_n_2,p_0_in}),
        .SR(SR),
        .drp_op_done(drp_op_done),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .in0(gtpe2_i_n_28),
        .init_clk_in(init_clk_in),
        .\rd_data_reg[0]_0 (gtpe2_i_0),
        .\rd_data_reg[15]_0 ({in7[15:12],gtrxreset_seq_i_n_17,in7[10:0]}));
  LUT3 #(
    .INIT(8'hFE)) 
    hard_err_gt_i_1
       (.I0(rx_buf_err_i),
        .I1(tx_buf_err_i),
        .I2(rx_realign_i),
        .O(hard_err_gt0));
  LUT6 #(
    .INIT(64'hFFFFEEEF0000EEE0)) 
    \left_align_select_r[0]_i_1 
       (.I0(RXCHARISK[3]),
        .I1(RXCHARISK[2]),
        .I2(ena_comma_align_i),
        .I3(D),
        .I4(first_v_received_r_reg),
        .I5(\left_align_select_r_reg[0] ),
        .O(gtpe2_i_4));
  LUT5 #(
    .INIT(32'hFFFEBEAB)) 
    \left_align_select_r[0]_i_2 
       (.I0(first_v_received_r),
        .I1(RXCHARISK[1]),
        .I2(RXCHARISK[0]),
        .I3(RXCHARISK[2]),
        .I4(RXCHARISK[3]),
        .O(first_v_received_r_reg));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \left_align_select_r[1]_i_1 
       (.I0(RXCHARISK[3]),
        .I1(RXCHARISK[2]),
        .I2(RXCHARISK[1]),
        .I3(left_align_select_r),
        .I4(\left_align_select_r_reg[1] ),
        .O(gtpe2_i_5));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_count_r_i_2
       (.I0(rx_disp_err_i[3]),
        .I1(rx_not_in_table_i[3]),
        .I2(rx_not_in_table_i[1]),
        .I3(rx_disp_err_i[1]),
        .I4(rx_disp_err_i[0]),
        .I5(rx_disp_err_i[2]),
        .O(gtpe2_i_7));
  LUT4 #(
    .INIT(16'h0010)) 
    reset_count_r_i_3
       (.I0(rx_not_in_table_i[2]),
        .I1(rx_not_in_table_i[0]),
        .I2(consecutive_commas_r),
        .I3(begin_r),
        .O(gtpe2_i_6));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .I1(rx_disp_err_i[0]),
        .I2(rx_not_in_table_i[0]),
        .O(ENABLE_ERR_DETECT_Buffer_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \soft_err_r[1]_i_1 
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .I2(enable_err_detect_i),
        .O(ENABLE_ERR_DETECT_Buffer_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \soft_err_r[2]_i_1 
       (.I0(enable_err_detect_i),
        .I1(rx_disp_err_i[2]),
        .I2(rx_not_in_table_i[2]),
        .O(ENABLE_ERR_DETECT_Buffer_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \soft_err_r[3]_i_1 
       (.I0(enable_err_detect_i),
        .I1(rx_disp_err_i[3]),
        .I2(rx_not_in_table_i[3]),
        .O(ENABLE_ERR_DETECT_Buffer_reg[0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_control_bits_r[3]_i_1 
       (.I0(RXCHARISK[3]),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[1]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXCHARISK[2]),
        .O(gtpe2_i_10));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[16]_i_1 
       (.I0(RXDATA[23]),
        .I1(\word_aligned_data_r_reg[16] [5]),
        .I2(RXDATA[7]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[15]),
        .O(gtpe2_i_8[5]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[17]_i_1 
       (.I0(RXDATA[22]),
        .I1(\word_aligned_data_r_reg[16] [4]),
        .I2(RXDATA[6]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[14]),
        .O(gtpe2_i_8[4]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[19]_i_1 
       (.I0(RXDATA[20]),
        .I1(\word_aligned_data_r_reg[16] [3]),
        .I2(RXDATA[12]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[4]),
        .O(gtpe2_i_8[3]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[20]_i_1 
       (.I0(RXDATA[19]),
        .I1(\word_aligned_data_r_reg[16] [2]),
        .I2(RXDATA[3]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[11]),
        .O(gtpe2_i_8[2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[22]_i_1 
       (.I0(RXDATA[17]),
        .I1(\word_aligned_data_r_reg[16] [1]),
        .I2(RXDATA[1]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[9]),
        .O(gtpe2_i_8[1]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[23]_i_1 
       (.I0(RXDATA[16]),
        .I1(\word_aligned_data_r_reg[16] [0]),
        .I2(RXDATA[0]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[8]),
        .O(gtpe2_i_8[0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[24]_i_1 
       (.I0(RXDATA[31]),
        .I1(RXDATA[7]),
        .I2(RXDATA[15]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[23]),
        .O(gtpe2_i_9[7]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[25]_i_1 
       (.I0(RXDATA[30]),
        .I1(RXDATA[6]),
        .I2(RXDATA[14]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[22]),
        .O(gtpe2_i_9[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[26]_i_1 
       (.I0(RXDATA[5]),
        .I1(RXDATA[21]),
        .I2(RXDATA[29]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[13]),
        .O(gtpe2_i_9[5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[27]_i_1 
       (.I0(RXDATA[28]),
        .I1(RXDATA[4]),
        .I2(RXDATA[20]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[12]),
        .O(gtpe2_i_9[4]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[28]_i_1 
       (.I0(RXDATA[3]),
        .I1(RXDATA[11]),
        .I2(RXDATA[27]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[19]),
        .O(gtpe2_i_9[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[29]_i_1 
       (.I0(RXDATA[2]),
        .I1(RXDATA[18]),
        .I2(RXDATA[26]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[10]),
        .O(gtpe2_i_9[2]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[30]_i_1 
       (.I0(RXDATA[25]),
        .I1(RXDATA[1]),
        .I2(RXDATA[17]),
        .I3(\left_align_select_r_reg[1] ),
        .I4(\left_align_select_r_reg[0] ),
        .I5(RXDATA[9]),
        .O(gtpe2_i_9[1]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[31]_i_1 
       (.I0(RXDATA[24]),
        .I1(RXDATA[0]),
        .I2(RXDATA[8]),
        .I3(\left_align_select_r_reg[0] ),
        .I4(\left_align_select_r_reg[1] ),
        .I5(RXDATA[16]),
        .O(gtpe2_i_9[0]));
endmodule

module aurora_8b10b_gtrxreset_seq
   (GTRXRESET,
    drp_op_done,
    Q,
    DRPADDR,
    DRPWE,
    DRPEN,
    \rd_data_reg[15]_0 ,
    in0,
    drpclk_in,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \rd_data_reg[0]_0 ,
    DRPADDR_IN,
    DRPWE_IN,
    DRPEN_IN,
    DRPDO_OUT);
  output GTRXRESET;
  output drp_op_done;
  output [1:0]Q;
  output [6:0]DRPADDR;
  output DRPWE;
  output DRPEN;
  output [15:0]\rd_data_reg[15]_0 ;
  input in0;
  input drpclk_in;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \rd_data_reg[0]_0 ;
  input [6:0]DRPADDR_IN;
  input DRPWE_IN;
  input DRPEN_IN;
  input [15:0]DRPDO_OUT;

  wire [6:0]DRPADDR;
  wire [6:0]DRPADDR_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN;
  wire DRPEN_IN;
  wire DRPWE;
  wire DRPWE_IN;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire GTRXRESET;
  wire [1:0]Q;
  wire [0:0]SR;
  wire drp_op_done;
  wire drp_op_done_o_i_1_n_0;
  wire drpclk_in;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gt_common_reset_out;
  wire gtrxreset_f;
  wire gtrxreset_i__0;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire in0;
  wire init_clk_in;
  wire [0:0]next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire p_0_in0_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg[0]_0 ;
  wire [15:0]\rd_data_reg[15]_0 ;
  wire rst_ss;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;

  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[0]),
        .I1(\rd_data_reg[0]_0 ),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\rd_data_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[1]),
        .I1(\rd_data_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in0_in),
        .I1(\rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\rd_data_reg[0]_0 ),
        .I2(p_0_in0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_ss),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in0_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    drp_op_done_o_i_1
       (.I0(\rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(drp_op_done),
        .O(drp_op_done_o_i_1_n_0));
  FDCE drp_op_done_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(gtrxreset_f),
        .D(drp_op_done_o_i_1_n_0),
        .Q(drp_op_done));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    flag_i_1
       (.I0(flag),
        .I1(flag_reg_n_0),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    gtpe2_i_i_1
       (.I0(DRPEN_IN),
        .I1(drp_op_done),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(DRPEN));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    gtpe2_i_i_2
       (.I0(DRPWE_IN),
        .I1(drp_op_done),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(DRPWE));
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_51
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[6]),
        .O(DRPADDR[6]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_52
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[5]),
        .O(DRPADDR[5]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_53
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[4]),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_54
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[3]),
        .O(DRPADDR[3]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_56
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[2]),
        .O(DRPADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_57
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[1]),
        .O(DRPADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_58
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[0]),
        .O(DRPADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(p_0_in0_in),
        .I5(Q[1]),
        .O(gtrxreset_i__0));
  aurora_8b10b_cdc_sync__parameterized6_19 gtrxreset_in_cdc_sync
       (.SR(SR),
        .drpclk_in(drpclk_in),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_f));
  FDCE gtrxreset_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_i__0),
        .Q(GTRXRESET));
  FDCE gtrxreset_s_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_f),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  LUT3 #(
    .INIT(8'h40)) 
    \original_rd_data[15]_i_1 
       (.I0(flag_reg_n_0),
        .I1(\rd_data_reg[0]_0 ),
        .I2(p_0_in0_in),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(DRPDO_OUT[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(DRPDO_OUT[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(DRPDO_OUT[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(DRPDO_OUT[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(DRPDO_OUT[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(DRPDO_OUT[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(DRPDO_OUT[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in0_in),
        .I1(\rd_data_reg[0]_0 ),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(DRPDO_OUT[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(DRPDO_OUT[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(DRPDO_OUT[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(DRPDO_OUT[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(DRPDO_OUT[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(DRPDO_OUT[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(DRPDO_OUT[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(DRPDO_OUT[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(DRPDO_OUT[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(DRPDO_OUT[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [0]));
  FDCE \rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [10]));
  FDCE \rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [11]));
  FDCE \rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [12]));
  FDCE \rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [13]));
  FDCE \rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [14]));
  FDCE \rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(\rd_data_reg[15]_0 [15]));
  FDCE \rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [1]));
  FDCE \rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [2]));
  FDCE \rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [3]));
  FDCE \rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [4]));
  FDCE \rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [5]));
  FDCE \rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [6]));
  FDCE \rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [7]));
  FDCE \rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [8]));
  FDCE \rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .CLR(rst_ss),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [9]));
  aurora_8b10b_cdc_sync__parameterized6_20 rst_cdc_sync
       (.AR(rst_ss),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .init_clk_in(init_clk_in));
  aurora_8b10b_cdc_sync__parameterized1_21 rxpmaresetdone_cdc_sync
       (.drpclk_in(drpclk_in),
        .in0(in0),
        .out(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(rst_ss),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
endmodule

module aurora_8b10b_multi_gt
   (gtpe2_i,
    TXN,
    TXP,
    rx_realign_i,
    gtpe2_i_0,
    TX_OUT_CLK,
    gtpe2_i_1,
    DRPDO_OUT,
    RXDATA,
    gtpe2_i_2,
    RXCHARISK,
    gtpe2_i_3,
    first_v_received_r_reg,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    ENABLE_ERR_DETECT_Buffer_reg,
    gtpe2_i_7,
    gtpe2_i_8,
    gtpe2_i_9,
    hard_err_gt0,
    drpclk_in,
    RXN,
    RXP,
    gt_tx_reset_i,
    GT0_PLL0OUTCLK_IN,
    GT0_PLL0OUTREFCLK_IN,
    GT0_PLL1OUTCLK_IN,
    GT0_PLL1OUTREFCLK_IN,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    POWER_DOWN,
    gt_txuserrdy_i,
    LOOPBACK,
    TXDATA,
    gtpe2_i_10,
    gt_common_reset_out,
    init_clk_in,
    SR,
    D,
    \left_align_select_r_reg[0] ,
    left_align_select_r,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \word_aligned_data_r_reg[16] ,
    first_v_received_r,
    DRPADDR_IN,
    DRPDI_IN,
    DRPWE_IN,
    DRPEN_IN);
  output gtpe2_i;
  output TXN;
  output TXP;
  output rx_realign_i;
  output gtpe2_i_0;
  output TX_OUT_CLK;
  output gtpe2_i_1;
  output [15:0]DRPDO_OUT;
  output [31:0]RXDATA;
  output [3:0]gtpe2_i_2;
  output [3:0]RXCHARISK;
  output gtpe2_i_3;
  output first_v_received_r_reg;
  output gtpe2_i_4;
  output gtpe2_i_5;
  output gtpe2_i_6;
  output [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  output [5:0]gtpe2_i_7;
  output [7:0]gtpe2_i_8;
  output gtpe2_i_9;
  output hard_err_gt0;
  input drpclk_in;
  input RXN;
  input RXP;
  input gt_tx_reset_i;
  input GT0_PLL0OUTCLK_IN;
  input GT0_PLL0OUTREFCLK_IN;
  input GT0_PLL1OUTCLK_IN;
  input GT0_PLL1OUTREFCLK_IN;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input POWER_DOWN;
  input gt_txuserrdy_i;
  input [2:0]LOOPBACK;
  input [31:0]TXDATA;
  input [3:0]gtpe2_i_10;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input D;
  input \left_align_select_r_reg[0] ;
  input [0:0]left_align_select_r;
  input \left_align_select_r_reg[1] ;
  input consecutive_commas_r;
  input begin_r;
  input enable_err_detect_i;
  input [5:0]\word_aligned_data_r_reg[16] ;
  input first_v_received_r;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire [3:0]ENABLE_ERR_DETECT_Buffer_reg;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RXN;
  wire RXP;
  wire [0:0]SR;
  wire [31:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire begin_r;
  wire consecutive_commas_r;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire first_v_received_r_reg;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [3:0]gtpe2_i_10;
  wire [3:0]gtpe2_i_2;
  wire gtpe2_i_3;
  wire gtpe2_i_4;
  wire gtpe2_i_5;
  wire gtpe2_i_6;
  wire [5:0]gtpe2_i_7;
  wire [7:0]gtpe2_i_8;
  wire gtpe2_i_9;
  wire hard_err_gt0;
  wire init_clk_in;
  wire [0:0]left_align_select_r;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[1] ;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire sync_clk;
  wire user_clk;
  wire [5:0]\word_aligned_data_r_reg[16] ;

  aurora_8b10b_gt gt0_aurora_8b10b_i
       (.D(D),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .ENABLE_ERR_DETECT_Buffer_reg(ENABLE_ERR_DETECT_Buffer_reg),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXN(RXN),
        .RXP(RXP),
        .SR(SR),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .begin_r(begin_r),
        .consecutive_commas_r(consecutive_commas_r),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .first_v_received_r_reg(first_v_received_r_reg),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_10(gtpe2_i_9),
        .gtpe2_i_11(gtpe2_i_10),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .gtpe2_i_9(gtpe2_i_8),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .left_align_select_r(left_align_select_r),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .sync_clk(sync_clk),
        .user_clk(user_clk),
        .\word_aligned_data_r_reg[16] (\word_aligned_data_r_reg[16] ));
endmodule

module aurora_8b10b_rx_startup_fsm
   (gtrxreset_i_0,
    gt_rxuserrdy_i,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    rxfsm_rxresetdone_r,
    AR,
    reset_time_out_reg_0,
    gt_txuserrdy_i);
  output gtrxreset_i_0;
  output gt_rxuserrdy_i;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input rxfsm_rxresetdone_r;
  input [0:0]AR;
  input reset_time_out_reg_0;
  input gt_txuserrdy_i;

  wire [0:0]AR;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_i_i_1_n_0;
  wire init_clk_in;
  wire [0:0]init_wait_count;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire \init_wait_count[6]_i_4__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_2__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_4__0_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [6:0]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire quad1_common_lock_in;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_0;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxfsm_rxresetdone_r;
  wire rxpmaresetdone_i;
  wire rxpmaresetdone_rx_s;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire scndry_out;
  wire sync_PLL0LOCK_cdc_sync_n_0;
  wire sync_PLL0LOCK_cdc_sync_n_1;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_rx_fsm_reset_done_int_cdc_sync_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_i_5_n_0;
  wire time_out_100us_i_6_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_reg_n_0;
  wire [0:0]time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire [19:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_1 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_4 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_i_7_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry__1_i_3_n_0;
  wire time_tlock_max1_carry__1_i_4_n_0;
  wire time_tlock_max1_carry__1_n_3;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire txpmaresetdone_i;
  wire user_clk;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [6:0]wait_time_cnt0__0;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(rx_state__0[0]));
  LUT6 #(
    .INIT(64'h2222AAAA00000C00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100050)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(time_tlock_max),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(rx_state__0[1]));
  LUT6 #(
    .INIT(64'h303020302C2C2C2C)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(time_out_100us_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010C0C0C01000C0C)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(rx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT5 #(
    .INIT(32'h55AF00C0)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(gt_rxuserrdy_i),
        .I1(mmcm_lock_reclocked),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_12 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_13 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F0F8FBF0F0)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .I3(time_out_wait_bypass_s3),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(rx_state__0[3]));
  LUT6 #(
    .INIT(64'h000F040400000404)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_state[1]),
        .I1(init_wait_done_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[0]),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I1(rx_state[2]),
        .I2(reset_time_out_reg_0),
        .I3(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(\wait_time_cnt[6]_i_1_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02020202000000FF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .I3(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055030000)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(\FSM_sequential_rx_state[3]_i_13_n_0 ),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I2(wait_time_cnt_reg[6]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT5 #(
    .INIT(32'h8A000000)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[2]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(rx_state__0[2]),
        .Q(rx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFCF00008000)) 
    RXUSERRDY_i_1
       (.I0(gt_txuserrdy_i),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt_rxuserrdy_i),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(AR));
  aurora_8b10b_cdc_sync__parameterized3_7 gtrxreset_cdc_sync
       (.gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .out(scndry_out),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT5 #(
    .INIT(32'hFFEF0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(gtrxreset_i_0),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gtrxreset_i_0),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(\init_wait_count[6]_i_3__0_n_0 ),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_count));
  LUT3 #(
    .INIT(8'hC6)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .I2(\init_wait_count[6]_i_4__0_n_0 ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \init_wait_count[6]_i_4__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(\init_wait_count[6]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[0]),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    init_wait_done_i_1__0
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_done_i_2__0_n_0),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[5]),
        .O(init_wait_done_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F0E0C0EC3CEC0CE)) 
    reset_time_out_i_2
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(mmcm_lock_reclocked),
        .I5(gt_rxuserrdy_i),
        .O(reset_time_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h1)) 
    reset_time_out_i_3__0
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(reset_time_out_reg_0),
        .I4(rx_state[1]),
        .O(reset_time_out_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_PLL0LOCK_cdc_sync_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(AR));
  LUT5 #(
    .INIT(32'hFFFB0100)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int_0),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(rx_fsm_reset_done_int),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(rx_state[0]),
        .I1(time_out_1us_reg_n_0),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .O(rx_fsm_reset_done_int_0));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_100us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008000808080008)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_fsm_reset_done_int_i_5_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_1us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_i_1_n_0),
        .Q(rx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    rxpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(scndry_out),
        .D(rxpmaresetdone_rx_s),
        .Q(rxpmaresetdone_i));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  aurora_8b10b_cdc_sync__parameterized1_8 sync_PLL0LOCK_cdc_sync
       (.E(sync_PLL0LOCK_cdc_sync_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (sync_PLL0LOCK_cdc_sync_n_1),
        .Q(rx_state),
        .gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg(reset_time_out_i_2_n_0),
        .reset_time_out_reg_0(reset_time_out_i_4_n_0),
        .reset_time_out_reg_1(reset_time_out_reg_n_0),
        .rxresetdone_s3(rxresetdone_s3));
  aurora_8b10b_cdc_sync__parameterized1_9 sync_PLL1LOCK_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_cdc_sync__parameterized6_10 sync_RXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(rxresetdone_s2),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized1_11 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .init_clk_in(init_clk_in),
        .out(mmcm_lock_i));
  aurora_8b10b_cdc_sync__parameterized3_12 sync_pmaresetdone_fallingedge_detect_cdc_sync
       (.init_clk_in(init_clk_in),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized3_13 sync_run_phase_alignment_int_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 (run_phase_alignment_int_reg_n_0),
        .init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized3_14 sync_rx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized6_15 sync_rxpmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .rxpmaresetdone_i(rxpmaresetdone_i),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync_16 sync_rxpmaresetdone_rx_s_cdc_sync
       (.out(rxpmaresetdone_rx_s),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized6_17 sync_time_out_wait_bypass_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 (time_out_wait_bypass_reg_n_0),
        .init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized6_18 sync_txpmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .txpmaresetdone_i(txpmaresetdone_i),
        .user_clk(user_clk));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_out_100us_i_5_n_0),
        .I4(time_out_100us_i_6_n_0),
        .I5(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[19]),
        .I5(time_out_counter_reg[18]),
        .O(time_out_100us_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_out_100us_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_out_100us_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_100us_i_5_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    time_out_100us_i_6
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_100us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_100us_i_5_n_0),
        .I4(time_out_2ms_i_2__0_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    time_out_1us_i_2
       (.I0(time_out_1us_i_3_n_0),
        .I1(time_out_1us_i_4_n_0),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[1]),
        .O(time_out_1us_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_out_1us_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .O(time_out_1us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2__0_n_0),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_2ms_i_3__0_n_0),
        .I4(time_out_2ms_i_4__0_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[3]),
        .O(time_out_2ms_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_counter_reg[11]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[19]),
        .O(time_out_2ms_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \time_out_counter[0]_i_1 
       (.I0(\time_out_counter[0]_i_3__0_n_0 ),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[2]),
        .I4(\time_out_counter[0]_i_4_n_0 ),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[19]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[14]),
        .I5(time_out_counter_reg[15]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_2ms_i_2__0_n_0),
        .I5(time_out_counter_reg[4]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_1 ,\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[16]_i_1__0_n_4 ,\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S(time_out_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[19] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[19]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAE00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(time_out_wait_bypass_i_2__0_n_0),
        .I2(rx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(time_out_wait_bypass_i_4__0_n_0),
        .I2(wait_bypass_count_reg[1]),
        .I3(wait_bypass_count_reg[11]),
        .I4(wait_bypass_count_reg[0]),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,time_out_counter_reg[5],time_out_counter_reg[3],time_tlock_max1_carry_i_1_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0,time_tlock_max1_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry__0_i_1_n_0,1'b0,time_tlock_max1_carry__0_i_2_n_0,time_tlock_max1_carry__0_i_3_n_0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0,time_tlock_max1_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_7
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(time_tlock_max1_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:2],time_tlock_max1,time_tlock_max1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_tlock_max1_carry__1_i_1_n_0,time_tlock_max1_carry__1_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,time_tlock_max1_carry__1_i_3_n_0,time_tlock_max1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_3
       (.I0(time_out_counter_reg[19]),
        .I1(time_out_counter_reg[18]),
        .O(time_tlock_max1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_4
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    txpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(scndry_out),
        .D(1'b1),
        .Q(txpmaresetdone_i));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(rx_fsm_reset_done_int_s3),
        .I1(time_out_wait_bypass_i_2__0_n_0),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .O(wait_time_cnt0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0__0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(wait_time_cnt0__0[5]));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .O(wait_time_cnt0__0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[1]),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[4]),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[5]),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[6]),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module aurora_8b10b_tx_startup_fsm
   (out,
    gt_tx_reset_i,
    gt_common_reset_out,
    gt_txuserrdy_i,
    tx_lock,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    txfsm_txresetdone_r,
    AR,
    PLL_NOT_LOCKED);
  output out;
  output gt_tx_reset_i;
  output gt_common_reset_out;
  output gt_txuserrdy_i;
  output tx_lock;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input txfsm_txresetdone_r;
  input [0:0]AR;
  input PLL_NOT_LOCKED;

  wire [0:0]AR;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ;
  wire MMCM_RESET;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL_NOT_LOCKED;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire [0:0]init_wait_count;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire \init_wait_count[6]_i_4_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire out;
  wire [6:0]p_0_in;
  wire p_0_in_1;
  wire [9:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire quad1_common_lock_in;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_s3;
  wire scndry_out;
  wire sel;
  wire sync_PLL0LOCK_cdc_sync_n_0;
  wire sync_PLL0LOCK_cdc_sync_n_1;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire [0:0]time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_i_6_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s3;
  wire tx_lock;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire user_clk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [15:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [6:0]wait_time_cnt0;
  wire \wait_time_cnt[6]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEFEFEFEFEFFFEFEF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT5 #(
    .INIT(32'h000F00D0)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[2]),
        .I1(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(tx_state__0[1]));
  LUT6 #(
    .INIT(64'h000000000838CCCC)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[0]),
        .I5(tx_state[3]),
        .O(tx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500F30000)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(time_out_500us_reg_n_0),
        .I2(reset_time_out),
        .I3(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .I4(tx_state[0]),
        .I5(tx_state[3]),
        .O(tx_state__0[3]));
  LUT6 #(
    .INIT(64'h0000001100FF00F0)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .I2(init_wait_done_reg_n_0),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .I5(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT5 #(
    .INIT(32'h2020F000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(tx_state__0[2]),
        .Q(tx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_PLL0LOCK_cdc_sync_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(MMCM_RESET),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(MMCM_RESET),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    PLL0_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .I5(gt_common_reset_out),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(gt_common_reset_out),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_i),
        .R(AR));
  LUT5 #(
    .INIT(32'hFEFF0004)) 
    gttxreset_i_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_tx_reset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_tx_reset_i),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(\init_wait_count[6]_i_3_n_0 ),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_count));
  LUT3 #(
    .INIT(8'hC6)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .I2(\init_wait_count[6]_i_4_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \init_wait_count[6]_i_4 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(\init_wait_count[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    init_wait_done_i_1
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_done_i_2_n_0),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[5]),
        .O(init_wait_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[9]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(p_0_in_1),
        .I2(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(p_0_in_1));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEF00FF10)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(pll_reset_asserted_reg_n_0),
        .I4(tx_state[1]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_PLL0LOCK_cdc_sync_n_1),
        .Q(reset_time_out),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(run_phase_alignment_int),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  aurora_8b10b_cdc_sync__parameterized1_1 sync_PLL0LOCK_cdc_sync
       (.E(sync_PLL0LOCK_cdc_sync_n_0),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (pll_reset_asserted_reg_n_0),
        .Q(tx_state),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_PLL0LOCK_cdc_sync_n_1),
        .reset_time_out_reg_0(init_wait_done_reg_n_0),
        .txresetdone_s3(txresetdone_s3));
  aurora_8b10b_cdc_sync__parameterized1_2 sync_PLL1LOCK_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_cdc_sync__parameterized6_3 sync_TXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized1_4 sync_mmcm_lock_reclocked_cdc_sync
       (.PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .SR(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .init_clk_in(init_clk_in),
        .out(mmcm_lock_i));
  aurora_8b10b_cdc_sync__parameterized3 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(scndry_out),
        .run_phase_alignment_int(run_phase_alignment_int),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized6_5 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass(time_out_wait_bypass),
        .user_clk(user_clk));
  aurora_8b10b_cdc_sync__parameterized3_6 sync_tx_fsm_reset_done_int_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5_reg ),
        .init_clk_in(init_clk_in),
        .out(out),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[13]),
        .I4(time_tlock_max_i_3_n_0),
        .O(time_out_2ms_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_2ms_i_4_n_0),
        .I4(time_out_2ms_i_5_n_0),
        .O(time_out_2ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_2ms_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_2ms_i_3_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[17]),
        .I5(time_tlock_max_i_3_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAE00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass),
        .I1(time_out_wait_bypass_i_2_n_0),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(time_out_wait_bypass_i_5_n_0),
        .I3(time_out_wait_bypass_i_6_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[5]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[13]),
        .I1(wait_bypass_count_reg[0]),
        .I2(wait_bypass_count_reg[1]),
        .I3(wait_bypass_count_reg[11]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[2]),
        .I2(wait_bypass_count_reg[15]),
        .I3(wait_bypass_count_reg[3]),
        .O(time_out_wait_bypass_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_wait_bypass_i_6
       (.I0(wait_bypass_count_reg[6]),
        .I1(wait_bypass_count_reg[14]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_out_counter_reg[2]),
        .I3(time_tlock_max_i_3_n_0),
        .I4(time_tlock_max_i_4_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    time_tlock_max_i_2
       (.I0(time_out_2ms_i_5_n_0),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .O(time_tlock_max_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[10]),
        .O(time_tlock_max_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(out),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    tx_lock_INST_0
       (.I0(quad1_common_lock_in),
        .I1(MMCM_RESET),
        .O(tx_lock));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h1)) 
    \wait_bypass_count[0]_i_2 
       (.I0(tx_fsm_reset_done_int_s3),
        .I1(time_out_wait_bypass_i_2_n_0),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED [3],\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .O(wait_time_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(wait_time_cnt0[5]));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\wait_time_cnt[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(sel));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .O(wait_time_cnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[1]),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[4]),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[5]),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(wait_time_cnt0[6]),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
