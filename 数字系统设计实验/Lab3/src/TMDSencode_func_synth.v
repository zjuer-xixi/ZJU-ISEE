// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Mon Jul 24 16:32:45 2017
// Host        : 95KIKX20OIVMYU9 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/DigitalSystemNew/blackBox/blackBox.sim/sim_1/synth/func/TMDSencode_func_synth.v
// Design      : TMDSencode
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module NumberCnt
   (D,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[5] ,
    S,
    DI,
    \cnt_reg[7] ,
    \cnt_reg[3] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \cnt_reg[7]_2 ,
    ActiveArea_IBUF,
    red_IBUF,
    \red[2] ,
    \red[0] ,
    \red[4] ,
    \red[3] ,
    \red[0]_0 ,
    \red[3]_0 ,
    O,
    \cnt_reg[5] ,
    Q,
    \red[7] ,
    \red[6] ,
    \red[7]_0 ,
    \red[7]_1 ,
    \red[7]_2 ,
    \red[2]_0 ,
    \cnt_reg[1] ,
    \cnt_reg[0] ,
    \red[4]_0 ,
    \cnt_reg[1]_0 ,
    \red[7]_3 ,
    \red[7]_4 );
  output [8:0]D;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[5] ;
  output [3:0]S;
  output [0:0]DI;
  output [2:0]\cnt_reg[7] ;
  output [3:0]\cnt_reg[3] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [3:0]\cnt_reg[7]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [1:0]\cnt_reg[3]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output [1:0]\cnt_reg[7]_2 ;
  input ActiveArea_IBUF;
  input [7:0]red_IBUF;
  input \red[2] ;
  input \red[0] ;
  input \red[4] ;
  input \red[3] ;
  input \red[0]_0 ;
  input \red[3]_0 ;
  input [3:0]O;
  input [3:0]\cnt_reg[5] ;
  input [7:0]Q;
  input \red[7] ;
  input \red[6] ;
  input \red[7]_0 ;
  input \red[7]_1 ;
  input \red[7]_2 ;
  input \red[2]_0 ;
  input [3:0]\cnt_reg[1] ;
  input [3:0]\cnt_reg[0] ;
  input \red[4]_0 ;
  input \cnt_reg[1]_0 ;
  input \red[7]_3 ;
  input \red[7]_4 ;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [0:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire cnt0__0_carry__0_i_7__1_n_0;
  wire cnt0__0_carry__0_i_9__0_n_0;
  wire cnt0__0_carry_i_13__1_n_0;
  wire cnt0__0_carry_i_14__1_n_0;
  wire cnt0__0_carry_i_15__1_n_0;
  wire cnt0__0_carry_i_24__0_n_0;
  wire cnt0__0_carry_i_25__0_n_0;
  wire cnt0__0_carry_i_8__1_n_0;
  wire cnt0__23_carry__0_i_8__1_n_0;
  wire cnt0__23_carry_i_10__0_n_0;
  wire cnt0__23_carry_i_11__0_n_0;
  wire cnt0__23_carry_i_7__1_n_0;
  wire cnt0__23_carry_i_8__1_n_0;
  wire cnt_carry__0_i_8__1_n_0;
  wire cnt_carry_i_10__1_n_0;
  wire cnt_carry_i_11__1_n_0;
  wire cnt_carry_i_12__1_n_0;
  wire cnt_carry_i_9__1_n_0;
  wire [3:0]\cnt_reg[0] ;
  wire [3:0]\cnt_reg[1] ;
  wire \cnt_reg[1]_0 ;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\cnt_reg[3]_1 ;
  wire [1:0]\cnt_reg[3]_2 ;
  wire [3:0]\cnt_reg[3]_3 ;
  wire [1:0]\cnt_reg[3]_4 ;
  wire [3:0]\cnt_reg[5] ;
  wire [2:0]\cnt_reg[7] ;
  wire [2:0]\cnt_reg[7]_0 ;
  wire [3:0]\cnt_reg[7]_1 ;
  wire [1:0]\cnt_reg[7]_2 ;
  wire [3:0]num1d;
  wire \q[5]_i_4__0_n_0 ;
  wire \q[5]_i_6__0_n_0 ;
  wire \q[5]_i_8_n_0 ;
  wire \q[7]_i_6__1_n_0 ;
  wire \q[7]_i_7__1_n_0 ;
  wire \q[8]_i_10_n_0 ;
  wire \q[8]_i_11_n_0 ;
  wire \q[8]_i_12_n_0 ;
  wire \q[8]_i_13_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q[8]_i_7_n_0 ;
  wire \q[8]_i_8_n_0 ;
  wire \q[8]_i_9_n_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[5] ;
  wire \red[0] ;
  wire \red[0]_0 ;
  wire \red[2] ;
  wire \red[2]_0 ;
  wire \red[3] ;
  wire \red[3]_0 ;
  wire \red[4] ;
  wire \red[4]_0 ;
  wire \red[6] ;
  wire \red[7] ;
  wire \red[7]_0 ;
  wire \red[7]_1 ;
  wire \red[7]_2 ;
  wire \red[7]_3 ;
  wire \red[7]_4 ;
  wire [7:0]red_IBUF;

  LUT6 #(
    .INIT(64'h0000000900006000)) 
    cnt0__0_carry__0_i_10__0
       (.I0(\red[4]_0 ),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[2]),
        .I3(red_IBUF[1]),
        .I4(red_IBUF[0]),
        .I5(\q_reg[1]_0 ),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hEEEAEEEE11151111)) 
    cnt0__0_carry__0_i_11__0
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(num1d[0]),
        .I4(red_IBUF[0]),
        .I5(\red[3]_0 ),
        .O(\q_reg[1]_3 ));
  LUT3 #(
    .INIT(8'h06)) 
    cnt0__0_carry__0_i_2__1
       (.I0(cnt0__0_carry_i_14__1_n_0),
        .I1(Q[3]),
        .I2(cnt0__0_carry_i_13__1_n_0),
        .O(DI));
  LUT5 #(
    .INIT(32'hFFB2004D)) 
    cnt0__0_carry__0_i_5__1
       (.I0(cnt0__0_carry__0_i_7__1_n_0),
        .I1(\red[7] ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'hBD2B42D4)) 
    cnt0__0_carry__0_i_6__0
       (.I0(cnt0__0_carry__0_i_7__1_n_0),
        .I1(\red[7] ),
        .I2(cnt0__0_carry_i_13__1_n_0),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\cnt_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h0000001000400000)) 
    cnt0__0_carry__0_i_7__1
       (.I0(\red[0] ),
        .I1(\red[3]_0 ),
        .I2(cnt0__0_carry__0_i_9__0_n_0),
        .I3(\red[0]_0 ),
        .I4(\red[3] ),
        .I5(\q_reg[1]_0 ),
        .O(cnt0__0_carry__0_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h0400004000044000)) 
    cnt0__0_carry__0_i_9__0
       (.I0(\red[4] ),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[1]),
        .I3(\red[4]_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(\red[3]_0 ),
        .O(cnt0__0_carry__0_i_9__0_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    cnt0__0_carry_i_13__1
       (.I0(cnt0__0_carry_i_24__0_n_0),
        .I1(cnt0__0_carry_i_25__0_n_0),
        .I2(Q[2]),
        .O(cnt0__0_carry_i_13__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_14__1
       (.I0(\red[7] ),
        .I1(cnt0__0_carry__0_i_7__1_n_0),
        .O(cnt0__0_carry_i_14__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_15__1
       (.I0(cnt0__23_carry_i_8__1_n_0),
        .I1(\red[2]_0 ),
        .O(cnt0__0_carry_i_15__1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    cnt0__0_carry_i_1__1
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(\red[6] ),
        .I3(\q_reg[1]_0 ),
        .O(\cnt_reg[3]_2 [1]));
  LUT6 #(
    .INIT(64'h11151111EEEAEEEE)) 
    cnt0__0_carry_i_21__0
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(num1d[0]),
        .I4(red_IBUF[0]),
        .I5(\red[3] ),
        .O(\q_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_24__0
       (.I0(\red[7]_1 ),
        .I1(\red[7]_2 ),
        .O(cnt0__0_carry_i_24__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__0_carry_i_25__0
       (.I0(\red[7]_1 ),
        .I1(\red[7]_2 ),
        .O(cnt0__0_carry_i_25__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    cnt0__0_carry_i_2__1
       (.I0(\red[6] ),
        .I1(\q_reg[1]_0 ),
        .I2(\red[7]_0 ),
        .I3(Q[1]),
        .O(\cnt_reg[3]_2 [0]));
  LUT6 #(
    .INIT(64'h1115EAEEEEEE1111)) 
    cnt0__0_carry_i_32__0
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(\q[8]_i_3_n_0 ),
        .I4(red_IBUF[1]),
        .I5(red_IBUF[0]),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h7DBEEBD7)) 
    cnt0__0_carry_i_3__1
       (.I0(red_IBUF[4]),
        .I1(\q_reg[1]_0 ),
        .I2(\red[7]_3 ),
        .I3(\red[7]_4 ),
        .I4(red_IBUF[1]),
        .O(\q_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h9669)) 
    cnt0__0_carry_i_4__1
       (.I0(\cnt_reg[3]_2 [1]),
        .I1(cnt0__0_carry_i_13__1_n_0),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_14__1_n_0),
        .O(\cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    cnt0__0_carry_i_5__1
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(\red[6] ),
        .I3(\q_reg[1]_0 ),
        .I4(\cnt_reg[3]_2 [0]),
        .O(\cnt_reg[3]_1 [2]));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_6__1
       (.I0(\red[6] ),
        .I1(\q_reg[1]_0 ),
        .I2(\red[7]_0 ),
        .I3(Q[1]),
        .I4(\q_reg[1]_2 ),
        .O(\cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_7__0
       (.I0(cnt0__0_carry_i_15__1_n_0),
        .I1(Q[0]),
        .O(\cnt_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_8__1
       (.I0(\red[7]_2 ),
        .I1(\red[7]_1 ),
        .O(cnt0__0_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_1__1
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .O(\cnt_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_2__1
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .O(\cnt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__23_carry__0_i_3__1
       (.I0(Q[3]),
        .I1(cnt0__23_carry_i_10__0_n_0),
        .O(\cnt_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__23_carry__0_i_4__1
       (.I0(cnt0__23_carry__0_i_8__1_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(\cnt_reg[7]_1 [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_5__1
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .I2(Q[6]),
        .O(\cnt_reg[7]_1 [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_6__1
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .I2(Q[5]),
        .O(\cnt_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h7887)) 
    cnt0__23_carry__0_i_7__1
       (.I0(cnt0__23_carry_i_10__0_n_0),
        .I1(Q[3]),
        .I2(cnt0__23_carry__0_i_8__1_n_0),
        .I3(Q[4]),
        .O(\cnt_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hD000D0D0DDDDDDDD)) 
    cnt0__23_carry__0_i_8__1
       (.I0(cnt0__0_carry__0_i_7__1_n_0),
        .I1(\red[7] ),
        .I2(cnt0__0_carry_i_24__0_n_0),
        .I3(cnt0__23_carry_i_7__1_n_0),
        .I4(cnt0__0_carry_i_8__1_n_0),
        .I5(cnt0__0_carry_i_14__1_n_0),
        .O(cnt0__23_carry__0_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    cnt0__23_carry_i_10__0
       (.I0(cnt0__0_carry_i_14__1_n_0),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(cnt0__23_carry_i_7__1_n_0),
        .I3(cnt0__0_carry_i_24__0_n_0),
        .O(cnt0__23_carry_i_10__0_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    cnt0__23_carry_i_11__0
       (.I0(\red[0]_0 ),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[4]),
        .I3(red_IBUF[6]),
        .I4(red_IBUF[5]),
        .I5(\q_reg[1]_5 ),
        .O(cnt0__23_carry_i_11__0_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    cnt0__23_carry_i_1__1
       (.I0(cnt0__0_carry_i_8__1_n_0),
        .I1(cnt0__23_carry_i_7__1_n_0),
        .I2(Q[2]),
        .O(\cnt_reg[3]_4 [1]));
  LUT5 #(
    .INIT(32'h69660000)) 
    cnt0__23_carry_i_2__1
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(\red[2]_0 ),
        .I4(\q_reg[1]_0 ),
        .O(\cnt_reg[3]_4 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_3__1
       (.I0(\cnt_reg[3]_4 [1]),
        .I1(cnt0__23_carry_i_10__0_n_0),
        .I2(Q[3]),
        .O(\cnt_reg[3]_3 [3]));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    cnt0__23_carry_i_4__1
       (.I0(cnt0__0_carry_i_8__1_n_0),
        .I1(cnt0__23_carry_i_7__1_n_0),
        .I2(Q[2]),
        .I3(\cnt_reg[3]_4 [0]),
        .O(\cnt_reg[3]_3 [2]));
  LUT6 #(
    .INIT(64'h6966969996996966)) 
    cnt0__23_carry_i_5__1
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(\red[2]_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(Q[1]),
        .O(\cnt_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_6__1
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__1_n_0),
        .O(\cnt_reg[3]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDD4D)) 
    cnt0__23_carry_i_7__1
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(\red[2]_0 ),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .O(cnt0__23_carry_i_7__1_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    cnt0__23_carry_i_8__1
       (.I0(red_IBUF[4]),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[2]),
        .I3(\q_reg[5] ),
        .I4(cnt0__23_carry_i_11__0_n_0),
        .O(cnt0__23_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_1__1
       (.I0(Q[6]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_2__1
       (.I0(Q[5]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_3__1
       (.I0(Q[4]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [0]));
  LUT6 #(
    .INIT(64'hFC0CFFFFFC0CAAAA)) 
    cnt_carry__0_i_4__1
       (.I0(cnt_carry__0_i_8__1_n_0),
        .I1(O[3]),
        .I2(\q_reg[1]_1 ),
        .I3(\cnt_reg[5] [3]),
        .I4(\q_reg[1] ),
        .I5(Q[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_5__1
       (.I0(Q[6]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[1] ),
        .I3(O[2]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_6__1
       (.I0(Q[5]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[1] ),
        .I3(O[1]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_7__1
       (.I0(Q[4]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[1] ),
        .I3(O[0]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hD4D422BB)) 
    cnt_carry__0_i_8__1
       (.I0(cnt0__0_carry__0_i_7__1_n_0),
        .I1(\red[7] ),
        .I2(\q[7]_i_6__1_n_0 ),
        .I3(\q[7]_i_7__1_n_0 ),
        .I4(\q_reg[1]_0 ),
        .O(cnt_carry__0_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h3693666699993693)) 
    cnt_carry_i_10__1
       (.I0(\q_reg[1]_0 ),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(\red[2]_0 ),
        .I4(\red[6] ),
        .I5(\red[7]_0 ),
        .O(cnt_carry_i_10__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    cnt_carry_i_11__1
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(\q_reg[1]_0 ),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .I4(\red[2]_0 ),
        .O(cnt_carry_i_11__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    cnt_carry_i_12__1
       (.I0(\q_reg[1]_2 ),
        .I1(\red[6] ),
        .I2(\red[7]_0 ),
        .O(cnt_carry_i_12__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_1__1
       (.I0(Q[3]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [3]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_2__1
       (.I0(Q[2]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_3__1
       (.I0(Q[1]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_4__1
       (.I0(Q[0]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_5__1
       (.I0(Q[3]),
        .I1(cnt_carry_i_9__1_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [3]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_6__1
       (.I0(Q[2]),
        .I1(cnt_carry_i_10__1_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [2]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_7__1
       (.I0(Q[1]),
        .I1(cnt_carry_i_11__1_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [1]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_8__1
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__1_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [0]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hC34BF03CC378F03C)) 
    cnt_carry_i_9__1
       (.I0(cnt_carry_i_12__1_n_0),
        .I1(\q_reg[1]_0 ),
        .I2(cnt0__0_carry_i_14__1_n_0),
        .I3(cnt0__0_carry_i_25__0_n_0),
        .I4(cnt0__0_carry_i_24__0_n_0),
        .I5(cnt0__23_carry_i_7__1_n_0),
        .O(cnt_carry_i_9__1_n_0));
  LUT5 #(
    .INIT(32'hA0820A82)) 
    \q[0]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[1]_0 ),
        .I2(red_IBUF[0]),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2828822882282828)) 
    \q[1]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[1]),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_0 ),
        .I5(\q_reg[1]_1 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[2]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[0]_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h22828222)) 
    \q[3]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[3]_0 ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[1]_1 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[4]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[4] ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h02A2A202)) 
    \q[5]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[2] ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[5] ),
        .I4(\q_reg[1]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h5555AAA9AAAA5556)) 
    \q[5]_i_3__0 
       (.I0(\red[3]_0 ),
        .I1(\q[5]_i_4__0_n_0 ),
        .I2(num1d[0]),
        .I3(num1d[1]),
        .I4(\q[5]_i_6__0_n_0 ),
        .I5(\red[4]_0 ),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \q[5]_i_4__0 
       (.I0(red_IBUF[7]),
        .I1(red_IBUF[2]),
        .I2(\q[8]_i_13_n_0 ),
        .I3(red_IBUF[3]),
        .I4(red_IBUF[6]),
        .I5(red_IBUF[0]),
        .O(\q[5]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q[5]_i_5 
       (.I0(red_IBUF[0]),
        .I1(red_IBUF[1]),
        .I2(\q[8]_i_3_n_0 ),
        .O(num1d[0]));
  LUT6 #(
    .INIT(64'h000F03F3505F03F3)) 
    \q[5]_i_6__0 
       (.I0(\q[5]_i_8_n_0 ),
        .I1(\q[8]_i_12_n_0 ),
        .I2(red_IBUF[6]),
        .I3(\q[8]_i_11_n_0 ),
        .I4(red_IBUF[7]),
        .I5(\q[8]_i_10_n_0 ),
        .O(\q[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q[5]_i_8 
       (.I0(red_IBUF[3]),
        .I1(red_IBUF[4]),
        .I2(red_IBUF[0]),
        .I3(red_IBUF[1]),
        .I4(red_IBUF[5]),
        .I5(red_IBUF[2]),
        .O(\q[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[6]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[0] ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h22828222)) 
    \q[7]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\red[3] ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[1]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFF)) 
    \q[7]_i_3__1 
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(cnt0__0_carry_i_14__1_n_0),
        .I3(cnt0__0_carry_i_8__1_n_0),
        .I4(cnt0__0_carry_i_15__1_n_0),
        .I5(\cnt_reg[1]_0 ),
        .O(\q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2BDD2B44)) 
    \q[7]_i_4__1 
       (.I0(cnt0__0_carry__0_i_7__1_n_0),
        .I1(\red[7] ),
        .I2(\q[7]_i_6__1_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7__1_n_0 ),
        .O(\q_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h4D00FF4D)) 
    \q[7]_i_6__1 
       (.I0(\q_reg[1]_2 ),
        .I1(\red[6] ),
        .I2(\red[7]_0 ),
        .I3(\red[7]_1 ),
        .I4(\red[7]_2 ),
        .O(\q[7]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hDD4DFFFF0000DD4D)) 
    \q[7]_i_7__1 
       (.I0(\red[7]_0 ),
        .I1(\red[6] ),
        .I2(\red[2]_0 ),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .I4(\red[7]_2 ),
        .I5(\red[7]_1 ),
        .O(\q[7]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFEFFFEFEE8)) 
    \q[8]_i_10 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[4]),
        .I4(red_IBUF[0]),
        .I5(red_IBUF[1]),
        .O(\q[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE8FEE8E880)) 
    \q[8]_i_11 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[1]),
        .I4(red_IBUF[0]),
        .I5(red_IBUF[4]),
        .O(\q[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \q[8]_i_12 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[4]),
        .I3(red_IBUF[0]),
        .I4(red_IBUF[1]),
        .I5(red_IBUF[5]),
        .O(\q[8]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \q[8]_i_13 
       (.I0(red_IBUF[4]),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[1]),
        .I3(red_IBUF[5]),
        .O(\q[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1__1 
       (.I0(\q_reg[1]_0 ),
        .I1(ActiveArea_IBUF),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h000000000028FFFF)) 
    \q[8]_i_2__0 
       (.I0(red_IBUF[0]),
        .I1(\q[8]_i_3_n_0 ),
        .I2(red_IBUF[1]),
        .I3(num1d[1]),
        .I4(num1d[2]),
        .I5(num1d[3]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q[8]_i_3 
       (.I0(red_IBUF[5]),
        .I1(red_IBUF[4]),
        .I2(red_IBUF[6]),
        .I3(red_IBUF[7]),
        .I4(red_IBUF[3]),
        .I5(red_IBUF[2]),
        .O(\q[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_4 
       (.I0(\q[8]_i_7_n_0 ),
        .I1(red_IBUF[7]),
        .I2(\q[8]_i_8_n_0 ),
        .I3(red_IBUF[6]),
        .I4(\q[8]_i_9_n_0 ),
        .O(num1d[1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_5 
       (.I0(\q[8]_i_10_n_0 ),
        .I1(red_IBUF[7]),
        .I2(\q[8]_i_11_n_0 ),
        .I3(red_IBUF[6]),
        .I4(\q[8]_i_12_n_0 ),
        .O(num1d[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q[8]_i_6 
       (.I0(red_IBUF[6]),
        .I1(red_IBUF[3]),
        .I2(\q[8]_i_13_n_0 ),
        .I3(red_IBUF[2]),
        .I4(red_IBUF[7]),
        .O(num1d[3]));
  LUT6 #(
    .INIT(64'h7EE8E881E8818117)) 
    \q[8]_i_7 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[4]),
        .I4(red_IBUF[1]),
        .I5(red_IBUF[0]),
        .O(\q[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE88181178117177E)) 
    \q[8]_i_8 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[4]),
        .I4(red_IBUF[0]),
        .I5(red_IBUF[1]),
        .O(\q[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \q[8]_i_9 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[3]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[4]),
        .I4(red_IBUF[0]),
        .I5(red_IBUF[1]),
        .O(\q[8]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_2
   (\q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \red[7] ,
    \red[4] ,
    red_IBUF,
    \red[4]_0 ,
    \red[5] ,
    \red[0] ,
    \red[4]_1 ,
    \red[4]_2 ,
    \red[0]_0 ,
    \red[3] ,
    \red[3]_0 ,
    \red[2] ,
    \red[4]_3 );
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  input \red[7] ;
  input \red[4] ;
  input [4:0]red_IBUF;
  input \red[4]_0 ;
  input \red[5] ;
  input \red[0] ;
  input \red[4]_1 ;
  input \red[4]_2 ;
  input \red[0]_0 ;
  input \red[3] ;
  input \red[3]_0 ;
  input \red[2] ;
  input \red[4]_3 ;

  wire cnt0__0_carry_i_18_n_0;
  wire cnt0__0_carry_i_19_n_0;
  wire cnt0__0_carry_i_20_n_0;
  wire cnt0__0_carry_i_22_n_0;
  wire cnt0__0_carry_i_23_n_0;
  wire cnt0__0_carry_i_26_n_0;
  wire cnt0__0_carry_i_27_n_0;
  wire cnt0__0_carry_i_28_n_0;
  wire cnt0__0_carry_i_29_n_0;
  wire cnt0__0_carry_i_30_n_0;
  wire cnt0__0_carry_i_31_n_0;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \red[0] ;
  wire \red[0]_0 ;
  wire \red[2] ;
  wire \red[3] ;
  wire \red[3]_0 ;
  wire \red[4] ;
  wire \red[4]_0 ;
  wire \red[4]_1 ;
  wire \red[4]_2 ;
  wire \red[4]_3 ;
  wire \red[5] ;
  wire \red[7] ;
  wire [4:0]red_IBUF;

  LUT6 #(
    .INIT(64'h0000000080080000)) 
    cnt0__0_carry__0_i_8
       (.I0(\red[7] ),
        .I1(\red[4] ),
        .I2(red_IBUF[4]),
        .I3(red_IBUF[3]),
        .I4(\red[4]_0 ),
        .I5(\red[5] ),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cnt0__0_carry_i_10
       (.I0(cnt0__0_carry_i_20_n_0),
        .I1(\red[4]_0 ),
        .I2(cnt0__0_carry_i_22_n_0),
        .I3(\red[0] ),
        .I4(cnt0__0_carry_i_23_n_0),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_11
       (.I0(\red[4]_3 ),
        .I1(\red[4] ),
        .I2(\red[0] ),
        .I3(\red[4]_0 ),
        .I4(\red[0]_0 ),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    cnt0__0_carry_i_12
       (.I0(\red[4]_0 ),
        .I1(\red[0] ),
        .I2(\red[4]_2 ),
        .I3(red_IBUF[2]),
        .I4(red_IBUF[1]),
        .I5(red_IBUF[0]),
        .O(\q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cnt0__0_carry_i_16
       (.I0(cnt0__0_carry_i_26_n_0),
        .I1(\red[4]_0 ),
        .I2(cnt0__0_carry_i_27_n_0),
        .I3(\red[0] ),
        .I4(cnt0__0_carry_i_28_n_0),
        .O(\q_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    cnt0__0_carry_i_17
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(\red[5] ),
        .I2(cnt0__0_carry_i_30_n_0),
        .I3(\red[4] ),
        .I4(cnt0__0_carry_i_31_n_0),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hE871E77E7EE78E17)) 
    cnt0__0_carry_i_18
       (.I0(\red[0] ),
        .I1(\red[4]_2 ),
        .I2(\red[2] ),
        .I3(red_IBUF[0]),
        .I4(red_IBUF[1]),
        .I5(red_IBUF[2]),
        .O(cnt0__0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h7E71181717E77181)) 
    cnt0__0_carry_i_19
       (.I0(\red[0] ),
        .I1(\red[4]_2 ),
        .I2(\red[2] ),
        .I3(red_IBUF[1]),
        .I4(red_IBUF[0]),
        .I5(red_IBUF[2]),
        .O(cnt0__0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hF9A3A3065CF9F9A3)) 
    cnt0__0_carry_i_20
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4]_3 ),
        .I3(\red[4] ),
        .I4(\red[4]_1 ),
        .I5(red_IBUF[0]),
        .O(cnt0__0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hA306F9A3065CA306)) 
    cnt0__0_carry_i_22
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4]_3 ),
        .I3(\red[4] ),
        .I4(red_IBUF[0]),
        .I5(\red[4]_1 ),
        .O(cnt0__0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h065CA3065CF9065C)) 
    cnt0__0_carry_i_23
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4]_3 ),
        .I3(\red[4] ),
        .I4(red_IBUF[0]),
        .I5(\red[4]_1 ),
        .O(cnt0__0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h045C00045CFD045C)) 
    cnt0__0_carry_i_26
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4]_3 ),
        .I3(\red[4] ),
        .I4(red_IBUF[0]),
        .I5(\red[4]_1 ),
        .O(cnt0__0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h5CFD045CFDFF5CFD)) 
    cnt0__0_carry_i_27
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4]_3 ),
        .I3(\red[4]_1 ),
        .I4(red_IBUF[0]),
        .I5(\red[4] ),
        .O(cnt0__0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'hFF5FFFFFDFCDFBDF)) 
    cnt0__0_carry_i_28
       (.I0(\red[0]_0 ),
        .I1(\red[5] ),
        .I2(\red[4] ),
        .I3(red_IBUF[0]),
        .I4(\red[4]_1 ),
        .I5(\red[4]_3 ),
        .O(cnt0__0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hE880FEE88000E880)) 
    cnt0__0_carry_i_29
       (.I0(\red[4]_0 ),
        .I1(\red[0] ),
        .I2(\red[4]_2 ),
        .I3(\red[0]_0 ),
        .I4(red_IBUF[0]),
        .I5(\red[4]_1 ),
        .O(cnt0__0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFF7FFEFFFEFFE8FE)) 
    cnt0__0_carry_i_30
       (.I0(\red[4]_0 ),
        .I1(\red[0] ),
        .I2(\red[4]_1 ),
        .I3(red_IBUF[0]),
        .I4(\red[4]_2 ),
        .I5(\red[0]_0 ),
        .O(cnt0__0_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFEFEF8EEF8E8E08)) 
    cnt0__0_carry_i_31
       (.I0(\red[4]_0 ),
        .I1(\red[0] ),
        .I2(red_IBUF[0]),
        .I3(\red[4]_1 ),
        .I4(\red[0]_0 ),
        .I5(\red[4]_2 ),
        .O(cnt0__0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'h177EDB4D8E18422B)) 
    cnt0__0_carry_i_9
       (.I0(\red[4] ),
        .I1(\red[3] ),
        .I2(cnt0__0_carry_i_18_n_0),
        .I3(\red[3]_0 ),
        .I4(\red[2] ),
        .I5(cnt0__0_carry_i_19_n_0),
        .O(\q_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    cnt0__23_carry_i_9
       (.I0(\red[2] ),
        .I1(red_IBUF[1]),
        .I2(\q_reg[1]_6 ),
        .O(\q_reg[1]_5 ));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_3
   (D,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[5] ,
    S,
    DI,
    \cnt_reg[7] ,
    \cnt_reg[3] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \cnt_reg[7]_2 ,
    ActiveArea_IBUF,
    green_IBUF,
    \green[2] ,
    \green[0] ,
    \green[4] ,
    \green[3] ,
    \green[0]_0 ,
    \green[3]_0 ,
    O,
    \cnt_reg[5] ,
    Q,
    \green[7] ,
    \green[6] ,
    \green[7]_0 ,
    \green[7]_1 ,
    \green[7]_2 ,
    \green[2]_0 ,
    \cnt_reg[1] ,
    \cnt_reg[0] ,
    \green[4]_0 ,
    \cnt_reg[1]_0 ,
    \green[7]_3 ,
    \green[7]_4 );
  output [8:0]D;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[5] ;
  output [3:0]S;
  output [0:0]DI;
  output [2:0]\cnt_reg[7] ;
  output [3:0]\cnt_reg[3] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [3:0]\cnt_reg[7]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [1:0]\cnt_reg[3]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output [1:0]\cnt_reg[7]_2 ;
  input ActiveArea_IBUF;
  input [7:0]green_IBUF;
  input \green[2] ;
  input \green[0] ;
  input \green[4] ;
  input \green[3] ;
  input \green[0]_0 ;
  input \green[3]_0 ;
  input [3:0]O;
  input [3:0]\cnt_reg[5] ;
  input [7:0]Q;
  input \green[7] ;
  input \green[6] ;
  input \green[7]_0 ;
  input \green[7]_1 ;
  input \green[7]_2 ;
  input \green[2]_0 ;
  input [3:0]\cnt_reg[1] ;
  input [3:0]\cnt_reg[0] ;
  input \green[4]_0 ;
  input \cnt_reg[1]_0 ;
  input \green[7]_3 ;
  input \green[7]_4 ;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [0:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire cnt0__0_carry__0_i_7__0_n_0;
  wire cnt0__0_carry__0_i_9_n_0;
  wire cnt0__0_carry_i_13__0_n_0;
  wire cnt0__0_carry_i_14__0_n_0;
  wire cnt0__0_carry_i_15__0_n_0;
  wire cnt0__0_carry_i_24_n_0;
  wire cnt0__0_carry_i_25_n_0;
  wire cnt0__0_carry_i_8__0_n_0;
  wire cnt0__23_carry__0_i_8__0_n_0;
  wire cnt0__23_carry_i_10_n_0;
  wire cnt0__23_carry_i_11_n_0;
  wire cnt0__23_carry_i_7__0_n_0;
  wire cnt0__23_carry_i_8__0_n_0;
  wire cnt_carry__0_i_8__0_n_0;
  wire cnt_carry_i_10__0_n_0;
  wire cnt_carry_i_11__0_n_0;
  wire cnt_carry_i_12__0_n_0;
  wire cnt_carry_i_9__0_n_0;
  wire [3:0]\cnt_reg[0] ;
  wire [3:0]\cnt_reg[1] ;
  wire \cnt_reg[1]_0 ;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\cnt_reg[3]_1 ;
  wire [1:0]\cnt_reg[3]_2 ;
  wire [3:0]\cnt_reg[3]_3 ;
  wire [1:0]\cnt_reg[3]_4 ;
  wire [3:0]\cnt_reg[5] ;
  wire [2:0]\cnt_reg[7] ;
  wire [2:0]\cnt_reg[7]_0 ;
  wire [3:0]\cnt_reg[7]_1 ;
  wire [1:0]\cnt_reg[7]_2 ;
  wire \green[0] ;
  wire \green[0]_0 ;
  wire \green[2] ;
  wire \green[2]_0 ;
  wire \green[3] ;
  wire \green[3]_0 ;
  wire \green[4] ;
  wire \green[4]_0 ;
  wire \green[6] ;
  wire \green[7] ;
  wire \green[7]_0 ;
  wire \green[7]_1 ;
  wire \green[7]_2 ;
  wire \green[7]_3 ;
  wire \green[7]_4 ;
  wire [7:0]green_IBUF;
  wire [3:0]num1d;
  wire \q[5]_i_4_n_0 ;
  wire \q[5]_i_6_n_0 ;
  wire \q[5]_i_8_n_0 ;
  wire \q[7]_i_6__0_n_0 ;
  wire \q[7]_i_7__0_n_0 ;
  wire \q[8]_i_10_n_0 ;
  wire \q[8]_i_11_n_0 ;
  wire \q[8]_i_12_n_0 ;
  wire \q[8]_i_13_n_0 ;
  wire \q[8]_i_14_n_0 ;
  wire \q[8]_i_4_n_0 ;
  wire \q[8]_i_8_n_0 ;
  wire \q[8]_i_9_n_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[5] ;

  LUT6 #(
    .INIT(64'h0000000900006000)) 
    cnt0__0_carry__0_i_10
       (.I0(\green[4]_0 ),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[2]),
        .I3(green_IBUF[1]),
        .I4(green_IBUF[0]),
        .I5(\q_reg[1]_0 ),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hEEEAEEEE11151111)) 
    cnt0__0_carry__0_i_11
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(num1d[0]),
        .I4(green_IBUF[0]),
        .I5(\green[3]_0 ),
        .O(\q_reg[1]_3 ));
  LUT3 #(
    .INIT(8'h06)) 
    cnt0__0_carry__0_i_2__0
       (.I0(cnt0__0_carry_i_14__0_n_0),
        .I1(Q[3]),
        .I2(cnt0__0_carry_i_13__0_n_0),
        .O(DI));
  LUT5 #(
    .INIT(32'hFFB2004D)) 
    cnt0__0_carry__0_i_5__0
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\green[7] ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'hB2BDB2424D424DBD)) 
    cnt0__0_carry__0_i_6__1
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\green[7] ),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_13__0_n_0),
        .I4(cnt0__0_carry_i_14__0_n_0),
        .I5(Q[4]),
        .O(\cnt_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'h0000001000400000)) 
    cnt0__0_carry__0_i_7__0
       (.I0(\green[0] ),
        .I1(\green[3]_0 ),
        .I2(cnt0__0_carry__0_i_9_n_0),
        .I3(\green[0]_0 ),
        .I4(\green[3] ),
        .I5(\q_reg[1]_0 ),
        .O(cnt0__0_carry__0_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0400004000044000)) 
    cnt0__0_carry__0_i_9
       (.I0(\green[4] ),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[1]),
        .I3(\green[4]_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(\green[3]_0 ),
        .O(cnt0__0_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    cnt0__0_carry_i_13__0
       (.I0(cnt0__0_carry_i_24_n_0),
        .I1(cnt0__0_carry_i_25_n_0),
        .I2(Q[2]),
        .O(cnt0__0_carry_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_14__0
       (.I0(\green[7] ),
        .I1(cnt0__0_carry__0_i_7__0_n_0),
        .O(cnt0__0_carry_i_14__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_15__0
       (.I0(cnt0__23_carry_i_8__0_n_0),
        .I1(\green[2]_0 ),
        .O(cnt0__0_carry_i_15__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    cnt0__0_carry_i_1__0
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(\green[6] ),
        .I3(\q_reg[1]_0 ),
        .O(\cnt_reg[3]_2 [1]));
  LUT6 #(
    .INIT(64'h11151111EEEAEEEE)) 
    cnt0__0_carry_i_21
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(num1d[0]),
        .I4(green_IBUF[0]),
        .I5(\green[3] ),
        .O(\q_reg[1]_5 ));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_24
       (.I0(\green[7]_1 ),
        .I1(\green[7]_2 ),
        .O(cnt0__0_carry_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_25
       (.I0(\green[7]_2 ),
        .I1(\green[7]_1 ),
        .O(cnt0__0_carry_i_25_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    cnt0__0_carry_i_2__0
       (.I0(\green[6] ),
        .I1(\q_reg[1]_0 ),
        .I2(\green[7]_0 ),
        .I3(Q[1]),
        .O(\cnt_reg[3]_2 [0]));
  LUT6 #(
    .INIT(64'h1115EAEEEEEE1111)) 
    cnt0__0_carry_i_32
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(\q[8]_i_4_n_0 ),
        .I4(green_IBUF[1]),
        .I5(green_IBUF[0]),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h7DBEEBD7)) 
    cnt0__0_carry_i_3__0
       (.I0(green_IBUF[4]),
        .I1(\q_reg[1]_0 ),
        .I2(\green[7]_3 ),
        .I3(\green[7]_4 ),
        .I4(green_IBUF[1]),
        .O(\q_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h9669)) 
    cnt0__0_carry_i_4__0
       (.I0(\cnt_reg[3]_2 [1]),
        .I1(cnt0__0_carry_i_13__0_n_0),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_14__0_n_0),
        .O(\cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    cnt0__0_carry_i_5__0
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(\green[6] ),
        .I3(\q_reg[1]_0 ),
        .I4(\cnt_reg[3]_2 [0]),
        .O(\cnt_reg[3]_1 [2]));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_6__0
       (.I0(\green[6] ),
        .I1(\q_reg[1]_0 ),
        .I2(\green[7]_0 ),
        .I3(Q[1]),
        .I4(\q_reg[1]_2 ),
        .O(\cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_7
       (.I0(cnt0__0_carry_i_15__0_n_0),
        .I1(Q[0]),
        .O(\cnt_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_8__0
       (.I0(\green[7]_2 ),
        .I1(\green[7]_1 ),
        .O(cnt0__0_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_1__0
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .O(\cnt_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_2__0
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .O(\cnt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__23_carry__0_i_3__0
       (.I0(Q[3]),
        .I1(cnt0__23_carry_i_10_n_0),
        .O(\cnt_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__23_carry__0_i_4__0
       (.I0(cnt0__23_carry__0_i_8__0_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(\cnt_reg[7]_1 [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_5__0
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .I2(Q[6]),
        .O(\cnt_reg[7]_1 [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_6__0
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .I2(Q[5]),
        .O(\cnt_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h7887)) 
    cnt0__23_carry__0_i_7__0
       (.I0(cnt0__23_carry_i_10_n_0),
        .I1(Q[3]),
        .I2(cnt0__23_carry__0_i_8__0_n_0),
        .I3(Q[4]),
        .O(\cnt_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hD000D0D0DDDDDDDD)) 
    cnt0__23_carry__0_i_8__0
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\green[7] ),
        .I2(cnt0__0_carry_i_24_n_0),
        .I3(cnt0__23_carry_i_7__0_n_0),
        .I4(cnt0__0_carry_i_8__0_n_0),
        .I5(cnt0__0_carry_i_14__0_n_0),
        .O(cnt0__23_carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    cnt0__23_carry_i_10
       (.I0(cnt0__0_carry_i_14__0_n_0),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(cnt0__23_carry_i_7__0_n_0),
        .I3(cnt0__0_carry_i_24_n_0),
        .O(cnt0__23_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    cnt0__23_carry_i_11
       (.I0(\green[0]_0 ),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[4]),
        .I3(green_IBUF[6]),
        .I4(green_IBUF[5]),
        .I5(\q_reg[1]_5 ),
        .O(cnt0__23_carry_i_11_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    cnt0__23_carry_i_1__0
       (.I0(cnt0__0_carry_i_8__0_n_0),
        .I1(cnt0__23_carry_i_7__0_n_0),
        .I2(Q[2]),
        .O(\cnt_reg[3]_4 [1]));
  LUT5 #(
    .INIT(32'h69660000)) 
    cnt0__23_carry_i_2__0
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(\green[2]_0 ),
        .I4(\q_reg[1]_0 ),
        .O(\cnt_reg[3]_4 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_3__0
       (.I0(\cnt_reg[3]_4 [1]),
        .I1(cnt0__23_carry_i_10_n_0),
        .I2(Q[3]),
        .O(\cnt_reg[3]_3 [3]));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    cnt0__23_carry_i_4__0
       (.I0(cnt0__0_carry_i_8__0_n_0),
        .I1(cnt0__23_carry_i_7__0_n_0),
        .I2(Q[2]),
        .I3(\cnt_reg[3]_4 [0]),
        .O(\cnt_reg[3]_3 [2]));
  LUT6 #(
    .INIT(64'h6966969996996966)) 
    cnt0__23_carry_i_5__0
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(\green[2]_0 ),
        .I4(\q_reg[1]_0 ),
        .I5(Q[1]),
        .O(\cnt_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_6__0
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__0_n_0),
        .O(\cnt_reg[3]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDD4D)) 
    cnt0__23_carry_i_7__0
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(\green[2]_0 ),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .O(cnt0__23_carry_i_7__0_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    cnt0__23_carry_i_8__0
       (.I0(green_IBUF[4]),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[2]),
        .I3(\q_reg[5] ),
        .I4(cnt0__23_carry_i_11_n_0),
        .O(cnt0__23_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_1__0
       (.I0(Q[6]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_2__0
       (.I0(Q[5]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_3__0
       (.I0(Q[4]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7] [0]));
  LUT6 #(
    .INIT(64'hFC0CFFFFFC0CAAAA)) 
    cnt_carry__0_i_4__0
       (.I0(cnt_carry__0_i_8__0_n_0),
        .I1(O[3]),
        .I2(\q_reg[1]_1 ),
        .I3(\cnt_reg[5] [3]),
        .I4(\q_reg[1] ),
        .I5(Q[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_5__0
       (.I0(Q[6]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[1] ),
        .I3(O[2]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_6__0
       (.I0(Q[5]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[1] ),
        .I3(O[1]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_7__0
       (.I0(Q[4]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[1] ),
        .I3(O[0]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[5] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h4D4D22BB)) 
    cnt_carry__0_i_8__0
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\green[7] ),
        .I2(\q[7]_i_6__0_n_0 ),
        .I3(\q[7]_i_7__0_n_0 ),
        .I4(\q_reg[1]_0 ),
        .O(cnt_carry__0_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h3693666699993693)) 
    cnt_carry_i_10__0
       (.I0(\q_reg[1]_0 ),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(\green[2]_0 ),
        .I4(\green[6] ),
        .I5(\green[7]_0 ),
        .O(cnt_carry_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    cnt_carry_i_11__0
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(\q_reg[1]_0 ),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .I4(\green[2]_0 ),
        .O(cnt_carry_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    cnt_carry_i_12__0
       (.I0(\q_reg[1]_2 ),
        .I1(\green[6] ),
        .I2(\green[7]_0 ),
        .O(cnt_carry_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_1__0
       (.I0(Q[3]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [3]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_2__0
       (.I0(Q[2]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_3__0
       (.I0(Q[1]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_4__0
       (.I0(Q[0]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_5__0
       (.I0(Q[3]),
        .I1(cnt_carry_i_9__0_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [3]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_6__0
       (.I0(Q[2]),
        .I1(cnt_carry_i_10__0_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [2]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_7__0
       (.I0(Q[1]),
        .I1(cnt_carry_i_11__0_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [1]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_8__0
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__0_n_0),
        .I2(\q_reg[1] ),
        .I3(\cnt_reg[1] [0]),
        .I4(\q_reg[1]_1 ),
        .I5(\cnt_reg[0] [0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h4B3CC3F0783CC3F0)) 
    cnt_carry_i_9__0
       (.I0(cnt_carry_i_12__0_n_0),
        .I1(\q_reg[1]_0 ),
        .I2(cnt0__0_carry_i_14__0_n_0),
        .I3(cnt0__0_carry_i_24_n_0),
        .I4(cnt0__0_carry_i_25_n_0),
        .I5(cnt0__23_carry_i_7__0_n_0),
        .O(cnt_carry_i_9__0_n_0));
  LUT5 #(
    .INIT(32'hA0820A82)) 
    \q[0]_i_1 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[1]_0 ),
        .I2(green_IBUF[0]),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2828822882282828)) 
    \q[1]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[1]),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_0 ),
        .I5(\q_reg[1]_1 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[2]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[0]_0 ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h22828222)) 
    \q[3]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[3]_0 ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[1]_1 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[4]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[4] ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h02A2A202)) 
    \q[5]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[2] ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[5] ),
        .I4(\q_reg[1]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h5555AAA9AAAA5556)) 
    \q[5]_i_3 
       (.I0(\green[3]_0 ),
        .I1(\q[5]_i_4_n_0 ),
        .I2(num1d[0]),
        .I3(num1d[1]),
        .I4(\q[5]_i_6_n_0 ),
        .I5(\green[4]_0 ),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \q[5]_i_4 
       (.I0(green_IBUF[7]),
        .I1(green_IBUF[2]),
        .I2(\q[8]_i_14_n_0 ),
        .I3(green_IBUF[3]),
        .I4(green_IBUF[6]),
        .I5(green_IBUF[0]),
        .O(\q[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q[5]_i_5 
       (.I0(green_IBUF[0]),
        .I1(green_IBUF[1]),
        .I2(\q[8]_i_4_n_0 ),
        .O(num1d[0]));
  LUT6 #(
    .INIT(64'h000F03F3505F03F3)) 
    \q[5]_i_6 
       (.I0(\q[5]_i_8_n_0 ),
        .I1(\q[8]_i_13_n_0 ),
        .I2(green_IBUF[6]),
        .I3(\q[8]_i_12_n_0 ),
        .I4(green_IBUF[7]),
        .I5(\q[8]_i_11_n_0 ),
        .O(\q[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q[5]_i_8 
       (.I0(green_IBUF[3]),
        .I1(green_IBUF[4]),
        .I2(green_IBUF[0]),
        .I3(green_IBUF[1]),
        .I4(green_IBUF[5]),
        .I5(green_IBUF[2]),
        .O(\q[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h22288828)) 
    \q[6]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[0] ),
        .I2(\q_reg[1]_0 ),
        .I3(\q_reg[1] ),
        .I4(\q_reg[1]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h22828222)) 
    \q[7]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\green[3] ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[1]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFF)) 
    \q[7]_i_3__0 
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(cnt0__0_carry_i_14__0_n_0),
        .I3(cnt0__0_carry_i_8__0_n_0),
        .I4(cnt0__0_carry_i_15__0_n_0),
        .I5(\cnt_reg[1]_0 ),
        .O(\q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB2DDB244)) 
    \q[7]_i_4__0 
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\green[7] ),
        .I2(\q[7]_i_6__0_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7__0_n_0 ),
        .O(\q_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \q[7]_i_6__0 
       (.I0(\q_reg[1]_2 ),
        .I1(\green[6] ),
        .I2(\green[7]_0 ),
        .I3(\green[7]_1 ),
        .I4(\green[7]_2 ),
        .O(\q[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hDD4DFFFF0000DD4D)) 
    \q[7]_i_7__0 
       (.I0(\green[7]_0 ),
        .I1(\green[6] ),
        .I2(\green[2]_0 ),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .I4(\green[7]_2 ),
        .I5(\green[7]_1 ),
        .O(\q[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \q[8]_i_10 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[4]),
        .I4(green_IBUF[0]),
        .I5(green_IBUF[1]),
        .O(\q[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFEFFFEFEE8)) 
    \q[8]_i_11 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[4]),
        .I4(green_IBUF[0]),
        .I5(green_IBUF[1]),
        .O(\q[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE8FEE8E880)) 
    \q[8]_i_12 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[1]),
        .I4(green_IBUF[0]),
        .I5(green_IBUF[4]),
        .O(\q[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \q[8]_i_13 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[4]),
        .I3(green_IBUF[0]),
        .I4(green_IBUF[1]),
        .I5(green_IBUF[5]),
        .O(\q[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \q[8]_i_14 
       (.I0(green_IBUF[4]),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[1]),
        .I3(green_IBUF[5]),
        .O(\q[8]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_2__1 
       (.I0(\q_reg[1]_0 ),
        .I1(ActiveArea_IBUF),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h000000000028FFFF)) 
    \q[8]_i_3__0 
       (.I0(green_IBUF[0]),
        .I1(\q[8]_i_4_n_0 ),
        .I2(green_IBUF[1]),
        .I3(num1d[1]),
        .I4(num1d[2]),
        .I5(num1d[3]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q[8]_i_4 
       (.I0(green_IBUF[5]),
        .I1(green_IBUF[4]),
        .I2(green_IBUF[6]),
        .I3(green_IBUF[7]),
        .I4(green_IBUF[3]),
        .I5(green_IBUF[2]),
        .O(\q[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_5 
       (.I0(\q[8]_i_8_n_0 ),
        .I1(green_IBUF[7]),
        .I2(\q[8]_i_9_n_0 ),
        .I3(green_IBUF[6]),
        .I4(\q[8]_i_10_n_0 ),
        .O(num1d[1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_6 
       (.I0(\q[8]_i_11_n_0 ),
        .I1(green_IBUF[7]),
        .I2(\q[8]_i_12_n_0 ),
        .I3(green_IBUF[6]),
        .I4(\q[8]_i_13_n_0 ),
        .O(num1d[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q[8]_i_7 
       (.I0(green_IBUF[6]),
        .I1(green_IBUF[3]),
        .I2(\q[8]_i_14_n_0 ),
        .I3(green_IBUF[2]),
        .I4(green_IBUF[7]),
        .O(num1d[3]));
  LUT6 #(
    .INIT(64'h7EE8E881E8818117)) 
    \q[8]_i_8 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[4]),
        .I4(green_IBUF[1]),
        .I5(green_IBUF[0]),
        .O(\q[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE88181178117177E)) 
    \q[8]_i_9 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[3]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[4]),
        .I4(green_IBUF[0]),
        .I5(green_IBUF[1]),
        .O(\q[8]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_4
   (\q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \cnt_reg[3] ,
    \cnt_reg[3]_0 ,
    \green[7] ,
    \green[4] ,
    green_IBUF,
    \green[4]_0 ,
    \green[5] ,
    \green[0] ,
    \green[4]_1 ,
    \green[4]_2 ,
    \green[0]_0 ,
    \green[3] ,
    \green[3]_0 ,
    \green[2] ,
    \green[4]_3 );
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \cnt_reg[3] ;
  output \cnt_reg[3]_0 ;
  input \green[7] ;
  input \green[4] ;
  input [4:0]green_IBUF;
  input \green[4]_0 ;
  input \green[5] ;
  input \green[0] ;
  input \green[4]_1 ;
  input \green[4]_2 ;
  input \green[0]_0 ;
  input \green[3] ;
  input \green[3]_0 ;
  input \green[2] ;
  input \green[4]_3 ;

  wire cnt0__0_carry_i_18_n_0;
  wire cnt0__0_carry_i_19_n_0;
  wire cnt0__0_carry_i_20_n_0;
  wire cnt0__0_carry_i_22_n_0;
  wire cnt0__0_carry_i_23_n_0;
  wire cnt0__0_carry_i_26_n_0;
  wire cnt0__0_carry_i_27_n_0;
  wire cnt0__0_carry_i_28_n_0;
  wire cnt0__0_carry_i_29_n_0;
  wire cnt0__0_carry_i_30_n_0;
  wire cnt0__0_carry_i_31_n_0;
  wire \cnt_reg[3] ;
  wire \cnt_reg[3]_0 ;
  wire \green[0] ;
  wire \green[0]_0 ;
  wire \green[2] ;
  wire \green[3] ;
  wire \green[3]_0 ;
  wire \green[4] ;
  wire \green[4]_0 ;
  wire \green[4]_1 ;
  wire \green[4]_2 ;
  wire \green[4]_3 ;
  wire \green[5] ;
  wire \green[7] ;
  wire [4:0]green_IBUF;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;

  LUT6 #(
    .INIT(64'h0000000080080000)) 
    cnt0__0_carry__0_i_8
       (.I0(\green[7] ),
        .I1(\green[4] ),
        .I2(green_IBUF[4]),
        .I3(green_IBUF[3]),
        .I4(\green[4]_0 ),
        .I5(\green[5] ),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cnt0__0_carry_i_10
       (.I0(cnt0__0_carry_i_20_n_0),
        .I1(\green[4]_0 ),
        .I2(cnt0__0_carry_i_22_n_0),
        .I3(\green[0] ),
        .I4(cnt0__0_carry_i_23_n_0),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_11
       (.I0(\green[4]_3 ),
        .I1(\green[4] ),
        .I2(\green[0] ),
        .I3(\green[4]_0 ),
        .I4(\green[0]_0 ),
        .O(\cnt_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    cnt0__0_carry_i_12
       (.I0(\green[4]_0 ),
        .I1(\green[0] ),
        .I2(\green[4]_2 ),
        .I3(green_IBUF[2]),
        .I4(green_IBUF[1]),
        .I5(green_IBUF[0]),
        .O(\q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cnt0__0_carry_i_16
       (.I0(cnt0__0_carry_i_26_n_0),
        .I1(\green[4]_0 ),
        .I2(cnt0__0_carry_i_27_n_0),
        .I3(\green[0] ),
        .I4(cnt0__0_carry_i_28_n_0),
        .O(\q_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    cnt0__0_carry_i_17
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(\green[5] ),
        .I2(cnt0__0_carry_i_30_n_0),
        .I3(\green[4] ),
        .I4(cnt0__0_carry_i_31_n_0),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hE871E77E7EE78E17)) 
    cnt0__0_carry_i_18
       (.I0(\green[0] ),
        .I1(\green[4]_2 ),
        .I2(\green[2] ),
        .I3(green_IBUF[0]),
        .I4(green_IBUF[1]),
        .I5(green_IBUF[2]),
        .O(cnt0__0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h7E71181717E77181)) 
    cnt0__0_carry_i_19
       (.I0(\green[0] ),
        .I1(\green[4]_2 ),
        .I2(\green[2] ),
        .I3(green_IBUF[1]),
        .I4(green_IBUF[0]),
        .I5(green_IBUF[2]),
        .O(cnt0__0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hF9A3A3065CF9F9A3)) 
    cnt0__0_carry_i_20
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4]_3 ),
        .I3(\green[4] ),
        .I4(\green[4]_1 ),
        .I5(green_IBUF[0]),
        .O(cnt0__0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hA306F9A3065CA306)) 
    cnt0__0_carry_i_22
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4]_3 ),
        .I3(\green[4] ),
        .I4(green_IBUF[0]),
        .I5(\green[4]_1 ),
        .O(cnt0__0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h065CA3065CF9065C)) 
    cnt0__0_carry_i_23
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4]_3 ),
        .I3(\green[4] ),
        .I4(green_IBUF[0]),
        .I5(\green[4]_1 ),
        .O(cnt0__0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h045C00045CFD045C)) 
    cnt0__0_carry_i_26
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4]_3 ),
        .I3(\green[4] ),
        .I4(green_IBUF[0]),
        .I5(\green[4]_1 ),
        .O(cnt0__0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h5CFD045CFDFF5CFD)) 
    cnt0__0_carry_i_27
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4]_3 ),
        .I3(\green[4]_1 ),
        .I4(green_IBUF[0]),
        .I5(\green[4] ),
        .O(cnt0__0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'hFF5FFFFFDFCDFBDF)) 
    cnt0__0_carry_i_28
       (.I0(\green[0]_0 ),
        .I1(\green[5] ),
        .I2(\green[4] ),
        .I3(green_IBUF[0]),
        .I4(\green[4]_1 ),
        .I5(\green[4]_3 ),
        .O(cnt0__0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'hE880FEE88000E880)) 
    cnt0__0_carry_i_29
       (.I0(\green[4]_0 ),
        .I1(\green[0] ),
        .I2(\green[4]_2 ),
        .I3(\green[0]_0 ),
        .I4(green_IBUF[0]),
        .I5(\green[4]_1 ),
        .O(cnt0__0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFF7FFEFFFEFFE8FE)) 
    cnt0__0_carry_i_30
       (.I0(\green[4]_0 ),
        .I1(\green[0] ),
        .I2(\green[4]_1 ),
        .I3(green_IBUF[0]),
        .I4(\green[4]_2 ),
        .I5(\green[0]_0 ),
        .O(cnt0__0_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFEFEF8EEF8E8E08)) 
    cnt0__0_carry_i_31
       (.I0(\green[4]_0 ),
        .I1(\green[0] ),
        .I2(green_IBUF[0]),
        .I3(\green[4]_1 ),
        .I4(\green[0]_0 ),
        .I5(\green[4]_2 ),
        .O(cnt0__0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'h177EDB4D8E18422B)) 
    cnt0__0_carry_i_9
       (.I0(\green[4] ),
        .I1(\green[3] ),
        .I2(cnt0__0_carry_i_18_n_0),
        .I3(\green[3]_0 ),
        .I4(\green[2] ),
        .I5(cnt0__0_carry_i_19_n_0),
        .O(\q_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h69)) 
    cnt0__23_carry_i_9
       (.I0(\green[2] ),
        .I1(green_IBUF[1]),
        .I2(\cnt_reg[3]_0 ),
        .O(\cnt_reg[3] ));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_5
   (p_1_in,
    D,
    \q_reg[1] ,
    S,
    \q_reg[4] ,
    \q_reg[7] ,
    \q_reg[5] ,
    \q_reg[3] ,
    DI,
    \cnt_reg[7] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[3] ,
    \cnt_reg[7]_1 ,
    \q_reg[1]_0 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[7]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \cnt_reg[3]_5 ,
    \blue[3] ,
    \blue[2] ,
    \blue[5] ,
    \blue[1] ,
    hSync_IBUF,
    \blue[1]_0 ,
    ActiveArea_IBUF,
    hSync,
    \blue[0] ,
    Q,
    cnt00_in,
    cnt0,
    blue_IBUF,
    \blue[4] ,
    \blue[0]_0 ,
    \blue[5]_0 ,
    \blue[1]_1 ,
    \blue[3]_0 ,
    \blue[2]_0 ,
    \blue[2]_1 ,
    \blue[2]_2 ,
    vSync_IBUF,
    \blue[7] ,
    \blue[2]_3 ,
    \cnt_reg[3]_6 );
  output [0:0]p_1_in;
  output [8:0]D;
  output \q_reg[1] ;
  output [3:0]S;
  output \q_reg[4] ;
  output \q_reg[7] ;
  output \q_reg[5] ;
  output \q_reg[3] ;
  output [2:0]DI;
  output [3:0]\cnt_reg[7] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [3:0]\cnt_reg[3] ;
  output [0:0]\cnt_reg[7]_1 ;
  output \q_reg[1]_0 ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [1:0]\cnt_reg[7]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [2:0]\cnt_reg[3]_4 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \cnt_reg[3]_5 ;
  input \blue[3] ;
  input \blue[2] ;
  input \blue[5] ;
  input \blue[1] ;
  input hSync_IBUF;
  input \blue[1]_0 ;
  input ActiveArea_IBUF;
  input hSync;
  input \blue[0] ;
  input [7:0]Q;
  input [7:0]cnt00_in;
  input [7:0]cnt0;
  input [7:0]blue_IBUF;
  input \blue[4] ;
  input \blue[0]_0 ;
  input \blue[5]_0 ;
  input \blue[1]_1 ;
  input \blue[3]_0 ;
  input \blue[2]_0 ;
  input \blue[2]_1 ;
  input \blue[2]_2 ;
  input vSync_IBUF;
  input \blue[7] ;
  input \blue[2]_3 ;
  input \cnt_reg[3]_6 ;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [2:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire \blue[0] ;
  wire \blue[0]_0 ;
  wire \blue[1] ;
  wire \blue[1]_0 ;
  wire \blue[1]_1 ;
  wire \blue[2] ;
  wire \blue[2]_0 ;
  wire \blue[2]_1 ;
  wire \blue[2]_2 ;
  wire \blue[2]_3 ;
  wire \blue[3] ;
  wire \blue[3]_0 ;
  wire \blue[4] ;
  wire \blue[5] ;
  wire \blue[5]_0 ;
  wire \blue[7] ;
  wire [7:0]blue_IBUF;
  wire [7:0]cnt0;
  wire [7:0]cnt00_in;
  wire cnt0__0_carry__0_i_7_n_0;
  wire cnt0__0_carry__0_i_8_n_0;
  wire cnt0__0_carry_i_13_n_0;
  wire cnt0__0_carry_i_14_n_0;
  wire cnt0__0_carry_i_26_n_0;
  wire cnt0__0_carry_i_27_n_0;
  wire cnt0__0_carry_i_29_n_0;
  wire cnt0__0_carry_i_8_n_0;
  wire cnt0__23_carry__0_i_8_n_0;
  wire cnt0__23_carry_i_7_n_0;
  wire cnt0__23_carry_i_8_n_0;
  wire [0:0]cnt10_in;
  wire cnt_carry__0_i_8_n_0;
  wire cnt_carry_i_10_n_0;
  wire cnt_carry_i_11_n_0;
  wire cnt_carry_i_12_n_0;
  wire cnt_carry_i_9_n_0;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\cnt_reg[3]_1 ;
  wire [1:0]\cnt_reg[3]_2 ;
  wire [3:0]\cnt_reg[3]_3 ;
  wire [2:0]\cnt_reg[3]_4 ;
  wire \cnt_reg[3]_5 ;
  wire \cnt_reg[3]_6 ;
  wire [3:0]\cnt_reg[7] ;
  wire [2:0]\cnt_reg[7]_0 ;
  wire [0:0]\cnt_reg[7]_1 ;
  wire [1:0]\cnt_reg[7]_2 ;
  wire hSync;
  wire hSync_IBUF;
  wire [3:0]num1d;
  wire [0:0]p_1_in;
  wire \q[0]_i_2_n_0 ;
  wire \q[2]_i_2_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_7_n_0 ;
  wire \q[7]_i_6_n_0 ;
  wire \q[7]_i_7_n_0 ;
  wire \q[8]_i_10_n_0 ;
  wire \q[8]_i_11_n_0 ;
  wire \q[8]_i_12_n_0 ;
  wire \q[8]_i_13_n_0 ;
  wire \q[8]_i_14_n_0 ;
  wire \q[8]_i_4_n_0 ;
  wire \q[8]_i_8_n_0 ;
  wire \q[8]_i_9_n_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[3] ;
  wire \q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[7] ;
  wire vSync_IBUF;

  LUT3 #(
    .INIT(8'h06)) 
    cnt0__0_carry__0_i_2
       (.I0(cnt0__0_carry_i_14_n_0),
        .I1(Q[3]),
        .I2(cnt0__0_carry_i_13_n_0),
        .O(\cnt_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hFFEA0015)) 
    cnt0__0_carry__0_i_5
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(cnt0__0_carry__0_i_8_n_0),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'hB9DC4623)) 
    cnt0__0_carry__0_i_6
       (.I0(cnt0__0_carry_i_13_n_0),
        .I1(cnt0__0_carry__0_i_7_n_0),
        .I2(cnt0__0_carry__0_i_8_n_0),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\cnt_reg[7]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__0_carry__0_i_7
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(\blue[3]_0 ),
        .O(cnt0__0_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry__0_i_8
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(\blue[3]_0 ),
        .O(cnt0__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    cnt0__0_carry_i_1
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8_n_0),
        .I2(\blue[5] ),
        .I3(p_1_in),
        .O(\cnt_reg[3]_4 [2]));
  LUT3 #(
    .INIT(8'h8A)) 
    cnt0__0_carry_i_13
       (.I0(cnt0__0_carry_i_26_n_0),
        .I1(cnt0__0_carry_i_27_n_0),
        .I2(Q[2]),
        .O(cnt0__0_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_14
       (.I0(\blue[3]_0 ),
        .I1(cnt0__0_carry_i_29_n_0),
        .O(cnt0__0_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_15
       (.I0(\blue[3] ),
        .I1(\blue[2] ),
        .O(cnt10_in));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    cnt0__0_carry_i_2
       (.I0(\blue[5] ),
        .I1(p_1_in),
        .I2(\blue[1] ),
        .I3(Q[1]),
        .O(\cnt_reg[3]_4 [1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    cnt0__0_carry_i_25__1
       (.I0(blue_IBUF[7]),
        .I1(blue_IBUF[6]),
        .I2(\blue[4] ),
        .I3(\blue[0]_0 ),
        .I4(\q_reg[3] ),
        .I5(\blue[0] ),
        .O(\cnt_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFCE230E2FFFFFFFF)) 
    cnt0__0_carry_i_26
       (.I0(\blue[2]_2 ),
        .I1(\blue[4] ),
        .I2(\blue[2]_1 ),
        .I3(\q_reg[3] ),
        .I4(\blue[2]_0 ),
        .I5(\blue[1]_1 ),
        .O(cnt0__0_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h00000000FCE230E2)) 
    cnt0__0_carry_i_27
       (.I0(\blue[2]_2 ),
        .I1(\blue[4] ),
        .I2(\blue[2]_1 ),
        .I3(\q_reg[3] ),
        .I4(\blue[2]_0 ),
        .I5(\blue[1]_1 ),
        .O(cnt0__0_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    cnt0__0_carry_i_29
       (.I0(\blue[0]_0 ),
        .I1(\q_reg[3] ),
        .I2(\blue[7] ),
        .I3(\q_reg[5] ),
        .I4(\blue[0] ),
        .I5(\q_reg[7] ),
        .O(cnt0__0_carry_i_29_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_3
       (.I0(\blue[2] ),
        .I1(\blue[3] ),
        .O(\cnt_reg[3]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    cnt0__0_carry_i_33
       (.I0(p_1_in),
        .I1(blue_IBUF[1]),
        .I2(blue_IBUF[0]),
        .O(\q_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    cnt0__0_carry_i_34
       (.I0(blue_IBUF[0]),
        .I1(blue_IBUF[1]),
        .I2(p_1_in),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h1115EAEEEEEE1111)) 
    cnt0__0_carry_i_35
       (.I0(num1d[3]),
        .I1(num1d[2]),
        .I2(num1d[1]),
        .I3(\q[8]_i_4_n_0 ),
        .I4(blue_IBUF[1]),
        .I5(blue_IBUF[0]),
        .O(\q_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    cnt0__0_carry_i_4
       (.I0(\cnt_reg[3]_4 [2]),
        .I1(cnt0__0_carry_i_13_n_0),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_14_n_0),
        .O(\cnt_reg[3]_3 [3]));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    cnt0__0_carry_i_5
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8_n_0),
        .I2(\blue[5] ),
        .I3(p_1_in),
        .I4(\cnt_reg[3]_4 [1]),
        .O(\cnt_reg[3]_3 [2]));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_6
       (.I0(\blue[5] ),
        .I1(p_1_in),
        .I2(\blue[1] ),
        .I3(Q[1]),
        .I4(\cnt_reg[3]_4 [0]),
        .O(\cnt_reg[3]_3 [1]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_7__1
       (.I0(cnt10_in),
        .I1(Q[0]),
        .O(\cnt_reg[3]_3 [0]));
  LUT6 #(
    .INIT(64'h9A95AA5A9A95A555)) 
    cnt0__0_carry_i_8
       (.I0(\blue[1]_1 ),
        .I1(\blue[2]_0 ),
        .I2(\q_reg[3] ),
        .I3(\blue[2]_1 ),
        .I4(\blue[4] ),
        .I5(\blue[2]_2 ),
        .O(cnt0__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_1
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8_n_0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_2
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8_n_0),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__23_carry__0_i_3
       (.I0(Q[3]),
        .I1(cnt0__23_carry_i_8_n_0),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__23_carry__0_i_4
       (.I0(cnt0__23_carry__0_i_8_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(\cnt_reg[7] [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_5
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8_n_0),
        .I2(Q[6]),
        .O(\cnt_reg[7] [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_6
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8_n_0),
        .I2(Q[5]),
        .O(\cnt_reg[7] [1]));
  LUT4 #(
    .INIT(16'h7887)) 
    cnt0__23_carry__0_i_7
       (.I0(cnt0__23_carry_i_8_n_0),
        .I1(Q[3]),
        .I2(cnt0__23_carry__0_i_8_n_0),
        .I3(Q[4]),
        .O(\cnt_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40445555)) 
    cnt0__23_carry__0_i_8
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(cnt0__0_carry_i_26_n_0),
        .I2(cnt0__23_carry_i_7_n_0),
        .I3(cnt0__0_carry_i_8_n_0),
        .I4(cnt0__0_carry_i_14_n_0),
        .O(cnt0__23_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    cnt0__23_carry_i_1
       (.I0(cnt0__0_carry_i_8_n_0),
        .I1(cnt0__23_carry_i_7_n_0),
        .I2(Q[2]),
        .O(\cnt_reg[3]_2 [1]));
  LUT5 #(
    .INIT(32'h2DD20000)) 
    cnt0__23_carry_i_2
       (.I0(\blue[2] ),
        .I1(\blue[3] ),
        .I2(\blue[1] ),
        .I3(\blue[5] ),
        .I4(p_1_in),
        .O(\cnt_reg[3]_2 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_3
       (.I0(\cnt_reg[3]_2 [1]),
        .I1(cnt0__23_carry_i_8_n_0),
        .I2(Q[3]),
        .O(\cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    cnt0__23_carry_i_4
       (.I0(cnt0__0_carry_i_8_n_0),
        .I1(cnt0__23_carry_i_7_n_0),
        .I2(Q[2]),
        .I3(\cnt_reg[3]_2 [0]),
        .O(\cnt_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h2DD2D22DD22D2DD2)) 
    cnt0__23_carry_i_5
       (.I0(\blue[2] ),
        .I1(\blue[3] ),
        .I2(\blue[1] ),
        .I3(\blue[5] ),
        .I4(p_1_in),
        .I5(Q[1]),
        .O(\cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_6
       (.I0(Q[0]),
        .I1(cnt10_in),
        .O(\cnt_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDD4D)) 
    cnt0__23_carry_i_7
       (.I0(\blue[1] ),
        .I1(\blue[5] ),
        .I2(\blue[2] ),
        .I3(\blue[3] ),
        .O(cnt0__23_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h59AA)) 
    cnt0__23_carry_i_8
       (.I0(cnt0__0_carry_i_14_n_0),
        .I1(cnt0__0_carry_i_8_n_0),
        .I2(cnt0__23_carry_i_7_n_0),
        .I3(cnt0__0_carry_i_26_n_0),
        .O(cnt0__23_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_1
       (.I0(Q[6]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_2
       (.I0(Q[5]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_3
       (.I0(Q[4]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hFC0CFFFFFC0CAAAA)) 
    cnt_carry__0_i_4
       (.I0(cnt_carry__0_i_8_n_0),
        .I1(cnt00_in[7]),
        .I2(\q_reg[4] ),
        .I3(cnt0[7]),
        .I4(\q_reg[1] ),
        .I5(Q[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_5
       (.I0(Q[6]),
        .I1(cnt_carry__0_i_8_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[6]),
        .I4(\q_reg[4] ),
        .I5(cnt0[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_6
       (.I0(Q[5]),
        .I1(cnt_carry__0_i_8_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[5]),
        .I4(\q_reg[4] ),
        .I5(cnt0[5]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_7
       (.I0(Q[4]),
        .I1(cnt_carry__0_i_8_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[4]),
        .I4(\q_reg[4] ),
        .I5(cnt0[4]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h383C3B3C)) 
    cnt_carry__0_i_8
       (.I0(\q[7]_i_6_n_0 ),
        .I1(p_1_in),
        .I2(cnt0__0_carry__0_i_7_n_0),
        .I3(cnt0__0_carry__0_i_8_n_0),
        .I4(\q[7]_i_7_n_0 ),
        .O(cnt_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_1
       (.I0(Q[3]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [3]));
  LUT6 #(
    .INIT(64'h3693666699993693)) 
    cnt_carry_i_10
       (.I0(p_1_in),
        .I1(cnt0__0_carry_i_8_n_0),
        .I2(\blue[3] ),
        .I3(\blue[2] ),
        .I4(\blue[5] ),
        .I5(\blue[1] ),
        .O(cnt_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h66699666)) 
    cnt_carry_i_11
       (.I0(\blue[1] ),
        .I1(\blue[5] ),
        .I2(p_1_in),
        .I3(\blue[3] ),
        .I4(\blue[2] ),
        .O(cnt_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF0B)) 
    cnt_carry_i_12
       (.I0(\blue[2] ),
        .I1(\blue[3] ),
        .I2(\blue[5] ),
        .I3(\blue[1] ),
        .O(cnt_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_2
       (.I0(Q[2]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_3
       (.I0(Q[1]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_4
       (.I0(Q[0]),
        .I1(\q_reg[1] ),
        .O(\cnt_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_5
       (.I0(Q[3]),
        .I1(cnt_carry_i_9_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[3]),
        .I4(\q_reg[4] ),
        .I5(cnt0[3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_6
       (.I0(Q[2]),
        .I1(cnt_carry_i_10_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[2]),
        .I4(\q_reg[4] ),
        .I5(cnt0[2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_7
       (.I0(Q[1]),
        .I1(cnt_carry_i_11_n_0),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[1]),
        .I4(\q_reg[4] ),
        .I5(cnt0[1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_8
       (.I0(Q[0]),
        .I1(cnt10_in),
        .I2(\q_reg[1] ),
        .I3(cnt00_in[0]),
        .I4(\q_reg[4] ),
        .I5(cnt0[0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hC34BF03CC378F03C)) 
    cnt_carry_i_9
       (.I0(cnt_carry_i_12_n_0),
        .I1(p_1_in),
        .I2(cnt0__0_carry_i_14_n_0),
        .I3(cnt0__0_carry_i_27_n_0),
        .I4(cnt0__0_carry_i_26_n_0),
        .I5(cnt0__23_carry_i_7_n_0),
        .O(cnt_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h00F099F0FFF099F0)) 
    \q[0]_i_1__1 
       (.I0(blue_IBUF[0]),
        .I1(p_1_in),
        .I2(hSync_IBUF),
        .I3(ActiveArea_IBUF),
        .I4(\q_reg[1] ),
        .I5(\q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h666699A9565699A9)) 
    \q[0]_i_2 
       (.I0(blue_IBUF[0]),
        .I1(cnt0__0_carry__0_i_7_n_0),
        .I2(cnt0__0_carry__0_i_8_n_0),
        .I3(\q[7]_i_7_n_0 ),
        .I4(Q[7]),
        .I5(\q[7]_i_6_n_0 ),
        .O(\q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CAAF0AAF0AA3CAA)) 
    \q[1]_i_1 
       (.I0(hSync_IBUF),
        .I1(\q_reg[1] ),
        .I2(\blue[1]_0 ),
        .I3(ActiveArea_IBUF),
        .I4(p_1_in),
        .I5(\q[2]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEAEFBFBAAAAAAAAA)) 
    \q[2]_i_1 
       (.I0(hSync),
        .I1(\q[2]_i_2_n_0 ),
        .I2(\q_reg[1] ),
        .I3(p_1_in),
        .I4(\blue[0] ),
        .I5(ActiveArea_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h383C3B3C)) 
    \q[2]_i_2 
       (.I0(\q[7]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(cnt0__0_carry__0_i_7_n_0),
        .I3(cnt0__0_carry__0_i_8_n_0),
        .I4(\q[7]_i_7_n_0 ),
        .O(\q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA695FFFFA6950000)) 
    \q[3]_i_1 
       (.I0(\q_reg[3] ),
        .I1(\q_reg[1] ),
        .I2(\q_reg[4] ),
        .I3(p_1_in),
        .I4(ActiveArea_IBUF),
        .I5(hSync_IBUF),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h5555AAA9AAAA5556)) 
    \q[3]_i_2 
       (.I0(\blue[1]_0 ),
        .I1(\q[3]_i_3_n_0 ),
        .I2(num1d[0]),
        .I3(num1d[1]),
        .I4(\q[3]_i_5_n_0 ),
        .I5(\blue[2]_3 ),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \q[3]_i_3 
       (.I0(blue_IBUF[7]),
        .I1(blue_IBUF[2]),
        .I2(\q[8]_i_14_n_0 ),
        .I3(blue_IBUF[3]),
        .I4(blue_IBUF[6]),
        .I5(blue_IBUF[0]),
        .O(\q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q[3]_i_4 
       (.I0(blue_IBUF[0]),
        .I1(blue_IBUF[1]),
        .I2(\q[8]_i_4_n_0 ),
        .O(num1d[0]));
  LUT6 #(
    .INIT(64'h000F03F3505F03F3)) 
    \q[3]_i_5 
       (.I0(\q[3]_i_7_n_0 ),
        .I1(\q[8]_i_13_n_0 ),
        .I2(blue_IBUF[6]),
        .I3(\q[8]_i_12_n_0 ),
        .I4(blue_IBUF[7]),
        .I5(\q[8]_i_11_n_0 ),
        .O(\q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q[3]_i_7 
       (.I0(blue_IBUF[3]),
        .I1(blue_IBUF[4]),
        .I2(blue_IBUF[0]),
        .I3(blue_IBUF[1]),
        .I4(blue_IBUF[5]),
        .I5(blue_IBUF[2]),
        .O(\q[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEEBBBAAAAAAAA)) 
    \q[4]_i_1 
       (.I0(hSync),
        .I1(\blue[4] ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[4] ),
        .I4(p_1_in),
        .I5(ActiveArea_IBUF),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hA695FFFFA6950000)) 
    \q[5]_i_1 
       (.I0(\q_reg[5] ),
        .I1(\q_reg[1] ),
        .I2(\q_reg[4] ),
        .I3(p_1_in),
        .I4(ActiveArea_IBUF),
        .I5(hSync_IBUF),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q[5]_i_2 
       (.I0(\q_reg[3] ),
        .I1(blue_IBUF[4]),
        .I2(blue_IBUF[5]),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'hEEBEEBBBAAAAAAAA)) 
    \q[6]_i_1 
       (.I0(hSync),
        .I1(\blue[0]_0 ),
        .I2(\q_reg[1] ),
        .I3(\q_reg[4] ),
        .I4(p_1_in),
        .I5(ActiveArea_IBUF),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h596AFFFF596A0000)) 
    \q[7]_i_1 
       (.I0(\q_reg[7] ),
        .I1(\q_reg[1] ),
        .I2(\q_reg[4] ),
        .I3(p_1_in),
        .I4(ActiveArea_IBUF),
        .I5(hSync_IBUF),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q[7]_i_2__1 
       (.I0(blue_IBUF[6]),
        .I1(blue_IBUF[7]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[4]),
        .I4(\q_reg[3] ),
        .O(\q_reg[7] ));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFF)) 
    \q[7]_i_3 
       (.I0(\blue[1] ),
        .I1(\blue[5] ),
        .I2(cnt0__0_carry_i_14_n_0),
        .I3(cnt0__0_carry_i_8_n_0),
        .I4(cnt10_in),
        .I5(\cnt_reg[3]_6 ),
        .O(\q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCCCC7433)) 
    \q[7]_i_4 
       (.I0(\q[7]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(\q[7]_i_7_n_0 ),
        .I3(cnt0__0_carry__0_i_8_n_0),
        .I4(cnt0__0_carry__0_i_7_n_0),
        .O(\q_reg[4] ));
  LUT6 #(
    .INIT(64'h40F40000FFFF40F4)) 
    \q[7]_i_6 
       (.I0(\blue[2] ),
        .I1(\blue[3] ),
        .I2(\blue[5] ),
        .I3(\blue[1] ),
        .I4(\blue[5]_0 ),
        .I5(\blue[1]_1 ),
        .O(\q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDD4DFFFF0000DD4D)) 
    \q[7]_i_7 
       (.I0(\blue[1] ),
        .I1(\blue[5] ),
        .I2(\blue[2] ),
        .I3(\blue[3] ),
        .I4(\blue[1]_1 ),
        .I5(\blue[5]_0 ),
        .O(\q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \q[8]_i_10 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[4]),
        .I4(blue_IBUF[0]),
        .I5(blue_IBUF[1]),
        .O(\q[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFEFFFEFEE8)) 
    \q[8]_i_11 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[4]),
        .I4(blue_IBUF[0]),
        .I5(blue_IBUF[1]),
        .O(\q[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE8FEE8E880)) 
    \q[8]_i_12 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[1]),
        .I4(blue_IBUF[0]),
        .I5(blue_IBUF[4]),
        .O(\q[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \q[8]_i_13 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[4]),
        .I3(blue_IBUF[0]),
        .I4(blue_IBUF[1]),
        .I5(blue_IBUF[5]),
        .O(\q[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \q[8]_i_14 
       (.I0(blue_IBUF[4]),
        .I1(blue_IBUF[0]),
        .I2(blue_IBUF[1]),
        .I3(blue_IBUF[5]),
        .O(\q[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hA3A0)) 
    \q[8]_i_2 
       (.I0(p_1_in),
        .I1(hSync_IBUF),
        .I2(ActiveArea_IBUF),
        .I3(vSync_IBUF),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h000000000028FFFF)) 
    \q[8]_i_3 
       (.I0(blue_IBUF[0]),
        .I1(\q[8]_i_4_n_0 ),
        .I2(blue_IBUF[1]),
        .I3(num1d[1]),
        .I4(num1d[2]),
        .I5(num1d[3]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q[8]_i_4 
       (.I0(blue_IBUF[5]),
        .I1(blue_IBUF[4]),
        .I2(blue_IBUF[6]),
        .I3(blue_IBUF[7]),
        .I4(blue_IBUF[3]),
        .I5(blue_IBUF[2]),
        .O(\q[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_5 
       (.I0(\q[8]_i_8_n_0 ),
        .I1(blue_IBUF[7]),
        .I2(\q[8]_i_9_n_0 ),
        .I3(blue_IBUF[6]),
        .I4(\q[8]_i_10_n_0 ),
        .O(num1d[1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \q[8]_i_6 
       (.I0(\q[8]_i_11_n_0 ),
        .I1(blue_IBUF[7]),
        .I2(\q[8]_i_12_n_0 ),
        .I3(blue_IBUF[6]),
        .I4(\q[8]_i_13_n_0 ),
        .O(num1d[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \q[8]_i_7 
       (.I0(blue_IBUF[6]),
        .I1(blue_IBUF[3]),
        .I2(\q[8]_i_14_n_0 ),
        .I3(blue_IBUF[2]),
        .I4(blue_IBUF[7]),
        .O(num1d[3]));
  LUT6 #(
    .INIT(64'h7EE8E881E8818117)) 
    \q[8]_i_8 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[4]),
        .I4(blue_IBUF[1]),
        .I5(blue_IBUF[0]),
        .O(\q[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE88181178117177E)) 
    \q[8]_i_9 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[5]),
        .I3(blue_IBUF[4]),
        .I4(blue_IBUF[0]),
        .I5(blue_IBUF[1]),
        .O(\q[8]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_6
   (\q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[4] ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[1]_4 ,
    \cnt_reg[3] ,
    \blue[5] ,
    \blue[4] ,
    \blue[3] ,
    \blue[2] ,
    \blue[0] ,
    \blue[6] ,
    \blue[0]_0 ,
    blue_IBUF,
    p_1_in,
    \blue[2]_0 ,
    \blue[4]_0 ,
    \blue[2]_1 ,
    \blue[4]_1 ,
    \blue[5]_0 );
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[4] ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[1]_4 ;
  output \cnt_reg[3] ;
  input \blue[5] ;
  input \blue[4] ;
  input \blue[3] ;
  input \blue[2] ;
  input \blue[0] ;
  input \blue[6] ;
  input \blue[0]_0 ;
  input [4:0]blue_IBUF;
  input [0:0]p_1_in;
  input \blue[2]_0 ;
  input \blue[4]_0 ;
  input \blue[2]_1 ;
  input \blue[4]_1 ;
  input \blue[5]_0 ;

  wire \blue[0] ;
  wire \blue[0]_0 ;
  wire \blue[2] ;
  wire \blue[2]_0 ;
  wire \blue[2]_1 ;
  wire \blue[3] ;
  wire \blue[4] ;
  wire \blue[4]_0 ;
  wire \blue[4]_1 ;
  wire \blue[5] ;
  wire \blue[5]_0 ;
  wire \blue[6] ;
  wire [4:0]blue_IBUF;
  wire cnt0__0_carry_i_20_n_0;
  wire cnt0__0_carry_i_21_n_0;
  wire cnt0__0_carry_i_22_n_0;
  wire cnt0__0_carry_i_23_n_0;
  wire cnt0__0_carry_i_24_n_0;
  wire cnt0__0_carry_i_30_n_0;
  wire cnt0__0_carry_i_31_n_0;
  wire cnt0__0_carry_i_32_n_0;
  wire cnt0__0_carry_i_37_n_0;
  wire \cnt_reg[3] ;
  wire [0:0]p_1_in;
  wire \q[7]_i_10_n_0 ;
  wire \q[7]_i_11_n_0 ;
  wire \q[7]_i_12_n_0 ;
  wire \q[7]_i_13_n_0 ;
  wire \q[7]_i_14_n_0 ;
  wire \q[7]_i_15_n_0 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;

  LUT5 #(
    .INIT(32'hFCBB3088)) 
    cnt0__0_carry_i_10
       (.I0(cnt0__0_carry_i_22_n_0),
        .I1(\blue[3] ),
        .I2(cnt0__0_carry_i_23_n_0),
        .I3(\blue[0]_0 ),
        .I4(cnt0__0_carry_i_24_n_0),
        .O(\q_reg[1]_4 ));
  LUT3 #(
    .INIT(8'h69)) 
    cnt0__0_carry_i_11
       (.I0(p_1_in),
        .I1(blue_IBUF[1]),
        .I2(\blue[5]_0 ),
        .O(\cnt_reg[3] ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    cnt0__0_carry_i_16
       (.I0(cnt0__0_carry_i_30_n_0),
        .I1(\blue[3] ),
        .I2(cnt0__0_carry_i_31_n_0),
        .I3(\blue[0]_0 ),
        .I4(cnt0__0_carry_i_32_n_0),
        .O(\q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h20B90020B2FF20B9)) 
    cnt0__0_carry_i_17
       (.I0(\blue[3] ),
        .I1(\blue[0]_0 ),
        .I2(\blue[2]_0 ),
        .I3(\blue[2] ),
        .I4(\blue[0] ),
        .I5(\blue[6] ),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hBF262B00FFBFBF26)) 
    cnt0__0_carry_i_18
       (.I0(\blue[3] ),
        .I1(\blue[0]_0 ),
        .I2(\blue[2] ),
        .I3(\blue[2]_0 ),
        .I4(\blue[0] ),
        .I5(\blue[6] ),
        .O(\q_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFAFFDFDBF0AFFAF)) 
    cnt0__0_carry_i_19
       (.I0(\blue[3] ),
        .I1(\blue[2] ),
        .I2(\blue[0]_0 ),
        .I3(\blue[2]_0 ),
        .I4(\blue[6] ),
        .I5(\blue[0] ),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hB7EDD1742E8BB7ED)) 
    cnt0__0_carry_i_20
       (.I0(\blue[0]_0 ),
        .I1(\blue[2]_1 ),
        .I2(\blue[4]_0 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[0] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h2E8BB7ED48122E8B)) 
    cnt0__0_carry_i_21
       (.I0(\blue[0]_0 ),
        .I1(\blue[2]_1 ),
        .I2(\blue[4]_0 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[0] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h882DEEB4EEB477D2)) 
    cnt0__0_carry_i_22
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[4] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h77D2114B114B882D)) 
    cnt0__0_carry_i_23
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[4] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h114B882D882DEEB4)) 
    cnt0__0_carry_i_24
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[4] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    cnt0__0_carry_i_28
       (.I0(\blue[2] ),
        .I1(\blue[0] ),
        .I2(\blue[6] ),
        .I3(\blue[3] ),
        .I4(\blue[0]_0 ),
        .I5(cnt0__0_carry_i_37_n_0),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h77D3114311430001)) 
    cnt0__0_carry_i_30
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_1 ),
        .I4(blue_IBUF[0]),
        .I5(\blue[4] ),
        .O(cnt0__0_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF77FEF7F7D3)) 
    cnt0__0_carry_i_31
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4] ),
        .I4(blue_IBUF[0]),
        .I5(\blue[4]_1 ),
        .O(cnt0__0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFF777D377D31143)) 
    cnt0__0_carry_i_32
       (.I0(\blue[0] ),
        .I1(\blue[4]_0 ),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_1 ),
        .I4(\blue[4] ),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_32_n_0));
  LUT6 #(
    .INIT(64'h4128148214824128)) 
    cnt0__0_carry_i_37
       (.I0(blue_IBUF[4]),
        .I1(blue_IBUF[3]),
        .I2(blue_IBUF[2]),
        .I3(p_1_in),
        .I4(blue_IBUF[1]),
        .I5(blue_IBUF[0]),
        .O(cnt0__0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'h4114288200000000)) 
    cnt0__0_carry_i_38
       (.I0(p_1_in),
        .I1(blue_IBUF[4]),
        .I2(blue_IBUF[3]),
        .I3(blue_IBUF[2]),
        .I4(blue_IBUF[1]),
        .I5(blue_IBUF[0]),
        .O(\q_reg[4]_1 ));
  LUT5 #(
    .INIT(32'h8EE71781)) 
    cnt0__0_carry_i_9
       (.I0(\blue[5] ),
        .I1(\blue[4] ),
        .I2(cnt0__0_carry_i_20_n_0),
        .I3(\blue[3] ),
        .I4(cnt0__0_carry_i_21_n_0),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \q[7]_i_10 
       (.I0(\q[7]_i_12_n_0 ),
        .I1(\blue[4] ),
        .I2(\q[7]_i_13_n_0 ),
        .I3(\blue[3] ),
        .I4(\q[7]_i_14_n_0 ),
        .O(\q[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \q[7]_i_11 
       (.I0(\q[7]_i_15_n_0 ),
        .I1(\blue[4] ),
        .I2(\q[7]_i_14_n_0 ),
        .I3(\blue[3] ),
        .I4(\q[7]_i_12_n_0 ),
        .O(\q[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF771107171F77110)) 
    \q[7]_i_12 
       (.I0(\blue[0]_0 ),
        .I1(blue_IBUF[0]),
        .I2(\blue[0] ),
        .I3(\blue[2]_1 ),
        .I4(\blue[4]_0 ),
        .I5(\blue[4]_1 ),
        .O(\q[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFBDFFFFFFFFFFBDF)) 
    \q[7]_i_13 
       (.I0(\blue[0]_0 ),
        .I1(\blue[4]_0 ),
        .I2(blue_IBUF[0]),
        .I3(\blue[0] ),
        .I4(\blue[2]_1 ),
        .I5(\blue[4]_1 ),
        .O(\q[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFF7F7177F71)) 
    \q[7]_i_14 
       (.I0(\blue[0]_0 ),
        .I1(blue_IBUF[0]),
        .I2(\blue[2]_1 ),
        .I3(\blue[4]_0 ),
        .I4(\blue[4]_1 ),
        .I5(\blue[0] ),
        .O(\q[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7010110011007010)) 
    \q[7]_i_15 
       (.I0(\blue[0]_0 ),
        .I1(blue_IBUF[0]),
        .I2(\blue[4]_0 ),
        .I3(\blue[0] ),
        .I4(\blue[4]_1 ),
        .I5(\blue[2]_1 ),
        .O(\q[7]_i_15_n_0 ));
  MUXF7 \q_reg[7]_i_9 
       (.I0(\q[7]_i_10_n_0 ),
        .I1(\q[7]_i_11_n_0 ),
        .O(\q_reg[4] ),
        .S(\blue[5] ));
endmodule

(* NotValidForBitStream *)
module TMDSencode
   (tmds_clk,
    pixel_clk,
    reset,
    red,
    green,
    blue,
    hSync,
    vSync,
    ActiveArea,
    TMDSch0,
    TMDSch1,
    TMDSch2);
  input tmds_clk;
  input pixel_clk;
  input reset;
  input [7:0]red;
  input [7:0]green;
  input [7:0]blue;
  input hSync;
  input vSync;
  input ActiveArea;
  output TMDSch0;
  output TMDSch1;
  output TMDSch2;

  wire ActiveArea;
  wire ActiveArea_IBUF;
  wire TMDSch0;
  wire TMDSch0_OBUF;
  wire TMDSch0_i_1_n_0;
  wire TMDSch0_i_2_n_0;
  wire TMDSch0_i_4_n_0;
  wire TMDSch0_i_5_n_0;
  wire TMDSch0_reg_i_3_n_0;
  wire TMDSch1;
  wire TMDSch1_OBUF;
  wire TMDSch1_i_1_n_0;
  wire TMDSch1_i_3_n_0;
  wire TMDSch1_i_4_n_0;
  wire TMDSch1_reg_i_2_n_0;
  wire TMDSch2;
  wire TMDSch2_OBUF;
  wire TMDSch2_i_1_n_0;
  wire TMDSch2_i_3_n_0;
  wire TMDSch2_i_4_n_0;
  wire TMDSch2_reg_i_2_n_0;
  wire [9:0]TmdsBlue;
  wire [9:0]TmdsGreen;
  wire [9:0]TmdsRed;
  wire [3:0]bit_q_reg__0;
  wire [4:4]bit_q_reg__1;
  wire [7:0]blue;
  wire [7:0]blue_IBUF;
  wire clear;
  wire encode_blue_n_0;
  wire encode_blue_n_1;
  wire encode_blue_n_2;
  wire encode_blue_n_3;
  wire encode_blue_n_4;
  wire encode_blue_n_5;
  wire encode_blue_n_6;
  wire encode_blue_n_7;
  wire encode_blue_n_8;
  wire encode_blue_n_9;
  wire encode_green_n_0;
  wire encode_green_n_1;
  wire encode_green_n_10;
  wire encode_green_n_2;
  wire encode_green_n_3;
  wire encode_green_n_4;
  wire encode_green_n_5;
  wire encode_green_n_6;
  wire encode_green_n_7;
  wire encode_green_n_8;
  wire encode_green_n_9;
  wire encode_red_n_0;
  wire encode_red_n_1;
  wire encode_red_n_2;
  wire encode_red_n_3;
  wire encode_red_n_4;
  wire encode_red_n_5;
  wire encode_red_n_6;
  wire encode_red_n_7;
  wire encode_red_n_8;
  wire encode_red_n_9;
  wire [7:0]green;
  wire [7:0]green_IBUF;
  wire hSync;
  wire hSync_IBUF;
  wire [4:0]p_0_in;
  wire pixel_clk;
  wire pixel_clk_IBUF;
  wire pixel_clk_IBUF_BUFG;
  wire [7:0]red;
  wire [7:0]red_IBUF;
  wire reset;
  wire reset_IBUF;
  wire tmds_clk;
  wire tmds_clk_IBUF;
  wire tmds_clk_IBUF_BUFG;
  wire vSync;
  wire vSync_IBUF;

  IBUF ActiveArea_IBUF_inst
       (.I(ActiveArea),
        .O(ActiveArea_IBUF));
  OBUF TMDSch0_OBUF_inst
       (.I(TMDSch0_OBUF),
        .O(TMDSch0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch0_i_1
       (.I0(TmdsBlue[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsBlue[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch0_reg_i_3_n_0),
        .O(TMDSch0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TMDSch0_i_2
       (.I0(bit_q_reg__0[2]),
        .I1(bit_q_reg__0[1]),
        .O(TMDSch0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch0_i_4
       (.I0(TmdsBlue[3]),
        .I1(TmdsBlue[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsBlue[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsBlue[0]),
        .O(TMDSch0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch0_i_5
       (.I0(TmdsBlue[7]),
        .I1(TmdsBlue[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsBlue[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsBlue[4]),
        .O(TMDSch0_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch0_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch0_i_1_n_0),
        .Q(TMDSch0_OBUF),
        .R(1'b0));
  MUXF7 TMDSch0_reg_i_3
       (.I0(TMDSch0_i_4_n_0),
        .I1(TMDSch0_i_5_n_0),
        .O(TMDSch0_reg_i_3_n_0),
        .S(bit_q_reg__0[2]));
  OBUF TMDSch1_OBUF_inst
       (.I(TMDSch1_OBUF),
        .O(TMDSch1));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch1_i_1
       (.I0(TmdsGreen[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsGreen[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch1_reg_i_2_n_0),
        .O(TMDSch1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch1_i_3
       (.I0(TmdsGreen[3]),
        .I1(TmdsGreen[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsGreen[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsGreen[0]),
        .O(TMDSch1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch1_i_4
       (.I0(TmdsGreen[7]),
        .I1(TmdsGreen[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsGreen[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsGreen[4]),
        .O(TMDSch1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch1_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch1_i_1_n_0),
        .Q(TMDSch1_OBUF),
        .R(1'b0));
  MUXF7 TMDSch1_reg_i_2
       (.I0(TMDSch1_i_3_n_0),
        .I1(TMDSch1_i_4_n_0),
        .O(TMDSch1_reg_i_2_n_0),
        .S(bit_q_reg__0[2]));
  OBUF TMDSch2_OBUF_inst
       (.I(TMDSch2_OBUF),
        .O(TMDSch2));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch2_i_1
       (.I0(TmdsRed[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsRed[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch2_reg_i_2_n_0),
        .O(TMDSch2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch2_i_3
       (.I0(TmdsRed[3]),
        .I1(TmdsRed[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsRed[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsRed[0]),
        .O(TMDSch2_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch2_i_4
       (.I0(TmdsRed[7]),
        .I1(TmdsRed[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsRed[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsRed[4]),
        .O(TMDSch2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch2_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch2_i_1_n_0),
        .Q(TMDSch2_OBUF),
        .R(1'b0));
  MUXF7 TMDSch2_reg_i_2
       (.I0(TMDSch2_i_3_n_0),
        .I1(TMDSch2_i_4_n_0),
        .O(TMDSch2_reg_i_2_n_0),
        .S(bit_q_reg__0[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \TmdsBlue[9]_i_1 
       (.I0(bit_q_reg__1),
        .I1(bit_q_reg__0[2]),
        .I2(bit_q_reg__0[1]),
        .I3(bit_q_reg__0[0]),
        .I4(bit_q_reg__0[3]),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_9),
        .Q(TmdsBlue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_8),
        .Q(TmdsBlue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_7),
        .Q(TmdsBlue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_6),
        .Q(TmdsBlue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_5),
        .Q(TmdsBlue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_4),
        .Q(TmdsBlue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_3),
        .Q(TmdsBlue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_2),
        .Q(TmdsBlue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_1),
        .Q(TmdsBlue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_0),
        .Q(TmdsBlue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_10),
        .Q(TmdsGreen[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_9),
        .Q(TmdsGreen[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_8),
        .Q(TmdsGreen[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_7),
        .Q(TmdsGreen[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_6),
        .Q(TmdsGreen[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_5),
        .Q(TmdsGreen[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_4),
        .Q(TmdsGreen[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_3),
        .Q(TmdsGreen[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_2),
        .Q(TmdsGreen[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_1),
        .Q(TmdsGreen[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_9),
        .Q(TmdsRed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_8),
        .Q(TmdsRed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_7),
        .Q(TmdsRed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_6),
        .Q(TmdsRed[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_5),
        .Q(TmdsRed[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_4),
        .Q(TmdsRed[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_3),
        .Q(TmdsRed[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_2),
        .Q(TmdsRed[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_1),
        .Q(TmdsRed[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_0),
        .Q(TmdsRed[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_q[0]_i_1 
       (.I0(bit_q_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_q[1]_i_1 
       (.I0(bit_q_reg__0[0]),
        .I1(bit_q_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_q[2]_i_1 
       (.I0(bit_q_reg__0[0]),
        .I1(bit_q_reg__0[1]),
        .I2(bit_q_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_q[3]_i_1 
       (.I0(bit_q_reg__0[1]),
        .I1(bit_q_reg__0[0]),
        .I2(bit_q_reg__0[2]),
        .I3(bit_q_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_q[4]_i_1 
       (.I0(bit_q_reg__0[2]),
        .I1(bit_q_reg__0[0]),
        .I2(bit_q_reg__0[1]),
        .I3(bit_q_reg__0[3]),
        .I4(bit_q_reg__1),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(bit_q_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(bit_q_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(bit_q_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(bit_q_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(bit_q_reg__1),
        .R(clear));
  IBUF \blue_IBUF[0]_inst 
       (.I(blue[0]),
        .O(blue_IBUF[0]));
  IBUF \blue_IBUF[1]_inst 
       (.I(blue[1]),
        .O(blue_IBUF[1]));
  IBUF \blue_IBUF[2]_inst 
       (.I(blue[2]),
        .O(blue_IBUF[2]));
  IBUF \blue_IBUF[3]_inst 
       (.I(blue[3]),
        .O(blue_IBUF[3]));
  IBUF \blue_IBUF[4]_inst 
       (.I(blue[4]),
        .O(blue_IBUF[4]));
  IBUF \blue_IBUF[5]_inst 
       (.I(blue[5]),
        .O(blue_IBUF[5]));
  IBUF \blue_IBUF[6]_inst 
       (.I(blue[6]),
        .O(blue_IBUF[6]));
  IBUF \blue_IBUF[7]_inst 
       (.I(blue[7]),
        .O(blue_IBUF[7]));
  encode encode_blue
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({encode_blue_n_0,encode_blue_n_1,encode_blue_n_2,encode_blue_n_3,encode_blue_n_4,encode_blue_n_5,encode_blue_n_6,encode_blue_n_7,encode_blue_n_8,encode_blue_n_9}),
        .blue_IBUF(blue_IBUF),
        .hSync_IBUF(hSync_IBUF),
        .pixel_clk_IBUF_BUFG(pixel_clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .vSync_IBUF(vSync_IBUF));
  encode_0 encode_green
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({encode_green_n_1,encode_green_n_2,encode_green_n_3,encode_green_n_4,encode_green_n_5,encode_green_n_6,encode_green_n_7,encode_green_n_8,encode_green_n_9,encode_green_n_10}),
        .SS(encode_green_n_0),
        .green_IBUF(green_IBUF),
        .pixel_clk_IBUF_BUFG(pixel_clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF));
  encode_1 encode_red
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({encode_red_n_0,encode_red_n_1,encode_red_n_2,encode_red_n_3,encode_red_n_4,encode_red_n_5,encode_red_n_6,encode_red_n_7,encode_red_n_8,encode_red_n_9}),
        .SS({encode_green_n_0,reset_IBUF}),
        .pixel_clk_IBUF_BUFG(pixel_clk_IBUF_BUFG),
        .red_IBUF(red_IBUF));
  IBUF \green_IBUF[0]_inst 
       (.I(green[0]),
        .O(green_IBUF[0]));
  IBUF \green_IBUF[1]_inst 
       (.I(green[1]),
        .O(green_IBUF[1]));
  IBUF \green_IBUF[2]_inst 
       (.I(green[2]),
        .O(green_IBUF[2]));
  IBUF \green_IBUF[3]_inst 
       (.I(green[3]),
        .O(green_IBUF[3]));
  IBUF \green_IBUF[4]_inst 
       (.I(green[4]),
        .O(green_IBUF[4]));
  IBUF \green_IBUF[5]_inst 
       (.I(green[5]),
        .O(green_IBUF[5]));
  IBUF \green_IBUF[6]_inst 
       (.I(green[6]),
        .O(green_IBUF[6]));
  IBUF \green_IBUF[7]_inst 
       (.I(green[7]),
        .O(green_IBUF[7]));
  IBUF hSync_IBUF_inst
       (.I(hSync),
        .O(hSync_IBUF));
  BUFG pixel_clk_IBUF_BUFG_inst
       (.I(pixel_clk_IBUF),
        .O(pixel_clk_IBUF_BUFG));
  IBUF pixel_clk_IBUF_inst
       (.I(pixel_clk),
        .O(pixel_clk_IBUF));
  IBUF \red_IBUF[0]_inst 
       (.I(red[0]),
        .O(red_IBUF[0]));
  IBUF \red_IBUF[1]_inst 
       (.I(red[1]),
        .O(red_IBUF[1]));
  IBUF \red_IBUF[2]_inst 
       (.I(red[2]),
        .O(red_IBUF[2]));
  IBUF \red_IBUF[3]_inst 
       (.I(red[3]),
        .O(red_IBUF[3]));
  IBUF \red_IBUF[4]_inst 
       (.I(red[4]),
        .O(red_IBUF[4]));
  IBUF \red_IBUF[5]_inst 
       (.I(red[5]),
        .O(red_IBUF[5]));
  IBUF \red_IBUF[6]_inst 
       (.I(red[6]),
        .O(red_IBUF[6]));
  IBUF \red_IBUF[7]_inst 
       (.I(red[7]),
        .O(red_IBUF[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  BUFG tmds_clk_IBUF_BUFG_inst
       (.I(tmds_clk_IBUF),
        .O(tmds_clk_IBUF_BUFG));
  IBUF tmds_clk_IBUF_inst
       (.I(tmds_clk),
        .O(tmds_clk_IBUF));
  IBUF vSync_IBUF_inst
       (.I(vSync),
        .O(vSync_IBUF));
endmodule

module encode
   (D,
    hSync_IBUF,
    ActiveArea_IBUF,
    blue_IBUF,
    vSync_IBUF,
    reset_IBUF,
    pixel_clk_IBUF_BUFG);
  output [9:0]D;
  input hSync_IBUF;
  input ActiveArea_IBUF;
  input [7:0]blue_IBUF;
  input vSync_IBUF;
  input reset_IBUF;
  input pixel_clk_IBUF_BUFG;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [7:0]blue_IBUF;
  wire [7:0]cnt0;
  wire [7:0]cnt00_in;
  wire cnt0__0_carry__0_i_1_n_0;
  wire cnt0__0_carry__0_i_3_n_0;
  wire cnt0__0_carry__0_i_4_n_0;
  wire cnt0__0_carry__0_n_1;
  wire cnt0__0_carry__0_n_2;
  wire cnt0__0_carry__0_n_3;
  wire cnt0__0_carry_i_12_n_0;
  wire cnt0__0_carry_i_36_n_0;
  wire cnt0__0_carry_n_0;
  wire cnt0__0_carry_n_1;
  wire cnt0__0_carry_n_2;
  wire cnt0__0_carry_n_3;
  wire cnt0__23_carry__0_n_1;
  wire cnt0__23_carry__0_n_2;
  wire cnt0__23_carry__0_n_3;
  wire cnt0__23_carry_n_0;
  wire cnt0__23_carry_n_1;
  wire cnt0__23_carry_n_2;
  wire cnt0__23_carry_n_3;
  wire cnt_carry__0_n_1;
  wire cnt_carry__0_n_2;
  wire cnt_carry__0_n_3;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_1;
  wire cnt_carry_n_2;
  wire cnt_carry_n_3;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire hSync_IBUF;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_12;
  wire numbercnt_d_inst_n_13;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_34;
  wire numbercnt_d_inst_n_35;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_47;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire numbercnt_d_inst_n_55;
  wire numbercnt_d_inst_n_56;
  wire numbercnt_q_inst_n_0;
  wire numbercnt_q_inst_n_1;
  wire numbercnt_q_inst_n_2;
  wire numbercnt_q_inst_n_3;
  wire numbercnt_q_inst_n_4;
  wire numbercnt_q_inst_n_5;
  wire numbercnt_q_inst_n_6;
  wire numbercnt_q_inst_n_7;
  wire numbercnt_q_inst_n_8;
  wire numbercnt_q_inst_n_9;
  wire [1:1]p_1_in;
  wire pixel_clk_IBUF_BUFG;
  wire [8:0]q;
  wire \q[1]_i_2_n_0 ;
  wire \q[2]_i_3_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[4]_i_2__1_n_0 ;
  wire \q[6]_i_2_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q[7]_i_5_n_0 ;
  wire \q[7]_i_8_n_0 ;
  wire \q[8]_i_1__0_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire reset_IBUF;
  wire vSync_IBUF;
  wire [3:3]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_carry__0_CO_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,cnt0__0_carry_n_1,cnt0__0_carry_n_2,cnt0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_51,numbercnt_d_inst_n_52,numbercnt_d_inst_n_53,cnt_reg__0[0]}),
        .O(cnt0[3:0]),
        .S({numbercnt_d_inst_n_47,numbercnt_d_inst_n_48,numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO({NLW_cnt0__0_carry__0_CO_UNCONNECTED[3],cnt0__0_carry__0_n_1,cnt0__0_carry__0_n_2,cnt0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1_n_0,numbercnt_d_inst_n_33}),
        .O(cnt0[7:4]),
        .S({cnt0__0_carry__0_i_3_n_0,cnt0__0_carry__0_i_4_n_0,numbercnt_d_inst_n_45,numbercnt_d_inst_n_46}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    cnt0__0_carry_i_12
       (.I0(blue_IBUF[4]),
        .I1(blue_IBUF[1]),
        .I2(\q[2]_i_3_n_0 ),
        .I3(\q[6]_i_3_n_0 ),
        .I4(blue_IBUF[7]),
        .I5(blue_IBUF[6]),
        .O(cnt0__0_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_36
       (.I0(blue_IBUF[5]),
        .I1(blue_IBUF[4]),
        .O(cnt0__0_carry_i_36_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,cnt0__23_carry_n_1,cnt0__23_carry_n_2,cnt0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,cnt_reg__0[1:0]}),
        .O(cnt00_in[3:0]),
        .S({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO({NLW_cnt0__23_carry__0_CO_UNCONNECTED[3],cnt0__23_carry__0_n_1,cnt0__23_carry__0_n_2,cnt0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20,numbercnt_d_inst_n_21}),
        .O(cnt00_in[7:4]),
        .S({numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24,numbercnt_d_inst_n_25}));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,cnt_carry_n_1,cnt_carry_n_2,cnt_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31,numbercnt_d_inst_n_32}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO({NLW_cnt_carry__0_CO_UNCONNECTED[3],cnt_carry__0_n_1,cnt_carry__0_n_2,cnt_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27,numbercnt_d_inst_n_28}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_11,numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(reset_IBUF));
  NumberCnt_5 numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D(q),
        .DI({numbercnt_d_inst_n_19,numbercnt_d_inst_n_20,numbercnt_d_inst_n_21}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_11,numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14}),
        .\blue[0] (\q[2]_i_3_n_0 ),
        .\blue[0]_0 (\q[6]_i_3_n_0 ),
        .\blue[1] (numbercnt_q_inst_n_8),
        .\blue[1]_0 (\q[1]_i_2_n_0 ),
        .\blue[1]_1 (numbercnt_q_inst_n_6),
        .\blue[2] (numbercnt_q_inst_n_9),
        .\blue[2]_0 (numbercnt_q_inst_n_5),
        .\blue[2]_1 (numbercnt_q_inst_n_4),
        .\blue[2]_2 (numbercnt_q_inst_n_3),
        .\blue[2]_3 (\q[3]_i_6_n_0 ),
        .\blue[3] (cnt0__0_carry_i_12_n_0),
        .\blue[3]_0 (numbercnt_q_inst_n_1),
        .\blue[4] (\q[4]_i_2__1_n_0 ),
        .\blue[5] (numbercnt_q_inst_n_0),
        .\blue[5]_0 (numbercnt_q_inst_n_2),
        .\blue[7] (numbercnt_q_inst_n_7),
        .blue_IBUF(blue_IBUF),
        .cnt0(cnt0),
        .cnt00_in(cnt00_in),
        .\cnt_reg[3] ({numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31,numbercnt_d_inst_n_32}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .\cnt_reg[3]_2 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_47,numbercnt_d_inst_n_48,numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_51,numbercnt_d_inst_n_52,numbercnt_d_inst_n_53}),
        .\cnt_reg[3]_5 (numbercnt_d_inst_n_56),
        .\cnt_reg[3]_6 (\q[7]_i_5_n_0 ),
        .\cnt_reg[7] ({numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24,numbercnt_d_inst_n_25}),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_26,numbercnt_d_inst_n_27,numbercnt_d_inst_n_28}),
        .\cnt_reg[7]_1 (numbercnt_d_inst_n_33),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46}),
        .hSync(\q[6]_i_2_n_0 ),
        .hSync_IBUF(hSync_IBUF),
        .p_1_in(p_1_in),
        .\q_reg[1] (numbercnt_d_inst_n_10),
        .\q_reg[1]_0 (numbercnt_d_inst_n_34),
        .\q_reg[1]_1 (numbercnt_d_inst_n_54),
        .\q_reg[1]_2 (numbercnt_d_inst_n_55),
        .\q_reg[3] (numbercnt_d_inst_n_18),
        .\q_reg[4] (numbercnt_d_inst_n_15),
        .\q_reg[5] (numbercnt_d_inst_n_17),
        .\q_reg[7] (numbercnt_d_inst_n_16),
        .vSync_IBUF(vSync_IBUF));
  NumberCnt_6 numbercnt_q_inst
       (.\blue[0] (\q[2]_i_3_n_0 ),
        .\blue[0]_0 (\q[6]_i_3_n_0 ),
        .\blue[2] (numbercnt_d_inst_n_54),
        .\blue[2]_0 (numbercnt_d_inst_n_55),
        .\blue[2]_1 (\q[3]_i_6_n_0 ),
        .\blue[3] (numbercnt_d_inst_n_16),
        .\blue[4] (\q[4]_i_2__1_n_0 ),
        .\blue[4]_0 (numbercnt_d_inst_n_34),
        .\blue[4]_1 (cnt0__0_carry_i_36_n_0),
        .\blue[5] (numbercnt_d_inst_n_18),
        .\blue[5]_0 (numbercnt_d_inst_n_56),
        .\blue[6] (numbercnt_d_inst_n_17),
        .blue_IBUF(blue_IBUF[4:0]),
        .\cnt_reg[3] (numbercnt_q_inst_n_9),
        .p_1_in(p_1_in),
        .\q_reg[1] (numbercnt_q_inst_n_0),
        .\q_reg[1]_0 (numbercnt_q_inst_n_1),
        .\q_reg[1]_1 (numbercnt_q_inst_n_3),
        .\q_reg[1]_2 (numbercnt_q_inst_n_4),
        .\q_reg[1]_3 (numbercnt_q_inst_n_5),
        .\q_reg[1]_4 (numbercnt_q_inst_n_8),
        .\q_reg[4] (numbercnt_q_inst_n_2),
        .\q_reg[4]_0 (numbercnt_q_inst_n_6),
        .\q_reg[4]_1 (numbercnt_q_inst_n_7));
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_2 
       (.I0(blue_IBUF[0]),
        .I1(blue_IBUF[1]),
        .O(\q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q[2]_i_3 
       (.I0(blue_IBUF[2]),
        .I1(blue_IBUF[1]),
        .I2(blue_IBUF[0]),
        .O(\q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_6 
       (.I0(blue_IBUF[3]),
        .I1(blue_IBUF[2]),
        .O(\q[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[4]_i_2__1 
       (.I0(blue_IBUF[0]),
        .I1(blue_IBUF[1]),
        .I2(blue_IBUF[2]),
        .I3(blue_IBUF[3]),
        .I4(blue_IBUF[4]),
        .O(\q[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[6]_i_2 
       (.I0(vSync_IBUF),
        .I1(ActiveArea_IBUF),
        .I2(hSync_IBUF),
        .O(\q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q[6]_i_3 
       (.I0(blue_IBUF[5]),
        .I1(blue_IBUF[6]),
        .I2(blue_IBUF[4]),
        .I3(blue_IBUF[3]),
        .I4(\q[2]_i_3_n_0 ),
        .O(\q[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_5 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(\q[7]_i_8_n_0 ),
        .O(\q[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_8 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[4]),
        .O(\q[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \q[8]_i_1__0 
       (.I0(reset_IBUF),
        .I1(ActiveArea_IBUF),
        .I2(hSync_IBUF),
        .I3(vSync_IBUF),
        .O(\q[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F33AAAA)) 
    \q[9]_i_1 
       (.I0(\q[9]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(numbercnt_d_inst_n_15),
        .I3(numbercnt_d_inst_n_10),
        .I4(ActiveArea_IBUF),
        .I5(reset_IBUF),
        .O(\q[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \q[9]_i_2 
       (.I0(hSync_IBUF),
        .I1(vSync_IBUF),
        .O(\q[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[0]),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(D[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(D[2]),
        .S(\q[8]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(D[3]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[4]),
        .Q(D[4]),
        .S(\q[8]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[5]),
        .Q(D[5]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[6]),
        .Q(D[6]),
        .S(\q[8]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[7]),
        .Q(D[7]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[8]),
        .Q(D[8]),
        .S(\q[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module encode_0
   (SS,
    D,
    ActiveArea_IBUF,
    green_IBUF,
    reset_IBUF,
    pixel_clk_IBUF_BUFG);
  output [0:0]SS;
  output [9:0]D;
  input ActiveArea_IBUF;
  input [7:0]green_IBUF;
  input reset_IBUF;
  input pixel_clk_IBUF_BUFG;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [0:0]SS;
  wire cnt0__0_carry__0_i_1__0_n_0;
  wire cnt0__0_carry__0_i_3__0_n_0;
  wire cnt0__0_carry__0_i_4__0_n_0;
  wire cnt0__0_carry__0_n_1;
  wire cnt0__0_carry__0_n_2;
  wire cnt0__0_carry__0_n_3;
  wire cnt0__0_carry__0_n_4;
  wire cnt0__0_carry__0_n_5;
  wire cnt0__0_carry__0_n_6;
  wire cnt0__0_carry__0_n_7;
  wire cnt0__0_carry_n_0;
  wire cnt0__0_carry_n_1;
  wire cnt0__0_carry_n_2;
  wire cnt0__0_carry_n_3;
  wire cnt0__0_carry_n_4;
  wire cnt0__0_carry_n_5;
  wire cnt0__0_carry_n_6;
  wire cnt0__0_carry_n_7;
  wire cnt0__23_carry__0_n_1;
  wire cnt0__23_carry__0_n_2;
  wire cnt0__23_carry__0_n_3;
  wire cnt0__23_carry__0_n_4;
  wire cnt0__23_carry__0_n_5;
  wire cnt0__23_carry__0_n_6;
  wire cnt0__23_carry__0_n_7;
  wire cnt0__23_carry_n_0;
  wire cnt0__23_carry_n_1;
  wire cnt0__23_carry_n_2;
  wire cnt0__23_carry_n_3;
  wire cnt0__23_carry_n_4;
  wire cnt0__23_carry_n_5;
  wire cnt0__23_carry_n_6;
  wire cnt0__23_carry_n_7;
  wire cnt_carry__0_n_1;
  wire cnt_carry__0_n_2;
  wire cnt_carry__0_n_3;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_1;
  wire cnt_carry_n_2;
  wire cnt_carry_n_3;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire [7:0]green_IBUF;
  wire numbercnt_d_inst_n_0;
  wire numbercnt_d_inst_n_1;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_12;
  wire numbercnt_d_inst_n_13;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_2;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_3;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_34;
  wire numbercnt_d_inst_n_35;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_4;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_47;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_5;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire numbercnt_d_inst_n_6;
  wire numbercnt_d_inst_n_7;
  wire numbercnt_d_inst_n_8;
  wire numbercnt_d_inst_n_9;
  wire numbercnt_q_inst_n_0;
  wire numbercnt_q_inst_n_1;
  wire numbercnt_q_inst_n_2;
  wire numbercnt_q_inst_n_3;
  wire numbercnt_q_inst_n_4;
  wire numbercnt_q_inst_n_5;
  wire numbercnt_q_inst_n_6;
  wire numbercnt_q_inst_n_7;
  wire pixel_clk_IBUF_BUFG;
  wire \q[2]_i_2__0_n_0 ;
  wire \q[3]_i_2__0_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[5]_i_2__0_n_0 ;
  wire \q[5]_i_7_n_0 ;
  wire \q[6]_i_2__0_n_0 ;
  wire \q[7]_i_2_n_0 ;
  wire \q[7]_i_5__0_n_0 ;
  wire \q[7]_i_8__0_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire reset_IBUF;
  wire [3:3]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_carry__0_CO_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,cnt0__0_carry_n_1,cnt0__0_carry_n_2,cnt0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,numbercnt_d_inst_n_32,cnt_reg__0[0]}),
        .O({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .S({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO({NLW_cnt0__0_carry__0_CO_UNCONNECTED[3],cnt0__0_carry__0_n_1,cnt0__0_carry__0_n_2,cnt0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1__0_n_0,numbercnt_d_inst_n_17}),
        .O({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .S({cnt0__0_carry__0_i_3__0_n_0,cnt0__0_carry__0_i_4__0_n_0,numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1__0
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3__0
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4__0
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4__0_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,cnt0__23_carry_n_1,cnt0__23_carry_n_2,cnt0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,cnt_reg__0[1:0]}),
        .O({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .S({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO({NLW_cnt0__23_carry__0_CO_UNCONNECTED[3],cnt0__23_carry__0_n_1,cnt0__23_carry__0_n_2,cnt0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .S({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,cnt_carry_n_1,cnt_carry_n_2,cnt_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO({NLW_cnt_carry__0_CO_UNCONNECTED[3],cnt_carry__0_n_1,cnt_carry__0_n_2,cnt_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(reset_IBUF));
  NumberCnt_3 numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({numbercnt_d_inst_n_0,numbercnt_d_inst_n_1,numbercnt_d_inst_n_2,numbercnt_d_inst_n_3,numbercnt_d_inst_n_4,numbercnt_d_inst_n_5,numbercnt_d_inst_n_6,numbercnt_d_inst_n_7,numbercnt_d_inst_n_8}),
        .DI(numbercnt_d_inst_n_17),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16}),
        .\cnt_reg[0] ({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .\cnt_reg[1] ({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .\cnt_reg[1]_0 (\q[7]_i_5__0_n_0 ),
        .\cnt_reg[3] ({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .\cnt_reg[3]_2 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}),
        .\cnt_reg[5] ({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .\cnt_reg[7] ({numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .\cnt_reg[7]_1 ({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}),
        .\green[0] (\q[6]_i_2__0_n_0 ),
        .\green[0]_0 (\q[2]_i_2__0_n_0 ),
        .\green[2] (\q[5]_i_2__0_n_0 ),
        .\green[2]_0 (numbercnt_q_inst_n_6),
        .\green[3] (\q[7]_i_2_n_0 ),
        .\green[3]_0 (\q[3]_i_2__0_n_0 ),
        .\green[4] (\q[4]_i_2_n_0 ),
        .\green[4]_0 (\q[5]_i_7_n_0 ),
        .\green[6] (numbercnt_q_inst_n_2),
        .\green[7] (numbercnt_q_inst_n_0),
        .\green[7]_0 (numbercnt_q_inst_n_5),
        .\green[7]_1 (numbercnt_q_inst_n_1),
        .\green[7]_2 (numbercnt_q_inst_n_4),
        .\green[7]_3 (numbercnt_q_inst_n_7),
        .\green[7]_4 (numbercnt_q_inst_n_3),
        .green_IBUF(green_IBUF),
        .\q_reg[1] (numbercnt_d_inst_n_9),
        .\q_reg[1]_0 (numbercnt_d_inst_n_10),
        .\q_reg[1]_1 (numbercnt_d_inst_n_11),
        .\q_reg[1]_2 (numbercnt_d_inst_n_32),
        .\q_reg[1]_3 (numbercnt_d_inst_n_33),
        .\q_reg[1]_4 (numbercnt_d_inst_n_34),
        .\q_reg[1]_5 (numbercnt_d_inst_n_51),
        .\q_reg[1]_6 (numbercnt_d_inst_n_52),
        .\q_reg[5] (numbercnt_d_inst_n_12));
  NumberCnt_4 numbercnt_q_inst
       (.\cnt_reg[3] (numbercnt_q_inst_n_6),
        .\cnt_reg[3]_0 (numbercnt_q_inst_n_7),
        .\green[0] (\q[6]_i_2__0_n_0 ),
        .\green[0]_0 (\q[2]_i_2__0_n_0 ),
        .\green[2] (numbercnt_d_inst_n_10),
        .\green[3] (\q[3]_i_2__0_n_0 ),
        .\green[3]_0 (\q[7]_i_2_n_0 ),
        .\green[4] (\q[4]_i_2_n_0 ),
        .\green[4]_0 (numbercnt_d_inst_n_51),
        .\green[4]_1 (numbercnt_d_inst_n_34),
        .\green[4]_2 (numbercnt_d_inst_n_12),
        .\green[4]_3 (\q[5]_i_7_n_0 ),
        .\green[5] (numbercnt_d_inst_n_33),
        .\green[7] (numbercnt_d_inst_n_52),
        .green_IBUF({green_IBUF[6:5],green_IBUF[2:0]}),
        .\q_reg[1] (numbercnt_q_inst_n_0),
        .\q_reg[1]_0 (numbercnt_q_inst_n_1),
        .\q_reg[1]_1 (numbercnt_q_inst_n_2),
        .\q_reg[1]_2 (numbercnt_q_inst_n_3),
        .\q_reg[1]_3 (numbercnt_q_inst_n_4),
        .\q_reg[1]_4 (numbercnt_q_inst_n_5));
  LUT3 #(
    .INIT(8'h69)) 
    \q[2]_i_2__0 
       (.I0(green_IBUF[2]),
        .I1(green_IBUF[1]),
        .I2(green_IBUF[0]),
        .O(\q[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \q[3]_i_2__0 
       (.I0(green_IBUF[1]),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[2]),
        .I3(green_IBUF[3]),
        .O(\q[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q[4]_i_2 
       (.I0(green_IBUF[0]),
        .I1(green_IBUF[1]),
        .I2(green_IBUF[2]),
        .I3(green_IBUF[3]),
        .I4(green_IBUF[4]),
        .O(\q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \q[5]_i_2__0 
       (.I0(green_IBUF[1]),
        .I1(green_IBUF[0]),
        .I2(green_IBUF[5]),
        .I3(green_IBUF[4]),
        .I4(green_IBUF[3]),
        .I5(green_IBUF[2]),
        .O(\q[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[5]_i_7 
       (.I0(green_IBUF[5]),
        .I1(green_IBUF[4]),
        .O(\q[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[6]_i_2__0 
       (.I0(green_IBUF[5]),
        .I1(green_IBUF[6]),
        .I2(green_IBUF[4]),
        .I3(green_IBUF[3]),
        .I4(\q[2]_i_2__0_n_0 ),
        .O(\q[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[7]_i_2 
       (.I0(\q[3]_i_2__0_n_0 ),
        .I1(green_IBUF[5]),
        .I2(green_IBUF[4]),
        .I3(green_IBUF[7]),
        .I4(green_IBUF[6]),
        .O(\q[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_5__0 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[4]),
        .I3(cnt_reg__0[5]),
        .I4(\q[7]_i_8__0_n_0 ),
        .O(\q[7]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_8__0 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[3]),
        .O(\q[7]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q[8]_i_1 
       (.I0(reset_IBUF),
        .I1(ActiveArea_IBUF),
        .O(SS));
  LUT5 #(
    .INIT(32'hFFFF37F7)) 
    \q[9]_i_1 
       (.I0(numbercnt_d_inst_n_10),
        .I1(ActiveArea_IBUF),
        .I2(numbercnt_d_inst_n_9),
        .I3(numbercnt_d_inst_n_11),
        .I4(reset_IBUF),
        .O(\q[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_8),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_7),
        .Q(D[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_6),
        .Q(D[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_5),
        .Q(D[3]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_4),
        .Q(D[4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_3),
        .Q(D[5]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_2),
        .Q(D[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_1),
        .Q(D[7]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_0),
        .Q(D[8]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module encode_1
   (D,
    ActiveArea_IBUF,
    red_IBUF,
    SS,
    pixel_clk_IBUF_BUFG);
  output [9:0]D;
  input ActiveArea_IBUF;
  input [7:0]red_IBUF;
  input [1:0]SS;
  input pixel_clk_IBUF_BUFG;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [1:0]SS;
  wire cnt0__0_carry__0_i_1__1_n_0;
  wire cnt0__0_carry__0_i_3__1_n_0;
  wire cnt0__0_carry__0_i_4__1_n_0;
  wire cnt0__0_carry__0_n_1;
  wire cnt0__0_carry__0_n_2;
  wire cnt0__0_carry__0_n_3;
  wire cnt0__0_carry__0_n_4;
  wire cnt0__0_carry__0_n_5;
  wire cnt0__0_carry__0_n_6;
  wire cnt0__0_carry__0_n_7;
  wire cnt0__0_carry_n_0;
  wire cnt0__0_carry_n_1;
  wire cnt0__0_carry_n_2;
  wire cnt0__0_carry_n_3;
  wire cnt0__0_carry_n_4;
  wire cnt0__0_carry_n_5;
  wire cnt0__0_carry_n_6;
  wire cnt0__0_carry_n_7;
  wire cnt0__23_carry__0_n_1;
  wire cnt0__23_carry__0_n_2;
  wire cnt0__23_carry__0_n_3;
  wire cnt0__23_carry__0_n_4;
  wire cnt0__23_carry__0_n_5;
  wire cnt0__23_carry__0_n_6;
  wire cnt0__23_carry__0_n_7;
  wire cnt0__23_carry_n_0;
  wire cnt0__23_carry_n_1;
  wire cnt0__23_carry_n_2;
  wire cnt0__23_carry_n_3;
  wire cnt0__23_carry_n_4;
  wire cnt0__23_carry_n_5;
  wire cnt0__23_carry_n_6;
  wire cnt0__23_carry_n_7;
  wire cnt_carry__0_n_1;
  wire cnt_carry__0_n_2;
  wire cnt_carry__0_n_3;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_1;
  wire cnt_carry_n_2;
  wire cnt_carry_n_3;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire numbercnt_d_inst_n_0;
  wire numbercnt_d_inst_n_1;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_12;
  wire numbercnt_d_inst_n_13;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_2;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_3;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_34;
  wire numbercnt_d_inst_n_35;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_4;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_47;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_5;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire numbercnt_d_inst_n_6;
  wire numbercnt_d_inst_n_7;
  wire numbercnt_d_inst_n_8;
  wire numbercnt_d_inst_n_9;
  wire numbercnt_q_inst_n_0;
  wire numbercnt_q_inst_n_1;
  wire numbercnt_q_inst_n_2;
  wire numbercnt_q_inst_n_3;
  wire numbercnt_q_inst_n_4;
  wire numbercnt_q_inst_n_5;
  wire numbercnt_q_inst_n_6;
  wire numbercnt_q_inst_n_7;
  wire pixel_clk_IBUF_BUFG;
  wire \q[2]_i_2__1_n_0 ;
  wire \q[3]_i_2__1_n_0 ;
  wire \q[4]_i_2__0_n_0 ;
  wire \q[5]_i_2__1_n_0 ;
  wire \q[5]_i_7__0_n_0 ;
  wire \q[6]_i_2__1_n_0 ;
  wire \q[7]_i_2__0_n_0 ;
  wire \q[7]_i_5__1_n_0 ;
  wire \q[7]_i_8__1_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire [7:0]red_IBUF;
  wire [3:3]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_carry__0_CO_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,cnt0__0_carry_n_1,cnt0__0_carry_n_2,cnt0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,numbercnt_d_inst_n_32,cnt_reg__0[0]}),
        .O({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .S({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO({NLW_cnt0__0_carry__0_CO_UNCONNECTED[3],cnt0__0_carry__0_n_1,cnt0__0_carry__0_n_2,cnt0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1__1_n_0,numbercnt_d_inst_n_17}),
        .O({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .S({cnt0__0_carry__0_i_3__1_n_0,cnt0__0_carry__0_i_4__1_n_0,numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1__1
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3__1
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4__1
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4__1_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,cnt0__23_carry_n_1,cnt0__23_carry_n_2,cnt0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,cnt_reg__0[1:0]}),
        .O({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .S({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO({NLW_cnt0__23_carry__0_CO_UNCONNECTED[3],cnt0__23_carry__0_n_1,cnt0__23_carry__0_n_2,cnt0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .S({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,cnt_carry_n_1,cnt_carry_n_2,cnt_carry_n_3}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO({NLW_cnt_carry__0_CO_UNCONNECTED[3],cnt_carry__0_n_1,cnt_carry__0_n_2,cnt_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(SS[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(SS[0]));
  NumberCnt numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({numbercnt_d_inst_n_0,numbercnt_d_inst_n_1,numbercnt_d_inst_n_2,numbercnt_d_inst_n_3,numbercnt_d_inst_n_4,numbercnt_d_inst_n_5,numbercnt_d_inst_n_6,numbercnt_d_inst_n_7,numbercnt_d_inst_n_8}),
        .DI(numbercnt_d_inst_n_17),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16}),
        .\cnt_reg[0] ({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .\cnt_reg[1] ({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .\cnt_reg[1]_0 (\q[7]_i_5__1_n_0 ),
        .\cnt_reg[3] ({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .\cnt_reg[3]_2 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}),
        .\cnt_reg[5] ({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .\cnt_reg[7] ({numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .\cnt_reg[7]_1 ({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}),
        .\q_reg[1] (numbercnt_d_inst_n_9),
        .\q_reg[1]_0 (numbercnt_d_inst_n_10),
        .\q_reg[1]_1 (numbercnt_d_inst_n_11),
        .\q_reg[1]_2 (numbercnt_d_inst_n_32),
        .\q_reg[1]_3 (numbercnt_d_inst_n_33),
        .\q_reg[1]_4 (numbercnt_d_inst_n_34),
        .\q_reg[1]_5 (numbercnt_d_inst_n_51),
        .\q_reg[1]_6 (numbercnt_d_inst_n_52),
        .\q_reg[5] (numbercnt_d_inst_n_12),
        .\red[0] (\q[6]_i_2__1_n_0 ),
        .\red[0]_0 (\q[2]_i_2__1_n_0 ),
        .\red[2] (\q[5]_i_2__1_n_0 ),
        .\red[2]_0 (numbercnt_q_inst_n_6),
        .\red[3] (\q[7]_i_2__0_n_0 ),
        .\red[3]_0 (\q[3]_i_2__1_n_0 ),
        .\red[4] (\q[4]_i_2__0_n_0 ),
        .\red[4]_0 (\q[5]_i_7__0_n_0 ),
        .\red[6] (numbercnt_q_inst_n_2),
        .\red[7] (numbercnt_q_inst_n_0),
        .\red[7]_0 (numbercnt_q_inst_n_5),
        .\red[7]_1 (numbercnt_q_inst_n_1),
        .\red[7]_2 (numbercnt_q_inst_n_4),
        .\red[7]_3 (numbercnt_q_inst_n_7),
        .\red[7]_4 (numbercnt_q_inst_n_3),
        .red_IBUF(red_IBUF));
  NumberCnt_2 numbercnt_q_inst
       (.\q_reg[1] (numbercnt_q_inst_n_0),
        .\q_reg[1]_0 (numbercnt_q_inst_n_1),
        .\q_reg[1]_1 (numbercnt_q_inst_n_2),
        .\q_reg[1]_2 (numbercnt_q_inst_n_3),
        .\q_reg[1]_3 (numbercnt_q_inst_n_4),
        .\q_reg[1]_4 (numbercnt_q_inst_n_5),
        .\q_reg[1]_5 (numbercnt_q_inst_n_6),
        .\q_reg[1]_6 (numbercnt_q_inst_n_7),
        .\red[0] (\q[6]_i_2__1_n_0 ),
        .\red[0]_0 (\q[2]_i_2__1_n_0 ),
        .\red[2] (numbercnt_d_inst_n_10),
        .\red[3] (\q[3]_i_2__1_n_0 ),
        .\red[3]_0 (\q[7]_i_2__0_n_0 ),
        .\red[4] (\q[4]_i_2__0_n_0 ),
        .\red[4]_0 (numbercnt_d_inst_n_51),
        .\red[4]_1 (numbercnt_d_inst_n_34),
        .\red[4]_2 (numbercnt_d_inst_n_12),
        .\red[4]_3 (\q[5]_i_7__0_n_0 ),
        .\red[5] (numbercnt_d_inst_n_33),
        .\red[7] (numbercnt_d_inst_n_52),
        .red_IBUF({red_IBUF[6:5],red_IBUF[2:0]}));
  LUT3 #(
    .INIT(8'h69)) 
    \q[2]_i_2__1 
       (.I0(red_IBUF[2]),
        .I1(red_IBUF[1]),
        .I2(red_IBUF[0]),
        .O(\q[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \q[3]_i_2__1 
       (.I0(red_IBUF[1]),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[2]),
        .I3(red_IBUF[3]),
        .O(\q[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q[4]_i_2__0 
       (.I0(red_IBUF[0]),
        .I1(red_IBUF[1]),
        .I2(red_IBUF[2]),
        .I3(red_IBUF[3]),
        .I4(red_IBUF[4]),
        .O(\q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \q[5]_i_2__1 
       (.I0(red_IBUF[1]),
        .I1(red_IBUF[0]),
        .I2(red_IBUF[5]),
        .I3(red_IBUF[4]),
        .I4(red_IBUF[3]),
        .I5(red_IBUF[2]),
        .O(\q[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[5]_i_7__0 
       (.I0(red_IBUF[5]),
        .I1(red_IBUF[4]),
        .O(\q[5]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[6]_i_2__1 
       (.I0(red_IBUF[5]),
        .I1(red_IBUF[6]),
        .I2(red_IBUF[4]),
        .I3(red_IBUF[3]),
        .I4(\q[2]_i_2__1_n_0 ),
        .O(\q[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[7]_i_2__0 
       (.I0(\q[3]_i_2__1_n_0 ),
        .I1(red_IBUF[5]),
        .I2(red_IBUF[4]),
        .I3(red_IBUF[7]),
        .I4(red_IBUF[6]),
        .O(\q[7]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_5__1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[4]),
        .I3(cnt_reg__0[5]),
        .I4(\q[7]_i_8__1_n_0 ),
        .O(\q[7]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_8__1 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[3]),
        .O(\q[7]_i_8__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF37F7)) 
    \q[9]_i_1 
       (.I0(numbercnt_d_inst_n_10),
        .I1(ActiveArea_IBUF),
        .I2(numbercnt_d_inst_n_9),
        .I3(numbercnt_d_inst_n_11),
        .I4(SS[0]),
        .O(\q[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_8),
        .Q(D[0]),
        .S(SS[0]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_7),
        .Q(D[1]),
        .S(SS[0]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_6),
        .Q(D[2]),
        .S(SS[1]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_5),
        .Q(D[3]),
        .S(SS[0]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_4),
        .Q(D[4]),
        .S(SS[1]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_3),
        .Q(D[5]),
        .S(SS[0]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_2),
        .Q(D[6]),
        .S(SS[1]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_1),
        .Q(D[7]),
        .S(SS[0]));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_0),
        .Q(D[8]),
        .S(SS[1]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
