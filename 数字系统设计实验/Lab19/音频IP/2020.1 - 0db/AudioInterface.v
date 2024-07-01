// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 13 09:04:12 2023
// Host        : DESKTOP-GU0FSLB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub d:/AudioInterface.v
// Design      : AudioInterface
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module AudioInterface(clk, reset, ADC_SDATA, DAC_SDATA, BCLK, MCLK, LRCLK, 
  SCL, SDA, error, LeftPlayData, RightPlayData, LeftRecData, RightRecData, NewFrame)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,ADC_SDATA,DAC_SDATA,BCLK,MCLK,LRCLK,SCL,SDA,error,LeftPlayData[23:0],RightPlayData[23:0],LeftRecData[23:0],RightRecData[23:0],NewFrame" */;
  input clk;
  input reset;
  input ADC_SDATA;
  output DAC_SDATA;
  output BCLK;
  output MCLK;
  output LRCLK;
  inout SCL;
  inout SDA;
  output error;
  input [23:0]LeftPlayData;
  input [23:0]RightPlayData;
  output [23:0]LeftRecData;
  output [23:0]RightRecData;
  output NewFrame;
endmodule
