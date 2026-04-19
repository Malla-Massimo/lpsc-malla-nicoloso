// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Apr 14 19:13:21 2026
// Host        : LAPTOP-E00F6MUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/MA_LPSC/lpsc-malla-nicoloso/mandelbrot/scalp_user_design/scalp_user_design.gen/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_sim_netlist.v
// Design      : aurora_8b10b_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module aurora_8b10b_0
   (s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,
    s_axi_tx_tkeep,
    s_axi_tx_tlast,
    m_axi_rx_tdata,
    m_axi_rx_tvalid,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
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
  input [0:15]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  input [0:1]s_axi_tx_tkeep;
  input s_axi_tx_tlast;
  output [0:15]m_axi_rx_tdata;
  output m_axi_rx_tvalid;
  output [0:1]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
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
  wire [0:15]m_axi_rx_tdata;
  wire [1:1]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire pll_not_locked;
  wire power_down;
  wire quad1_common_lock_in;
  wire reset;
  wire rx_resetdone_out;
  wire [0:0]rxn;
  wire [0:0]rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
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

  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1] = \^m_axi_rx_tkeep [1];
  (* CC_FREQ_FACTOR = "24" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
  aurora_8b10b_0_core U0
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
        .M_AXI_RX_TDATA(m_axi_rx_tdata),
        .M_AXI_RX_TKEEP({NLW_U0_M_AXI_RX_TKEEP_UNCONNECTED[0],\^m_axi_rx_tkeep }),
        .M_AXI_RX_TLAST(m_axi_rx_tlast),
        .M_AXI_RX_TVALID(m_axi_rx_tvalid),
        .PLL_NOT_LOCKED(pll_not_locked),
        .POWER_DOWN(power_down),
        .RESET(reset),
        .RXN(rxn),
        .RXP(rxp),
        .RX_RESETDONE_OUT(rx_resetdone_out),
        .SOFT_ERR(soft_err),
        .S_AXI_TX_TDATA(s_axi_tx_tdata),
        .S_AXI_TX_TKEEP(s_axi_tx_tkeep),
        .S_AXI_TX_TLAST(s_axi_tx_tlast),
        .S_AXI_TX_TREADY(s_axi_tx_tready),
        .S_AXI_TX_TVALID(s_axi_tx_tvalid),
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

module aurora_8b10b_0_AURORA_LANE
   (LANE_UP,
    ena_comma_align_i,
    TXCHARISK,
    rx_pad_i,
    rx_scp_i,
    rx_ecp_i,
    got_v_i,
    hard_err_reset_i,
    hard_err_i,
    LINK_RESET_OUT,
    rx_polarity_i,
    left_aligned_r_reg,
    rx_pe_data_v_i,
    RX_ECP_Buffer_reg,
    RX_PE_DATA_V_Buffer_reg,
    in_frame_r_reg,
    TXDATA,
    \RX_PE_DATA_Buffer_reg[0] ,
    bucket_full_r_reg,
    soft_err_flop_r0,
    SR,
    user_clk,
    begin_r0,
    gen_pad_i,
    tx_pe_data_v_i,
    gen_cc_i,
    gen_ecp_i,
    gen_scp_i,
    gen_a_i,
    \word_aligned_control_bits_r_reg[1] ,
    \word_aligned_control_bits_r_reg[0] ,
    hard_err_flop_r0,
    init_clk_in,
    HPCNT_RESET,
    rx_realign_i,
    RXDISPERR,
    RXNOTINTABLE,
    D,
    left_aligned_r_reg_0,
    in_frame_r,
    storage_v_r,
    start_rx_i,
    \soft_err_r_reg[0] ,
    \gen_v_r_reg[0] ,
    \gen_r_r_reg[0] ,
    \gen_k_r_reg[0] ,
    Q,
    \word_aligned_data_r_reg[8] ,
    \word_aligned_data_r_reg[0] );
  output LANE_UP;
  output ena_comma_align_i;
  output [1:0]TXCHARISK;
  output rx_pad_i;
  output rx_scp_i;
  output rx_ecp_i;
  output got_v_i;
  output hard_err_reset_i;
  output hard_err_i;
  output LINK_RESET_OUT;
  output rx_polarity_i;
  output left_aligned_r_reg;
  output rx_pe_data_v_i;
  output RX_ECP_Buffer_reg;
  output RX_PE_DATA_V_Buffer_reg;
  output in_frame_r_reg;
  output [15:0]TXDATA;
  output [15:0]\RX_PE_DATA_Buffer_reg[0] ;
  output bucket_full_r_reg;
  output soft_err_flop_r0;
  input [0:0]SR;
  input user_clk;
  input begin_r0;
  input gen_pad_i;
  input tx_pe_data_v_i;
  input gen_cc_i;
  input gen_ecp_i;
  input gen_scp_i;
  input gen_a_i;
  input \word_aligned_control_bits_r_reg[1] ;
  input \word_aligned_control_bits_r_reg[0] ;
  input hard_err_flop_r0;
  input init_clk_in;
  input HPCNT_RESET;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input [1:0]RXNOTINTABLE;
  input [1:0]D;
  input left_aligned_r_reg_0;
  input in_frame_r;
  input storage_v_r;
  input start_rx_i;
  input [1:0]\soft_err_r_reg[0] ;
  input [1:0]\gen_v_r_reg[0] ;
  input [1:0]\gen_r_r_reg[0] ;
  input [1:0]\gen_k_r_reg[0] ;
  input [15:0]Q;
  input [7:0]\word_aligned_data_r_reg[8] ;
  input [7:0]\word_aligned_data_r_reg[0] ;

  wire [1:0]D;
  wire D_0;
  wire HPCNT_RESET;
  wire LANE_UP;
  wire LINK_RESET_OUT;
  wire [15:0]Q;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire RX_CC_Buffer;
  wire RX_ECP_Buffer_reg;
  wire RX_NEG_Buffer;
  wire [15:0]\RX_PE_DATA_Buffer_reg[0] ;
  wire RX_PE_DATA_V_Buffer_reg;
  wire [0:0]SR;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire ack_r;
  wire begin_r0;
  wire bucket_full_r_reg;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire gen_k_i;
  wire [1:0]\gen_k_r_reg[0] ;
  wire gen_pad_i;
  wire [1:0]\gen_r_r_reg[0] ;
  wire gen_scp_i;
  wire [0:0]gen_sp_data_i;
  wire [1:0]\gen_v_r_reg[0] ;
  wire got_v_i;
  wire hard_err_flop_r0;
  wire hard_err_i;
  wire hard_err_reset_i;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire init_clk_in;
  wire lane_init_sm_i_n_10;
  wire lane_init_sm_i_n_11;
  wire lane_init_sm_i_n_5;
  wire left_aligned_r_reg;
  wire left_aligned_r_reg_0;
  wire rx_ecp_i;
  wire rx_pad_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_scp_i;
  wire send_sp_c;
  wire soft_err_flop_r0;
  wire [1:0]\soft_err_r_reg[0] ;
  wire start_rx_i;
  wire storage_v_r;
  wire sym_dec_i_n_12;
  wire tx_pe_data_v_i;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[0] ;
  wire \word_aligned_control_bits_r_reg[1] ;
  wire [7:0]\word_aligned_data_r_reg[0] ;
  wire [7:0]\word_aligned_data_r_reg[8] ;

  aurora_8b10b_0_HOTPLUG aurora_8b10b_0_hotplug_i
       (.D(RX_CC_Buffer),
        .HPCNT_RESET(HPCNT_RESET),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .SR(SR),
        .init_clk_in(init_clk_in),
        .user_clk(user_clk));
  aurora_8b10b_0_ERR_DETECT err_detect_i
       (.SR(lane_init_sm_i_n_11),
        .bucket_full_r_reg_0(bucket_full_r_reg),
        .enable_err_detect_i(enable_err_detect_i),
        .hard_err_flop_r0(hard_err_flop_r0),
        .hard_err_i(hard_err_i),
        .hard_err_reset_i(hard_err_reset_i),
        .soft_err_flop_r0(soft_err_flop_r0),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .user_clk(user_clk));
  aurora_8b10b_0_LANE_INIT_SM lane_init_sm_i
       (.D({gen_sp_data_i,send_sp_c}),
        .D_0(D_0),
        .ENABLE_ERR_DETECT_Buffer_reg_0(lane_init_sm_i_n_11),
        .LANE_UP(LANE_UP),
        .RXDISPERR(RXDISPERR),
        .RXNOTINTABLE(RXNOTINTABLE),
        .\RX_CHAR_IS_COMMA_R_reg[1]_0 (D),
        .RX_NEG_Buffer(RX_NEG_Buffer),
        .SR(SR),
        .ack_r(ack_r),
        .ack_r_reg_0(lane_init_sm_i_n_10),
        .align_r_reg_0(ena_comma_align_i),
        .begin_r0(begin_r0),
        .\counter2_r_reg[0]_0 (lane_init_sm_i_n_5),
        .\counter3_r_reg[3]_0 (sym_dec_i_n_12),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .gen_k_i(gen_k_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
  aurora_8b10b_0_SYM_DEC sym_dec_i
       (.D(RX_CC_Buffer),
        .D_0(D_0),
        .RX_ECP_Buffer_reg_0(rx_ecp_i),
        .RX_ECP_Buffer_reg_1(RX_ECP_Buffer_reg),
        .RX_NEG_Buffer(RX_NEG_Buffer),
        .\RX_PE_DATA_Buffer_reg[0]_0 (\RX_PE_DATA_Buffer_reg[0] ),
        .RX_PE_DATA_V_Buffer_reg_0(RX_PE_DATA_V_Buffer_reg),
        .RX_SPA_Buffer_reg_0(sym_dec_i_n_12),
        .SR(SR),
        .ack_r(ack_r),
        .counter4_r0(counter4_r0),
        .ena_comma_align_i(ena_comma_align_i),
        .got_v_i(got_v_i),
        .in_frame_r(in_frame_r),
        .in_frame_r_reg(in_frame_r_reg),
        .left_aligned_r_reg_0(left_aligned_r_reg),
        .left_aligned_r_reg_1(D[0]),
        .left_aligned_r_reg_2(left_aligned_r_reg_0),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_scp_i(rx_scp_i),
        .start_rx_i(start_rx_i),
        .storage_v_r(storage_v_r),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[0]_0 (\word_aligned_control_bits_r_reg[0] ),
        .\word_aligned_control_bits_r_reg[1]_0 (\word_aligned_control_bits_r_reg[1] ),
        .\word_aligned_data_r_reg[0]_0 (\word_aligned_data_r_reg[0] ),
        .\word_aligned_data_r_reg[8]_0 (\word_aligned_data_r_reg[8] ));
  aurora_8b10b_0_SYM_GEN sym_gen_i
       (.D({gen_sp_data_i,send_sp_c}),
        .Q(Q),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .\TX_CHAR_IS_K_Buffer_reg[0]_0 (lane_init_sm_i_n_5),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_k_i(gen_k_i),
        .\gen_k_r_reg[0]_0 (\gen_k_r_reg[0] ),
        .gen_pad_i(gen_pad_i),
        .\gen_r_r_reg[0]_0 (\gen_r_r_reg[0] ),
        .gen_scp_i(gen_scp_i),
        .\gen_spa_data_r_reg[0]_0 (lane_init_sm_i_n_10),
        .\gen_v_r_reg[0]_0 (\gen_v_r_reg[0] ),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0_AXI_TO_LL
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

module aurora_8b10b_0_CHANNEL_ERR_DETECT
   (HARD_ERR,
    reset_channel_i,
    SOFT_ERR,
    hard_err_i,
    user_clk,
    LANE_UP,
    soft_err_flop_r0,
    POWER_DOWN);
  output HARD_ERR;
  output reset_channel_i;
  output SOFT_ERR;
  input hard_err_i;
  input user_clk;
  input LANE_UP;
  input soft_err_flop_r0;
  input POWER_DOWN;

  wire HARD_ERR;
  wire LANE_UP;
  wire POWER_DOWN;
  wire RESET_CHANNEL_Buffer_i_1_n_0;
  wire SOFT_ERR;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up_r;
  wire reset_channel_i;
  wire soft_err_flop_r0;
  wire soft_err_r_reg_srl3_n_0;
  wire user_clk;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(HARD_ERR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_SOFT_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(soft_err_r_reg_srl3_n_0),
        .Q(SOFT_ERR),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_Buffer_i_1
       (.I0(POWER_DOWN),
        .I1(lane_up_r),
        .O(RESET_CHANNEL_Buffer_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET_CHANNEL_Buffer_i_1_n_0),
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
  (* srl_name = "U0/\\global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    soft_err_r_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(soft_err_flop_r0),
        .Q(soft_err_r_reg_srl3_n_0));
endmodule

module aurora_8b10b_0_CHANNEL_INIT_SM
   (SR,
    gen_ver_i,
    CHANNEL_UP,
    start_rx_i,
    gtrxreset_i,
    begin_r0,
    p_0_in,
    D1_out,
    user_clk,
    got_v_i,
    wait_for_lane_up_r0,
    \gtrxreset_extend_r_reg[0]_0 ,
    \txver_count_r_reg[7]_0 ,
    hard_err_reset_i,
    reset_channel_i,
    did_ver_i);
  output [0:0]SR;
  output gen_ver_i;
  output CHANNEL_UP;
  output start_rx_i;
  output gtrxreset_i;
  output begin_r0;
  output p_0_in;
  output D1_out;
  input user_clk;
  input got_v_i;
  input wait_for_lane_up_r0;
  input \gtrxreset_extend_r_reg[0]_0 ;
  input \txver_count_r_reg[7]_0 ;
  input hard_err_reset_i;
  input reset_channel_i;
  input did_ver_i;

  wire CHANNEL_UP;
  wire D;
  wire D1_out;
  wire GTRXRESET_OUT_i_1_n_0;
  wire GTRXRESET_OUT_i_2_n_0;
  wire Q;
  wire [0:0]SR;
  wire START_RX_Buffer0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire begin_r0;
  wire did_ver_i;
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
  wire \gtrxreset_extend_r_reg[0]_0 ;
  wire gtrxreset_i;
  wire hard_err_reset_i;
  wire next_ready_c;
  wire next_verify_c;
  wire p_0_in;
  wire [31:31]p_2_out;
  wire p_3_in;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire rxver_count_r0;
  wire \rxver_count_r_reg[1]_srl2_n_0 ;
  wire \rxver_count_r_reg_n_0_[2] ;
  wire start_rx_i;
  wire \txver_count_r_reg[6]_srl7_n_0 ;
  wire \txver_count_r_reg[7]_0 ;
  wire \txver_count_r_reg_n_0_[7] ;
  wire user_clk;
  wire \v_count_r_reg[30]_srl31_n_0 ;
  wire \v_count_r_reg_n_0_[31] ;
  wire verify_watchdog_r0;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;
  wire \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ;

  FDRE CHANNEL_UP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(CHANNEL_UP),
        .R(1'b0));
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
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    align_r_i_1
       (.I0(SR),
        .I1(hard_err_reset_i),
        .O(begin_r0));
  FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h48)) 
    bad_v_r_i_1
       (.I0(all_lanes_v_r),
        .I1(got_first_v_r),
        .I2(\v_count_r_reg_n_0_[31] ),
        .O(bad_v_r0));
  FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    data_eof_1_r_i_1
       (.I0(CHANNEL_UP),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .O(D1_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    gtreset_flop_0_i_i_1
       (.I0(\verify_watchdog_r_reg_n_0_[15] ),
        .I1(bad_v_r),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(gen_ver_i),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q),
        .Q(gtrxreset_extend_r[7]),
        .R(\gtrxreset_extend_r_reg[0]_0 ));
  FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    ready_r_i_1__0
       (.I0(\txver_count_r_reg_n_0_[7] ),
        .I1(\rxver_count_r_reg_n_0_[2] ),
        .I2(gen_ver_i),
        .I3(ready_r),
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
        .D(D),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    reset_lanes_flop_i_i_1
       (.I0(\gtrxreset_extend_r_reg[0]_0 ),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(p_3_in),
        .O(D));
  (* srl_bus_name = "U0/\\global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
  (* srl_name = "U0/\\global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
  SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(rxver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\rxver_count_r_reg[1]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(\v_count_r_reg_n_0_[31] ),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(rxver_count_r0));
  FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(rxver_count_r0),
        .D(\rxver_count_r_reg[1]_srl2_n_0 ),
        .Q(\rxver_count_r_reg_n_0_[2] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
  (* srl_name = "U0/\\global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
  SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\txver_count_r_reg[7]_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\txver_count_r_reg[6]_srl7_n_0 ));
  FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(\txver_count_r_reg[7]_0 ),
        .D(\txver_count_r_reg[6]_srl7_n_0 ),
        .Q(\txver_count_r_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
  (* srl_name = "U0/\\global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 " *) 
  SRLC32E \v_count_r_reg[30]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\v_count_r_reg[30]_srl31_n_0 ),
        .Q31(\NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \v_count_r_reg[30]_srl31_i_1 
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .I3(\v_count_r_reg_n_0_[31] ),
        .O(p_2_out));
  FDRE \v_count_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\v_count_r_reg[30]_srl31_n_0 ),
        .Q(\v_count_r_reg_n_0_[31] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    verify_r_i_2
       (.I0(gen_ver_i),
        .I1(\txver_count_r_reg_n_0_[7] ),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(wait_for_lane_up_r),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "U0/\\global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
  (* srl_name = "U0/\\global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(verify_watchdog_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT5 #(
    .INIT(32'h0200FFFF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(free_count_r_reg[12]),
        .I2(free_count_r_reg[13]),
        .I3(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I4(gen_ver_i),
        .O(verify_watchdog_r0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[9]),
        .I1(free_count_r_reg[8]),
        .I2(free_count_r_reg[11]),
        .I3(free_count_r_reg[10]),
        .I4(free_count_r_reg[6]),
        .I5(free_count_r_reg[7]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[2]),
        .I2(free_count_r_reg[5]),
        .I3(free_count_r_reg[4]),
        .I4(free_count_r_reg[0]),
        .I5(free_count_r_reg[1]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(verify_watchdog_r0),
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

module aurora_8b10b_0_ERR_DETECT
   (hard_err_reset_i,
    hard_err_i,
    soft_err_flop_r0,
    bucket_full_r_reg_0,
    SR,
    hard_err_flop_r0,
    user_clk,
    \soft_err_r_reg[0]_0 ,
    enable_err_detect_i);
  output hard_err_reset_i;
  output hard_err_i;
  output soft_err_flop_r0;
  output bucket_full_r_reg_0;
  input SR;
  input hard_err_flop_r0;
  input user_clk;
  input [1:0]\soft_err_r_reg[0]_0 ;
  input enable_err_detect_i;

  wire SR;
  wire bucket_full_r_i_1_n_0;
  wire bucket_full_r_reg_0;
  wire \count_r[0]_i_1_n_0 ;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r_reg_n_0_[1] ;
  wire enable_err_detect_i;
  wire \good_count_r[0]_i_1_n_0 ;
  wire \good_count_r[1]_i_1_n_0 ;
  wire \good_count_r_reg_n_0_[1] ;
  wire hard_err_flop_r0;
  wire hard_err_i;
  wire hard_err_reset_i;
  wire p_0_in12_in;
  wire p_0_in1_in;
  wire soft_err_flop_r0;
  wire [1:1]soft_err_r;
  wire [1:0]\soft_err_r_reg[0]_0 ;
  wire \soft_err_r_reg_n_0_[1] ;
  wire user_clk;

  FDRE HARD_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_reset_i),
        .Q(hard_err_i),
        .R(SR));
  LUT6 #(
    .INIT(64'hC080C880C880C080)) 
    bucket_full_r_i_1
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(soft_err_r),
        .I3(\soft_err_r_reg_n_0_[1] ),
        .I4(\good_count_r_reg_n_0_[1] ),
        .I5(p_0_in12_in),
        .O(bucket_full_r_i_1_n_0));
  FDRE bucket_full_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bucket_full_r_i_1_n_0),
        .Q(bucket_full_r_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEECE8CFFEEEE8C)) 
    \count_r[0]_i_1 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(p_0_in12_in),
        .I3(\soft_err_r_reg_n_0_[1] ),
        .I4(soft_err_r),
        .I5(\good_count_r_reg_n_0_[1] ),
        .O(\count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEDDAD4AEEDDDD4A)) 
    \count_r[1]_i_1 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(p_0_in12_in),
        .I3(\soft_err_r_reg_n_0_[1] ),
        .I4(soft_err_r),
        .I5(\good_count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1_n_0 ));
  FDRE \count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_r[0]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE \count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_r[1]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \good_count_r[0]_i_1 
       (.I0(p_0_in12_in),
        .I1(\soft_err_r_reg_n_0_[1] ),
        .I2(soft_err_r),
        .I3(enable_err_detect_i),
        .O(\good_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3200)) 
    \good_count_r[1]_i_1 
       (.I0(\good_count_r_reg_n_0_[1] ),
        .I1(\soft_err_r_reg_n_0_[1] ),
        .I2(soft_err_r),
        .I3(enable_err_detect_i),
        .O(\good_count_r[1]_i_1_n_0 ));
  FDRE \good_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\good_count_r[0]_i_1_n_0 ),
        .Q(p_0_in12_in),
        .R(1'b0));
  FDRE \good_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\good_count_r[1]_i_1_n_0 ),
        .Q(\good_count_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE hard_err_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_flop_r0),
        .Q(hard_err_reset_i),
        .R(SR));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [1]),
        .Q(soft_err_r),
        .R(SR));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [0]),
        .Q(\soft_err_r_reg_n_0_[1] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    soft_err_r_reg_srl3_i_1
       (.I0(soft_err_r),
        .I1(\soft_err_r_reg_n_0_[1] ),
        .O(soft_err_flop_r0));
endmodule

module aurora_8b10b_0_GLOBAL_LOGIC
   (SR,
    gen_v_flop_0_i,
    gen_a_i,
    gen_k_flop_0_i,
    gen_r_flop_0_i,
    CHANNEL_UP,
    start_rx_i,
    gtrxreset_i,
    HARD_ERR,
    reset_channel_i,
    SOFT_ERR,
    begin_r0,
    p_0_in,
    user_clk,
    lfsr_taps_i,
    got_v_i,
    wait_for_lane_up_r0,
    hard_err_i,
    LANE_UP,
    soft_err_flop_r0,
    hard_err_reset_i,
    POWER_DOWN);
  output [0:0]SR;
  output [1:0]gen_v_flop_0_i;
  output gen_a_i;
  output [1:0]gen_k_flop_0_i;
  output [1:0]gen_r_flop_0_i;
  output CHANNEL_UP;
  output start_rx_i;
  output gtrxreset_i;
  output HARD_ERR;
  output reset_channel_i;
  output SOFT_ERR;
  output begin_r0;
  output p_0_in;
  input user_clk;
  input lfsr_taps_i;
  input got_v_i;
  input wait_for_lane_up_r0;
  input hard_err_i;
  input LANE_UP;
  input soft_err_flop_r0;
  input hard_err_reset_i;
  input POWER_DOWN;

  wire CHANNEL_UP;
  wire D1_out;
  wire HARD_ERR;
  wire LANE_UP;
  wire POWER_DOWN;
  wire SOFT_ERR;
  wire [0:0]SR;
  wire begin_r0;
  wire did_ver_i;
  wire gen_a_i;
  wire [1:0]gen_k_flop_0_i;
  wire [1:0]gen_r_flop_0_i;
  wire [1:0]gen_v_flop_0_i;
  wire gen_ver_i;
  wire got_v_i;
  wire gtrxreset_i;
  wire hard_err_i;
  wire hard_err_reset_i;
  wire idle_and_ver_gen_i_n_8;
  wire lfsr_taps_i;
  wire p_0_in;
  wire reset_channel_i;
  wire soft_err_flop_r0;
  wire start_rx_i;
  wire user_clk;
  wire wait_for_lane_up_r0;

  aurora_8b10b_0_CHANNEL_ERR_DETECT channel_err_detect_i
       (.HARD_ERR(HARD_ERR),
        .LANE_UP(LANE_UP),
        .POWER_DOWN(POWER_DOWN),
        .SOFT_ERR(SOFT_ERR),
        .hard_err_i(hard_err_i),
        .reset_channel_i(reset_channel_i),
        .soft_err_flop_r0(soft_err_flop_r0),
        .user_clk(user_clk));
  aurora_8b10b_0_CHANNEL_INIT_SM channel_init_sm_i
       (.CHANNEL_UP(CHANNEL_UP),
        .D1_out(D1_out),
        .SR(SR),
        .begin_r0(begin_r0),
        .did_ver_i(did_ver_i),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .\gtrxreset_extend_r_reg[0]_0 (lfsr_taps_i),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_reset_i(hard_err_reset_i),
        .p_0_in(p_0_in),
        .reset_channel_i(reset_channel_i),
        .start_rx_i(start_rx_i),
        .\txver_count_r_reg[7]_0 (idle_and_ver_gen_i_n_8),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.D1_out(D1_out),
        .did_ver_i(did_ver_i),
        .gen_a_i(gen_a_i),
        .gen_k_flop_0_i_0(gen_k_flop_0_i),
        .gen_r_flop_0_i_0(gen_r_flop_0_i),
        .gen_v_flop_0_i_0(gen_v_flop_0_i),
        .gen_ver_i(gen_ver_i),
        .gen_ver_word_2_r_reg_0(idle_and_ver_gen_i_n_8),
        .lfsr_taps_i_0(lfsr_taps_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0_GT_WRAPPER
   (TX_RESETDONE_OUT,
    gtpe2_i,
    TXN,
    TXP,
    rx_realign_i,
    TX_OUT_CLK,
    DRPDO_OUT,
    D,
    RXDISPERR,
    RXNOTINTABLE,
    gt_common_reset_out,
    RX_RESETDONE_OUT,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    hard_err_flop_r0,
    gtpe2_i_4,
    gtpe2_i_5,
    rxfsm_rxresetdone_r3_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ,
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
    TXCHARISK,
    gtrxreset_i,
    init_clk_in,
    link_reset_comb_r,
    AR,
    \word_aligned_control_bits_r_reg[1] ,
    hard_err_flop_r_reg,
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
  output [1:0]D;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output gt_common_reset_out;
  output RX_RESETDONE_OUT;
  output gtpe2_i_0;
  output gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output gtpe2_i_3;
  output hard_err_flop_r0;
  output [7:0]gtpe2_i_4;
  output [7:0]gtpe2_i_5;
  output rxfsm_rxresetdone_r3_reg_0;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ;
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
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input gtrxreset_i;
  input init_clk_in;
  input link_reset_comb_r;
  input [0:0]AR;
  input \word_aligned_control_bits_r_reg[1] ;
  input hard_err_flop_r_reg;
  input PLL_NOT_LOCKED;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire [0:0]AR;
  wire [1:0]D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire [1:0]RXDISPERR;
  wire RXN;
  wire [1:0]RXNOTINTABLE;
  wire RXP;
  wire RX_RESETDONE_OUT;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire TX_RESETDONE_OUT;
  wire aurora_8b10b_0_multi_gt_i_n_4;
  wire aurora_8b10b_0_multi_gt_i_n_6;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire gt0_rxresetdone_r3_reg_srl3_n_0;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_common_reset_out;
  wire gt_rx_reset_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire gtpe2_i_3;
  wire [7:0]gtpe2_i_4;
  wire [7:0]gtpe2_i_5;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_pulse;
  wire gtrxreset_pulse_i_1_n_0;
  wire gtrxreset_r1;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire gtrxreset_sync;
  wire hard_err_flop_r0;
  wire hard_err_flop_r_reg;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_r2;
  wire quad1_common_lock_in;
  wire [9:1]rx_cdrlock_counter;
  wire \rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \rx_cdrlock_counter[1]_i_2_n_0 ;
  wire \rx_cdrlock_counter[9]_i_2_n_0 ;
  wire \rx_cdrlock_counter_reg_n_0_[0] ;
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
  wire rx_cdrlocked_reg_n_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_rxresetdone_r3_reg_0;
  wire rxfsm_soft_reset_r;
  wire rxfsm_soft_reset_r_i_1_n_0;
  wire sync_clk;
  wire txfsm_txresetdone_r;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[1] ;

  aurora_8b10b_0_multi_gt aurora_8b10b_0_multi_gt_i
       (.D(D),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .RXDISPERR(RXDISPERR),
        .RXN(RXN),
        .RXNOTINTABLE(RXNOTINTABLE),
        .RXP(RXP),
        .SR(gt_rx_reset_i),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(aurora_8b10b_0_multi_gt_i_n_4),
        .gtpe2_i_1(aurora_8b10b_0_multi_gt_i_n_6),
        .gtpe2_i_2(gtpe2_i_0),
        .gtpe2_i_3(gtpe2_i_1),
        .gtpe2_i_4(gtpe2_i_2),
        .gtpe2_i_5(gtpe2_i_3),
        .gtpe2_i_6(gtpe2_i_4),
        .gtpe2_i_7(gtpe2_i_5),
        .hard_err_flop_r0(hard_err_flop_r0),
        .hard_err_flop_r_reg(hard_err_flop_r_reg),
        .init_clk_in(init_clk_in),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .sync_clk(sync_clk),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[1] (\word_aligned_control_bits_r_reg[1] ));
  (* srl_name = "U0/\\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_0_multi_gt_i_n_4),
        .Q(gt0_rxresetdone_r3_reg_srl3_n_0));
  (* srl_name = "U0/\\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_0_multi_gt_i_n_6),
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
  aurora_8b10b_0_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg_0(rx_cdrlocked_reg_n_0),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_tx_startup_fsm gt_txresetfsm_i
       (.AR(AR),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2 gtrxreset_cdc_sync
       (.gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_sync),
        .user_clk(user_clk));
  LUT2 #(
    .INIT(4'h2)) 
    gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(gtrxreset_pulse_i_1_n_0));
  FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_pulse_i_1_n_0),
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
  LUT5 #(
    .INIT(32'h33333337)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I4(\rx_cdrlock_counter[1]_i_2_n_0 ),
        .O(\rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33333333CCCCCCC8)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I4(\rx_cdrlock_counter[1]_i_2_n_0 ),
        .I5(\rx_cdrlock_counter_reg_n_0_[1] ),
        .O(rx_cdrlock_counter[1]));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \rx_cdrlock_counter[1]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\rx_cdrlock_counter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[0] ),
        .O(rx_cdrlock_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[2] ),
        .O(rx_cdrlock_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
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
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I1(\rx_cdrlock_counter[9]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter_reg_n_0_[5] ),
        .O(rx_cdrlock_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I2(\rx_cdrlock_counter[9]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter_reg_n_0_[6] ),
        .O(rx_cdrlock_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I2(\rx_cdrlock_counter[9]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[7] ),
        .O(rx_cdrlock_counter[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I3(\rx_cdrlock_counter[9]_i_2_n_0 ),
        .I4(\rx_cdrlock_counter_reg_n_0_[6] ),
        .I5(\rx_cdrlock_counter_reg_n_0_[8] ),
        .O(rx_cdrlock_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rx_cdrlock_counter[9]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\rx_cdrlock_counter_reg_n_0_[2] ),
        .O(\rx_cdrlock_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\rx_cdrlock_counter_reg_n_0_[0] ),
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
        .D(rx_cdrlock_counter[2]),
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
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    rx_cdrlocked_i_1
       (.I0(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I4(\rx_cdrlock_counter[1]_i_2_n_0 ),
        .I5(rx_cdrlocked_reg_n_0),
        .O(rx_cdrlocked_i_1_n_0));
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

module aurora_8b10b_0_HOTPLUG
   (LINK_RESET_OUT,
    user_clk,
    init_clk_in,
    HPCNT_RESET,
    SR,
    D);
  output LINK_RESET_OUT;
  input user_clk;
  input init_clk_in;
  input HPCNT_RESET;
  input [0:0]SR;
  input [0:0]D;

  wire [0:0]D;
  wire HPCNT_RESET;
  wire LINK_RESET_OUT;
  wire [0:0]SR;
  wire [21:0]\hotplug_count_synth.count_for_reset_r_reg ;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_r;
  wire link_reset_r_i_2_n_0;
  wire link_reset_r_i_3_n_0;
  wire link_reset_r_i_4_n_0;
  wire link_reset_r_i_5_n_0;
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
  wire rx_cc_extend_r2_i_1_n_0;
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
  aurora_8b10b_0_cdc_sync__parameterized2_26 rx_cc_cdc_sync
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
        .O(rx_cc_extend_r2_i_1_n_0));
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
        .D(rx_cc_extend_r2_i_1_n_0),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(SR));
endmodule

module aurora_8b10b_0_IDLE_AND_VER_GEN
   (gen_v_flop_0_i_0,
    gen_a_i,
    gen_k_flop_0_i_0,
    gen_r_flop_0_i_0,
    did_ver_i,
    gen_ver_word_2_r_reg_0,
    lfsr_taps_i_0,
    user_clk,
    D1_out,
    gen_ver_i);
  output [1:0]gen_v_flop_0_i_0;
  output gen_a_i;
  output [1:0]gen_k_flop_0_i_0;
  output [1:0]gen_r_flop_0_i_0;
  output did_ver_i;
  output gen_ver_word_2_r_reg_0;
  input lfsr_taps_i_0;
  input user_clk;
  input D1_out;
  input gen_ver_i;

  wire D;
  wire D0_out;
  wire D1_out;
  wire D2_out;
  wire did_ver_i;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r[3]_i_1_n_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire \downcounter_r_reg_n_0_[3] ;
  wire gen_a_i;
  wire [1:0]gen_k_flop_0_i_0;
  wire gen_k_flop_0_i_i_1_n_0;
  wire [1:0]gen_r_flop_0_i_0;
  wire gen_r_flop_0_i_i_1_n_0;
  wire gen_r_flop_1_i_i_1_n_0;
  wire [1:0]gen_v_flop_0_i_0;
  wire gen_v_flop_1_i_i_1_n_0;
  wire gen_ver_i;
  wire gen_ver_word_2_r_reg_0;
  wire lfsr_last_flop_r;
  wire \lfsr_shift_register_r_reg[2]_srl3_n_0 ;
  wire lfsr_taps_i_0;
  wire lfsr_taps_i_i_1_n_0;
  wire lfsr_taps_r;
  wire prev_cycle_gen_ver_r;
  wire user_clk;
  wire ver_counter_r_0;
  wire ver_counter_r_1;

  LUT5 #(
    .INIT(32'h44444441)) 
    \downcounter_r[0]_i_1 
       (.I0(lfsr_taps_i_0),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .I4(\downcounter_r_reg_n_0_[3] ),
        .O(\downcounter_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E1E1E1E0)) 
    \downcounter_r[1]_i_1 
       (.I0(\downcounter_r_reg_n_0_[2] ),
        .I1(\downcounter_r_reg_n_0_[3] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(lfsr_taps_r),
        .I4(\downcounter_r_reg_n_0_[0] ),
        .I5(lfsr_taps_i_0),
        .O(\downcounter_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0000FE)) 
    \downcounter_r[2]_i_1 
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(D),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .I4(\downcounter_r_reg_n_0_[3] ),
        .I5(lfsr_taps_i_0),
        .O(\downcounter_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \downcounter_r[3]_i_1 
       (.I0(lfsr_taps_i_0),
        .I1(\downcounter_r_reg_n_0_[3] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(lfsr_last_flop_r),
        .O(\downcounter_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \downcounter_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[3]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[3] ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D2_out),
        .Q(gen_a_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    gen_a_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[3] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .I4(ver_counter_r_0),
        .O(D2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_0_i_i_1_n_0),
        .Q(gen_k_flop_0_i_0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    gen_k_flop_0_i_i_1
       (.I0(lfsr_taps_r),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .I4(\downcounter_r_reg_n_0_[3] ),
        .I5(ver_counter_r_0),
        .O(gen_k_flop_0_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(gen_k_flop_0_i_0[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_0_i_i_1_n_0),
        .Q(gen_r_flop_0_i_0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    gen_r_flop_0_i_i_1
       (.I0(lfsr_taps_r),
        .I1(ver_counter_r_0),
        .I2(\downcounter_r_reg_n_0_[3] ),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .I4(\downcounter_r_reg_n_0_[1] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(gen_r_flop_0_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_1_i_i_1_n_0),
        .Q(gen_r_flop_0_i_0[0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_r_flop_1_i_i_1
       (.I0(D),
        .O(gen_r_flop_1_i_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D1_out),
        .Q(gen_v_flop_0_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_flop_1_i_i_1_n_0),
        .Q(gen_v_flop_0_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    gen_v_flop_1_i_i_1
       (.I0(ver_counter_r_0),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .O(gen_v_flop_1_i_i_1_n_0));
  FDRE gen_ver_word_2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_r_0),
        .Q(did_ver_i),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    lfsr_last_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(lfsr_last_flop_r),
        .R(lfsr_taps_i_0));
  (* srl_bus_name = "U0/\\global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg " *) 
  (* srl_name = "U0/\\global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \lfsr_shift_register_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(lfsr_taps_r),
        .Q(\lfsr_shift_register_r_reg[2]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_shift_register_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_shift_register_r_reg[2]_srl3_n_0 ),
        .Q(D),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    lfsr_taps_i
       (.C(user_clk),
        .CE(1'b1),
        .D(lfsr_taps_i_i_1_n_0),
        .Q(lfsr_taps_r),
        .R(lfsr_taps_i_0));
  LUT2 #(
    .INIT(4'h9)) 
    lfsr_taps_i_i_1
       (.I0(lfsr_last_flop_r),
        .I1(D),
        .O(lfsr_taps_i_i_1_n_0));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(gen_ver_word_2_r_reg_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* srl_name = "U0/\\global_logic_i/idle_and_ver_gen_i/ver_counter_0_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_0_i
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(D0_out),
        .Q(ver_counter_r_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    ver_counter_0_i_i_1
       (.I0(prev_cycle_gen_ver_r),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .O(D0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* srl_name = "U0/\\global_logic_i/idle_and_ver_gen_i/ver_counter_1_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_1_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(ver_counter_r_1),
        .Q(ver_counter_r_0));
endmodule

module aurora_8b10b_0_LANE_INIT_SM
   (LANE_UP,
    D_0,
    align_r_reg_0,
    ack_r,
    enable_err_detect_i,
    \counter2_r_reg[0]_0 ,
    rx_polarity_i,
    D,
    gen_k_i,
    ack_r_reg_0,
    ENABLE_ERR_DETECT_Buffer_reg_0,
    SR,
    user_clk,
    begin_r0,
    counter4_r0,
    \counter3_r_reg[3]_0 ,
    RX_NEG_Buffer,
    rx_realign_i,
    RXDISPERR,
    RXNOTINTABLE,
    \RX_CHAR_IS_COMMA_R_reg[1]_0 );
  output LANE_UP;
  output D_0;
  output align_r_reg_0;
  output ack_r;
  output enable_err_detect_i;
  output \counter2_r_reg[0]_0 ;
  output rx_polarity_i;
  output [1:0]D;
  output gen_k_i;
  output ack_r_reg_0;
  output ENABLE_ERR_DETECT_Buffer_reg_0;
  input [0:0]SR;
  input user_clk;
  input begin_r0;
  input counter4_r0;
  input \counter3_r_reg[3]_0 ;
  input RX_NEG_Buffer;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input [1:0]RXNOTINTABLE;
  input [1:0]\RX_CHAR_IS_COMMA_R_reg[1]_0 ;

  wire [1:0]D;
  wire D_0;
  wire ENABLE_ERR_DETECT_Buffer0;
  wire ENABLE_ERR_DETECT_Buffer_reg_0;
  wire LANE_UP;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire [1:0]RX_CHAR_IS_COMMA_R;
  wire [1:0]\RX_CHAR_IS_COMMA_R_reg[1]_0 ;
  wire RX_NEG_Buffer;
  wire [0:0]SR;
  wire ack_r;
  wire ack_r_i_2_n_0;
  wire ack_r_reg_0;
  wire align_r_reg_0;
  wire begin_r;
  wire begin_r0;
  wire begin_r_i_2_n_0;
  wire comma_over_two_cycles_r;
  wire comma_over_two_cycles_r0;
  wire counter1_r0;
  wire \counter1_r[0]_i_4_n_0 ;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire \counter1_r_reg_n_0_[5] ;
  wire \counter1_r_reg_n_0_[6] ;
  wire \counter1_r_reg_n_0_[7] ;
  wire \counter2_r_reg[0]_0 ;
  wire \counter2_r_reg[14]_srl14_n_0 ;
  wire \counter2_r_reg_n_0_[15] ;
  wire \counter3_r_reg[2]_srl3_n_0 ;
  wire \counter3_r_reg[3]_0 ;
  wire \counter3_r_reg_n_0_[3] ;
  wire counter4_r0;
  wire \counter4_r_reg[14]_srl15_n_0 ;
  wire \counter4_r_reg_n_0_[15] ;
  wire \counter5_r_reg[14]_srl15_i_1_n_0 ;
  wire \counter5_r_reg[14]_srl15_n_0 ;
  wire \counter5_r_reg_n_0_[15] ;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire gen_k_i;
  wire inc_count_c;
  wire inc_count_c1;
  wire next_ack_c;
  wire next_ack_c12_in;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire odd_word_r;
  wire [7:0]p_0_in;
  wire polarity_r;
  wire prev_char_was_comma_r;
  wire prev_count_128d_done_r;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_count_r_i_2_n_0;
  wire rx_polarity_i;
  wire rx_polarity_r_i_1_n_0;
  wire rx_realign_i;
  wire std_bool;
  wire std_bool0_in;
  wire std_bool6_in;
  wire tx_reset_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ENABLE_ERR_DETECT_Buffer_i_1
       (.I0(ack_r),
        .I1(D_0),
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
        .D(\RX_CHAR_IS_COMMA_R_reg[1]_0 [0]),
        .Q(RX_CHAR_IS_COMMA_R[0]),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[1]_0 [1]),
        .Q(RX_CHAR_IS_COMMA_R[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h04040404FF040404)) 
    ack_r_i_1
       (.I0(RX_NEG_Buffer),
        .I1(polarity_r),
        .I2(odd_word_r),
        .I3(ack_r_i_2_n_0),
        .I4(ack_r),
        .I5(\counter5_r_reg_n_0_[15] ),
        .O(next_ack_c));
  LUT2 #(
    .INIT(4'h7)) 
    ack_r_i_2
       (.I0(\counter2_r_reg_n_0_[15] ),
        .I1(\counter3_r_reg_n_0_[3] ),
        .O(ack_r_i_2_n_0));
  FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(ack_r),
        .R(begin_r0));
  LUT4 #(
    .INIT(16'h8F88)) 
    align_r_i_2
       (.I0(std_bool0_in),
        .I1(tx_reset_i),
        .I2(std_bool),
        .I3(align_r_reg_0),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r_reg_0),
        .R(begin_r0));
  LUT3 #(
    .INIT(8'hF8)) 
    begin_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG_Buffer),
        .I2(begin_r_i_2_n_0),
        .O(next_begin_c));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    begin_r_i_2
       (.I0(\counter4_r_reg_n_0_[15] ),
        .I1(D_0),
        .I2(ack_r),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(rx_realign_i),
        .I5(realign_r),
        .O(begin_r_i_2_n_0));
  FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(begin_r0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h56FF)) 
    comma_over_two_cycles_r_i_1
       (.I0(prev_char_was_comma_r),
        .I1(RX_CHAR_IS_COMMA_R[0]),
        .I2(RX_CHAR_IS_COMMA_R[1]),
        .I3(align_r_reg_0),
        .O(comma_over_two_cycles_r0));
  FDRE comma_over_two_cycles_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(comma_over_two_cycles_r0),
        .Q(comma_over_two_cycles_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1_r[0]_i_1 
       (.I0(reset_count_r),
        .I1(D_0),
        .O(counter1_r0));
  LUT3 #(
    .INIT(8'hEF)) 
    \counter1_r[0]_i_2 
       (.I0(RX_CHAR_IS_COMMA_R[1]),
        .I1(RX_CHAR_IS_COMMA_R[0]),
        .I2(align_r_reg_0),
        .O(inc_count_c));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter1_r[0]_i_3 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r[0]_i_4_n_0 ),
        .I2(std_bool),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter1_r[0]_i_4 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(std_bool0_in),
        .I5(std_bool6_in),
        .O(\counter1_r[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r[0]_i_4_n_0 ),
        .I1(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter1_r[2]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(std_bool0_in),
        .I5(std_bool6_in),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter1_r[3]_i_1 
       (.I0(std_bool0_in),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .I4(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1_r[4]_i_1 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(std_bool0_in),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1_r[5]_i_1 
       (.I0(\counter1_r_reg_n_0_[6] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .CE(inc_count_c),
        .D(p_0_in[7]),
        .Q(std_bool),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[6]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[5]),
        .Q(std_bool6_in),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[4]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[3]),
        .Q(std_bool0_in),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[5] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[6] ),
        .R(counter1_r0));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[7] ),
        .S(counter1_r0));
  FDRE \counter2_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(ack_r),
        .Q(\counter2_r_reg[0]_0 ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter2_r_reg " *) 
  (* srl_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 " *) 
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
  (* srl_bus_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter3_r_reg " *) 
  (* srl_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 " *) 
  SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\counter3_r_reg[3]_0 ),
        .CLK(user_clk),
        .D(ack_r),
        .Q(\counter3_r_reg[2]_srl3_n_0 ));
  FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(\counter3_r_reg[3]_0 ),
        .D(\counter3_r_reg[2]_srl3_n_0 ),
        .Q(\counter3_r_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter4_r_reg " *) 
  (* srl_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 " *) 
  SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(D_0),
        .Q(\counter4_r_reg[14]_srl15_n_0 ));
  FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\counter4_r_reg[14]_srl15_n_0 ),
        .Q(\counter4_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter5_r_reg " *) 
  (* srl_name = "U0/\\aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 " *) 
  SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\counter5_r_reg[14]_srl15_i_1_n_0 ),
        .CLK(user_clk),
        .D(ack_r),
        .Q(\counter5_r_reg[14]_srl15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(ack_r),
        .O(\counter5_r_reg[14]_srl15_i_1_n_0 ));
  FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(\counter5_r_reg[14]_srl15_i_1_n_0 ),
        .D(\counter5_r_reg[14]_srl15_n_0 ),
        .Q(\counter5_r_reg_n_0_[15] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    do_watchdog_count_r_i_1
       (.I0(std_bool),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
  FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    gen_k_fsm_r_i_1
       (.I0(ack_r),
        .I1(D_0),
        .I2(odd_word_r),
        .O(gen_k_i));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_sp_data_r[0]_i_1 
       (.I0(D_0),
        .I1(ack_r),
        .I2(odd_word_r),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_sp_data_r[1]_i_1 
       (.I0(D_0),
        .I1(ack_r),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_spa_data_r[0]_i_1 
       (.I0(ack_r),
        .I1(odd_word_r),
        .O(ack_r_reg_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(LANE_UP),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    odd_word_r_i_1
       (.I0(odd_word_r),
        .O(next_ack_c12_in));
  FDRE #(
    .INIT(1'b1)) 
    odd_word_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c12_in),
        .Q(odd_word_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h40404040FF404040)) 
    polarity_r_i_1
       (.I0(RX_NEG_Buffer),
        .I1(odd_word_r),
        .I2(polarity_r),
        .I3(realign_r),
        .I4(std_bool6_in),
        .I5(rx_realign_i),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(begin_r0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    prev_char_was_comma_r_i_1
       (.I0(RX_CHAR_IS_COMMA_R[0]),
        .I1(RX_CHAR_IS_COMMA_R[1]),
        .O(inc_count_c1));
  FDRE prev_char_was_comma_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(inc_count_c1),
        .Q(prev_char_was_comma_r),
        .R(1'b0));
  FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    ready_r_i_1
       (.I0(\counter2_r_reg_n_0_[15] ),
        .I1(\counter3_r_reg_n_0_[3] ),
        .I2(ack_r),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(\counter4_r_reg_n_0_[15] ),
        .I5(D_0),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(D_0),
        .R(begin_r0));
  LUT5 #(
    .INIT(32'hFF020202)) 
    realign_r_i_1
       (.I0(realign_r),
        .I1(rx_realign_i),
        .I2(std_bool6_in),
        .I3(std_bool),
        .I4(align_r_reg_0),
        .O(next_realign_c));
  FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(begin_r0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3331)) 
    reset_count_r_i_1
       (.I0(comma_over_two_cycles_r),
        .I1(tx_reset_i),
        .I2(RXDISPERR[1]),
        .I3(RXNOTINTABLE[1]),
        .I4(reset_count_r_i_2_n_0),
        .I5(SR),
        .O(reset_count_r0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FFAAFC)) 
    reset_count_r_i_2
       (.I0(std_bool0_in),
        .I1(RXNOTINTABLE[0]),
        .I2(RXDISPERR[0]),
        .I3(tx_reset_i),
        .I4(begin_r),
        .O(reset_count_r_i_2_n_0));
  FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    rst_r_i_1
       (.I0(std_bool0_in),
        .I1(tx_reset_i),
        .I2(begin_r),
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
       (.I0(polarity_r),
        .I1(RX_NEG_Buffer),
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
  LUT1 #(
    .INIT(2'h1)) 
    \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .O(ENABLE_ERR_DETECT_Buffer_reg_0));
endmodule

module aurora_8b10b_0_RESET_LOGIC
   (link_reset_comb_r,
    SYSTEM_RESET_reg_0,
    wait_for_lane_up_r0,
    new_pkt_r,
    out,
    init_clk_in,
    user_clk,
    quad1_common_lock_in,
    gt_rxresetdone_r2_reg_0,
    gt_txresetdone_r2_reg_0,
    LINK_RESET_OUT,
    reset_channel_i,
    CHANNEL_UP,
    S_AXI_TX_TLAST,
    S_AXI_TX_TVALID,
    tx_dst_rdy,
    new_pkt_r_reg);
  output link_reset_comb_r;
  output SYSTEM_RESET_reg_0;
  output wait_for_lane_up_r0;
  output new_pkt_r;
  input out;
  input init_clk_in;
  input user_clk;
  input quad1_common_lock_in;
  input gt_rxresetdone_r2_reg_0;
  input gt_txresetdone_r2_reg_0;
  input LINK_RESET_OUT;
  input reset_channel_i;
  input CHANNEL_UP;
  input S_AXI_TX_TLAST;
  input S_AXI_TX_TVALID;
  input tx_dst_rdy;
  input new_pkt_r_reg;

  wire CHANNEL_UP;
  wire LINK_RESET_OUT;
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
  wire quad1_common_lock_in;
  wire reset_channel_i;
  wire scndry_out;
  wire tx_dst_rdy;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;
  wire wait_for_lane_up_r0;

  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    SYSTEM_RESET0
       (.I0(out),
        .I1(gt_txresetdone_r3),
        .I2(gt_rxresetdone_r3),
        .I3(scndry_out),
        .I4(tx_lock_sync),
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
  aurora_8b10b_0_cdc_sync__parameterized2_24 link_reset_cdc_sync
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
    .INIT(64'h4444044400000400)) 
    new_pkt_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(CHANNEL_UP),
        .I2(S_AXI_TX_TLAST),
        .I3(S_AXI_TX_TVALID),
        .I4(tx_dst_rdy),
        .I5(new_pkt_r_reg),
        .O(new_pkt_r));
  aurora_8b10b_0_cdc_sync__parameterized2_25 tx_lock_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r),
        .user_clk(user_clk));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(quad1_common_lock_in),
        .Q(tx_lock_comb_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    verify_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(reset_channel_i),
        .O(wait_for_lane_up_r0));
endmodule

module aurora_8b10b_0_RX_LL
   (FRAME_ERR,
    in_frame_r,
    storage_v_r,
    M_AXI_RX_TVALID,
    M_AXI_RX_TDATA,
    M_AXI_RX_TKEEP,
    M_AXI_RX_TLAST,
    RX_EOF_N_Buffer_reg,
    user_clk,
    rx_pad_i,
    rx_scp_i,
    rx_ecp_i,
    RX_SRC_RDY_N_Buffer_reg_inv,
    in_frame_r_reg,
    rx_pe_data_v_i,
    D,
    start_rx_i);
  output FRAME_ERR;
  output in_frame_r;
  output storage_v_r;
  output M_AXI_RX_TVALID;
  output [0:15]M_AXI_RX_TDATA;
  output [0:0]M_AXI_RX_TKEEP;
  output M_AXI_RX_TLAST;
  input RX_EOF_N_Buffer_reg;
  input user_clk;
  input rx_pad_i;
  input rx_scp_i;
  input rx_ecp_i;
  input RX_SRC_RDY_N_Buffer_reg_inv;
  input in_frame_r_reg;
  input rx_pe_data_v_i;
  input [15:0]D;
  input start_rx_i;

  wire [15:0]D;
  wire FRAME_ERR;
  wire [0:15]M_AXI_RX_TDATA;
  wire [0:0]M_AXI_RX_TKEEP;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire RX_EOF_N_Buffer_reg;
  wire RX_SRC_RDY_N_Buffer_reg_inv;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire rx_ecp_i;
  wire rx_pad_i;
  wire rx_pe_data_v_i;
  wire rx_scp_i;
  wire start_rx_i;
  wire storage_v_r;
  wire user_clk;

  aurora_8b10b_0_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .FRAME_ERR(FRAME_ERR),
        .M_AXI_RX_TDATA(M_AXI_RX_TDATA),
        .M_AXI_RX_TKEEP(M_AXI_RX_TKEEP),
        .M_AXI_RX_TLAST(M_AXI_RX_TLAST),
        .M_AXI_RX_TVALID(M_AXI_RX_TVALID),
        .RX_EOF_N_Buffer_reg_0(RX_EOF_N_Buffer_reg),
        .RX_SRC_RDY_N_Buffer_reg_inv_0(RX_SRC_RDY_N_Buffer_reg_inv),
        .in_frame_r_reg_0(in_frame_r),
        .in_frame_r_reg_1(in_frame_r_reg),
        .rx_ecp_i(rx_ecp_i),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_scp_i(rx_scp_i),
        .start_rx_i(start_rx_i),
        .storage_v_r(storage_v_r),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0_RX_LL_PDU_DATAPATH
   (FRAME_ERR,
    in_frame_r_reg_0,
    storage_v_r,
    M_AXI_RX_TVALID,
    M_AXI_RX_TDATA,
    M_AXI_RX_TKEEP,
    M_AXI_RX_TLAST,
    RX_EOF_N_Buffer_reg_0,
    user_clk,
    rx_pad_i,
    rx_scp_i,
    rx_ecp_i,
    RX_SRC_RDY_N_Buffer_reg_inv_0,
    in_frame_r_reg_1,
    rx_pe_data_v_i,
    D,
    start_rx_i);
  output FRAME_ERR;
  output in_frame_r_reg_0;
  output storage_v_r;
  output M_AXI_RX_TVALID;
  output [0:15]M_AXI_RX_TDATA;
  output [0:0]M_AXI_RX_TKEEP;
  output M_AXI_RX_TLAST;
  input RX_EOF_N_Buffer_reg_0;
  input user_clk;
  input rx_pad_i;
  input rx_scp_i;
  input rx_ecp_i;
  input RX_SRC_RDY_N_Buffer_reg_inv_0;
  input in_frame_r_reg_1;
  input rx_pe_data_v_i;
  input [15:0]D;
  input start_rx_i;

  wire [15:0]D;
  wire FRAME_ERR;
  wire FRAME_ERR_Buffer0__0;
  wire [0:15]M_AXI_RX_TDATA;
  wire [0:0]M_AXI_RX_TKEEP;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire RX_EOF_N_Buffer_reg_0;
  wire RX_REM_Buffer_i_1_n_0;
  wire RX_SRC_RDY_N_Buffer_reg_inv_0;
  wire in_frame_r_reg_0;
  wire in_frame_r_reg_1;
  wire pad_in_storage_r;
  wire rx_ecp_i;
  wire rx_eof;
  wire rx_pad_i;
  wire rx_pe_data_v_i;
  wire rx_rem;
  wire rx_scp_i;
  wire start_rx_i;
  wire storage_ce_c;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire storage_v_r_i_1_n_0;
  wire user_clk;

  LUT4 #(
    .INIT(16'hACEC)) 
    FRAME_ERR_Buffer0
       (.I0(rx_scp_i),
        .I1(rx_ecp_i),
        .I2(in_frame_r_reg_0),
        .I3(storage_v_r),
        .O(FRAME_ERR_Buffer0__0));
  FDRE FRAME_ERR_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_Buffer0__0),
        .Q(FRAME_ERR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \M_AXI_RX_TKEEP[1]_INST_0 
       (.I0(rx_rem),
        .I1(rx_eof),
        .O(M_AXI_RX_TKEEP));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_RX_TLAST_INST_0
       (.I0(rx_eof),
        .O(M_AXI_RX_TLAST));
  FDRE \RX_D_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[0]),
        .Q(M_AXI_RX_TDATA[0]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[10]),
        .Q(M_AXI_RX_TDATA[10]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[11]),
        .Q(M_AXI_RX_TDATA[11]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[12]),
        .Q(M_AXI_RX_TDATA[12]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[13]),
        .Q(M_AXI_RX_TDATA[13]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[14]),
        .Q(M_AXI_RX_TDATA[14]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[15]),
        .Q(M_AXI_RX_TDATA[15]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[1]),
        .Q(M_AXI_RX_TDATA[1]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[2]),
        .Q(M_AXI_RX_TDATA[2]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[3]),
        .Q(M_AXI_RX_TDATA[3]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[4]),
        .Q(M_AXI_RX_TDATA[4]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[5]),
        .Q(M_AXI_RX_TDATA[5]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[6]),
        .Q(M_AXI_RX_TDATA[6]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[7]),
        .Q(M_AXI_RX_TDATA[7]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[8]),
        .Q(M_AXI_RX_TDATA[8]),
        .R(1'b0));
  FDRE \RX_D_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_r[9]),
        .Q(M_AXI_RX_TDATA[9]),
        .R(1'b0));
  FDRE RX_EOF_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_EOF_N_Buffer_reg_0),
        .Q(rx_eof),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    RX_REM_Buffer_i_1
       (.I0(pad_in_storage_r),
        .O(RX_REM_Buffer_i_1_n_0));
  FDRE RX_REM_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_REM_Buffer_i_1_n_0),
        .Q(rx_rem),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    RX_SRC_RDY_N_Buffer_reg_inv
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SRC_RDY_N_Buffer_reg_inv_0),
        .Q(M_AXI_RX_TVALID),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r_reg_1),
        .Q(in_frame_r_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    pad_in_storage_r_i_1
       (.I0(in_frame_r_reg_0),
        .I1(rx_pe_data_v_i),
        .O(storage_ce_c));
  FDRE pad_in_storage_r_reg
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(rx_pad_i),
        .Q(pad_in_storage_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[15]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[5]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[4]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[3]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[2]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[1]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[0]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[14]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[13]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[12]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[11]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[10]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[9]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[8]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[7]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[6]),
        .Q(storage_r[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88F80000)) 
    storage_v_r_i_1
       (.I0(in_frame_r_reg_0),
        .I1(rx_pe_data_v_i),
        .I2(storage_v_r),
        .I3(rx_ecp_i),
        .I4(start_rx_i),
        .O(storage_v_r_i_1_n_0));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_v_r_i_1_n_0),
        .Q(storage_v_r),
        .R(1'b0));
endmodule

module aurora_8b10b_0_STANDARD_CC_MODULE
   (Q,
    \cc_count_r_reg[5]_0 ,
    user_clk);
  output Q;
  input \cc_count_r_reg[5]_0 ;
  input user_clk;

  wire DO_CC0_n_0;
  wire DO_CC_i_1_n_0;
  wire Q;
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
  wire \count_24d_srl_r_reg_n_0_[11] ;
  wire \count_24d_srl_r_reg_n_0_[12] ;
  wire \count_24d_srl_r_reg_n_0_[13] ;
  wire \count_24d_srl_r_reg_n_0_[14] ;
  wire \count_24d_srl_r_reg_n_0_[15] ;
  wire \count_24d_srl_r_reg_n_0_[16] ;
  wire \count_24d_srl_r_reg_n_0_[17] ;
  wire \count_24d_srl_r_reg_n_0_[18] ;
  wire \count_24d_srl_r_reg_n_0_[19] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[20] ;
  wire \count_24d_srl_r_reg_n_0_[21] ;
  wire \count_24d_srl_r_reg_n_0_[22] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire [4:0]p_2_in;
  wire [5:5]p_3_out;
  wire \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ;
  wire \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;
  wire user_clk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    DO_CC0
       (.I0(p_2_in[1]),
        .I1(\cc_count_r_reg_n_0_[5] ),
        .I2(p_2_in[0]),
        .I3(p_2_in[3]),
        .I4(p_2_in[2]),
        .I5(p_2_in[4]),
        .O(DO_CC0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    DO_CC_i_1
       (.I0(DO_CC0_n_0),
        .I1(p_3_out),
        .I2(reset_r),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(Q),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[4]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(p_2_in[3]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(p_2_in[2]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[22] ),
        .I1(count_16d_srl_r0),
        .I2(\count_16d_srl_r_reg_n_0_[14] ),
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
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
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
  FDRE \count_24d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[10] ),
        .Q(\count_24d_srl_r_reg_n_0_[11] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[11] ),
        .Q(\count_24d_srl_r_reg_n_0_[12] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[12] ),
        .Q(\count_24d_srl_r_reg_n_0_[13] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[13] ),
        .Q(\count_24d_srl_r_reg_n_0_[14] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[15] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[14] ),
        .Q(\count_24d_srl_r_reg_n_0_[15] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[16] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[15] ),
        .Q(\count_24d_srl_r_reg_n_0_[16] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[17] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[16] ),
        .Q(\count_24d_srl_r_reg_n_0_[17] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[18] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[17] ),
        .Q(\count_24d_srl_r_reg_n_0_[18] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[19] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[18] ),
        .Q(\count_24d_srl_r_reg_n_0_[19] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[20] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[19] ),
        .Q(\count_24d_srl_r_reg_n_0_[20] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[21] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[20] ),
        .Q(\count_24d_srl_r_reg_n_0_[21] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[22] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[21] ),
        .Q(\count_24d_srl_r_reg_n_0_[22] ),
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
  (* srl_name = "U0/\\standard_cc_module_i/prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_i_1 
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(\count_24d_srl_r_reg_n_0_[22] ),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6 
       (.C(user_clk),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl8___standard_cc_module_i_count_13d_srl_r_reg_r_5_n_0 ),
        .Q(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ),
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
       (.I0(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_6_n_0 ),
        .I1(count_13d_srl_r_reg_r_6_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(\cc_count_r_reg[5]_0 ),
        .Q(reset_r),
        .R(1'b0));
endmodule

module aurora_8b10b_0_SYM_DEC
   (RX_NEG_Buffer,
    rx_pad_i,
    rx_scp_i,
    RX_ECP_Buffer_reg_0,
    got_v_i,
    D,
    left_aligned_r_reg_0,
    rx_pe_data_v_i,
    counter4_r0,
    RX_ECP_Buffer_reg_1,
    RX_PE_DATA_V_Buffer_reg_0,
    in_frame_r_reg,
    RX_SPA_Buffer_reg_0,
    \RX_PE_DATA_Buffer_reg[0]_0 ,
    user_clk,
    \word_aligned_control_bits_r_reg[1]_0 ,
    \word_aligned_control_bits_r_reg[0]_0 ,
    SR,
    D_0,
    left_aligned_r_reg_1,
    ena_comma_align_i,
    left_aligned_r_reg_2,
    in_frame_r,
    storage_v_r,
    start_rx_i,
    ack_r,
    \word_aligned_data_r_reg[8]_0 ,
    \word_aligned_data_r_reg[0]_0 );
  output RX_NEG_Buffer;
  output rx_pad_i;
  output rx_scp_i;
  output RX_ECP_Buffer_reg_0;
  output got_v_i;
  output [0:0]D;
  output left_aligned_r_reg_0;
  output rx_pe_data_v_i;
  output counter4_r0;
  output RX_ECP_Buffer_reg_1;
  output RX_PE_DATA_V_Buffer_reg_0;
  output in_frame_r_reg;
  output RX_SPA_Buffer_reg_0;
  output [15:0]\RX_PE_DATA_Buffer_reg[0]_0 ;
  input user_clk;
  input \word_aligned_control_bits_r_reg[1]_0 ;
  input \word_aligned_control_bits_r_reg[0]_0 ;
  input [0:0]SR;
  input D_0;
  input [0:0]left_aligned_r_reg_1;
  input ena_comma_align_i;
  input left_aligned_r_reg_2;
  input in_frame_r;
  input storage_v_r;
  input start_rx_i;
  input ack_r;
  input [7:0]\word_aligned_data_r_reg[8]_0 ;
  input [7:0]\word_aligned_data_r_reg[0]_0 ;

  wire [0:0]D;
  wire D_0;
  wire \EXP_IN_inferred__0/i__n_0 ;
  wire \EXP_IN_inferred__1/i__n_0 ;
  wire \EXP_IN_inferred__14/i__n_0 ;
  wire \EXP_IN_inferred__15/i__n_0 ;
  wire \EXP_IN_inferred__16/i__n_0 ;
  wire \EXP_IN_inferred__17/i__n_0 ;
  wire \EXP_IN_inferred__18/i__n_0 ;
  wire \EXP_IN_inferred__19/i__n_0 ;
  wire \EXP_IN_inferred__2/i__n_0 ;
  wire \EXP_IN_inferred__20/i__n_0 ;
  wire \EXP_IN_inferred__21/i__n_0 ;
  wire \EXP_IN_inferred__23/i__n_0 ;
  wire \EXP_IN_inferred__27/i__n_0 ;
  wire \EXP_IN_inferred__28/i__n_0 ;
  wire \EXP_IN_inferred__4/i__n_0 ;
  wire \EXP_IN_inferred__6/i__n_0 ;
  wire \EXP_IN_inferred__7/i__n_0 ;
  wire EXP_IN_n_0;
  wire RX_CC_Buffer_i_1_n_0;
  wire RX_ECP_Buffer0;
  wire RX_ECP_Buffer_reg_0;
  wire RX_ECP_Buffer_reg_1;
  wire RX_NEG_Buffer;
  wire RX_NEG_Buffer0;
  wire [15:0]\RX_PE_DATA_Buffer_reg[0]_0 ;
  wire RX_PE_DATA_V_Buffer_i_1_n_0;
  wire RX_PE_DATA_V_Buffer_reg_0;
  wire RX_SCP_Buffer0;
  wire RX_SPA_Buffer0;
  wire RX_SPA_Buffer_reg_0;
  wire [0:0]SR;
  wire ack_r;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire first_v_received_r;
  wire first_v_received_r_i_1_n_0;
  wire got_v_c;
  wire got_v_i;
  wire in_frame_r;
  wire in_frame_r_reg;
  wire left_aligned_r_i_1_n_0;
  wire left_aligned_r_reg_0;
  wire [0:0]left_aligned_r_reg_1;
  wire left_aligned_r_reg_2;
  wire [3:0]p_0_in;
  wire p_0_in17_in;
  wire p_0_in9_in;
  wire p_14_in;
  wire p_16_in;
  wire p_1_in;
  wire p_3_in;
  wire [3:2]p_4_out;
  wire prev_beat_sp_r;
  wire prev_beat_spa_r;
  wire [0:0]prev_beat_v_d_r;
  wire prev_beat_v_r;
  wire [1:3]rx_cc_r;
  wire \rx_ecp_d_r_reg_n_0_[2] ;
  wire \rx_ecp_d_r_reg_n_0_[3] ;
  wire [0:1]rx_pad_d_r;
  wire rx_pad_i;
  wire \rx_pe_control_r_reg_n_0_[1] ;
  wire [0:15]rx_pe_data_r;
  wire rx_pe_data_v_i;
  wire \rx_scp_d_r_reg_n_0_[3] ;
  wire rx_scp_i;
  wire rx_sp_c;
  wire [0:3]rx_sp_d_r;
  wire rx_sp_i;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:2]rx_spa_d_r;
  wire rx_spa_i;
  wire [0:1]rx_spa_neg_d_r;
  wire \rx_spa_neg_d_r[0]_i_1_n_0 ;
  wire [0:3]rx_v_d_r;
  wire start_rx_i;
  wire std_bool10_in;
  wire std_bool11_out;
  wire std_bool12_out;
  wire std_bool13_out;
  wire std_bool24_out;
  wire std_bool3_out;
  wire std_bool4_in;
  wire std_bool7_in;
  wire std_bool9_out;
  wire storage_v_r;
  wire user_clk;
  wire [0:1]word_aligned_control_bits_r;
  wire \word_aligned_control_bits_r_reg[0]_0 ;
  wire \word_aligned_control_bits_r_reg[1]_0 ;
  wire [7:0]\word_aligned_data_r_reg[0]_0 ;
  wire [7:0]\word_aligned_data_r_reg[8]_0 ;
  wire \word_aligned_data_r_reg_n_0_[0] ;
  wire \word_aligned_data_r_reg_n_0_[12] ;
  wire \word_aligned_data_r_reg_n_0_[13] ;
  wire \word_aligned_data_r_reg_n_0_[14] ;
  wire \word_aligned_data_r_reg_n_0_[15] ;
  wire \word_aligned_data_r_reg_n_0_[1] ;
  wire \word_aligned_data_r_reg_n_0_[2] ;
  wire \word_aligned_data_r_reg_n_0_[3] ;
  wire \word_aligned_data_r_reg_n_0_[4] ;
  wire \word_aligned_data_r_reg_n_0_[5] ;
  wire \word_aligned_data_r_reg_n_0_[6] ;
  wire \word_aligned_data_r_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    EXP_IN
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(EXP_IN_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__0/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(\EXP_IN_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[5] ),
        .I1(\word_aligned_data_r_reg_n_0_[6] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\EXP_IN_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \EXP_IN_inferred__10/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(std_bool9_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__11/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(std_bool10_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \EXP_IN_inferred__12/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(std_bool12_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__14/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__14/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__15/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\EXP_IN_inferred__15/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__16/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[0] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__16/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__17/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[14] ),
        .O(\EXP_IN_inferred__17/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__18/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\EXP_IN_inferred__18/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \EXP_IN_inferred__19/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[2] ),
        .I1(\word_aligned_data_r_reg_n_0_[3] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[0] ),
        .O(\EXP_IN_inferred__19/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[3] ),
        .I1(\word_aligned_data_r_reg_n_0_[1] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[2] ),
        .O(\EXP_IN_inferred__2/i__n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__20/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\EXP_IN_inferred__20/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \EXP_IN_inferred__21/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(\EXP_IN_inferred__21/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__23/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__23/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__27/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\EXP_IN_inferred__27/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__28/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[4] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\EXP_IN_inferred__28/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \EXP_IN_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(std_bool4_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[5] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(\EXP_IN_inferred__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__6/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[14] ),
        .I1(\word_aligned_data_r_reg_n_0_[15] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(\EXP_IN_inferred__6/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__7/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(\EXP_IN_inferred__7/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \EXP_IN_inferred__9/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(std_bool7_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    GOT_V_Buffer_i_1
       (.I0(prev_beat_v_r),
        .I1(rx_v_d_r[0]),
        .I2(rx_v_d_r[1]),
        .I3(rx_v_d_r[3]),
        .I4(rx_v_d_r[2]),
        .I5(p_0_in9_in),
        .O(got_v_c));
  FDRE GOT_V_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_c),
        .Q(got_v_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_CC_Buffer_i_1
       (.I0(p_3_in),
        .I1(\rx_pe_control_r_reg_n_0_[1] ),
        .I2(\rx_ecp_d_r_reg_n_0_[2] ),
        .I3(rx_cc_r[3]),
        .I4(rx_cc_r[1]),
        .I5(p_14_in),
        .O(RX_CC_Buffer_i_1_n_0));
  FDRE RX_CC_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC_Buffer_i_1_n_0),
        .Q(D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_ECP_Buffer_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .I2(p_1_in),
        .I3(p_14_in),
        .I4(\rx_ecp_d_r_reg_n_0_[3] ),
        .I5(\rx_ecp_d_r_reg_n_0_[2] ),
        .O(RX_ECP_Buffer0));
  FDRE RX_ECP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_ECP_Buffer0),
        .Q(RX_ECP_Buffer_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    RX_EOF_N_Buffer_i_1
       (.I0(RX_ECP_Buffer_reg_0),
        .O(RX_ECP_Buffer_reg_1));
  LUT5 #(
    .INIT(32'h0000F888)) 
    RX_NEG_Buffer_i_1
       (.I0(rx_spa_neg_d_r[1]),
        .I1(rx_spa_neg_d_r[0]),
        .I2(rx_sp_neg_d_r[1]),
        .I3(rx_sp_neg_d_r[0]),
        .I4(\rx_pe_control_r_reg_n_0_[1] ),
        .O(RX_NEG_Buffer0));
  FDRE RX_NEG_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG_Buffer0),
        .Q(RX_NEG_Buffer),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    RX_PAD_Buffer_i_1
       (.I0(rx_pad_d_r[0]),
        .I1(rx_pad_d_r[1]),
        .I2(p_3_in),
        .I3(\rx_pe_control_r_reg_n_0_[1] ),
        .O(std_bool24_out));
  FDRE RX_PAD_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool24_out),
        .Q(rx_pad_i),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[0]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[11]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[12]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[13]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[14]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[15]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[1]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[2]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[3]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[4]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[5]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[6]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[7]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \RX_PE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(\RX_PE_DATA_Buffer_reg[0]_0 [6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    RX_PE_DATA_V_Buffer_i_1
       (.I0(got_v_c),
        .I1(rx_sp_c),
        .I2(p_3_in),
        .O(RX_PE_DATA_V_Buffer_i_1_n_0));
  FDRE RX_PE_DATA_V_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_PE_DATA_V_Buffer_i_1_n_0),
        .Q(rx_pe_data_v_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SCP_Buffer_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .I2(p_0_in17_in),
        .I3(p_16_in),
        .I4(\rx_scp_d_r_reg_n_0_[3] ),
        .I5(\rx_ecp_d_r_reg_n_0_[2] ),
        .O(RX_SCP_Buffer0));
  FDRE RX_SCP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SCP_Buffer0),
        .Q(rx_scp_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SPA_Buffer_i_1
       (.I0(prev_beat_spa_r),
        .I1(rx_spa_d_r[0]),
        .I2(p_0_in17_in),
        .I3(rx_pad_d_r[1]),
        .I4(rx_spa_d_r[2]),
        .I5(p_0_in9_in),
        .O(RX_SPA_Buffer0));
  FDRE RX_SPA_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SPA_Buffer0),
        .Q(rx_spa_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RX_SP_Buffer_i_1
       (.I0(prev_beat_sp_r),
        .I1(rx_sp_d_r[0]),
        .I2(rx_sp_d_r[1]),
        .I3(rx_sp_d_r[3]),
        .I4(rx_sp_d_r[2]),
        .I5(p_0_in9_in),
        .O(rx_sp_c));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    RX_SP_Buffer_i_2
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .O(p_0_in9_in));
  FDRE RX_SP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_c),
        .Q(rx_sp_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    RX_SRC_RDY_N_Buffer_inv_i_1
       (.I0(rx_pe_data_v_i),
        .I1(in_frame_r),
        .I2(RX_ECP_Buffer_reg_0),
        .I3(storage_v_r),
        .I4(start_rx_i),
        .O(RX_PE_DATA_V_Buffer_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(ack_r),
        .O(RX_SPA_Buffer_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(D_0),
        .O(counter4_r0));
  LUT2 #(
    .INIT(4'hE)) 
    first_v_received_r_i_1
       (.I0(got_v_c),
        .I1(first_v_received_r),
        .O(first_v_received_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(first_v_received_r_i_1_n_0),
        .Q(first_v_received_r),
        .R(SR));
  LUT4 #(
    .INIT(16'hF200)) 
    in_frame_r_i_1__0
       (.I0(in_frame_r),
        .I1(RX_ECP_Buffer_reg_0),
        .I2(rx_scp_i),
        .I3(start_rx_i),
        .O(in_frame_r_reg));
  LUT6 #(
    .INIT(64'hEEEFFFFF22200000)) 
    left_aligned_r_i_1
       (.I0(left_aligned_r_reg_1),
        .I1(first_v_received_r),
        .I2(ena_comma_align_i),
        .I3(D_0),
        .I4(left_aligned_r_reg_2),
        .I5(left_aligned_r_reg_0),
        .O(left_aligned_r_i_1_n_0));
  FDRE left_aligned_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(left_aligned_r_i_1_n_0),
        .Q(left_aligned_r_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_sp_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .I2(rx_sp_d_r[2]),
        .I3(rx_sp_d_r[3]),
        .I4(p_0_in17_in),
        .I5(prev_beat_v_d_r),
        .O(std_bool13_out));
  FDRE prev_beat_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool13_out),
        .Q(prev_beat_sp_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_spa_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .I2(rx_spa_d_r[2]),
        .I3(rx_pad_d_r[1]),
        .I4(p_0_in17_in),
        .I5(prev_beat_v_d_r),
        .O(std_bool11_out));
  FDRE prev_beat_spa_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool11_out),
        .Q(prev_beat_spa_r),
        .R(1'b0));
  FDRE \prev_beat_v_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool4_in),
        .Q(prev_beat_v_d_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    prev_beat_v_r_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[1] ),
        .I1(p_3_in),
        .I2(rx_v_d_r[2]),
        .I3(rx_v_d_r[3]),
        .I4(p_0_in17_in),
        .I5(prev_beat_v_d_r),
        .O(std_bool3_out));
  FDRE prev_beat_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool3_out),
        .Q(prev_beat_v_r),
        .R(1'b0));
  FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__28/i__n_0 ),
        .Q(rx_cc_r[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__27/i__n_0 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__19/i__n_0 ),
        .Q(p_14_in),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__18/i__n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__15/i__n_0 ),
        .Q(\rx_ecp_d_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__17/i__n_0 ),
        .Q(\rx_ecp_d_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__7/i__n_0 ),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
  FDRE \rx_pad_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__6/i__n_0 ),
        .Q(rx_pad_d_r[1]),
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
        .Q(\rx_pe_control_r_reg_n_0_[1] ),
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
  FDRE \rx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[1] ),
        .Q(rx_pe_data_r[1]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[2] ),
        .Q(rx_pe_data_r[2]),
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
        .D(\EXP_IN_inferred__16/i__n_0 ),
        .Q(p_16_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__4/i__n_0 ),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__14/i__n_0 ),
        .Q(\rx_scp_d_r_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \rx_sp_d_r[0]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[3] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[0] ),
        .I3(\word_aligned_data_r_reg_n_0_[1] ),
        .O(p_4_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_d_r[1]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[5] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(p_4_out[2]));
  FDRE \rx_sp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out[3]),
        .Q(rx_sp_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out[2]),
        .Q(rx_sp_d_r[1]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool12_out),
        .Q(rx_sp_d_r[2]),
        .R(1'b0));
  FDRE \rx_sp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool9_out),
        .Q(rx_sp_d_r[3]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool10_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(std_bool7_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
  FDRE \rx_spa_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__21/i__n_0 ),
        .Q(rx_spa_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__20/i__n_0 ),
        .Q(rx_spa_d_r[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_spa_neg_d_r[0]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(\rx_spa_neg_d_r[0]_i_1_n_0 ));
  FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_spa_neg_d_r[0]_i_1_n_0 ),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__23/i__n_0 ),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__2/i__n_0 ),
        .Q(rx_v_d_r[0]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__1/i__n_0 ),
        .Q(rx_v_d_r[1]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\EXP_IN_inferred__0/i__n_0 ),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(EXP_IN_n_0),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[0]_0 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[1]_0 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [7]),
        .Q(\word_aligned_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [5]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [4]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [6]),
        .Q(\word_aligned_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [4]),
        .Q(\word_aligned_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[0]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [7]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[8]_0 [6]),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

module aurora_8b10b_0_SYM_GEN
   (TXCHARISK,
    TXDATA,
    gen_pad_i,
    user_clk,
    \gen_spa_data_r_reg[0]_0 ,
    tx_pe_data_v_i,
    gen_k_i,
    gen_cc_i,
    gen_ecp_i,
    gen_scp_i,
    gen_a_i,
    D,
    \gen_v_r_reg[0]_0 ,
    \gen_r_r_reg[0]_0 ,
    \gen_k_r_reg[0]_0 ,
    Q,
    \TX_CHAR_IS_K_Buffer_reg[0]_0 );
  output [1:0]TXCHARISK;
  output [15:0]TXDATA;
  input gen_pad_i;
  input user_clk;
  input \gen_spa_data_r_reg[0]_0 ;
  input tx_pe_data_v_i;
  input gen_k_i;
  input gen_cc_i;
  input gen_ecp_i;
  input gen_scp_i;
  input gen_a_i;
  input [1:0]D;
  input [1:0]\gen_v_r_reg[0]_0 ;
  input [1:0]\gen_r_r_reg[0]_0 ;
  input [1:0]\gen_k_r_reg[0]_0 ;
  input [15:0]Q;
  input \TX_CHAR_IS_K_Buffer_reg[0]_0 ;

  wire [1:0]D;
  wire [15:0]Q;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TX_CHAR_IS_K_Buffer_reg0;
  wire TX_CHAR_IS_K_Buffer_reg04_out;
  wire \TX_CHAR_IS_K_Buffer_reg[0]_0 ;
  wire \TX_DATA_Buffer[0]_i_1_n_0 ;
  wire \TX_DATA_Buffer[10]_i_1_n_0 ;
  wire \TX_DATA_Buffer[10]_i_2_n_0 ;
  wire \TX_DATA_Buffer[11]_i_1_n_0 ;
  wire \TX_DATA_Buffer[12]_i_1_n_0 ;
  wire \TX_DATA_Buffer[12]_i_2_n_0 ;
  wire \TX_DATA_Buffer[13]_i_1_n_0 ;
  wire \TX_DATA_Buffer[13]_i_2_n_0 ;
  wire \TX_DATA_Buffer[13]_i_3_n_0 ;
  wire \TX_DATA_Buffer[14]_i_1_n_0 ;
  wire \TX_DATA_Buffer[14]_i_2_n_0 ;
  wire \TX_DATA_Buffer[14]_i_3_n_0 ;
  wire \TX_DATA_Buffer[15]_i_1_n_0 ;
  wire \TX_DATA_Buffer[15]_i_2_n_0 ;
  wire \TX_DATA_Buffer[15]_i_3_n_0 ;
  wire \TX_DATA_Buffer[15]_i_4_n_0 ;
  wire \TX_DATA_Buffer[15]_i_5_n_0 ;
  wire \TX_DATA_Buffer[15]_i_6_n_0 ;
  wire \TX_DATA_Buffer[15]_i_7_n_0 ;
  wire \TX_DATA_Buffer[1]_i_1_n_0 ;
  wire \TX_DATA_Buffer[2]_i_1_n_0 ;
  wire \TX_DATA_Buffer[2]_i_2_n_0 ;
  wire \TX_DATA_Buffer[3]_i_1_n_0 ;
  wire \TX_DATA_Buffer[4]_i_1_n_0 ;
  wire \TX_DATA_Buffer[4]_i_2_n_0 ;
  wire \TX_DATA_Buffer[5]_i_1_n_0 ;
  wire \TX_DATA_Buffer[5]_i_2_n_0 ;
  wire \TX_DATA_Buffer[6]_i_1_n_0 ;
  wire \TX_DATA_Buffer[6]_i_2_n_0 ;
  wire \TX_DATA_Buffer[6]_i_3_n_0 ;
  wire \TX_DATA_Buffer[7]_i_2_n_0 ;
  wire \TX_DATA_Buffer[7]_i_3_n_0 ;
  wire \TX_DATA_Buffer[7]_i_4_n_0 ;
  wire \TX_DATA_Buffer[8]_i_1_n_0 ;
  wire \TX_DATA_Buffer[9]_i_1_n_0 ;
  wire \TX_DATA_Buffer[9]_i_2_n_0 ;
  wire TX_DATA_Buffer_reg0;
  wire [7:0]data0;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_ecp_i;
  wire gen_ecp_r;
  wire gen_k_fsm_r;
  wire gen_k_i;
  wire [1:0]\gen_k_r_reg[0]_0 ;
  wire \gen_k_r_reg_n_0_[1] ;
  wire gen_pad_i;
  wire gen_pad_r;
  wire [1:0]\gen_r_r_reg[0]_0 ;
  wire \gen_r_r_reg_n_0_[1] ;
  wire gen_scp_i;
  wire gen_scp_r;
  wire \gen_sp_data_r_reg_n_0_[1] ;
  wire \gen_spa_data_r_reg[0]_0 ;
  wire [1:0]\gen_v_r_reg[0]_0 ;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire \tx_pe_data_r_reg_n_0_[10] ;
  wire \tx_pe_data_r_reg_n_0_[11] ;
  wire \tx_pe_data_r_reg_n_0_[12] ;
  wire \tx_pe_data_r_reg_n_0_[13] ;
  wire \tx_pe_data_r_reg_n_0_[14] ;
  wire \tx_pe_data_r_reg_n_0_[15] ;
  wire \tx_pe_data_r_reg_n_0_[8] ;
  wire \tx_pe_data_r_reg_n_0_[9] ;
  wire tx_pe_data_v_i;
  wire tx_pe_data_v_r;
  wire user_clk;

  LUT6 #(
    .INIT(64'hCCCCCCCCCCCFCCCD)) 
    \TX_CHAR_IS_K_Buffer[0]_i_1 
       (.I0(tx_pe_data_v_r),
        .I1(gen_cc_r),
        .I2(p_3_in),
        .I3(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I4(gen_pad_r),
        .I5(\gen_sp_data_r_reg_n_0_[1] ),
        .O(TX_CHAR_IS_K_Buffer_reg0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \TX_CHAR_IS_K_Buffer[1]_i_1 
       (.I0(gen_cc_r),
        .I1(p_0_in1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_2_in),
        .I4(p_1_in),
        .O(TX_CHAR_IS_K_Buffer_reg04_out));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg0),
        .Q(TXCHARISK[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_Buffer_reg04_out),
        .Q(TXCHARISK[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAEAAAEAAFFAAAA)) 
    \TX_DATA_Buffer[0]_i_1 
       (.I0(gen_scp_r),
        .I1(\tx_pe_data_r_reg_n_0_[15] ),
        .I2(gen_pad_r),
        .I3(gen_ecp_r),
        .I4(gen_cc_r),
        .I5(tx_pe_data_v_r),
        .O(\TX_DATA_Buffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8B88)) 
    \TX_DATA_Buffer[10]_i_1 
       (.I0(data0[2]),
        .I1(tx_pe_data_v_r),
        .I2(p_0_in1_in),
        .I3(p_1_in),
        .I4(\TX_DATA_Buffer[10]_i_2_n_0 ),
        .I5(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \TX_DATA_Buffer[10]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in),
        .I4(gen_a_r),
        .I5(p_0_in4_in),
        .O(\TX_DATA_Buffer[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEFEEEFFEEFF)) 
    \TX_DATA_Buffer[11]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .I2(data0[3]),
        .I3(gen_cc_r),
        .I4(gen_k_fsm_r),
        .I5(tx_pe_data_v_r),
        .O(\TX_DATA_Buffer[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \TX_DATA_Buffer[12]_i_1 
       (.I0(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .I1(data0[4]),
        .I2(tx_pe_data_v_r),
        .I3(\TX_DATA_Buffer[15]_i_4_n_0 ),
        .I4(\TX_DATA_Buffer[12]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA_Buffer[12]_i_2 
       (.I0(p_0_in4_in),
        .I1(gen_a_r),
        .I2(p_0_in),
        .O(\TX_DATA_Buffer[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \TX_DATA_Buffer[13]_i_1 
       (.I0(data0[5]),
        .I1(tx_pe_data_v_r),
        .I2(gen_scp_r),
        .I3(\TX_DATA_Buffer[13]_i_2_n_0 ),
        .O(\TX_DATA_Buffer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF00FFFFFF00)) 
    \TX_DATA_Buffer[13]_i_2 
       (.I0(\TX_DATA_Buffer[13]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(\TX_DATA_Buffer[15]_i_6_n_0 ),
        .I4(\TX_DATA_Buffer[15]_i_7_n_0 ),
        .I5(p_0_in),
        .O(\TX_DATA_Buffer[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA_Buffer[13]_i_3 
       (.I0(gen_a_r),
        .I1(p_0_in4_in),
        .O(\TX_DATA_Buffer[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAFAAAABAAAA)) 
    \TX_DATA_Buffer[14]_i_1 
       (.I0(\TX_DATA_Buffer[14]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(tx_pe_data_v_r),
        .I3(gen_k_fsm_r),
        .I4(\TX_DATA_Buffer[14]_i_3_n_0 ),
        .I5(data0[6]),
        .O(\TX_DATA_Buffer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
    \TX_DATA_Buffer[14]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .I4(gen_scp_r),
        .I5(gen_ecp_r),
        .O(\TX_DATA_Buffer[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \TX_DATA_Buffer[14]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in4_in),
        .I2(gen_a_r),
        .I3(p_2_in),
        .O(\TX_DATA_Buffer[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TX_DATA_Buffer[15]_i_1 
       (.I0(\TX_DATA_Buffer[15]_i_3_n_0 ),
        .I1(\TX_DATA_Buffer[15]_i_4_n_0 ),
        .I2(p_0_in),
        .I3(gen_a_r),
        .I4(p_0_in4_in),
        .O(\TX_DATA_Buffer[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF08)) 
    \TX_DATA_Buffer[15]_i_2 
       (.I0(data0[7]),
        .I1(tx_pe_data_v_r),
        .I2(gen_scp_r),
        .I3(\TX_DATA_Buffer[15]_i_5_n_0 ),
        .I4(\TX_DATA_Buffer[15]_i_6_n_0 ),
        .O(\TX_DATA_Buffer[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA_Buffer[15]_i_3 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\TX_DATA_Buffer[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA_Buffer[15]_i_4 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .O(\TX_DATA_Buffer[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4040404044444044)) 
    \TX_DATA_Buffer[15]_i_5 
       (.I0(p_1_in),
        .I1(\TX_DATA_Buffer[15]_i_7_n_0 ),
        .I2(p_2_in),
        .I3(p_0_in),
        .I4(p_0_in4_in),
        .I5(gen_a_r),
        .O(\TX_DATA_Buffer[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \TX_DATA_Buffer[15]_i_6 
       (.I0(gen_ecp_r),
        .I1(gen_k_fsm_r),
        .I2(gen_cc_r),
        .I3(gen_scp_r),
        .O(\TX_DATA_Buffer[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \TX_DATA_Buffer[15]_i_7 
       (.I0(tx_pe_data_v_r),
        .I1(p_0_in1_in),
        .I2(gen_scp_r),
        .O(\TX_DATA_Buffer[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2F2FFFFF2F20)) 
    \TX_DATA_Buffer[1]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[14] ),
        .I1(gen_pad_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_cc_r),
        .I4(\TX_DATA_Buffer[9]_i_2_n_0 ),
        .I5(\gen_sp_data_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAFAAAEA)) 
    \TX_DATA_Buffer[2]_i_1 
       (.I0(\TX_DATA_Buffer[2]_i_2_n_0 ),
        .I1(gen_pad_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_scp_r),
        .I4(\tx_pe_data_r_reg_n_0_[13] ),
        .O(\TX_DATA_Buffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCEECCFE)) 
    \TX_DATA_Buffer[2]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_ecp_r),
        .I2(\TX_DATA_Buffer[6]_i_3_n_0 ),
        .I3(tx_pe_data_v_r),
        .I4(\gen_sp_data_r_reg_n_0_[1] ),
        .I5(gen_scp_r),
        .O(\TX_DATA_Buffer[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF5FFFCFFF5)) 
    \TX_DATA_Buffer[3]_i_1 
       (.I0(gen_cc_r),
        .I1(\tx_pe_data_r_reg_n_0_[12] ),
        .I2(gen_ecp_r),
        .I3(gen_scp_r),
        .I4(tx_pe_data_v_r),
        .I5(gen_pad_r),
        .O(\TX_DATA_Buffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAFEAAFE)) 
    \TX_DATA_Buffer[4]_i_1 
       (.I0(\TX_DATA_Buffer[4]_i_2_n_0 ),
        .I1(\gen_r_r_reg_n_0_[1] ),
        .I2(\gen_k_r_reg_n_0_[1] ),
        .I3(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .I4(tx_pe_data_v_r),
        .I5(\tx_pe_data_r_reg_n_0_[11] ),
        .O(\TX_DATA_Buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFEFEFFFC)) 
    \TX_DATA_Buffer[4]_i_2 
       (.I0(gen_pad_r),
        .I1(gen_ecp_r),
        .I2(gen_scp_r),
        .I3(gen_cc_r),
        .I4(tx_pe_data_v_r),
        .O(\TX_DATA_Buffer[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFEFFBAFFBA)) 
    \TX_DATA_Buffer[5]_i_1 
       (.I0(\TX_DATA_Buffer[5]_i_2_n_0 ),
        .I1(tx_pe_data_v_r),
        .I2(gen_cc_r),
        .I3(\TX_DATA_Buffer[9]_i_2_n_0 ),
        .I4(gen_pad_r),
        .I5(\tx_pe_data_r_reg_n_0_[10] ),
        .O(\TX_DATA_Buffer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F000E000F000F)) 
    \TX_DATA_Buffer[5]_i_2 
       (.I0(p_3_in),
        .I1(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I2(\gen_sp_data_r_reg_n_0_[1] ),
        .I3(tx_pe_data_v_r),
        .I4(\gen_k_r_reg_n_0_[1] ),
        .I5(\gen_r_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCEEEECFCCFFFF)) 
    \TX_DATA_Buffer[6]_i_1 
       (.I0(\gen_sp_data_r_reg_n_0_[1] ),
        .I1(\TX_DATA_Buffer[6]_i_2_n_0 ),
        .I2(gen_pad_r),
        .I3(\tx_pe_data_r_reg_n_0_[9] ),
        .I4(tx_pe_data_v_r),
        .I5(\TX_DATA_Buffer[6]_i_3_n_0 ),
        .O(\TX_DATA_Buffer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \TX_DATA_Buffer[6]_i_2 
       (.I0(tx_pe_data_v_r),
        .I1(gen_cc_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\TX_DATA_Buffer[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \TX_DATA_Buffer[6]_i_3 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(\gen_k_r_reg_n_0_[1] ),
        .I2(\gen_r_r_reg_n_0_[1] ),
        .I3(p_3_in),
        .O(\TX_DATA_Buffer[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA_Buffer[7]_i_1 
       (.I0(\TX_DATA_Buffer[7]_i_3_n_0 ),
        .I1(\gen_k_r_reg_n_0_[1] ),
        .I2(\gen_r_r_reg_n_0_[1] ),
        .I3(gen_ecp_r),
        .I4(gen_scp_r),
        .I5(gen_cc_r),
        .O(TX_DATA_Buffer_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFEEFFFC)) 
    \TX_DATA_Buffer[7]_i_2 
       (.I0(gen_pad_r),
        .I1(\TX_DATA_Buffer[9]_i_2_n_0 ),
        .I2(gen_cc_r),
        .I3(\TX_DATA_Buffer[7]_i_4_n_0 ),
        .I4(tx_pe_data_v_r),
        .I5(\tx_pe_data_r_reg_n_0_[8] ),
        .O(\TX_DATA_Buffer[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA_Buffer[7]_i_3 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(p_3_in),
        .I2(tx_pe_data_v_r),
        .I3(\gen_sp_data_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001010101)) 
    \TX_DATA_Buffer[7]_i_4 
       (.I0(\TX_CHAR_IS_K_Buffer_reg[0]_0 ),
        .I1(\gen_sp_data_r_reg_n_0_[1] ),
        .I2(tx_pe_data_v_r),
        .I3(p_3_in),
        .I4(\gen_k_r_reg_n_0_[1] ),
        .I5(\gen_r_r_reg_n_0_[1] ),
        .O(\TX_DATA_Buffer[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFEEEEEE)) 
    \TX_DATA_Buffer[8]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_cc_r),
        .I2(gen_k_fsm_r),
        .I3(tx_pe_data_v_r),
        .I4(data0[0]),
        .I5(gen_scp_r),
        .O(\TX_DATA_Buffer[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333333300002230)) 
    \TX_DATA_Buffer[9]_i_1 
       (.I0(data0[1]),
        .I1(\TX_DATA_Buffer[9]_i_2_n_0 ),
        .I2(p_0_in1_in),
        .I3(tx_pe_data_v_r),
        .I4(gen_k_fsm_r),
        .I5(gen_cc_r),
        .O(\TX_DATA_Buffer[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA_Buffer[9]_i_2 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .O(\TX_DATA_Buffer[9]_i_2_n_0 ));
  FDRE \TX_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[0]_i_1_n_0 ),
        .Q(TXDATA[8]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[10]_i_1_n_0 ),
        .Q(TXDATA[2]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[11]_i_1_n_0 ),
        .Q(TXDATA[3]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[12]_i_1_n_0 ),
        .Q(TXDATA[4]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[13]_i_1_n_0 ),
        .Q(TXDATA[5]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[14]_i_1_n_0 ),
        .Q(TXDATA[6]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[15]_i_2_n_0 ),
        .Q(TXDATA[7]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[1]_i_1_n_0 ),
        .Q(TXDATA[9]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[2]_i_1_n_0 ),
        .Q(TXDATA[10]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[3]_i_1_n_0 ),
        .Q(TXDATA[11]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[4]_i_1_n_0 ),
        .Q(TXDATA[12]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[5]_i_1_n_0 ),
        .Q(TXDATA[13]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[6]_i_1_n_0 ),
        .Q(TXDATA[14]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(TX_DATA_Buffer_reg0),
        .D(\TX_DATA_Buffer[7]_i_2_n_0 ),
        .Q(TXDATA[15]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[8]_i_1_n_0 ),
        .Q(TXDATA[0]),
        .R(1'b0));
  FDRE \TX_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(\TX_DATA_Buffer[15]_i_1_n_0 ),
        .D(\TX_DATA_Buffer[9]_i_1_n_0 ),
        .Q(TXDATA[1]),
        .R(1'b0));
  FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE gen_ecp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ecp_i),
        .Q(gen_ecp_r),
        .R(1'b0));
  FDRE gen_k_fsm_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_i),
        .Q(gen_k_fsm_r),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [0]),
        .Q(\gen_k_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE gen_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_pad_i),
        .Q(gen_pad_r),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [0]),
        .Q(\gen_r_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE gen_scp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_scp_i),
        .Q(gen_scp_r),
        .R(1'b0));
  FDRE \gen_sp_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \gen_sp_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\gen_sp_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_spa_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_spa_data_r_reg[0]_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[0]_0 [1]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[0]_0 [0]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\tx_pe_data_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\tx_pe_data_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\tx_pe_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\tx_pe_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\tx_pe_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\tx_pe_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\tx_pe_data_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\tx_pe_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE tx_pe_data_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_v_i),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

module aurora_8b10b_0_TX_LL
   (gen_cc_i,
    tx_pe_data_v_i,
    gen_pad_i,
    tx_dst_rdy,
    gen_scp_i,
    gen_ecp_i,
    S_AXI_TX_TREADY,
    \TX_PE_DATA_Buffer_reg[0] ,
    user_clk,
    Q,
    p_0_in,
    storage_pad_r_reg,
    S_AXI_TX_TVALID,
    S_AXI_TX_TLAST,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TDATA);
  output gen_cc_i;
  output tx_pe_data_v_i;
  output gen_pad_i;
  output tx_dst_rdy;
  output gen_scp_i;
  output gen_ecp_i;
  output S_AXI_TX_TREADY;
  output [15:0]\TX_PE_DATA_Buffer_reg[0] ;
  input user_clk;
  input Q;
  input p_0_in;
  input storage_pad_r_reg;
  input S_AXI_TX_TVALID;
  input S_AXI_TX_TLAST;
  input [0:1]S_AXI_TX_TKEEP;
  input [0:15]S_AXI_TX_TDATA;

  wire D;
  wire Q;
  wire [0:15]S_AXI_TX_TDATA;
  wire [0:1]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire [15:0]\TX_PE_DATA_Buffer_reg[0] ;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire gen_pad_i;
  wire gen_scp_i;
  wire p_0_in;
  wire pdu_ok_c;
  wire storage_pad_r_reg;
  wire tx_dst_rdy;
  wire tx_ll_control_i_n_7;
  wire tx_ll_control_i_n_8;
  wire tx_ll_datapath_i_n_2;
  wire tx_pe_data_v_i;
  wire user_clk;

  aurora_8b10b_0_TX_LL_CONTROL tx_ll_control_i
       (.D(D),
        .Q(Q),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .TX_DST_RDY_N_Buffer_reg_0(tx_dst_rdy),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_scp_i(gen_scp_i),
        .in_frame_r_reg(tx_ll_datapath_i_n_2),
        .new_pkt_r_reg(tx_ll_control_i_n_8),
        .p_0_in(p_0_in),
        .pdu_ok_c(pdu_ok_c),
        .s_axi_tx_tvalid(tx_ll_control_i_n_7),
        .sof_data_eof_1_r_reg_0(storage_pad_r_reg),
        .user_clk(user_clk));
  aurora_8b10b_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(D),
        .E(pdu_ok_c),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .\TX_PE_DATA_Buffer_reg[0]_0 (\TX_PE_DATA_Buffer_reg[0] ),
        .gen_pad_i(gen_pad_i),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_2),
        .in_frame_r_reg_1(tx_ll_control_i_n_8),
        .p_0_in(p_0_in),
        .storage_pad_r_reg_0(storage_pad_r_reg),
        .storage_pad_r_reg_1(tx_ll_control_i_n_7),
        .tx_dst_rdy(tx_dst_rdy),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0_TX_LL_CONTROL
   (gen_cc_i,
    D,
    pdu_ok_c,
    TX_DST_RDY_N_Buffer_reg_0,
    gen_scp_i,
    gen_ecp_i,
    S_AXI_TX_TREADY,
    s_axi_tx_tvalid,
    new_pkt_r_reg,
    user_clk,
    Q,
    p_0_in,
    S_AXI_TX_TLAST,
    S_AXI_TX_TVALID,
    sof_data_eof_1_r_reg_0,
    in_frame_r_reg);
  output gen_cc_i;
  output D;
  output pdu_ok_c;
  output TX_DST_RDY_N_Buffer_reg_0;
  output gen_scp_i;
  output gen_ecp_i;
  output S_AXI_TX_TREADY;
  output s_axi_tx_tvalid;
  output new_pkt_r_reg;
  input user_clk;
  input Q;
  input p_0_in;
  input S_AXI_TX_TLAST;
  input S_AXI_TX_TVALID;
  input sof_data_eof_1_r_reg_0;
  input in_frame_r_reg;

  wire D;
  wire GEN_ECP_Buffer0;
  wire GEN_SCP_Buffer0;
  wire Q;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire TX_DST_RDY_N_Buffer_i_2_n_0;
  wire TX_DST_RDY_N_Buffer_i_3_n_0;
  wire TX_DST_RDY_N_Buffer_reg_0;
  wire data_eof_1_r;
  wire data_eof_2_r;
  wire data_eof_3_r;
  wire data_r;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire gen_scp_i;
  wire idle_r;
  wire in_frame_r_reg;
  wire new_pkt_r_reg;
  wire next_data_c;
  wire next_data_eof_1_c;
  wire next_idle_c;
  wire next_sof_c;
  wire next_sof_data_eof_1_c;
  wire p_0_in;
  wire pdu_ok_c;
  wire s_axi_tx_tvalid;
  wire sof_data_eof_1_r;
  wire sof_data_eof_1_r_reg_0;
  wire sof_data_eof_2_r;
  wire sof_data_eof_3_r;
  wire sof_r;
  wire sof_r_i_2_n_0;
  wire tx_dst_rdy_n_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_ECP_Buffer_i_1
       (.I0(data_eof_3_r),
        .I1(sof_data_eof_3_r),
        .I2(D),
        .O(GEN_ECP_Buffer0));
  FDRE GEN_ECP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP_Buffer0),
        .Q(gen_ecp_i),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h32)) 
    GEN_SCP_Buffer_i_1
       (.I0(sof_data_eof_1_r),
        .I1(D),
        .I2(sof_r),
        .O(GEN_SCP_Buffer0));
  FDRE GEN_SCP_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP_Buffer0),
        .Q(gen_scp_i),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_TX_TREADY_INST_0
       (.I0(TX_DST_RDY_N_Buffer_reg_0),
        .O(S_AXI_TX_TREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    TX_DST_RDY_N_Buffer_i_1
       (.I0(Q),
        .I1(data_eof_1_r),
        .I2(D),
        .I3(sof_data_eof_2_r),
        .I4(sof_data_eof_1_r),
        .I5(TX_DST_RDY_N_Buffer_i_2_n_0),
        .O(tx_dst_rdy_n_c));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FF30)) 
    TX_DST_RDY_N_Buffer_i_2
       (.I0(data_eof_2_r),
        .I1(sof_data_eof_1_r_reg_0),
        .I2(sof_r_i_2_n_0),
        .I3(TX_DST_RDY_N_Buffer_i_3_n_0),
        .I4(s_axi_tx_tvalid),
        .I5(D),
        .O(TX_DST_RDY_N_Buffer_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TX_DST_RDY_N_Buffer_i_3
       (.I0(sof_r),
        .I1(data_r),
        .O(TX_DST_RDY_N_Buffer_i_3_n_0));
  FDSE TX_DST_RDY_N_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(TX_DST_RDY_N_Buffer_reg_0),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    data_eof_1_r_i_2
       (.I0(data_r),
        .I1(sof_r),
        .I2(S_AXI_TX_TLAST),
        .I3(TX_DST_RDY_N_Buffer_reg_0),
        .I4(S_AXI_TX_TVALID),
        .O(next_data_eof_1_c));
  FDRE data_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_eof_1_c),
        .Q(data_eof_1_r),
        .R(p_0_in));
  FDRE data_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(data_eof_1_r),
        .Q(data_eof_2_r),
        .R(p_0_in));
  FDRE data_eof_3_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(data_eof_2_r),
        .Q(data_eof_3_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hEE0EEEEE)) 
    data_r_i_1
       (.I0(data_r),
        .I1(sof_r),
        .I2(S_AXI_TX_TLAST),
        .I3(TX_DST_RDY_N_Buffer_reg_0),
        .I4(S_AXI_TX_TVALID),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_data_c),
        .Q(data_r),
        .R(p_0_in));
  FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(Q),
        .Q(D),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEF00)) 
    idle_r_i_1
       (.I0(sof_data_eof_1_r_reg_0),
        .I1(TX_DST_RDY_N_Buffer_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(idle_r),
        .I4(sof_data_eof_3_r),
        .I5(data_eof_3_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_idle_c),
        .Q(idle_r),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hF3FF0100)) 
    in_frame_r_i_1
       (.I0(sof_data_eof_1_r_reg_0),
        .I1(S_AXI_TX_TLAST),
        .I2(TX_DST_RDY_N_Buffer_reg_0),
        .I3(S_AXI_TX_TVALID),
        .I4(in_frame_r_reg),
        .O(new_pkt_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    sof_data_eof_1_r_i_1
       (.I0(sof_data_eof_1_r_reg_0),
        .I1(s_axi_tx_tvalid),
        .I2(idle_r),
        .I3(sof_data_eof_3_r),
        .I4(data_eof_3_r),
        .O(next_sof_data_eof_1_c));
  FDRE sof_data_eof_1_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_sof_data_eof_1_c),
        .Q(sof_data_eof_1_r),
        .R(p_0_in));
  FDRE sof_data_eof_2_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(sof_data_eof_1_r),
        .Q(sof_data_eof_2_r),
        .R(p_0_in));
  FDRE sof_data_eof_3_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(sof_data_eof_2_r),
        .Q(sof_data_eof_3_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    sof_r_i_1
       (.I0(S_AXI_TX_TLAST),
        .I1(S_AXI_TX_TVALID),
        .I2(TX_DST_RDY_N_Buffer_reg_0),
        .I3(sof_data_eof_1_r_reg_0),
        .I4(sof_r_i_2_n_0),
        .O(next_sof_c));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sof_r_i_2
       (.I0(data_eof_3_r),
        .I1(sof_data_eof_3_r),
        .I2(idle_r),
        .O(sof_r_i_2_n_0));
  FDRE sof_r_reg
       (.C(user_clk),
        .CE(pdu_ok_c),
        .D(next_sof_c),
        .Q(sof_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    storage_pad_r_i_2
       (.I0(S_AXI_TX_TVALID),
        .I1(TX_DST_RDY_N_Buffer_reg_0),
        .I2(S_AXI_TX_TLAST),
        .O(s_axi_tx_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    storage_v_r_i_1
       (.I0(D),
        .O(pdu_ok_c));
endmodule

module aurora_8b10b_0_TX_LL_DATAPATH
   (tx_pe_data_v_i,
    gen_pad_i,
    in_frame_r_reg_0,
    \TX_PE_DATA_Buffer_reg[0]_0 ,
    E,
    user_clk,
    p_0_in,
    in_frame_r_reg_1,
    storage_pad_r_reg_0,
    S_AXI_TX_TVALID,
    tx_dst_rdy,
    S_AXI_TX_TKEEP,
    storage_pad_r_reg_1,
    D,
    S_AXI_TX_TDATA);
  output tx_pe_data_v_i;
  output gen_pad_i;
  output in_frame_r_reg_0;
  output [15:0]\TX_PE_DATA_Buffer_reg[0]_0 ;
  input [0:0]E;
  input user_clk;
  input p_0_in;
  input in_frame_r_reg_1;
  input storage_pad_r_reg_0;
  input S_AXI_TX_TVALID;
  input tx_dst_rdy;
  input [0:1]S_AXI_TX_TKEEP;
  input storage_pad_r_reg_1;
  input D;
  input [0:15]S_AXI_TX_TDATA;

  wire D;
  wire [0:0]E;
  wire GEN_PAD_Buffer_i_1_n_0;
  wire [0:15]S_AXI_TX_TDATA;
  wire [0:1]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TVALID;
  wire [15:0]\TX_PE_DATA_Buffer_reg[0]_0 ;
  wire TX_PE_DATA_V_Buffer_i_1_n_0;
  wire gen_pad_i;
  wire gen_pad_r;
  wire in_frame_c;
  wire in_frame_r_reg_0;
  wire in_frame_r_reg_1;
  wire p_0_in;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire storage_pad_r_reg_0;
  wire storage_pad_r_reg_1;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire tx_dst_rdy;
  wire [0:15]tx_pe_data_r;
  wire tx_pe_data_v_i;
  wire tx_pe_data_v_r;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    GEN_PAD_Buffer_i_1
       (.I0(gen_pad_r),
        .I1(D),
        .O(GEN_PAD_Buffer_i_1_n_0));
  FDRE GEN_PAD_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_PAD_Buffer_i_1_n_0),
        .Q(gen_pad_i),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[0]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[10]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[11]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[12]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[13]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[14]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[15]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[1]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[2]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[3]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[4]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[5]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[6]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[7]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[8]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_Buffer_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[9]),
        .Q(\TX_PE_DATA_Buffer_reg[0]_0 [6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    TX_PE_DATA_V_Buffer_i_1
       (.I0(tx_pe_data_v_r),
        .I1(D),
        .O(TX_PE_DATA_V_Buffer_i_1_n_0));
  FDRE TX_PE_DATA_V_Buffer_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_PE_DATA_V_Buffer_i_1_n_0),
        .Q(tx_pe_data_v_i),
        .R(1'b0));
  FDRE gen_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(gen_pad_r),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r_reg_1),
        .Q(in_frame_r_reg_0),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h000000B0)) 
    storage_pad_r_i_1
       (.I0(in_frame_r_reg_0),
        .I1(storage_pad_r_reg_0),
        .I2(S_AXI_TX_TKEEP[0]),
        .I3(S_AXI_TX_TKEEP[1]),
        .I4(storage_pad_r_reg_1),
        .O(storage_pad_r0));
  FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[0]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[10]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[11]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[12]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[13]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[14]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[15]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[1]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[2]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[3]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[4]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[5]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[6]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[7]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[8]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(S_AXI_TX_TDATA[9]),
        .Q(storage_r[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00D0)) 
    storage_v_r_i_2
       (.I0(storage_pad_r_reg_0),
        .I1(in_frame_r_reg_0),
        .I2(S_AXI_TX_TVALID),
        .I3(tx_dst_rdy),
        .O(in_frame_c));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(in_frame_c),
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
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(tx_pe_data_r[2]),
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
  FDRE tx_pe_data_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

module aurora_8b10b_0_cdc_sync
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_0
   (out,
    RESET,
    init_clk_in);
  output out;
  input RESET;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_1
   (out,
    RESET,
    user_clk);
  output out;
  input RESET;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire user_clk;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = RESET;
  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_10
   (E,
    \FSM_sequential_rx_state_reg[1] ,
    quad1_common_lock_in,
    init_clk_in,
    reset_time_out_reg,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    SS,
    time_tlock_max,
    reset_time_out_reg_0,
    \FSM_sequential_rx_state_reg[0]_3 ,
    Q,
    rxresetdone_s3,
    reset_time_out_reg_1,
    reset_time_out_reg_2);
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[1] ;
  input quad1_common_lock_in;
  input init_clk_in;
  input reset_time_out_reg;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input [0:0]SS;
  input time_tlock_max;
  input reset_time_out_reg_0;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input [3:0]Q;
  input rxresetdone_s3;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire [3:0]Q;
  wire [0:0]SS;
  wire init_clk_in;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rxresetdone_s3;
  wire time_tlock_max;

  assign \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int  = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state_reg[0] ),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(\FSM_sequential_rx_state_reg[0]_1 ),
        .I4(\FSM_sequential_rx_state_reg[0]_2 ),
        .I5(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFF08FF08FF08)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(SS),
        .I1(time_tlock_max),
        .I2(reset_time_out_reg_0),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(Q[0]),
        .I5(reset_time_out_i_3__0_n_0),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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
    .INIT(64'hEEEFFFFFEEEF0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg_1),
        .I1(reset_time_out_i_3__0_n_0),
        .I2(reset_time_out_reg),
        .I3(Q[1]),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg_0),
        .O(\FSM_sequential_rx_state_reg[1] ));
  LUT5 #(
    .INIT(32'h008F0080)) 
    reset_time_out_i_3__0
       (.I0(Q[1]),
        .I1(rxresetdone_s3),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(reset_time_out_i_3__0_n_0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_11
   (init_clk_in);
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_13
   (out,
    SR,
    init_clk_in);
  output out;
  output [0:0]SR;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_18
   (out,
    user_clk);
  output out;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_2
   (E,
    reset_time_out_reg,
    quad1_common_lock_in,
    init_clk_in,
    \FSM_sequential_tx_state_reg[0] ,
    Q,
    \FSM_sequential_tx_state_reg[0]_0 ,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    \FSM_sequential_tx_state_reg[0]_4 ,
    txresetdone_s3,
    mmcm_lock_reclocked,
    reset_time_out);
  output [0:0]E;
  output reset_time_out_reg;
  input quad1_common_lock_in;
  input init_clk_in;
  input \FSM_sequential_tx_state_reg[0] ;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input txresetdone_s3;
  input mmcm_lock_reclocked;
  input reset_time_out;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    .INIT(64'hFFFFFFFFAFBAAABA)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_tx_state_reg[0] ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_tx_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AABA)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state_reg[0]_1 ),
        .I1(\FSM_sequential_tx_state_reg[0] ),
        .I2(\FSM_sequential_tx_state_reg[0]_2 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I4(\FSM_sequential_tx_state_reg[0]_3 ),
        .I5(\FSM_sequential_tx_state_reg[0]_4 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8CCB800)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(txresetdone_s3),
        .I1(Q[2]),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .I3(Q[1]),
        .I4(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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
       (.I0(\FSM_sequential_tx_state[3]_i_5_n_0 ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_23
   (out,
    in0,
    drpclk_in);
  output out;
  input in0;
  input drpclk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_3
   (init_clk_in);
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync_5
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_12
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_14
   (init_clk_in,
    user_clk);
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_15
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_16
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire rx_fsm_reset_done_int;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_17
   (rxpmaresetdone_i,
    user_clk,
    init_clk_in);
  input rxpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_19
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_20
   (txpmaresetdone_i,
    user_clk,
    init_clk_in);
  input txpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_21
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_22
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_24
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_25
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire tx_lock_comb_r;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_26
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_4
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_6
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire init_clk_in;
  wire run_phase_alignment_int;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_7
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_8
   (TX_RESETDONE_OUT,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0 ,
    tx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output TX_RESETDONE_OUT;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0 ;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  (* RTL_KEEP = "true" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_d1_cdc_from ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0 ;
  wire init_clk_in;
  wire tx_fsm_reset_done_int;
  wire user_clk;

  assign TX_RESETDONE_OUT = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_cdc_sync__parameterized2_9
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
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d4 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d5 ;
  (* async_reg = "true" *) (* shift_extract = "no" *) wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
  wire gtrxreset_i_0;
  wire init_clk_in;
  wire user_clk;

  assign out = \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6 ;
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
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.p_level_in_int ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2_reg 
       (.C(user_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d1_aurora_8b10b_0_cdc_to ),
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

(* CC_FREQ_FACTOR = "24" *) (* EXAMPLE_SIMULATION = "0" *) (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
module aurora_8b10b_0_core
   (S_AXI_TX_TDATA,
    S_AXI_TX_TKEEP,
    S_AXI_TX_TVALID,
    S_AXI_TX_TREADY,
    S_AXI_TX_TLAST,
    M_AXI_RX_TDATA,
    M_AXI_RX_TKEEP,
    M_AXI_RX_TVALID,
    M_AXI_RX_TLAST,
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
  input [0:15]S_AXI_TX_TDATA;
  input [0:1]S_AXI_TX_TKEEP;
  input S_AXI_TX_TVALID;
  output S_AXI_TX_TREADY;
  input S_AXI_TX_TLAST;
  output [0:15]M_AXI_RX_TDATA;
  output [0:1]M_AXI_RX_TKEEP;
  output M_AXI_RX_TVALID;
  output M_AXI_RX_TLAST;
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
  wire FRAME_ERR;
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
  wire [0:15]M_AXI_RX_TDATA;
  wire [1:1]\^M_AXI_RX_TKEEP ;
  wire M_AXI_RX_TLAST;
  wire M_AXI_RX_TVALID;
  wire PLL_NOT_LOCKED;
  wire POWER_DOWN;
  wire RESET;
  wire RXN;
  wire RXP;
  wire RX_RESETDONE_OUT;
  wire SOFT_ERR;
  wire [0:15]S_AXI_TX_TDATA;
  wire [0:1]S_AXI_TX_TKEEP;
  wire S_AXI_TX_TLAST;
  wire S_AXI_TX_TREADY;
  wire S_AXI_TX_TVALID;
  wire [1:0]TXCHARISK_IN;
  wire [15:0]TXDATA_IN;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire TX_RESETDONE_OUT;
  wire aurora_lane_0_i_n_12;
  wire aurora_lane_0_i_n_14;
  wire aurora_lane_0_i_n_15;
  wire aurora_lane_0_i_n_16;
  wire axi_to_ll_pdu_i_n_0;
  wire \channel_init_sm_i/wait_for_lane_up_r0 ;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire \err_detect_i/bucket_full_r ;
  wire \err_detect_i/hard_err_flop_r0 ;
  wire [1:0]\err_detect_i/p_2_out ;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:1]gen_k_i;
  wire gen_pad_i;
  wire [0:1]gen_r_i;
  wire gen_scp_i;
  wire [0:1]gen_v_i;
  wire got_v_i;
  wire gt_common_reset_out;
  wire gt_reset_sync_init_clk;
  wire gt_wrapper_i_n_30;
  wire gt_wrapper_i_n_31;
  wire gt_wrapper_i_n_34;
  wire gt_wrapper_i_n_36;
  wire gt_wrapper_i_n_37;
  wire gt_wrapper_i_n_38;
  wire gt_wrapper_i_n_39;
  wire gt_wrapper_i_n_40;
  wire gt_wrapper_i_n_41;
  wire gt_wrapper_i_n_42;
  wire gt_wrapper_i_n_43;
  wire gt_wrapper_i_n_44;
  wire gt_wrapper_i_n_45;
  wire gt_wrapper_i_n_46;
  wire gt_wrapper_i_n_47;
  wire gt_wrapper_i_n_48;
  wire gt_wrapper_i_n_49;
  wire gt_wrapper_i_n_50;
  wire gt_wrapper_i_n_51;
  wire gt_wrapper_i_n_52;
  wire gt_wrapper_i_n_53;
  wire gtrxreset_i;
  wire hard_err_i;
  wire hard_err_reset_i;
  wire init_clk_in;
  wire \lane_init_sm_i/begin_r0 ;
  wire link_reset_comb_r;
  wire new_pkt_r;
  wire p_0_in;
  wire quad1_common_lock_in;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire reset_sync_init_clk;
  wire reset_sync_user_clk;
  wire [1:0]rx_char_is_comma_i;
  wire [1:0]rx_disp_err_i;
  wire rx_ecp_i;
  wire \rx_ll_pdu_datapath_i/in_frame_r ;
  wire \rx_ll_pdu_datapath_i/storage_v_r ;
  wire [1:0]rx_not_in_table_i;
  wire rx_pad_i;
  wire [0:15]rx_pe_data_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_scp_i;
  wire soft_err_flop_r0;
  wire start_rx_i;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_dst_rdy;
  wire [0:15]tx_pe_data_i;
  wire tx_pe_data_v_i;
  wire user_clk;

  assign M_AXI_RX_TKEEP[0] = \<const0> ;
  assign M_AXI_RX_TKEEP[1] = \^M_AXI_RX_TKEEP [1];
  assign tx_lock = quad1_common_lock_in;
  GND GND
       (.G(\<const0> ));
  aurora_8b10b_0_AURORA_LANE aurora_lane_0_i
       (.D(rx_char_is_comma_i),
        .HPCNT_RESET(HPCNT_RESET),
        .LANE_UP(LANE_UP),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .Q({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15]}),
        .RXDISPERR(rx_disp_err_i),
        .RXNOTINTABLE(rx_not_in_table_i),
        .RX_ECP_Buffer_reg(aurora_lane_0_i_n_14),
        .\RX_PE_DATA_Buffer_reg[0] ({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15]}),
        .RX_PE_DATA_V_Buffer_reg(aurora_lane_0_i_n_15),
        .SR(reset_lanes_i),
        .TXCHARISK(TXCHARISK_IN),
        .TXDATA(TXDATA_IN),
        .begin_r0(\lane_init_sm_i/begin_r0 ),
        .bucket_full_r_reg(\err_detect_i/bucket_full_r ),
        .ena_comma_align_i(ena_comma_align_i),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1]}),
        .gen_pad_i(gen_pad_i),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1]}),
        .gen_scp_i(gen_scp_i),
        .\gen_v_r_reg[0] ({gen_v_i[0],gen_v_i[1]}),
        .got_v_i(got_v_i),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .hard_err_i(hard_err_i),
        .hard_err_reset_i(hard_err_reset_i),
        .in_frame_r(\rx_ll_pdu_datapath_i/in_frame_r ),
        .in_frame_r_reg(aurora_lane_0_i_n_16),
        .init_clk_in(init_clk_in),
        .left_aligned_r_reg(aurora_lane_0_i_n_12),
        .left_aligned_r_reg_0(gt_wrapper_i_n_34),
        .rx_ecp_i(rx_ecp_i),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_scp_i(rx_scp_i),
        .soft_err_flop_r0(soft_err_flop_r0),
        .\soft_err_r_reg[0] (\err_detect_i/p_2_out ),
        .start_rx_i(start_rx_i),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[0] (gt_wrapper_i_n_31),
        .\word_aligned_control_bits_r_reg[1] (gt_wrapper_i_n_30),
        .\word_aligned_data_r_reg[0] ({gt_wrapper_i_n_44,gt_wrapper_i_n_45,gt_wrapper_i_n_46,gt_wrapper_i_n_47,gt_wrapper_i_n_48,gt_wrapper_i_n_49,gt_wrapper_i_n_50,gt_wrapper_i_n_51}),
        .\word_aligned_data_r_reg[8] ({gt_wrapper_i_n_36,gt_wrapper_i_n_37,gt_wrapper_i_n_38,gt_wrapper_i_n_39,gt_wrapper_i_n_40,gt_wrapper_i_n_41,gt_wrapper_i_n_42,gt_wrapper_i_n_43}));
  aurora_8b10b_0_AXI_TO_LL axi_to_ll_pdu_i
       (.new_pkt_r(new_pkt_r),
        .new_pkt_r_reg_0(axi_to_ll_pdu_i_n_0),
        .user_clk(user_clk));
  aurora_8b10b_0_RESET_LOGIC core_reset_logic_i
       (.CHANNEL_UP(CHANNEL_UP),
        .LINK_RESET_OUT(LINK_RESET_OUT),
        .SYSTEM_RESET_reg_0(sys_reset_out),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .gt_rxresetdone_r2_reg_0(gt_wrapper_i_n_52),
        .gt_txresetdone_r2_reg_0(gt_wrapper_i_n_53),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .out(reset_sync_user_clk),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_channel_i(reset_channel_i),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(\channel_init_sm_i/wait_for_lane_up_r0 ));
  aurora_8b10b_0_GLOBAL_LOGIC global_logic_i
       (.CHANNEL_UP(CHANNEL_UP),
        .HARD_ERR(HARD_ERR),
        .LANE_UP(LANE_UP),
        .POWER_DOWN(POWER_DOWN),
        .SOFT_ERR(SOFT_ERR),
        .SR(reset_lanes_i),
        .begin_r0(\lane_init_sm_i/begin_r0 ),
        .gen_a_i(gen_a_i),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1]}),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1]}),
        .gen_v_flop_0_i({gen_v_i[0],gen_v_i[1]}),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_i(hard_err_i),
        .hard_err_reset_i(hard_err_reset_i),
        .lfsr_taps_i(sys_reset_out),
        .p_0_in(p_0_in),
        .reset_channel_i(reset_channel_i),
        .soft_err_flop_r0(soft_err_flop_r0),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(\channel_init_sm_i/wait_for_lane_up_r0 ));
  aurora_8b10b_0_cdc_sync gt_reset_cdc_sync
       (.AR(gt_reset_sync_init_clk),
        .GT_RESET(GT_RESET),
        .HPCNT_RESET(HPCNT_RESET),
        .init_clk_in(init_clk_in),
        .out(reset_sync_init_clk));
  aurora_8b10b_0_GT_WRAPPER gt_wrapper_i
       (.AR(gt_reset_sync_init_clk),
        .D(rx_char_is_comma_i),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg (gt_wrapper_i_n_53),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .POWER_DOWN(POWER_DOWN),
        .RXDISPERR(rx_disp_err_i),
        .RXN(RXN),
        .RXNOTINTABLE(rx_not_in_table_i),
        .RXP(RXP),
        .RX_RESETDONE_OUT(RX_RESETDONE_OUT),
        .TXCHARISK(TXCHARISK_IN),
        .TXDATA(TXDATA_IN),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_common_reset_out(gt_common_reset_out),
        .gtpe2_i(DRPRDY_OUT),
        .gtpe2_i_0(gt_wrapper_i_n_30),
        .gtpe2_i_1(gt_wrapper_i_n_31),
        .gtpe2_i_2(\err_detect_i/p_2_out ),
        .gtpe2_i_3(gt_wrapper_i_n_34),
        .gtpe2_i_4({gt_wrapper_i_n_36,gt_wrapper_i_n_37,gt_wrapper_i_n_38,gt_wrapper_i_n_39,gt_wrapper_i_n_40,gt_wrapper_i_n_41,gt_wrapper_i_n_42,gt_wrapper_i_n_43}),
        .gtpe2_i_5({gt_wrapper_i_n_44,gt_wrapper_i_n_45,gt_wrapper_i_n_46,gt_wrapper_i_n_47,gt_wrapper_i_n_48,gt_wrapper_i_n_49,gt_wrapper_i_n_50,gt_wrapper_i_n_51}),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .hard_err_flop_r_reg(\err_detect_i/bucket_full_r ),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .quad1_common_lock_in(quad1_common_lock_in),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxfsm_rxresetdone_r3_reg_0(gt_wrapper_i_n_52),
        .sync_clk(sync_clk),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[1] (aurora_lane_0_i_n_12));
  aurora_8b10b_0_cdc_sync_0 hpcnt_reset_cdc_sync
       (.RESET(RESET),
        .init_clk_in(init_clk_in),
        .out(reset_sync_init_clk));
  aurora_8b10b_0_cdc_sync_1 reset_sync_user_clk_cdc_sync
       (.RESET(RESET),
        .out(reset_sync_user_clk),
        .user_clk(user_clk));
  aurora_8b10b_0_RX_LL rx_ll_i
       (.D({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15]}),
        .FRAME_ERR(FRAME_ERR),
        .M_AXI_RX_TDATA(M_AXI_RX_TDATA),
        .M_AXI_RX_TKEEP(\^M_AXI_RX_TKEEP ),
        .M_AXI_RX_TLAST(M_AXI_RX_TLAST),
        .M_AXI_RX_TVALID(M_AXI_RX_TVALID),
        .RX_EOF_N_Buffer_reg(aurora_lane_0_i_n_14),
        .RX_SRC_RDY_N_Buffer_reg_inv(aurora_lane_0_i_n_15),
        .in_frame_r(\rx_ll_pdu_datapath_i/in_frame_r ),
        .in_frame_r_reg(aurora_lane_0_i_n_16),
        .rx_ecp_i(rx_ecp_i),
        .rx_pad_i(rx_pad_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_scp_i(rx_scp_i),
        .start_rx_i(start_rx_i),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .user_clk(user_clk));
  aurora_8b10b_0_STANDARD_CC_MODULE standard_cc_module_i
       (.Q(DO_CC_I),
        .\cc_count_r_reg[5]_0 (sys_reset_out),
        .user_clk(user_clk));
  aurora_8b10b_0_TX_LL tx_ll_i
       (.Q(DO_CC_I),
        .S_AXI_TX_TDATA(S_AXI_TX_TDATA),
        .S_AXI_TX_TKEEP(S_AXI_TX_TKEEP),
        .S_AXI_TX_TLAST(S_AXI_TX_TLAST),
        .S_AXI_TX_TREADY(S_AXI_TX_TREADY),
        .S_AXI_TX_TVALID(S_AXI_TX_TVALID),
        .\TX_PE_DATA_Buffer_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15]}),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_pad_i(gen_pad_i),
        .gen_scp_i(gen_scp_i),
        .p_0_in(p_0_in),
        .storage_pad_r_reg(axi_to_ll_pdu_i_n_0),
        .tx_dst_rdy(tx_dst_rdy),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0_gt
   (gtpe2_i_0,
    TXN,
    TXP,
    rx_realign_i,
    gtpe2_i_1,
    TX_OUT_CLK,
    gtpe2_i_2,
    DRPDO_OUT,
    D,
    RXDISPERR,
    RXNOTINTABLE,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    hard_err_flop_r0,
    gtpe2_i_7,
    gtpe2_i_8,
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
    TXCHARISK,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \word_aligned_control_bits_r_reg[1] ,
    hard_err_flop_r_reg,
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
  output [1:0]D;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output gtpe2_i_3;
  output gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  output gtpe2_i_6;
  output hard_err_flop_r0;
  output [7:0]gtpe2_i_7;
  output [7:0]gtpe2_i_8;
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
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \word_aligned_control_bits_r_reg[1] ;
  input hard_err_flop_r_reg;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire [1:0]D;
  wire [4:0]DRPADDR;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN;
  wire DRPEN_IN;
  wire DRPWE;
  wire DRPWE_IN;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire GTRXRESET;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [1:0]RXDISPERR;
  wire RXN;
  wire [1:0]RXNOTINTABLE;
  wire RXP;
  wire [0:0]SR;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire drp_op_done;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire gtpe2_i_2;
  wire gtpe2_i_3;
  wire gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire gtpe2_i_6;
  wire [7:0]gtpe2_i_7;
  wire [7:0]gtpe2_i_8;
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
  wire hard_err_flop_r0;
  wire hard_err_flop_r_reg;
  wire [15:0]in7;
  wire init_clk_in;
  wire p_0_in;
  wire rx_buf_err_i;
  wire [1:0]rx_char_is_k_i;
  wire [15:0]rx_data_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire sync_clk;
  wire tx_buf_err_i;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[1] ;
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
  wire [3:2]NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISK_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [31:16]NLW_gtpe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED;
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
    .CLK_COR_MAX_LAT(17),
    .CLK_COR_MIN_LAT(12),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0100000000),
    .CLK_COR_SEQ_1_4(10'b0100000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(2),
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
    .RXCDR_CFG(83'h0000107FE206001041010),
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
    .RXOUT_DIV(2),
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
    .RX_DATA_WIDTH(20),
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
    .TXOUT_DIV(2),
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
    .TX_DATA_WIDTH(20),
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
        .RXCHARISCOMMA({NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED[3:2],D}),
        .RXCHARISK({NLW_gtpe2_i_RXCHARISK_UNCONNECTED[3:2],rx_char_is_k_i}),
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
        .RXDATA({NLW_gtpe2_i_RXDATA_UNCONNECTED[31:16],rx_data_i}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({NLW_gtpe2_i_RXDISPERR_UNCONNECTED[3:2],RXDISPERR}),
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
        .RXNOTINTABLE({NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED[3:2],RXNOTINTABLE}),
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
        .TXCHARISK({1'b0,1'b0,TXCHARISK}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXDATA}),
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
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_23
       (.I0(DRPADDR_IN[4]),
        .I1(drp_op_done),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_27
       (.I0(DRPADDR_IN[0]),
        .I1(drp_op_done),
        .O(DRPADDR[0]));
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
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_6
       (.I0(DRPDI_IN[12]),
        .I1(in7[12]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
  aurora_8b10b_0_gtrxreset_seq gtrxreset_seq_i
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    hard_err_flop_r_i_1
       (.I0(hard_err_flop_r_reg),
        .I1(rx_buf_err_i),
        .I2(rx_realign_i),
        .I3(tx_buf_err_i),
        .O(hard_err_flop_r0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0420)) 
    left_aligned_r_i_2
       (.I0(D[1]),
        .I1(D[0]),
        .I2(rx_char_is_k_i[1]),
        .I3(rx_char_is_k_i[0]),
        .O(gtpe2_i_6));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[0]_i_2 
       (.I0(RXDISPERR[0]),
        .I1(RXNOTINTABLE[0]),
        .O(gtpe2_i_5[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[1]_i_1 
       (.I0(RXDISPERR[1]),
        .I1(RXNOTINTABLE[1]),
        .O(gtpe2_i_5[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_control_bits_r[0]_i_1 
       (.I0(rx_char_is_k_i[0]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_char_is_k_i[1]),
        .O(gtpe2_i_4));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_control_bits_r[1]_i_1 
       (.I0(rx_char_is_k_i[1]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_char_is_k_i[0]),
        .O(gtpe2_i_3));
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[0]_i_1 
       (.I0(rx_data_i[7]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[15]),
        .O(gtpe2_i_8[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[10]_i_1 
       (.I0(rx_data_i[13]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[5]),
        .O(gtpe2_i_7[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[11]_i_1 
       (.I0(rx_data_i[12]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[4]),
        .O(gtpe2_i_7[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[12]_i_1 
       (.I0(rx_data_i[11]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[3]),
        .O(gtpe2_i_7[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[13]_i_1 
       (.I0(rx_data_i[10]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[2]),
        .O(gtpe2_i_7[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[14]_i_1 
       (.I0(rx_data_i[9]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[1]),
        .O(gtpe2_i_7[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[15]_i_1 
       (.I0(rx_data_i[8]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[0]),
        .O(gtpe2_i_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[1]_i_1 
       (.I0(rx_data_i[6]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[14]),
        .O(gtpe2_i_8[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[2]_i_1 
       (.I0(rx_data_i[5]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[13]),
        .O(gtpe2_i_8[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[3]_i_1 
       (.I0(rx_data_i[4]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[12]),
        .O(gtpe2_i_8[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[4]_i_1 
       (.I0(rx_data_i[3]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[11]),
        .O(gtpe2_i_8[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[5]_i_1 
       (.I0(rx_data_i[2]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[10]),
        .O(gtpe2_i_8[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[6]_i_1 
       (.I0(rx_data_i[1]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[9]),
        .O(gtpe2_i_8[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[7]_i_1 
       (.I0(rx_data_i[0]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[8]),
        .O(gtpe2_i_8[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[8]_i_1 
       (.I0(rx_data_i[15]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[7]),
        .O(gtpe2_i_7[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_aligned_data_r[9]_i_1 
       (.I0(rx_data_i[14]),
        .I1(\word_aligned_control_bits_r_reg[1] ),
        .I2(rx_data_i[6]),
        .O(gtpe2_i_7[6]));
endmodule

module aurora_8b10b_0_gtrxreset_seq
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

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\rd_data_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[1]),
        .I1(\rd_data_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in0_in),
        .I1(\rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_19
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[6]),
        .O(DRPADDR[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    gtpe2_i_i_2
       (.I0(DRPWE_IN),
        .I1(drp_op_done),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(DRPWE));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_20
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[5]),
        .O(DRPADDR[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_21
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[4]),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_22
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[3]),
        .O(DRPADDR[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_24
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[2]),
        .O(DRPADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_25
       (.I0(drp_op_done),
        .I1(DRPADDR_IN[1]),
        .O(DRPADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_26
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
  aurora_8b10b_0_cdc_sync__parameterized2_21 gtrxreset_in_cdc_sync
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(DRPDO_OUT[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(DRPDO_OUT[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(DRPDO_OUT[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(DRPDO_OUT[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(DRPDO_OUT[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(DRPDO_OUT[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(DRPDO_OUT[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(DRPDO_OUT[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(DRPDO_OUT[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(DRPDO_OUT[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(DRPDO_OUT[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(DRPDO_OUT[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(DRPDO_OUT[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(DRPDO_OUT[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
  aurora_8b10b_0_cdc_sync__parameterized2_22 rst_cdc_sync
       (.AR(rst_ss),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .init_clk_in(init_clk_in));
  aurora_8b10b_0_cdc_sync_23 rxpmaresetdone_cdc_sync
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

module aurora_8b10b_0_multi_gt
   (gtpe2_i,
    TXN,
    TXP,
    rx_realign_i,
    gtpe2_i_0,
    TX_OUT_CLK,
    gtpe2_i_1,
    DRPDO_OUT,
    D,
    RXDISPERR,
    RXNOTINTABLE,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    hard_err_flop_r0,
    gtpe2_i_6,
    gtpe2_i_7,
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
    TXCHARISK,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \word_aligned_control_bits_r_reg[1] ,
    hard_err_flop_r_reg,
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
  output [1:0]D;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output gtpe2_i_2;
  output gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output gtpe2_i_5;
  output hard_err_flop_r0;
  output [7:0]gtpe2_i_6;
  output [7:0]gtpe2_i_7;
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
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \word_aligned_control_bits_r_reg[1] ;
  input hard_err_flop_r_reg;
  input [8:0]DRPADDR_IN;
  input [15:0]DRPDI_IN;
  input DRPWE_IN;
  input DRPEN_IN;

  wire [1:0]D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPEN_IN;
  wire DRPWE_IN;
  wire GT0_PLL0OUTCLK_IN;
  wire GT0_PLL0OUTREFCLK_IN;
  wire GT0_PLL1OUTCLK_IN;
  wire GT0_PLL1OUTREFCLK_IN;
  wire [2:0]LOOPBACK;
  wire POWER_DOWN;
  wire [1:0]RXDISPERR;
  wire RXN;
  wire [1:0]RXNOTINTABLE;
  wire RXP;
  wire [0:0]SR;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TXN;
  wire TXP;
  wire TX_OUT_CLK;
  wire drpclk_in;
  wire ena_comma_align_i;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire gtpe2_i_2;
  wire gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire gtpe2_i_5;
  wire [7:0]gtpe2_i_6;
  wire [7:0]gtpe2_i_7;
  wire hard_err_flop_r0;
  wire hard_err_flop_r_reg;
  wire init_clk_in;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire sync_clk;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[1] ;

  aurora_8b10b_0_gt gt0_aurora_8b10b_0_i
       (.D(D),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPEN_IN(DRPEN_IN),
        .DRPWE_IN(DRPWE_IN),
        .GT0_PLL0OUTCLK_IN(GT0_PLL0OUTCLK_IN),
        .GT0_PLL0OUTREFCLK_IN(GT0_PLL0OUTREFCLK_IN),
        .GT0_PLL1OUTCLK_IN(GT0_PLL1OUTCLK_IN),
        .GT0_PLL1OUTREFCLK_IN(GT0_PLL1OUTREFCLK_IN),
        .LOOPBACK(LOOPBACK),
        .POWER_DOWN(POWER_DOWN),
        .RXDISPERR(RXDISPERR),
        .RXN(RXN),
        .RXNOTINTABLE(RXNOTINTABLE),
        .RXP(RXP),
        .SR(SR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .TXN(TXN),
        .TXP(TXP),
        .TX_OUT_CLK(TX_OUT_CLK),
        .drpclk_in(drpclk_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .hard_err_flop_r0(hard_err_flop_r0),
        .hard_err_flop_r_reg(hard_err_flop_r_reg),
        .init_clk_in(init_clk_in),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .sync_clk(sync_clk),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[1] (\word_aligned_control_bits_r_reg[1] ));
endmodule

module aurora_8b10b_0_rx_startup_fsm
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
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i_0;
  wire gtrxreset_i_i_1_n_0;
  wire init_clk_in;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[2]_i_1__0_n_0 ;
  wire \init_wait_count[5]_i_1__0_n_0 ;
  wire [5:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_2__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1__0_n_0 ;
  wire \mmcm_lock_count[3]_i_1__0_n_0 ;
  wire \mmcm_lock_count[4]_i_1__0_n_0 ;
  wire \mmcm_lock_count[5]_i_1__0_n_0 ;
  wire \mmcm_lock_count[6]_i_1__0_n_0 ;
  wire \mmcm_lock_count[7]_i_1__0_n_0 ;
  wire \mmcm_lock_count[8]_i_1__0_n_0 ;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_3__0_n_0 ;
  wire \mmcm_lock_count[9]_i_4__0_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [5:1]p_0_in__1;
  wire [1:0]p_0_in__2;
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
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_i_5_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire [0:0]time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire [17:0]time_out_counter_reg;
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
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
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
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_i_8_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire txpmaresetdone_i;
  wire user_clk;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
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
  wire [0:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[2]_i_1__0_n_0 ;
  wire \wait_time_cnt[3]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

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
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF24200400)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .I4(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .O(rx_state__0[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(gt_rxuserrdy_i),
        .I1(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AABF000F0000)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A000000)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rx_state[2]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(init_wait_done_reg_n_0),
        .I3(rx_state[2]),
        .I4(reset_time_out_reg_0),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F0F8FBF0F0)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I3(time_out_wait_bypass_s3),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(rx_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000004400C400)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0CE20CCC)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[3]),
        .I2(gt_rxuserrdy_i),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(wait_time_cnt_reg[6]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
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
  aurora_8b10b_0_cdc_sync__parameterized2_9 gtrxreset_cdc_sync
       (.gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .out(scndry_out),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gtrxreset_i_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(\init_wait_count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_2__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[2]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[2]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done_i_2__0_n_0),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(\mmcm_lock_count[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_3__0_n_0 ));
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
        .D(\mmcm_lock_count[2]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[3]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[4]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[5]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[6]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[7]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[8]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[9]_i_3__0_n_0 ),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
    .INIT(64'h0FF30E0E0FF30202)) 
    reset_time_out_i_2
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(gt_rxuserrdy_i),
        .I4(rx_state[3]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
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
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
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
       (.I0(\FSM_sequential_rx_state[3]_i_4_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
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
  aurora_8b10b_0_cdc_sync_10 sync_PLL0LOCK_cdc_sync
       (.E(sync_PLL0LOCK_cdc_sync_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (sync_PLL0LOCK_cdc_sync_n_1),
        .Q(rx_state),
        .SS(\wait_time_cnt[6]_i_1_n_0 ),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .reset_time_out_reg_1(reset_time_out_i_2_n_0),
        .reset_time_out_reg_2(reset_time_out_i_4_n_0),
        .rxresetdone_s3(rxresetdone_s3),
        .time_tlock_max(time_tlock_max));
  aurora_8b10b_0_cdc_sync_11 sync_PLL1LOCK_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_0_cdc_sync__parameterized2_12 sync_RXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(rxresetdone_s2),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync_13 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .init_clk_in(init_clk_in),
        .out(mmcm_lock_i));
  aurora_8b10b_0_cdc_sync__parameterized2_14 sync_pmaresetdone_fallingedge_detect_cdc_sync
       (.init_clk_in(init_clk_in),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_15 sync_run_phase_alignment_int_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 (run_phase_alignment_int_reg_n_0),
        .init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_16 sync_rx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_17 sync_rxpmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .rxpmaresetdone_i(rxpmaresetdone_i),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync_18 sync_rxpmaresetdone_rx_s_cdc_sync
       (.out(rxpmaresetdone_rx_s),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_19 sync_time_out_wait_bypass_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.p_level_in_d1_cdc_from_reg_0 (time_out_wait_bypass_reg_n_0),
        .init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_20 sync_txpmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .txpmaresetdone_i(txpmaresetdone_i),
        .user_clk(user_clk));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    time_out_100us_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_100us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_100us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_1us_i_3_n_0),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_1us_i_4_n_0),
        .I4(time_out_1us_i_5_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_1us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_out_1us_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_1us_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    time_out_1us_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[16]),
        .O(time_out_1us_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_2ms_i_4_n_0),
        .I3(time_out_2ms_i_5_n_0),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_2ms_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_1us_i_4_n_0),
        .O(time_out_2ms_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[2]),
        .O(time_out_2ms_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_1us_i_4_n_0),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(time_out_2ms_i_2_n_0),
        .O(time_out_counter));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
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
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4__0_n_0 }));
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
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
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
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(time_out_wait_bypass_i_2__0_n_0),
        .I2(rx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[5]),
        .I5(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
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
        .DI({time_tlock_max1_carry_i_1_n_0,time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0,time_tlock_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry__0_i_1_n_0,time_out_counter_reg[13],time_tlock_max1_carry__0_i_2_n_0,1'b0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
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
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:1],time_tlock_max1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,time_tlock_max1_carry__1_i_1_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,time_tlock_max1_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
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
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
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
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
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
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
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
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
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
        .D(wait_time_cnt0__0),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[2]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[3]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module aurora_8b10b_0_tx_startup_fsm
   (TX_RESETDONE_OUT,
    gt_tx_reset_i,
    gt_common_reset_out,
    gt_txuserrdy_i,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    txfsm_txresetdone_r,
    AR,
    PLL_NOT_LOCKED);
  output TX_RESETDONE_OUT;
  output gt_tx_reset_i;
  output gt_common_reset_out;
  output gt_txuserrdy_i;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input txfsm_txresetdone_r;
  input [0:0]AR;
  input PLL_NOT_LOCKED;

  wire [0:0]AR;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ;
  wire PLL0_RESET_i_1_n_0;
  wire PLL_NOT_LOCKED;
  wire TXUSERRDY_i_1_n_0;
  wire TX_RESETDONE_OUT;
  wire clear;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[2]_i_1_n_0 ;
  wire \init_wait_count[5]_i_1_n_0 ;
  wire [5:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1_n_0 ;
  wire \mmcm_lock_count[3]_i_1_n_0 ;
  wire \mmcm_lock_count[4]_i_1_n_0 ;
  wire \mmcm_lock_count[5]_i_1_n_0 ;
  wire \mmcm_lock_count[6]_i_1_n_0 ;
  wire \mmcm_lock_count[7]_i_1_n_0 ;
  wire \mmcm_lock_count[8]_i_1_n_0 ;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_3_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire [5:1]p_0_in;
  wire p_0_in_1;
  wire [1:0]p_0_in__0;
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
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire [0:0]time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [16:0]time_out_counter_reg;
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
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire user_clk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
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
  wire [0:0]wait_time_cnt0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[2]_i_1_n_0 ;
  wire \wait_time_cnt[3]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:0]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEE)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I2(time_tlock_max_reg_n_0),
        .I3(reset_time_out),
        .I4(mmcm_lock_reclocked),
        .I5(\FSM_sequential_tx_state[0]_i_4_n_0 ),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h2020F000)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_tx_state[0]_i_4 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h11441104)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300AA00AA)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(init_wait_done_reg_n_0),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .I2(wait_time_cnt_reg[6]),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .I5(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_state[0]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
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
    .INIT(32'hFFFD2000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
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
    .INIT(32'hFFEF0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(\init_wait_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_2 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[2]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[2]_i_1_n_0 ),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\init_wait_count[5]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    init_wait_done_i_1
       (.I0(init_wait_done_i_2_n_0),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[9]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(\mmcm_lock_count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_3_n_0 ));
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
        .D(\mmcm_lock_count[2]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[3]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[4]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[5]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[6]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[7]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[8]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(\mmcm_lock_count[9]_i_3_n_0 ),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_1));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(p_0_in_1),
        .I2(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
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
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  aurora_8b10b_0_cdc_sync_2 sync_PLL0LOCK_cdc_sync
       (.E(sync_PLL0LOCK_cdc_sync_n_0),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_3 (\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .Q(tx_state),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_PLL0LOCK_cdc_sync_n_1),
        .reset_time_out_reg_0(init_wait_done_reg_n_0),
        .txresetdone_s3(txresetdone_s3));
  aurora_8b10b_0_cdc_sync_3 sync_PLL1LOCK_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_0_cdc_sync__parameterized2_4 sync_TXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync_5 sync_mmcm_lock_reclocked_cdc_sync
       (.PLL_NOT_LOCKED(PLL_NOT_LOCKED),
        .SR(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .init_clk_in(init_clk_in),
        .out(mmcm_lock_i));
  aurora_8b10b_0_cdc_sync__parameterized2_6 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(scndry_out),
        .run_phase_alignment_int(run_phase_alignment_int),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_7 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass(time_out_wait_bypass),
        .user_clk(user_clk));
  aurora_8b10b_0_cdc_sync__parameterized2_8 sync_tx_fsm_reset_done_int_cdc_sync
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d6_reg ),
        .TX_RESETDONE_OUT(TX_RESETDONE_OUT),
        .init_clk_in(init_clk_in),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int),
        .user_clk(user_clk));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2__0_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[3]),
        .I5(time_tlock_max_i_3_n_0),
        .O(time_out_2ms_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_2ms_i_4__0_n_0),
        .O(time_out_2ms_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[4]),
        .O(time_out_2ms_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_2ms_i_3_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[15]),
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
       (.I0(time_out_counter_reg[3]),
        .I1(time_tlock_max_i_3_n_0),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(\time_out_counter[0]_i_3_n_0 ),
        .I5(time_out_2ms_i_3_n_0),
        .O(time_out_counter));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
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
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
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
        .CO(\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,time_out_counter_reg[16]}));
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
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass),
        .I1(time_out_wait_bypass_i_2_n_0),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(time_out_wait_bypass_i_5_n_0),
        .I3(time_out_wait_bypass_i_6_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[6]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[0]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[13]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[15]),
        .I3(wait_bypass_count_reg[14]),
        .O(time_out_wait_bypass_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_wait_bypass_i_6
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[10]),
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
        .I2(time_out_counter_reg[3]),
        .I3(time_tlock_max_i_3_n_0),
        .I4(time_tlock_max_i_4_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    time_tlock_max_i_2
       (.I0(time_out_2ms_i_4__0_n_0),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[7]),
        .O(time_tlock_max_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[9]),
        .O(time_tlock_max_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[15]),
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
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_RESETDONE_OUT),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
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
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
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
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
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
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
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
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
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
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[2]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[3]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
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
