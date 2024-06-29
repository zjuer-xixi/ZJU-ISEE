onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+PictureROM -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PictureROM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {PictureROM.udo}

run -all

endsim

quit -force
