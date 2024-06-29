onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DCM_Audio_opt

do {wave.do}

view wave
view structure
view signals

do {DCM_Audio.udo}

run -all

quit -force
