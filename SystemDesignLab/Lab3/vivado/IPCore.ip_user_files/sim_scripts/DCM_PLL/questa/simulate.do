onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DCM_PLL_opt

do {wave.do}

view wave
view structure
view signals

do {DCM_PLL.udo}

run -all

quit -force
