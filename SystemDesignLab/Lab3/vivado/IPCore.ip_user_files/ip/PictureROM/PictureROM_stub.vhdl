-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Apr 18 16:30:16 2024
-- Host        : zjuer-xixi running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/StudyRepository/SystemDesignLab/IPCore/vivado/IPCore.srcs/sources_1/ip/PictureROM/PictureROM_stub.vhdl
-- Design      : PictureROM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PictureROM is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end PictureROM;

architecture stub of PictureROM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[11:0],clk,qspo_ce,spo[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2020.1";
begin
end;
