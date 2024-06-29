// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Apr 18 16:30:16 2024
// Host        : zjuer-xixi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/StudyRepository/SystemDesignLab/IPCore/vivado/IPCore.srcs/sources_1/ip/PictureROM/PictureROM_stub.v
// Design      : PictureROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.1" *)
module PictureROM(a, clk, qspo_ce, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],clk,qspo_ce,spo[23:0]" */;
  input [11:0]a;
  input clk;
  input qspo_ce;
  output [23:0]spo;
endmodule
