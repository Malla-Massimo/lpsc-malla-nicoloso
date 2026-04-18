transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+BRAM_5_500k  -L xil_defaultlib -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM_5_500k xil_defaultlib.glbl

do {BRAM_5_500k.udo}

run 1000ns

endsim

quit -force
