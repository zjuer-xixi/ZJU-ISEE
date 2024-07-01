onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PictureROM_opt

do {wave.do}

view wave
view structure
view signals

do {PictureROM.udo}

run -all

quit -force
