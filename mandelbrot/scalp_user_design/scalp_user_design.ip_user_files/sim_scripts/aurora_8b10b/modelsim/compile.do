vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_aurora_pkg.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_reset_logic.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b_core.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_aurora_lane_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_axi_to_ll.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_channel_err_detect.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_channel_init_sm.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_chbond_count_dec_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_descrambler_top.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_err_detect_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_global_logic.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_hotplug.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_idle_and_ver_gen.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_lane_init_sm_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_left_align_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_left_align_mux.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ll_to_axi.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_output_mux.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_output_switch_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_deframer.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_nfc.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_pdu_datapath.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_scrambler_top.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_scrambler.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sideband_output.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_standard_cc_module.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_ce_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_count_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_mux.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_switch_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sym_dec_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sym_gen_4byte.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_cdc_sync.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_tx_startup_fsm.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_rx_startup_fsm.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_gtrxreset_seq.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_gt.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_multi_gt.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_transceiver_wrapper.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll_control.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll_datapath.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_valid_data_counter.vhd" \
"../../../../scalp_user_design.gen/sources_1/ip/aurora_8b10b/aurora_8b10b.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

