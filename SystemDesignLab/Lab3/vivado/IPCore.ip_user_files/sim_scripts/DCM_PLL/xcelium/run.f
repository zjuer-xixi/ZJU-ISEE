-makelib xcelium_lib/xpm -sv \
  "D:/Download/AppGallery/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Download/AppGallery/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../IPCore.srcs/sources_1/ip/DCM_PLL/DCM_PLL_clk_wiz.v" \
  "../../../../IPCore.srcs/sources_1/ip/DCM_PLL/DCM_PLL.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
