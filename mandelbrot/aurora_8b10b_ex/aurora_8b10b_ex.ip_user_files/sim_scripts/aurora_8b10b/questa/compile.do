vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_aurora_pkg.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_reset_logic.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b_core.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_aurora_lane_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_axi_to_ll.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_channel_err_detect.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_channel_init_sm.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_chbond_count_dec_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_descrambler_top.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_err_detect_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_global_logic.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_hotplug.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_idle_and_ver_gen.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_lane_init_sm_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_left_align_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_left_align_mux.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ll_to_axi.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_output_mux.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_output_switch_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_deframer.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_nfc.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_pdu_datapath.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll_ufc_datapath.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_rx_ll.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_scrambler_top.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_scrambler.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sideband_output.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_standard_cc_module.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_ce_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_count_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_mux.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_storage_switch_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sym_dec_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_sym_gen_4byte.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_cdc_sync.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_tx_startup_fsm.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_rx_startup_fsm.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_gtrxreset_seq.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_gt.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_multi_gt.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/gt/aurora_8b10b_transceiver_wrapper.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll_datapath.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_tx_ll.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_barrel_shifter_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_barrel_shifter.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_filter.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_output_mux.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_output_switch_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_sideband_output.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_storage_count_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_storage_mux.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_ufc_storage_switch_control.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b/src/aurora_8b10b_valid_data_counter.vhd" \
"../../../../aurora_8b10b_ex.gen/sources_1/ip/aurora_8b10b/aurora_8b10b.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

