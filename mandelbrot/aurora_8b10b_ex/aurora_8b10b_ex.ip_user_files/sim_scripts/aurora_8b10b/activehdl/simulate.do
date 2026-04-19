transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+aurora_8b10b  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.aurora_8b10b xil_defaultlib.glbl

do {aurora_8b10b.udo}

run 1000ns

endsim

quit -force
