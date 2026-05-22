transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_12
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_12 riviera/blk_mem_gen_v8_4_12
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -v2k5 "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_12 -l xil_defaultlib \
"../../../../scalp_user_design.gen/sources_1/ip/BRAM_5_130k/sim/BRAM_5_130k.v" \

vlog -work xil_defaultlib \
"glbl.v"

