vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"D:/Download/AppGallery/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Download/AppGallery/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../IPCore.srcs/sources_1/ip/DCM_PLL/DCM_PLL_clk_wiz.v" \
"../../../../IPCore.srcs/sources_1/ip/DCM_PLL/DCM_PLL.v" \

vlog -work xil_defaultlib \
"glbl.v"

