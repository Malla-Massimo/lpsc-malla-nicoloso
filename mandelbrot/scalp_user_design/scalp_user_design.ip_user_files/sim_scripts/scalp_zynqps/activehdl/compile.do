transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_22
vlib activehdl/processing_system7_vip_v1_0_24
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/fifo_generator_v13_2_14
vlib activehdl/axi_data_fifo_v2_1_36
vlib activehdl/axi_crossbar_v2_1_38
vlib activehdl/axi_protocol_converter_v2_1_37
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/axi_intc_v4_1_22
vlib activehdl/xlconcat_v2_1_7
vlib activehdl/axi_iic_v2_1_11

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 activehdl/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 activehdl/processing_system7_vip_v1_0_24
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap fifo_generator_v13_2_14 activehdl/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 activehdl/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 activehdl/axi_crossbar_v2_1_38
vmap axi_protocol_converter_v2_1_37 activehdl/axi_protocol_converter_v2_1_37
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap axi_intc_v4_1_22 activehdl/axi_intc_v4_1_22
vmap xlconcat_v2_1_7 activehdl/xlconcat_v2_1_7
vmap axi_iic_v2_1_11 activehdl/axi_iic_v2_1_11

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_clk_wiz.v" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0/sim/vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0.vhd" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0/sim/vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0.vhd" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/sim/vga_hdmi_clk_rst_system_inst_0.vhd" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_gnd_constant_0/sim/scalp_zynqps_gnd_constant_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -sv2k12 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -sv2k12 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_processing_system7_0_0/sim/scalp_zynqps_processing_system7_0_0.v" \

vcom -work xil_defaultlib -2008  \
"../../../bd/scalp_zynqps/ipshared/3ff2/src/scalp_axi_link.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_scalp_axi_link_firmwareid_0/sim/scalp_zynqps_scalp_axi_link_firmwareid_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  \
"../../../../../scalp_zynqps/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_ps7_0_axi_periph_upgraded_ipi_imp_xbar_0_1/sim/scalp_zynqps_ps7_0_axi_periph_upgraded_ipi_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_37  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/d98a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_ps7_0_axi_periph_imp_auto_pc_0_1/sim/scalp_zynqps_ps7_0_axi_periph_imp_auto_pc_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../../scalp_zynqps/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../../scalp_zynqps/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../../scalp_zynqps/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_switches_0/sim/scalp_zynqps_axi_gpio_switches_0.vhd" \

vcom -work axi_intc_v4_1_22 -93  \
"../../../../../scalp_zynqps/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_intc_0_0/sim/scalp_zynqps_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_7  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../../../scalp_zynqps/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_xlconcat_0_0/sim/scalp_zynqps_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_reset_btn_0/sim/scalp_zynqps_axi_gpio_reset_btn_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/bd_0/ip/ip_0/sim/bd_c0d9_ila_lib_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/bd_0/sim/bd_c0d9.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/sim/scalp_zynqps_system_ila_0_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_scalp_axi_link_cplx_num_regs_0/sim/scalp_zynqps_scalp_axi_link_cplx_num_regs_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_rst_ps7_0_125M_0/sim/scalp_zynqps_rst_ps7_0_125M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_sys_clock_0/scalp_zynqps_sys_clock_0_clk_wiz.v" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_sys_clock_0/scalp_zynqps_sys_clock_0.v" \

vcom -work axi_iic_v2_1_11 -93  \
"../../../../../scalp_zynqps/ipshared/67c0/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_iic_ioext_0/sim/scalp_zynqps_axi_iic_ioext_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_joystick_0/sim/scalp_zynqps_axi_gpio_joystick_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/a415" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/9a25/hdl" "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../../scalp_zynqps/ipshared/5431/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/4e08/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0568/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/3556/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a415" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_protocol_converter_v2_1_37 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l axi_iic_v2_1_11 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_clk_wiz_0_0_1/scalp_zynqps_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_clk_wiz_0_0_1/scalp_zynqps_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/scalp_zynqps/sim/scalp_zynqps.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

