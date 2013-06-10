////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: Schieberegister_synthesis.v
// /___/   /\     Timestamp: Thu Oct 20 15:06:32 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Schieberegister.ngc Schieberegister_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: Schieberegister.ngc
// Output file	: \\homefs\aax289\CEP\ise\Sreg\netgen\synthesis\Schieberegister_synthesis.v
// # of Modules	: 1
// Design Name	: Schieberegister
// Xilinx        : C:\Xilinx\12.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Schieberegister (
  D0, CLK, CLKIN, D23, S0, S1, MR, ANODE, Q, CATHODE, LED
);
  input D0;
  input CLK;
  input CLKIN;
  input D23;
  input S0;
  input S1;
  input MR;
  output [3 : 0] ANODE;
  output [23 : 0] Q;
  output [7 : 0] CATHODE;
  output [5 : 0] LED;
  wire ANODE_0_4;
  wire ANODE_1_5;
  wire ANODE_2_6;
  wire ANODE_3_7;
  wire CATHODE_0_OBUF_16;
  wire CATHODE_1_17;
  wire CATHODE_2_18;
  wire CATHODE_3_19;
  wire CATHODE_4_20;
  wire CATHODE_5_21;
  wire CATHODE_6_22;
  wire CATHODE_7_23;
  wire CLKEN_25;
  wire CLKENIN_26;
  wire CLKENIN_OLD_27;
  wire CLKENIN_and0000_norst;
  wire CLK_BUFGP_30;
  wire D0_IBUF_32;
  wire D23_IBUF_34;
  wire INTREG_not0001;
  wire LED_0_OBUF_90;
  wire LED_1_OBUF_91;
  wire LED_2_OBUF_92;
  wire LED_3_OBUF_93;
  wire LED_4_OBUF_94;
  wire LED_5_OBUF_95;
  wire MR_IBUF_97;
  wire MR_inv;
  wire Mcount_cnt;
  wire Mcount_cnt1;
  wire Mcount_counter;
  wire Mcount_counter1;
  wire Mcount_counter10;
  wire Mcount_counter11;
  wire Mcount_counter12;
  wire Mcount_counter13;
  wire Mcount_counter14;
  wire Mcount_counter15;
  wire Mcount_counter16;
  wire Mcount_counter17;
  wire Mcount_counter2;
  wire Mcount_counter3;
  wire Mcount_counter4;
  wire Mcount_counter5;
  wire Mcount_counter6;
  wire Mcount_counter7;
  wire Mcount_counter8;
  wire Mcount_counter9;
  wire Mmux_value_mux0000_3_154;
  wire Mmux_value_mux0000_31_155;
  wire Mmux_value_mux0000_32_156;
  wire Mmux_value_mux0000_33_157;
  wire Mmux_value_mux0000_4_158;
  wire Mmux_value_mux0000_41_159;
  wire Mmux_value_mux0000_42_160;
  wire Mmux_value_mux0000_43_161;
  wire Mrom_CATHODE_mux00011;
  wire Mrom_CATHODE_mux00012;
  wire Mrom_CATHODE_mux00013;
  wire Mrom_CATHODE_mux00014;
  wire Mrom_CATHODE_mux00015;
  wire Mrom_CATHODE_mux00016;
  wire Mrom_CATHODE_mux00017;
  wire Mrom_cnt_rom0000;
  wire Mrom_cnt_rom00001;
  wire Mrom_cnt_rom00002;
  wire Mrom_cnt_rom00003;
  wire Q_0_OBUF_197;
  wire Q_10_OBUF_198;
  wire Q_11_OBUF_199;
  wire Q_12_OBUF_200;
  wire Q_13_OBUF_201;
  wire Q_14_OBUF_202;
  wire Q_15_OBUF_203;
  wire Q_16_OBUF_204;
  wire Q_17_OBUF_205;
  wire Q_18_OBUF_206;
  wire Q_19_OBUF_207;
  wire Q_1_OBUF_208;
  wire Q_20_OBUF_209;
  wire Q_21_OBUF_210;
  wire Q_22_OBUF_211;
  wire Q_23_OBUF_212;
  wire Q_2_OBUF_213;
  wire Q_3_OBUF_214;
  wire Q_4_OBUF_215;
  wire Q_5_OBUF_216;
  wire Q_6_OBUF_217;
  wire Q_7_OBUF_218;
  wire Q_8_OBUF_219;
  wire Q_9_OBUF_220;
  wire S0_IBUF_222;
  wire S1_IBUF_224;
  wire counter_cmp_ge0000_inv;
  wire [23 : 0] INTREG;
  wire [23 : 0] INTREG_mux0000;
  wire [16 : 0] Mcount_counter_cy;
  wire [17 : 0] Mcount_counter_lut;
  wire [1 : 0] cnt;
  wire [17 : 0] counter;
  wire [3 : 0] value_mux0000;
  GND   XST_GND (
    .G(Mcount_counter_lut[17])
  );
  VCC   XST_VCC (
    .P(CATHODE_0_OBUF_16)
  );
  FDPE   INTREG_0 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[23]),
    .PRE(MR_inv),
    .Q(INTREG[0])
  );
  FDPE   INTREG_1 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[22]),
    .PRE(MR_inv),
    .Q(INTREG[1])
  );
  FDPE   INTREG_2 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[21]),
    .PRE(MR_inv),
    .Q(INTREG[2])
  );
  FDPE   INTREG_3 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[20]),
    .PRE(MR_inv),
    .Q(INTREG[3])
  );
  FDPE   INTREG_4 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[19]),
    .PRE(MR_inv),
    .Q(INTREG[4])
  );
  FDPE   INTREG_5 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[18]),
    .PRE(MR_inv),
    .Q(INTREG[5])
  );
  FDPE   INTREG_6 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[17]),
    .PRE(MR_inv),
    .Q(INTREG[6])
  );
  FDPE   INTREG_7 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[16]),
    .PRE(MR_inv),
    .Q(INTREG[7])
  );
  FDPE   INTREG_8 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[15]),
    .PRE(MR_inv),
    .Q(INTREG[8])
  );
  FDPE   INTREG_9 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[14]),
    .PRE(MR_inv),
    .Q(INTREG[9])
  );
  FDPE   INTREG_10 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[13]),
    .PRE(MR_inv),
    .Q(INTREG[10])
  );
  FDPE   INTREG_11 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[12]),
    .PRE(MR_inv),
    .Q(INTREG[11])
  );
  FDPE   INTREG_12 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[11]),
    .PRE(MR_inv),
    .Q(INTREG[12])
  );
  FDPE   INTREG_13 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[10]),
    .PRE(MR_inv),
    .Q(INTREG[13])
  );
  FDPE   INTREG_14 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[9]),
    .PRE(MR_inv),
    .Q(INTREG[14])
  );
  FDPE   INTREG_15 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[8]),
    .PRE(MR_inv),
    .Q(INTREG[15])
  );
  FDPE   INTREG_16 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[7]),
    .PRE(MR_inv),
    .Q(INTREG[16])
  );
  FDPE   INTREG_17 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[6]),
    .PRE(MR_inv),
    .Q(INTREG[17])
  );
  FDPE   INTREG_18 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[5]),
    .PRE(MR_inv),
    .Q(INTREG[18])
  );
  FDPE   INTREG_19 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[4]),
    .PRE(MR_inv),
    .Q(INTREG[19])
  );
  FDPE   INTREG_20 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[3]),
    .PRE(MR_inv),
    .Q(INTREG[20])
  );
  FDPE   INTREG_21 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[2]),
    .PRE(MR_inv),
    .Q(INTREG[21])
  );
  FDPE   INTREG_22 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[1]),
    .PRE(MR_inv),
    .Q(INTREG[22])
  );
  FDPE   INTREG_23 (
    .C(CLK_BUFGP_30),
    .CE(INTREG_not0001),
    .D(INTREG_mux0000[0]),
    .PRE(MR_inv),
    .Q(INTREG[23])
  );
  FD   CLKENIN_OLD (
    .C(CLK_BUFGP_30),
    .D(CLKENIN_and0000_norst),
    .Q(CLKENIN_OLD_27)
  );
  FDR   CLKENIN (
    .C(CLK_BUFGP_30),
    .D(CLKENIN_and0000_norst),
    .R(CLKENIN_OLD_27),
    .Q(CLKENIN_26)
  );
  FDC   CLKEN (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(counter[17]),
    .Q(CLKEN_25)
  );
  FDP   ANODE_0 (
    .C(CLKEN_25),
    .D(Mrom_cnt_rom00003),
    .PRE(MR_inv),
    .Q(ANODE_0_4)
  );
  FDP   ANODE_1 (
    .C(CLKEN_25),
    .D(Mrom_cnt_rom00002),
    .PRE(MR_inv),
    .Q(ANODE_1_5)
  );
  FDP   ANODE_2 (
    .C(CLKEN_25),
    .D(Mrom_cnt_rom00001),
    .PRE(MR_inv),
    .Q(ANODE_2_6)
  );
  FDP   ANODE_3 (
    .C(CLKEN_25),
    .D(Mrom_cnt_rom0000),
    .PRE(MR_inv),
    .Q(ANODE_3_7)
  );
  FDP   CATHODE_1 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00011),
    .PRE(MR_inv),
    .Q(CATHODE_1_17)
  );
  FDP   CATHODE_2 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00012),
    .PRE(MR_inv),
    .Q(CATHODE_2_18)
  );
  FDP   CATHODE_3 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00013),
    .PRE(MR_inv),
    .Q(CATHODE_3_19)
  );
  FDP   CATHODE_4 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00014),
    .PRE(MR_inv),
    .Q(CATHODE_4_20)
  );
  FDP   CATHODE_5 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00015),
    .PRE(MR_inv),
    .Q(CATHODE_5_21)
  );
  FDP   CATHODE_6 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00016),
    .PRE(MR_inv),
    .Q(CATHODE_6_22)
  );
  FDP   CATHODE_7 (
    .C(CLKEN_25),
    .D(Mrom_CATHODE_mux00017),
    .PRE(MR_inv),
    .Q(CATHODE_7_23)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<0>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[0]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[0])
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(counter_cmp_ge0000_inv),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(counter_cmp_ge0000_inv),
    .LI(Mcount_counter_lut[0]),
    .O(Mcount_counter)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<1>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[1]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[1])
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[1]),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(Mcount_counter_lut[1]),
    .O(Mcount_counter1)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<2>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[2]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[2])
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[2]),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(Mcount_counter_lut[2]),
    .O(Mcount_counter2)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<3>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[3]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[3])
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[3]),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(Mcount_counter_lut[3]),
    .O(Mcount_counter3)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<4>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[4]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[4])
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[4]),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(Mcount_counter_lut[4]),
    .O(Mcount_counter4)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<5>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[5]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[5])
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[5]),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(Mcount_counter_lut[5]),
    .O(Mcount_counter5)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<6>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[6]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[6])
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[6]),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(Mcount_counter_lut[6]),
    .O(Mcount_counter6)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<7>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[7]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[7])
  );
  MUXCY   \Mcount_counter_cy<7>  (
    .CI(Mcount_counter_cy[6]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[7]),
    .O(Mcount_counter_cy[7])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(Mcount_counter_lut[7]),
    .O(Mcount_counter7)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<8>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[8]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[8])
  );
  MUXCY   \Mcount_counter_cy<8>  (
    .CI(Mcount_counter_cy[7]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[8]),
    .O(Mcount_counter_cy[8])
  );
  XORCY   \Mcount_counter_xor<8>  (
    .CI(Mcount_counter_cy[7]),
    .LI(Mcount_counter_lut[8]),
    .O(Mcount_counter8)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<9>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[9]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[9])
  );
  MUXCY   \Mcount_counter_cy<9>  (
    .CI(Mcount_counter_cy[8]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[9]),
    .O(Mcount_counter_cy[9])
  );
  XORCY   \Mcount_counter_xor<9>  (
    .CI(Mcount_counter_cy[8]),
    .LI(Mcount_counter_lut[9]),
    .O(Mcount_counter9)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<10>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[10]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[10])
  );
  MUXCY   \Mcount_counter_cy<10>  (
    .CI(Mcount_counter_cy[9]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[10]),
    .O(Mcount_counter_cy[10])
  );
  XORCY   \Mcount_counter_xor<10>  (
    .CI(Mcount_counter_cy[9]),
    .LI(Mcount_counter_lut[10]),
    .O(Mcount_counter10)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<11>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[11]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[11])
  );
  MUXCY   \Mcount_counter_cy<11>  (
    .CI(Mcount_counter_cy[10]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[11]),
    .O(Mcount_counter_cy[11])
  );
  XORCY   \Mcount_counter_xor<11>  (
    .CI(Mcount_counter_cy[10]),
    .LI(Mcount_counter_lut[11]),
    .O(Mcount_counter11)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<12>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[12]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[12])
  );
  MUXCY   \Mcount_counter_cy<12>  (
    .CI(Mcount_counter_cy[11]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[12]),
    .O(Mcount_counter_cy[12])
  );
  XORCY   \Mcount_counter_xor<12>  (
    .CI(Mcount_counter_cy[11]),
    .LI(Mcount_counter_lut[12]),
    .O(Mcount_counter12)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<13>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[13]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[13])
  );
  MUXCY   \Mcount_counter_cy<13>  (
    .CI(Mcount_counter_cy[12]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[13]),
    .O(Mcount_counter_cy[13])
  );
  XORCY   \Mcount_counter_xor<13>  (
    .CI(Mcount_counter_cy[12]),
    .LI(Mcount_counter_lut[13]),
    .O(Mcount_counter13)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<14>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[14]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[14])
  );
  MUXCY   \Mcount_counter_cy<14>  (
    .CI(Mcount_counter_cy[13]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[14]),
    .O(Mcount_counter_cy[14])
  );
  XORCY   \Mcount_counter_xor<14>  (
    .CI(Mcount_counter_cy[13]),
    .LI(Mcount_counter_lut[14]),
    .O(Mcount_counter14)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<15>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[15]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[15])
  );
  MUXCY   \Mcount_counter_cy<15>  (
    .CI(Mcount_counter_cy[14]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[15]),
    .O(Mcount_counter_cy[15])
  );
  XORCY   \Mcount_counter_xor<15>  (
    .CI(Mcount_counter_cy[14]),
    .LI(Mcount_counter_lut[15]),
    .O(Mcount_counter15)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \Mcount_counter_lut<16>  (
    .I0(Mcount_counter_lut[17]),
    .I1(counter[16]),
    .I2(counter[17]),
    .O(Mcount_counter_lut[16])
  );
  MUXCY   \Mcount_counter_cy<16>  (
    .CI(Mcount_counter_cy[15]),
    .DI(Mcount_counter_lut[17]),
    .S(Mcount_counter_lut[16]),
    .O(Mcount_counter_cy[16])
  );
  XORCY   \Mcount_counter_xor<16>  (
    .CI(Mcount_counter_cy[15]),
    .LI(Mcount_counter_lut[16]),
    .O(Mcount_counter16)
  );
  XORCY   \Mcount_counter_xor<17>  (
    .CI(Mcount_counter_cy[16]),
    .LI(Mcount_counter_lut[17]),
    .O(Mcount_counter17)
  );
  FDC   cnt_0 (
    .C(CLKEN_25),
    .CLR(MR_inv),
    .D(Mcount_cnt),
    .Q(cnt[0])
  );
  FDC   cnt_1 (
    .C(CLKEN_25),
    .CLR(MR_inv),
    .D(Mcount_cnt1),
    .Q(cnt[1])
  );
  FDC   counter_0 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter),
    .Q(counter[0])
  );
  FDC   counter_1 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter1),
    .Q(counter[1])
  );
  FDC   counter_2 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter2),
    .Q(counter[2])
  );
  FDC   counter_3 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter3),
    .Q(counter[3])
  );
  FDC   counter_4 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter4),
    .Q(counter[4])
  );
  FDC   counter_5 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter5),
    .Q(counter[5])
  );
  FDC   counter_6 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter6),
    .Q(counter[6])
  );
  FDC   counter_7 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter7),
    .Q(counter[7])
  );
  FDC   counter_8 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter8),
    .Q(counter[8])
  );
  FDC   counter_9 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter9),
    .Q(counter[9])
  );
  FDC   counter_10 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter10),
    .Q(counter[10])
  );
  FDC   counter_11 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter11),
    .Q(counter[11])
  );
  FDC   counter_12 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter12),
    .Q(counter[12])
  );
  FDC   counter_13 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter13),
    .Q(counter[13])
  );
  FDC   counter_14 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter14),
    .Q(counter[14])
  );
  FDC   counter_15 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter15),
    .Q(counter[15])
  );
  FDC   counter_16 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter16),
    .Q(counter[16])
  );
  FDC   counter_17 (
    .C(CLK_BUFGP_30),
    .CLR(MR_inv),
    .D(Mcount_counter17),
    .Q(counter[17])
  );
  MUXF5   Mmux_value_mux0000_2_f5_2 (
    .I0(Mmux_value_mux0000_43_161),
    .I1(Mmux_value_mux0000_33_157),
    .S(cnt[1]),
    .O(value_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_43 (
    .I0(INTREG[7]),
    .I1(INTREG[3]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_43_161)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_33 (
    .I0(INTREG[15]),
    .I1(INTREG[11]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_33_157)
  );
  MUXF5   Mmux_value_mux0000_2_f5_1 (
    .I0(Mmux_value_mux0000_42_160),
    .I1(Mmux_value_mux0000_32_156),
    .S(cnt[1]),
    .O(value_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_42 (
    .I0(INTREG[6]),
    .I1(INTREG[2]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_42_160)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_32 (
    .I0(INTREG[14]),
    .I1(INTREG[10]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_32_156)
  );
  MUXF5   Mmux_value_mux0000_2_f5_0 (
    .I0(Mmux_value_mux0000_41_159),
    .I1(Mmux_value_mux0000_31_155),
    .S(cnt[1]),
    .O(value_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_41 (
    .I0(INTREG[5]),
    .I1(INTREG[1]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_41_159)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_31 (
    .I0(INTREG[13]),
    .I1(INTREG[9]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_31_155)
  );
  MUXF5   Mmux_value_mux0000_2_f5 (
    .I0(Mmux_value_mux0000_4_158),
    .I1(Mmux_value_mux0000_3_154),
    .S(cnt[1]),
    .O(value_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_4 (
    .I0(INTREG[4]),
    .I1(INTREG[0]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_4_158)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  Mmux_value_mux0000_3 (
    .I0(INTREG[12]),
    .I1(INTREG[8]),
    .I2(cnt[0]),
    .O(Mmux_value_mux0000_3_154)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<9>1  (
    .I0(INTREG[9]),
    .I1(MR_IBUF_97),
    .O(Q_9_OBUF_220)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<8>1  (
    .I0(INTREG[8]),
    .I1(MR_IBUF_97),
    .O(Q_8_OBUF_219)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<7>1  (
    .I0(INTREG[7]),
    .I1(MR_IBUF_97),
    .O(Q_7_OBUF_218)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<6>1  (
    .I0(INTREG[6]),
    .I1(MR_IBUF_97),
    .O(Q_6_OBUF_217)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<5>1  (
    .I0(INTREG[5]),
    .I1(MR_IBUF_97),
    .O(Q_5_OBUF_216)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<4>1  (
    .I0(INTREG[4]),
    .I1(MR_IBUF_97),
    .O(Q_4_OBUF_215)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<3>1  (
    .I0(INTREG[3]),
    .I1(MR_IBUF_97),
    .O(Q_3_OBUF_214)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<2>1  (
    .I0(INTREG[2]),
    .I1(MR_IBUF_97),
    .O(Q_2_OBUF_213)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<23>1  (
    .I0(INTREG[23]),
    .I1(MR_IBUF_97),
    .O(Q_23_OBUF_212)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<22>1  (
    .I0(INTREG[22]),
    .I1(MR_IBUF_97),
    .O(Q_22_OBUF_211)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<21>1  (
    .I0(INTREG[21]),
    .I1(MR_IBUF_97),
    .O(Q_21_OBUF_210)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<20>1  (
    .I0(INTREG[20]),
    .I1(MR_IBUF_97),
    .O(Q_20_OBUF_209)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<1>1  (
    .I0(INTREG[1]),
    .I1(MR_IBUF_97),
    .O(Q_1_OBUF_208)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<19>1  (
    .I0(INTREG[19]),
    .I1(MR_IBUF_97),
    .O(Q_19_OBUF_207)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<18>1  (
    .I0(INTREG[18]),
    .I1(MR_IBUF_97),
    .O(Q_18_OBUF_206)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<17>1  (
    .I0(INTREG[17]),
    .I1(MR_IBUF_97),
    .O(Q_17_OBUF_205)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<16>1  (
    .I0(INTREG[16]),
    .I1(MR_IBUF_97),
    .O(Q_16_OBUF_204)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<15>1  (
    .I0(INTREG[15]),
    .I1(MR_IBUF_97),
    .O(Q_15_OBUF_203)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<14>1  (
    .I0(INTREG[14]),
    .I1(MR_IBUF_97),
    .O(Q_14_OBUF_202)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<13>1  (
    .I0(INTREG[13]),
    .I1(MR_IBUF_97),
    .O(Q_13_OBUF_201)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<12>1  (
    .I0(INTREG[12]),
    .I1(MR_IBUF_97),
    .O(Q_12_OBUF_200)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<11>1  (
    .I0(INTREG[11]),
    .I1(MR_IBUF_97),
    .O(Q_11_OBUF_199)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<10>1  (
    .I0(INTREG[10]),
    .I1(MR_IBUF_97),
    .O(Q_10_OBUF_198)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Q<0>1  (
    .I0(INTREG[0]),
    .I1(MR_IBUF_97),
    .O(Q_0_OBUF_197)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_5_and00001 (
    .I0(INTREG[21]),
    .I1(INTREG[20]),
    .I2(INTREG[23]),
    .I3(INTREG[22]),
    .O(LED_5_OBUF_95)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_4_and00001 (
    .I0(INTREG[17]),
    .I1(INTREG[16]),
    .I2(INTREG[19]),
    .I3(INTREG[18]),
    .O(LED_4_OBUF_94)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_3_and00001 (
    .I0(INTREG[13]),
    .I1(INTREG[12]),
    .I2(INTREG[15]),
    .I3(INTREG[14]),
    .O(LED_3_OBUF_93)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_2_and00001 (
    .I0(INTREG[9]),
    .I1(INTREG[8]),
    .I2(INTREG[11]),
    .I3(INTREG[10]),
    .O(LED_2_OBUF_92)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_1_and00001 (
    .I0(INTREG[5]),
    .I1(INTREG[4]),
    .I2(INTREG[7]),
    .I3(INTREG[6]),
    .O(LED_1_OBUF_91)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  LED_0_and00001 (
    .I0(INTREG[1]),
    .I1(INTREG[0]),
    .I2(INTREG[3]),
    .I3(INTREG[2]),
    .O(LED_0_OBUF_90)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mrom_cnt_rom000031 (
    .I0(cnt[1]),
    .I1(cnt[0]),
    .O(Mrom_cnt_rom00003)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  Mrom_cnt_rom000021 (
    .I0(cnt[1]),
    .I1(cnt[0]),
    .O(Mrom_cnt_rom00002)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  Mrom_cnt_rom0000111 (
    .I0(cnt[0]),
    .I1(cnt[1]),
    .O(Mrom_cnt_rom00001)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mrom_cnt_rom000011 (
    .I0(cnt[0]),
    .I1(cnt[1]),
    .O(Mrom_cnt_rom0000)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_cnt_xor<1>11  (
    .I0(cnt[0]),
    .I1(cnt[1]),
    .O(Mcount_cnt1)
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<9>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[13]),
    .I2(S0_IBUF_222),
    .I3(INTREG[15]),
    .O(INTREG_mux0000[9])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<8>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[14]),
    .I2(S0_IBUF_222),
    .I3(INTREG[16]),
    .O(INTREG_mux0000[8])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<7>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[15]),
    .I2(S0_IBUF_222),
    .I3(INTREG[17]),
    .O(INTREG_mux0000[7])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<6>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[16]),
    .I2(S0_IBUF_222),
    .I3(INTREG[18]),
    .O(INTREG_mux0000[6])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<5>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[17]),
    .I2(S0_IBUF_222),
    .I3(INTREG[19]),
    .O(INTREG_mux0000[5])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<4>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[18]),
    .I2(S0_IBUF_222),
    .I3(INTREG[20]),
    .O(INTREG_mux0000[4])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<3>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[19]),
    .I2(S0_IBUF_222),
    .I3(INTREG[21]),
    .O(INTREG_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<2>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[20]),
    .I2(S0_IBUF_222),
    .I3(INTREG[22]),
    .O(INTREG_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<23>1  (
    .I0(S1_IBUF_224),
    .I1(D0_IBUF_32),
    .I2(S0_IBUF_222),
    .I3(INTREG[1]),
    .O(INTREG_mux0000[23])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<22>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[0]),
    .I2(S0_IBUF_222),
    .I3(INTREG[2]),
    .O(INTREG_mux0000[22])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<21>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[1]),
    .I2(S0_IBUF_222),
    .I3(INTREG[3]),
    .O(INTREG_mux0000[21])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<20>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[2]),
    .I2(S0_IBUF_222),
    .I3(INTREG[4]),
    .O(INTREG_mux0000[20])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<1>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[21]),
    .I2(S0_IBUF_222),
    .I3(INTREG[23]),
    .O(INTREG_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<19>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[3]),
    .I2(S0_IBUF_222),
    .I3(INTREG[5]),
    .O(INTREG_mux0000[19])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<18>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[4]),
    .I2(S0_IBUF_222),
    .I3(INTREG[6]),
    .O(INTREG_mux0000[18])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<17>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[5]),
    .I2(S0_IBUF_222),
    .I3(INTREG[7]),
    .O(INTREG_mux0000[17])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<16>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[6]),
    .I2(S0_IBUF_222),
    .I3(INTREG[8]),
    .O(INTREG_mux0000[16])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<15>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[7]),
    .I2(S0_IBUF_222),
    .I3(INTREG[9]),
    .O(INTREG_mux0000[15])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<14>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[8]),
    .I2(S0_IBUF_222),
    .I3(INTREG[10]),
    .O(INTREG_mux0000[14])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<13>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[9]),
    .I2(S0_IBUF_222),
    .I3(INTREG[11]),
    .O(INTREG_mux0000[13])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<12>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[10]),
    .I2(S0_IBUF_222),
    .I3(INTREG[12]),
    .O(INTREG_mux0000[12])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<11>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[11]),
    .I2(S0_IBUF_222),
    .I3(INTREG[13]),
    .O(INTREG_mux0000[11])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<10>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[12]),
    .I2(S0_IBUF_222),
    .I3(INTREG[14]),
    .O(INTREG_mux0000[10])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \INTREG_mux0000<0>1  (
    .I0(S1_IBUF_224),
    .I1(INTREG[22]),
    .I2(S0_IBUF_222),
    .I3(D23_IBUF_34),
    .O(INTREG_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  INTREG_not00011 (
    .I0(CLKENIN_26),
    .I1(S0_IBUF_222),
    .I2(S1_IBUF_224),
    .O(INTREG_not0001)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  Mrom_CATHODE_mux000151 (
    .I0(value_mux0000[1]),
    .I1(value_mux0000[3]),
    .I2(value_mux0000[2]),
    .I3(value_mux0000[0]),
    .O(Mrom_CATHODE_mux00015)
  );
  LUT4 #(
    .INIT ( 16'h233A ))
  Mrom_CATHODE_mux000131 (
    .I0(value_mux0000[0]),
    .I1(value_mux0000[3]),
    .I2(value_mux0000[2]),
    .I3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00013)
  );
  LUT4 #(
    .INIT ( 16'hB860 ))
  Mrom_CATHODE_mux000161 (
    .I0(value_mux0000[3]),
    .I1(value_mux0000[0]),
    .I2(value_mux0000[2]),
    .I3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00016)
  );
  LUT4 #(
    .INIT ( 16'h8482 ))
  Mrom_CATHODE_mux000141 (
    .I0(value_mux0000[0]),
    .I1(value_mux0000[1]),
    .I2(value_mux0000[2]),
    .I3(value_mux0000[3]),
    .O(Mrom_CATHODE_mux00014)
  );
  LUT4 #(
    .INIT ( 16'h0C86 ))
  Mrom_CATHODE_mux000121 (
    .I0(value_mux0000[2]),
    .I1(value_mux0000[0]),
    .I2(value_mux0000[3]),
    .I3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00012)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  Mrom_CATHODE_mux0001111 (
    .I0(value_mux0000[1]),
    .I1(value_mux0000[2]),
    .I2(value_mux0000[3]),
    .I3(value_mux0000[0]),
    .O(Mrom_CATHODE_mux00011)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  Mrom_CATHODE_mux000171 (
    .I0(value_mux0000[0]),
    .I1(value_mux0000[1]),
    .I2(value_mux0000[2]),
    .I3(value_mux0000[3]),
    .O(Mrom_CATHODE_mux00017)
  );
  IBUF   D0_IBUF (
    .I(D0),
    .O(D0_IBUF_32)
  );
  IBUF   CLKIN_IBUF (
    .I(CLKIN),
    .O(CLKENIN_and0000_norst)
  );
  IBUF   D23_IBUF (
    .I(D23),
    .O(D23_IBUF_34)
  );
  IBUF   S0_IBUF (
    .I(S0),
    .O(S0_IBUF_222)
  );
  IBUF   S1_IBUF (
    .I(S1),
    .O(S1_IBUF_224)
  );
  IBUF   MR_IBUF (
    .I(MR),
    .O(MR_IBUF_97)
  );
  OBUF   ANODE_3_OBUF (
    .I(ANODE_3_7),
    .O(ANODE[3])
  );
  OBUF   ANODE_2_OBUF (
    .I(ANODE_2_6),
    .O(ANODE[2])
  );
  OBUF   ANODE_1_OBUF (
    .I(ANODE_1_5),
    .O(ANODE[1])
  );
  OBUF   ANODE_0_OBUF (
    .I(ANODE_0_4),
    .O(ANODE[0])
  );
  OBUF   Q_23_OBUF (
    .I(Q_23_OBUF_212),
    .O(Q[23])
  );
  OBUF   Q_22_OBUF (
    .I(Q_22_OBUF_211),
    .O(Q[22])
  );
  OBUF   Q_21_OBUF (
    .I(Q_21_OBUF_210),
    .O(Q[21])
  );
  OBUF   Q_20_OBUF (
    .I(Q_20_OBUF_209),
    .O(Q[20])
  );
  OBUF   Q_19_OBUF (
    .I(Q_19_OBUF_207),
    .O(Q[19])
  );
  OBUF   Q_18_OBUF (
    .I(Q_18_OBUF_206),
    .O(Q[18])
  );
  OBUF   Q_17_OBUF (
    .I(Q_17_OBUF_205),
    .O(Q[17])
  );
  OBUF   Q_16_OBUF (
    .I(Q_16_OBUF_204),
    .O(Q[16])
  );
  OBUF   Q_15_OBUF (
    .I(Q_15_OBUF_203),
    .O(Q[15])
  );
  OBUF   Q_14_OBUF (
    .I(Q_14_OBUF_202),
    .O(Q[14])
  );
  OBUF   Q_13_OBUF (
    .I(Q_13_OBUF_201),
    .O(Q[13])
  );
  OBUF   Q_12_OBUF (
    .I(Q_12_OBUF_200),
    .O(Q[12])
  );
  OBUF   Q_11_OBUF (
    .I(Q_11_OBUF_199),
    .O(Q[11])
  );
  OBUF   Q_10_OBUF (
    .I(Q_10_OBUF_198),
    .O(Q[10])
  );
  OBUF   Q_9_OBUF (
    .I(Q_9_OBUF_220),
    .O(Q[9])
  );
  OBUF   Q_8_OBUF (
    .I(Q_8_OBUF_219),
    .O(Q[8])
  );
  OBUF   Q_7_OBUF (
    .I(Q_7_OBUF_218),
    .O(Q[7])
  );
  OBUF   Q_6_OBUF (
    .I(Q_6_OBUF_217),
    .O(Q[6])
  );
  OBUF   Q_5_OBUF (
    .I(Q_5_OBUF_216),
    .O(Q[5])
  );
  OBUF   Q_4_OBUF (
    .I(Q_4_OBUF_215),
    .O(Q[4])
  );
  OBUF   Q_3_OBUF (
    .I(Q_3_OBUF_214),
    .O(Q[3])
  );
  OBUF   Q_2_OBUF (
    .I(Q_2_OBUF_213),
    .O(Q[2])
  );
  OBUF   Q_1_OBUF (
    .I(Q_1_OBUF_208),
    .O(Q[1])
  );
  OBUF   Q_0_OBUF (
    .I(Q_0_OBUF_197),
    .O(Q[0])
  );
  OBUF   CATHODE_7_OBUF (
    .I(CATHODE_7_23),
    .O(CATHODE[7])
  );
  OBUF   CATHODE_6_OBUF (
    .I(CATHODE_6_22),
    .O(CATHODE[6])
  );
  OBUF   CATHODE_5_OBUF (
    .I(CATHODE_5_21),
    .O(CATHODE[5])
  );
  OBUF   CATHODE_4_OBUF (
    .I(CATHODE_4_20),
    .O(CATHODE[4])
  );
  OBUF   CATHODE_3_OBUF (
    .I(CATHODE_3_19),
    .O(CATHODE[3])
  );
  OBUF   CATHODE_2_OBUF (
    .I(CATHODE_2_18),
    .O(CATHODE[2])
  );
  OBUF   CATHODE_1_OBUF (
    .I(CATHODE_1_17),
    .O(CATHODE[1])
  );
  OBUF   CATHODE_0_OBUF (
    .I(CATHODE_0_OBUF_16),
    .O(CATHODE[0])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_95),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_OBUF_94),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_93),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_92),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_91),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_90),
    .O(LED[0])
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_30)
  );
  INV   MR_inv1_INV_0 (
    .I(MR_IBUF_97),
    .O(MR_inv)
  );
  INV   \Mcount_cnt_xor<0>11_INV_0  (
    .I(cnt[0]),
    .O(Mcount_cnt)
  );
  INV   counter_cmp_ge0000_inv1_INV_0 (
    .I(counter[17]),
    .O(counter_cmp_ge0000_inv)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

