////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: Schieberegister_timesim.v
// /___/   /\     Timestamp: Thu Oct 20 15:09:32 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Schieberegister.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Schieberegister.ncd Schieberegister_timesim.v 
// Device	: 3s500efg320-4 (PRODUCTION 1.27 2010-11-18)
// Input file	: Schieberegister.ncd
// Output file	: \\homefs\aax289\CEP\ise\Sreg\netgen\par\Schieberegister_timesim.v
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
  wire CLK_BUFGP;
  wire MR_IBUF_717;
  wire \Mcount_counter_cy[1] ;
  wire \Mcount_counter_cy[3] ;
  wire \Mcount_counter_cy[5] ;
  wire \Mcount_counter_cy[7] ;
  wire \Mcount_counter_cy[9] ;
  wire \Mcount_counter_cy[11] ;
  wire \Mcount_counter_cy[13] ;
  wire ANODE_0_743;
  wire ANODE_1_744;
  wire ANODE_2_745;
  wire ANODE_3_746;
  wire S0_IBUF_749;
  wire S1_IBUF_750;
  wire D23_IBUF_759;
  wire CATHODE_1_781;
  wire CATHODE_2_782;
  wire CATHODE_3_783;
  wire CATHODE_4_784;
  wire CATHODE_5_785;
  wire CATHODE_6_786;
  wire D0_IBUF_787;
  wire CLKENIN_and0000_norst;
  wire CATHODE_7_789;
  wire INTREG_not0001_0;
  wire CLKEN_814;
  wire CLKENIN_OLD_823;
  wire CLKENIN_824;
  wire \counter<0>/DXMUX_871 ;
  wire \counter<0>/XORF_869 ;
  wire \counter<0>/CYINIT_868 ;
  wire \counter<0>/CYSELF_860 ;
  wire \counter<0>/DYMUX_851 ;
  wire \counter<0>/XORG_849 ;
  wire \counter<0>/CYMUXG_848 ;
  wire \Mcount_counter_cy[0] ;
  wire \counter<0>/LOGIC_ZERO_846 ;
  wire \counter<0>/CYSELG_838 ;
  wire \counter<0>/SRINVNOT ;
  wire \counter<0>/CLKINV_835 ;
  wire \counter<2>/DXMUX_927 ;
  wire \counter<2>/XORF_925 ;
  wire \counter<2>/CYINIT_924 ;
  wire \counter<2>/DYMUX_909 ;
  wire \counter<2>/XORG_907 ;
  wire \Mcount_counter_cy[2] ;
  wire \counter<2>/CYSELF_905 ;
  wire \counter<2>/CYMUXFAST_904 ;
  wire \counter<2>/CYAND_903 ;
  wire \counter<2>/FASTCARRY_902 ;
  wire \counter<2>/CYMUXG2_901 ;
  wire \counter<2>/CYMUXF2_900 ;
  wire \counter<2>/LOGIC_ZERO_899 ;
  wire \counter<2>/CYSELG_891 ;
  wire \counter<2>/SRINVNOT ;
  wire \counter<2>/CLKINV_888 ;
  wire \counter<4>/FFY/RST ;
  wire \counter<4>/DXMUX_983 ;
  wire \counter<4>/XORF_981 ;
  wire \counter<4>/CYINIT_980 ;
  wire \counter<4>/DYMUX_965 ;
  wire \counter<4>/XORG_963 ;
  wire \Mcount_counter_cy[4] ;
  wire \counter<4>/CYSELF_961 ;
  wire \counter<4>/CYMUXFAST_960 ;
  wire \counter<4>/CYAND_959 ;
  wire \counter<4>/FASTCARRY_958 ;
  wire \counter<4>/CYMUXG2_957 ;
  wire \counter<4>/CYMUXF2_956 ;
  wire \counter<4>/LOGIC_ZERO_955 ;
  wire \counter<4>/CYSELG_947 ;
  wire \counter<4>/SRINVNOT ;
  wire \counter<4>/CLKINV_944 ;
  wire \counter<6>/DXMUX_1039 ;
  wire \counter<6>/XORF_1037 ;
  wire \counter<6>/CYINIT_1036 ;
  wire \counter<6>/DYMUX_1021 ;
  wire \counter<6>/XORG_1019 ;
  wire \Mcount_counter_cy[6] ;
  wire \counter<6>/CYSELF_1017 ;
  wire \counter<6>/CYMUXFAST_1016 ;
  wire \counter<6>/CYAND_1015 ;
  wire \counter<6>/FASTCARRY_1014 ;
  wire \counter<6>/CYMUXG2_1013 ;
  wire \counter<6>/CYMUXF2_1012 ;
  wire \counter<6>/LOGIC_ZERO_1011 ;
  wire \counter<6>/CYSELG_1003 ;
  wire \counter<6>/SRINVNOT ;
  wire \counter<6>/CLKINV_1000 ;
  wire \counter<8>/DXMUX_1095 ;
  wire \counter<8>/XORF_1093 ;
  wire \counter<8>/CYINIT_1092 ;
  wire \counter<8>/DYMUX_1077 ;
  wire \counter<8>/XORG_1075 ;
  wire \Mcount_counter_cy[8] ;
  wire \counter<8>/CYSELF_1073 ;
  wire \counter<8>/CYMUXFAST_1072 ;
  wire \counter<8>/CYAND_1071 ;
  wire \counter<8>/FASTCARRY_1070 ;
  wire \counter<8>/CYMUXG2_1069 ;
  wire \counter<8>/CYMUXF2_1068 ;
  wire \counter<8>/LOGIC_ZERO_1067 ;
  wire \counter<8>/CYSELG_1059 ;
  wire \counter<8>/SRINVNOT ;
  wire \counter<8>/CLKINV_1056 ;
  wire \counter<10>/FFX/RST ;
  wire \counter<10>/DXMUX_1151 ;
  wire \counter<10>/XORF_1149 ;
  wire \counter<10>/CYINIT_1148 ;
  wire \counter<10>/DYMUX_1133 ;
  wire \counter<10>/XORG_1131 ;
  wire \Mcount_counter_cy[10] ;
  wire \counter<10>/CYSELF_1129 ;
  wire \counter<10>/CYMUXFAST_1128 ;
  wire \counter<10>/CYAND_1127 ;
  wire \counter<10>/FASTCARRY_1126 ;
  wire \counter<10>/CYMUXG2_1125 ;
  wire \counter<10>/CYMUXF2_1124 ;
  wire \counter<10>/LOGIC_ZERO_1123 ;
  wire \counter<10>/CYSELG_1115 ;
  wire \counter<10>/SRINVNOT ;
  wire \counter<10>/CLKINV_1112 ;
  wire \counter<12>/FFY/RST ;
  wire \counter<12>/DXMUX_1207 ;
  wire \counter<12>/XORF_1205 ;
  wire \counter<12>/CYINIT_1204 ;
  wire \counter<12>/DYMUX_1189 ;
  wire \counter<12>/XORG_1187 ;
  wire \Mcount_counter_cy[12] ;
  wire \counter<12>/CYSELF_1185 ;
  wire \counter<12>/CYMUXFAST_1184 ;
  wire \counter<12>/CYAND_1183 ;
  wire \counter<12>/FASTCARRY_1182 ;
  wire \counter<12>/CYMUXG2_1181 ;
  wire \counter<12>/CYMUXF2_1180 ;
  wire \counter<12>/LOGIC_ZERO_1179 ;
  wire \counter<12>/CYSELG_1171 ;
  wire \counter<12>/SRINVNOT ;
  wire \counter<12>/CLKINV_1168 ;
  wire \counter<14>/DXMUX_1263 ;
  wire \counter<14>/XORF_1261 ;
  wire \counter<14>/CYINIT_1260 ;
  wire \counter<14>/DYMUX_1245 ;
  wire \counter<14>/XORG_1243 ;
  wire \Mcount_counter_cy[14] ;
  wire \counter<14>/CYSELF_1241 ;
  wire \counter<14>/CYMUXFAST_1240 ;
  wire \counter<14>/CYAND_1239 ;
  wire \counter<14>/FASTCARRY_1238 ;
  wire \counter<14>/CYMUXG2_1237 ;
  wire \counter<14>/CYMUXF2_1236 ;
  wire \counter<14>/LOGIC_ZERO_1235 ;
  wire \counter<14>/CYSELG_1227 ;
  wire \counter<14>/SRINVNOT ;
  wire \counter<14>/CLKINV_1224 ;
  wire \counter<16>/DXMUX_1312 ;
  wire \counter<16>/XORF_1310 ;
  wire \counter<16>/LOGIC_ZERO_1309 ;
  wire \counter<16>/CYINIT_1308 ;
  wire \counter<16>/CYSELF_1300 ;
  wire \counter<16>/DYMUX_1292 ;
  wire \counter<16>/XORG_1290 ;
  wire \Mcount_counter_cy[16] ;
  wire \counter<16>/G ;
  wire \counter<16>/SRINVNOT ;
  wire \counter<16>/CLKINV_1277 ;
  wire \ANODE<0>/O ;
  wire \ANODE<1>/O ;
  wire \ANODE<2>/O ;
  wire \ANODE<3>/O ;
  wire \Q<10>/O ;
  wire \Q<11>/O ;
  wire \S0/INBUF ;
  wire \S1/INBUF ;
  wire \Q<20>/O ;
  wire \Q<12>/O ;
  wire \Q<21>/O ;
  wire \Q<13>/O ;
  wire \Q<22>/O ;
  wire \Q<14>/O ;
  wire \Q<23>/O ;
  wire \Q<15>/O ;
  wire \D23/INBUF ;
  wire \Q<16>/O ;
  wire \Q<17>/O ;
  wire \Q<18>/O ;
  wire \Q<19>/O ;
  wire \MR/INBUF ;
  wire \LED<0>/O ;
  wire \Q<0>/O ;
  wire \LED<1>/O ;
  wire \Q<1>/O ;
  wire \LED<2>/O ;
  wire \Q<2>/O ;
  wire \LED<3>/O ;
  wire \Q<3>/O ;
  wire \LED<4>/O ;
  wire \Q<4>/O ;
  wire \LED<5>/O ;
  wire \Q<5>/O ;
  wire \Q<6>/O ;
  wire \Q<7>/O ;
  wire \Q<8>/O ;
  wire \Q<9>/O ;
  wire \CATHODE<0>/O ;
  wire \CATHODE<1>/O ;
  wire \CATHODE<2>/O ;
  wire \CATHODE<3>/O ;
  wire \CATHODE<4>/O ;
  wire \CATHODE<5>/O ;
  wire \CATHODE<6>/O ;
  wire \D0/INBUF ;
  wire \CLKIN/INBUF ;
  wire \CATHODE<7>/O ;
  wire \CLK/INBUF ;
  wire \CLK_BUFGP/BUFG/S_INVNOT ;
  wire \CLK_BUFGP/BUFG/I0_INV ;
  wire \value_mux0000<1>/F5MUX_1725 ;
  wire Mmux_value_mux0000_31_1723;
  wire \value_mux0000<1>/BXINV_1717 ;
  wire Mmux_value_mux0000_41_1715;
  wire \value_mux0000<2>/F5MUX_1750 ;
  wire Mmux_value_mux0000_32_1748;
  wire \value_mux0000<2>/BXINV_1742 ;
  wire Mmux_value_mux0000_42_1740;
  wire \value_mux0000<3>/F5MUX_1775 ;
  wire Mmux_value_mux0000_33_1773;
  wire \value_mux0000<3>/BXINV_1767 ;
  wire Mmux_value_mux0000_43_1765;
  wire \value_mux0000<0>/F5MUX_1800 ;
  wire Mmux_value_mux0000_3_1798;
  wire \value_mux0000<0>/BXINV_1792 ;
  wire Mmux_value_mux0000_4_1790;
  wire \INTREG<1>/DXMUX_1839 ;
  wire \INTREG<1>/DYMUX_1825 ;
  wire \INTREG<1>/SRINVNOT ;
  wire \INTREG<1>/CLKINV_1816 ;
  wire \INTREG<1>/CEINV_1815 ;
  wire \INTREG<3>/DXMUX_1883 ;
  wire \INTREG<3>/DYMUX_1869 ;
  wire \INTREG<3>/SRINVNOT ;
  wire \INTREG<3>/CLKINV_1860 ;
  wire \INTREG<3>/CEINV_1859 ;
  wire \INTREG<5>/DXMUX_1927 ;
  wire \INTREG<5>/DYMUX_1913 ;
  wire \INTREG<5>/SRINVNOT ;
  wire \INTREG<5>/CLKINV_1904 ;
  wire \INTREG<5>/CEINV_1903 ;
  wire \CATHODE_2/DXMUX_1968 ;
  wire Mrom_CATHODE_mux00012;
  wire \CATHODE_2/DYMUX_1955 ;
  wire Mrom_CATHODE_mux00011;
  wire \CATHODE_2/SRINVNOT ;
  wire \CATHODE_2/CLKINV_1946 ;
  wire \INTREG<7>/DXMUX_2011 ;
  wire \INTREG<7>/DYMUX_1997 ;
  wire \INTREG<7>/SRINVNOT ;
  wire \INTREG<7>/CLKINV_1988 ;
  wire \INTREG<7>/CEINV_1987 ;
  wire \CATHODE_4/DXMUX_2052 ;
  wire Mrom_CATHODE_mux00014;
  wire \CATHODE_4/DYMUX_2039 ;
  wire Mrom_CATHODE_mux00013;
  wire \CATHODE_4/SRINVNOT ;
  wire \CATHODE_4/CLKINV_2030 ;
  wire \INTREG<9>/DXMUX_2095 ;
  wire \INTREG<9>/DYMUX_2081 ;
  wire \INTREG<9>/SRINVNOT ;
  wire \INTREG<9>/CLKINV_2072 ;
  wire \INTREG<9>/CEINV_2071 ;
  wire \CATHODE_6/DXMUX_2136 ;
  wire Mrom_CATHODE_mux00016;
  wire \CATHODE_6/DYMUX_2123 ;
  wire Mrom_CATHODE_mux00015;
  wire \CATHODE_6/SRINVNOT ;
  wire \CATHODE_6/CLKINV_2114 ;
  wire \CATHODE_7/DYMUX_2158 ;
  wire Mrom_CATHODE_mux00017;
  wire \CATHODE_7/CLKINV_2149 ;
  wire \INTREG<11>/DXMUX_2201 ;
  wire \INTREG<11>/DYMUX_2187 ;
  wire \INTREG<11>/SRINVNOT ;
  wire \INTREG<11>/CLKINV_2178 ;
  wire \INTREG<11>/CEINV_2177 ;
  wire \INTREG<21>/DXMUX_2245 ;
  wire \INTREG<21>/DYMUX_2231 ;
  wire \INTREG<21>/SRINVNOT ;
  wire \INTREG<21>/CLKINV_2222 ;
  wire \INTREG<21>/CEINV_2221 ;
  wire \INTREG<13>/DXMUX_2289 ;
  wire \INTREG<13>/DYMUX_2275 ;
  wire \INTREG<13>/SRINVNOT ;
  wire \INTREG<13>/CLKINV_2266 ;
  wire \INTREG<13>/CEINV_2265 ;
  wire \ANODE_1/DXMUX_2330 ;
  wire Mrom_cnt_rom00002;
  wire \ANODE_1/DYMUX_2315 ;
  wire Mrom_cnt_rom00003;
  wire \ANODE_1/SRINVNOT ;
  wire \ANODE_1/CLKINV_2304 ;
  wire \INTREG<23>/DXMUX_2373 ;
  wire \INTREG<23>/DYMUX_2359 ;
  wire \INTREG<23>/SRINVNOT ;
  wire \INTREG<23>/CLKINV_2350 ;
  wire \INTREG<23>/CEINV_2349 ;
  wire \INTREG<15>/DXMUX_2417 ;
  wire \INTREG<15>/DYMUX_2403 ;
  wire \INTREG<15>/SRINVNOT ;
  wire \INTREG<15>/CLKINV_2394 ;
  wire \INTREG<15>/CEINV_2393 ;
  wire \ANODE_3/DXMUX_2458 ;
  wire Mrom_cnt_rom0000;
  wire \ANODE_3/DYMUX_2443 ;
  wire Mrom_cnt_rom00001;
  wire \ANODE_3/SRINVNOT ;
  wire \ANODE_3/CLKINV_2432 ;
  wire \INTREG<17>/DXMUX_2501 ;
  wire \INTREG<17>/DYMUX_2487 ;
  wire \INTREG<17>/SRINVNOT ;
  wire \INTREG<17>/CLKINV_2478 ;
  wire \INTREG<17>/CEINV_2477 ;
  wire \INTREG<19>/DXMUX_2545 ;
  wire \INTREG<19>/DYMUX_2531 ;
  wire \INTREG<19>/SRINVNOT ;
  wire \INTREG<19>/CLKINV_2522 ;
  wire \INTREG<19>/CEINV_2521 ;
  wire Q_18_OBUF_2573;
  wire LED_4_OBUF_2564;
  wire Q_0_OBUF_2597;
  wire Q_19_OBUF_2588;
  wire Q_22_OBUF_2621;
  wire LED_5_OBUF_2612;
  wire \CLKENIN/DYMUX_2631 ;
  wire \CLKENIN/SRINV_2629 ;
  wire \CLKENIN/CLKINV_2628 ;
  wire INTREG_not0001;
  wire Q_10_OBUF_2669;
  wire Q_1_OBUF_2660;
  wire Q_11_OBUF_2693;
  wire Q_2_OBUF_2684;
  wire Q_12_OBUF_2717;
  wire Q_3_OBUF_2708;
  wire \cnt<0>/FFX/RST ;
  wire \cnt<0>/DXMUX_2746 ;
  wire \cnt<0>/DYMUX_2738 ;
  wire Mcount_cnt1;
  wire \cnt<0>/SRINVNOT ;
  wire \cnt<0>/CLKINV_2727 ;
  wire Q_13_OBUF_2774;
  wire Q_4_OBUF_2765;
  wire Q_14_OBUF_2798;
  wire Q_5_OBUF_2789;
  wire Q_15_OBUF_2822;
  wire Q_6_OBUF_2813;
  wire Q_16_OBUF_2846;
  wire Q_7_OBUF_2837;
  wire Q_17_OBUF_2870;
  wire Q_8_OBUF_2861;
  wire Q_20_OBUF_2894;
  wire Q_9_OBUF_2885;
  wire LED_0_OBUF_2906;
  wire \CLKEN/DYMUX_2916 ;
  wire \CLKEN/CLKINV_2913 ;
  wire Q_23_OBUF_2944;
  wire Q_21_OBUF_2935;
  wire LED_1_OBUF_2956;
  wire \CLKENIN_OLD/DYMUX_2964 ;
  wire \CLKENIN_OLD/CLKINV_2962 ;
  wire LED_2_OBUF_2977;
  wire LED_3_OBUF_2989;
  wire \CATHODE_7/FFY/SET ;
  wire \CLKEN/FFY/RSTAND_2921 ;
  wire \CATHODE<0>/OUTPUT/OFF/O1INV_1622 ;
  wire VCC;
  wire GND;
  wire [17 : 0] counter;
  wire [1 : 0] cnt;
  wire [23 : 0] INTREG;
  wire [3 : 0] value_mux0000;
  wire [16 : 0] Mcount_counter_lut;
  wire [23 : 0] INTREG_mux0000;
  initial $sdf_annotate("netgen/par/schieberegister_timesim.sdf");
  X_ZERO #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/LOGIC_ZERO  (
    .O(\counter<0>/LOGIC_ZERO_846 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/DXMUX  (
    .I(\counter<0>/XORF_869 ),
    .O(\counter<0>/DXMUX_871 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/XORF  (
    .I0(\counter<0>/CYINIT_868 ),
    .I1(Mcount_counter_lut[0]),
    .O(\counter<0>/XORF_869 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CYMUXF  (
    .IA(\counter<0>/LOGIC_ZERO_846 ),
    .IB(\counter<0>/CYINIT_868 ),
    .SEL(\counter<0>/CYSELF_860 ),
    .O(\Mcount_counter_cy[0] )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CYINIT  (
    .I(counter[17]),
    .O(\counter<0>/CYINIT_868 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CYSELF  (
    .I(Mcount_counter_lut[0]),
    .O(\counter<0>/CYSELF_860 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/DYMUX  (
    .I(\counter<0>/XORG_849 ),
    .O(\counter<0>/DYMUX_851 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/XORG  (
    .I0(\Mcount_counter_cy[0] ),
    .I1(Mcount_counter_lut[1]),
    .O(\counter<0>/XORG_849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/COUTUSED  (
    .I(\counter<0>/CYMUXG_848 ),
    .O(\Mcount_counter_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CYMUXG  (
    .IA(\counter<0>/LOGIC_ZERO_846 ),
    .IB(\Mcount_counter_cy[0] ),
    .SEL(\counter<0>/CYSELG_838 ),
    .O(\counter<0>/CYMUXG_848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CYSELG  (
    .I(Mcount_counter_lut[1]),
    .O(\counter<0>/CYSELG_838 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<0>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \counter<0>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<0>/CLKINV_835 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/LOGIC_ZERO  (
    .O(\counter<2>/LOGIC_ZERO_899 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/DXMUX  (
    .I(\counter<2>/XORF_925 ),
    .O(\counter<2>/DXMUX_927 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/XORF  (
    .I0(\counter<2>/CYINIT_924 ),
    .I1(Mcount_counter_lut[2]),
    .O(\counter<2>/XORF_925 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYMUXF  (
    .IA(\counter<2>/LOGIC_ZERO_899 ),
    .IB(\counter<2>/CYINIT_924 ),
    .SEL(\counter<2>/CYSELF_905 ),
    .O(\Mcount_counter_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYMUXF2  (
    .IA(\counter<2>/LOGIC_ZERO_899 ),
    .IB(\counter<2>/LOGIC_ZERO_899 ),
    .SEL(\counter<2>/CYSELF_905 ),
    .O(\counter<2>/CYMUXF2_900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYINIT  (
    .I(\Mcount_counter_cy[1] ),
    .O(\counter<2>/CYINIT_924 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYSELF  (
    .I(Mcount_counter_lut[2]),
    .O(\counter<2>/CYSELF_905 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/DYMUX  (
    .I(\counter<2>/XORG_907 ),
    .O(\counter<2>/DYMUX_909 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/XORG  (
    .I0(\Mcount_counter_cy[2] ),
    .I1(Mcount_counter_lut[3]),
    .O(\counter<2>/XORG_907 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/COUTUSED  (
    .I(\counter<2>/CYMUXFAST_904 ),
    .O(\Mcount_counter_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/FASTCARRY  (
    .I(\Mcount_counter_cy[1] ),
    .O(\counter<2>/FASTCARRY_902 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYAND  (
    .I0(\counter<2>/CYSELG_891 ),
    .I1(\counter<2>/CYSELF_905 ),
    .O(\counter<2>/CYAND_903 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYMUXFAST  (
    .IA(\counter<2>/CYMUXG2_901 ),
    .IB(\counter<2>/FASTCARRY_902 ),
    .SEL(\counter<2>/CYAND_903 ),
    .O(\counter<2>/CYMUXFAST_904 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYMUXG2  (
    .IA(\counter<2>/LOGIC_ZERO_899 ),
    .IB(\counter<2>/CYMUXF2_900 ),
    .SEL(\counter<2>/CYSELG_891 ),
    .O(\counter<2>/CYMUXG2_901 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CYSELG  (
    .I(Mcount_counter_lut[3]),
    .O(\counter<2>/CYSELG_891 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<2>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \counter<2>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<2>/CLKINV_888 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y72" ),
    .INIT ( 1'b0 ))
  counter_2 (
    .I(\counter<2>/DXMUX_927 ),
    .CE(VCC),
    .CLK(\counter<2>/CLKINV_888 ),
    .SET(GND),
    .RST(\counter<2>/SRINVNOT ),
    .O(counter[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/FFY/RSTOR  (
    .I(\counter<4>/SRINVNOT ),
    .O(\counter<4>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y73" ),
    .INIT ( 1'b0 ))
  counter_5 (
    .I(\counter<4>/DYMUX_965 ),
    .CE(VCC),
    .CLK(\counter<4>/CLKINV_944 ),
    .SET(GND),
    .RST(\counter<4>/FFY/RST ),
    .O(counter[5])
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X67Y73" ))
  \Mcount_counter_lut<4>  (
    .ADR0(VCC),
    .ADR1(counter[17]),
    .ADR2(counter[4]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[4])
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/LOGIC_ZERO  (
    .O(\counter<4>/LOGIC_ZERO_955 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/DXMUX  (
    .I(\counter<4>/XORF_981 ),
    .O(\counter<4>/DXMUX_983 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/XORF  (
    .I0(\counter<4>/CYINIT_980 ),
    .I1(Mcount_counter_lut[4]),
    .O(\counter<4>/XORF_981 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYMUXF  (
    .IA(\counter<4>/LOGIC_ZERO_955 ),
    .IB(\counter<4>/CYINIT_980 ),
    .SEL(\counter<4>/CYSELF_961 ),
    .O(\Mcount_counter_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYMUXF2  (
    .IA(\counter<4>/LOGIC_ZERO_955 ),
    .IB(\counter<4>/LOGIC_ZERO_955 ),
    .SEL(\counter<4>/CYSELF_961 ),
    .O(\counter<4>/CYMUXF2_956 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYINIT  (
    .I(\Mcount_counter_cy[3] ),
    .O(\counter<4>/CYINIT_980 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYSELF  (
    .I(Mcount_counter_lut[4]),
    .O(\counter<4>/CYSELF_961 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/DYMUX  (
    .I(\counter<4>/XORG_963 ),
    .O(\counter<4>/DYMUX_965 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/XORG  (
    .I0(\Mcount_counter_cy[4] ),
    .I1(Mcount_counter_lut[5]),
    .O(\counter<4>/XORG_963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/COUTUSED  (
    .I(\counter<4>/CYMUXFAST_960 ),
    .O(\Mcount_counter_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/FASTCARRY  (
    .I(\Mcount_counter_cy[3] ),
    .O(\counter<4>/FASTCARRY_958 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYAND  (
    .I0(\counter<4>/CYSELG_947 ),
    .I1(\counter<4>/CYSELF_961 ),
    .O(\counter<4>/CYAND_959 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYMUXFAST  (
    .IA(\counter<4>/CYMUXG2_957 ),
    .IB(\counter<4>/FASTCARRY_958 ),
    .SEL(\counter<4>/CYAND_959 ),
    .O(\counter<4>/CYMUXFAST_960 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYMUXG2  (
    .IA(\counter<4>/LOGIC_ZERO_955 ),
    .IB(\counter<4>/CYMUXF2_956 ),
    .SEL(\counter<4>/CYSELG_947 ),
    .O(\counter<4>/CYMUXG2_957 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CYSELG  (
    .I(Mcount_counter_lut[5]),
    .O(\counter<4>/CYSELG_947 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<4>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \counter<4>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<4>/CLKINV_944 )
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X67Y73" ))
  \Mcount_counter_lut<5>  (
    .ADR0(VCC),
    .ADR1(counter[17]),
    .ADR2(VCC),
    .ADR3(counter[5]),
    .O(Mcount_counter_lut[5])
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/LOGIC_ZERO  (
    .O(\counter<6>/LOGIC_ZERO_1011 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/DXMUX  (
    .I(\counter<6>/XORF_1037 ),
    .O(\counter<6>/DXMUX_1039 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/XORF  (
    .I0(\counter<6>/CYINIT_1036 ),
    .I1(Mcount_counter_lut[6]),
    .O(\counter<6>/XORF_1037 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYMUXF  (
    .IA(\counter<6>/LOGIC_ZERO_1011 ),
    .IB(\counter<6>/CYINIT_1036 ),
    .SEL(\counter<6>/CYSELF_1017 ),
    .O(\Mcount_counter_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYMUXF2  (
    .IA(\counter<6>/LOGIC_ZERO_1011 ),
    .IB(\counter<6>/LOGIC_ZERO_1011 ),
    .SEL(\counter<6>/CYSELF_1017 ),
    .O(\counter<6>/CYMUXF2_1012 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYINIT  (
    .I(\Mcount_counter_cy[5] ),
    .O(\counter<6>/CYINIT_1036 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYSELF  (
    .I(Mcount_counter_lut[6]),
    .O(\counter<6>/CYSELF_1017 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/DYMUX  (
    .I(\counter<6>/XORG_1019 ),
    .O(\counter<6>/DYMUX_1021 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/XORG  (
    .I0(\Mcount_counter_cy[6] ),
    .I1(Mcount_counter_lut[7]),
    .O(\counter<6>/XORG_1019 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/COUTUSED  (
    .I(\counter<6>/CYMUXFAST_1016 ),
    .O(\Mcount_counter_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/FASTCARRY  (
    .I(\Mcount_counter_cy[5] ),
    .O(\counter<6>/FASTCARRY_1014 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYAND  (
    .I0(\counter<6>/CYSELG_1003 ),
    .I1(\counter<6>/CYSELF_1017 ),
    .O(\counter<6>/CYAND_1015 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYMUXFAST  (
    .IA(\counter<6>/CYMUXG2_1013 ),
    .IB(\counter<6>/FASTCARRY_1014 ),
    .SEL(\counter<6>/CYAND_1015 ),
    .O(\counter<6>/CYMUXFAST_1016 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYMUXG2  (
    .IA(\counter<6>/LOGIC_ZERO_1011 ),
    .IB(\counter<6>/CYMUXF2_1012 ),
    .SEL(\counter<6>/CYSELG_1003 ),
    .O(\counter<6>/CYMUXG2_1013 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CYSELG  (
    .I(Mcount_counter_lut[7]),
    .O(\counter<6>/CYSELG_1003 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<6>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \counter<6>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<6>/CLKINV_1000 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/LOGIC_ZERO  (
    .O(\counter<8>/LOGIC_ZERO_1067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/DXMUX  (
    .I(\counter<8>/XORF_1093 ),
    .O(\counter<8>/DXMUX_1095 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/XORF  (
    .I0(\counter<8>/CYINIT_1092 ),
    .I1(Mcount_counter_lut[8]),
    .O(\counter<8>/XORF_1093 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYMUXF  (
    .IA(\counter<8>/LOGIC_ZERO_1067 ),
    .IB(\counter<8>/CYINIT_1092 ),
    .SEL(\counter<8>/CYSELF_1073 ),
    .O(\Mcount_counter_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYMUXF2  (
    .IA(\counter<8>/LOGIC_ZERO_1067 ),
    .IB(\counter<8>/LOGIC_ZERO_1067 ),
    .SEL(\counter<8>/CYSELF_1073 ),
    .O(\counter<8>/CYMUXF2_1068 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYINIT  (
    .I(\Mcount_counter_cy[7] ),
    .O(\counter<8>/CYINIT_1092 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYSELF  (
    .I(Mcount_counter_lut[8]),
    .O(\counter<8>/CYSELF_1073 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/DYMUX  (
    .I(\counter<8>/XORG_1075 ),
    .O(\counter<8>/DYMUX_1077 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/XORG  (
    .I0(\Mcount_counter_cy[8] ),
    .I1(Mcount_counter_lut[9]),
    .O(\counter<8>/XORG_1075 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/COUTUSED  (
    .I(\counter<8>/CYMUXFAST_1072 ),
    .O(\Mcount_counter_cy[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/FASTCARRY  (
    .I(\Mcount_counter_cy[7] ),
    .O(\counter<8>/FASTCARRY_1070 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYAND  (
    .I0(\counter<8>/CYSELG_1059 ),
    .I1(\counter<8>/CYSELF_1073 ),
    .O(\counter<8>/CYAND_1071 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYMUXFAST  (
    .IA(\counter<8>/CYMUXG2_1069 ),
    .IB(\counter<8>/FASTCARRY_1070 ),
    .SEL(\counter<8>/CYAND_1071 ),
    .O(\counter<8>/CYMUXFAST_1072 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYMUXG2  (
    .IA(\counter<8>/LOGIC_ZERO_1067 ),
    .IB(\counter<8>/CYMUXF2_1068 ),
    .SEL(\counter<8>/CYSELG_1059 ),
    .O(\counter<8>/CYMUXG2_1069 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CYSELG  (
    .I(Mcount_counter_lut[9]),
    .O(\counter<8>/CYSELG_1059 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<8>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \counter<8>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<8>/CLKINV_1056 )
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X67Y76" ))
  \Mcount_counter_lut<10>  (
    .ADR0(counter[10]),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[10])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/FFX/RSTOR  (
    .I(\counter<10>/SRINVNOT ),
    .O(\counter<10>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y76" ),
    .INIT ( 1'b0 ))
  counter_10 (
    .I(\counter<10>/DXMUX_1151 ),
    .CE(VCC),
    .CLK(\counter<10>/CLKINV_1112 ),
    .SET(GND),
    .RST(\counter<10>/FFX/RST ),
    .O(counter[10])
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/LOGIC_ZERO  (
    .O(\counter<10>/LOGIC_ZERO_1123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/DXMUX  (
    .I(\counter<10>/XORF_1149 ),
    .O(\counter<10>/DXMUX_1151 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/XORF  (
    .I0(\counter<10>/CYINIT_1148 ),
    .I1(Mcount_counter_lut[10]),
    .O(\counter<10>/XORF_1149 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYMUXF  (
    .IA(\counter<10>/LOGIC_ZERO_1123 ),
    .IB(\counter<10>/CYINIT_1148 ),
    .SEL(\counter<10>/CYSELF_1129 ),
    .O(\Mcount_counter_cy[10] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYMUXF2  (
    .IA(\counter<10>/LOGIC_ZERO_1123 ),
    .IB(\counter<10>/LOGIC_ZERO_1123 ),
    .SEL(\counter<10>/CYSELF_1129 ),
    .O(\counter<10>/CYMUXF2_1124 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYINIT  (
    .I(\Mcount_counter_cy[9] ),
    .O(\counter<10>/CYINIT_1148 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYSELF  (
    .I(Mcount_counter_lut[10]),
    .O(\counter<10>/CYSELF_1129 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/DYMUX  (
    .I(\counter<10>/XORG_1131 ),
    .O(\counter<10>/DYMUX_1133 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/XORG  (
    .I0(\Mcount_counter_cy[10] ),
    .I1(Mcount_counter_lut[11]),
    .O(\counter<10>/XORG_1131 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/COUTUSED  (
    .I(\counter<10>/CYMUXFAST_1128 ),
    .O(\Mcount_counter_cy[11] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/FASTCARRY  (
    .I(\Mcount_counter_cy[9] ),
    .O(\counter<10>/FASTCARRY_1126 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYAND  (
    .I0(\counter<10>/CYSELG_1115 ),
    .I1(\counter<10>/CYSELF_1129 ),
    .O(\counter<10>/CYAND_1127 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYMUXFAST  (
    .IA(\counter<10>/CYMUXG2_1125 ),
    .IB(\counter<10>/FASTCARRY_1126 ),
    .SEL(\counter<10>/CYAND_1127 ),
    .O(\counter<10>/CYMUXFAST_1128 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYMUXG2  (
    .IA(\counter<10>/LOGIC_ZERO_1123 ),
    .IB(\counter<10>/CYMUXF2_1124 ),
    .SEL(\counter<10>/CYSELG_1115 ),
    .O(\counter<10>/CYMUXG2_1125 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CYSELG  (
    .I(Mcount_counter_lut[11]),
    .O(\counter<10>/CYSELG_1115 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<10>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \counter<10>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<10>/CLKINV_1112 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y76" ),
    .INIT ( 1'b0 ))
  counter_11 (
    .I(\counter<10>/DYMUX_1133 ),
    .CE(VCC),
    .CLK(\counter<10>/CLKINV_1112 ),
    .SET(GND),
    .RST(\counter<10>/SRINVNOT ),
    .O(counter[11])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/FFY/RSTOR  (
    .I(\counter<12>/SRINVNOT ),
    .O(\counter<12>/FFY/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y77" ),
    .INIT ( 1'b0 ))
  counter_13 (
    .I(\counter<12>/DYMUX_1189 ),
    .CE(VCC),
    .CLK(\counter<12>/CLKINV_1168 ),
    .SET(GND),
    .RST(\counter<12>/FFY/RST ),
    .O(counter[13])
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/LOGIC_ZERO  (
    .O(\counter<12>/LOGIC_ZERO_1179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/DXMUX  (
    .I(\counter<12>/XORF_1205 ),
    .O(\counter<12>/DXMUX_1207 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/XORF  (
    .I0(\counter<12>/CYINIT_1204 ),
    .I1(Mcount_counter_lut[12]),
    .O(\counter<12>/XORF_1205 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYMUXF  (
    .IA(\counter<12>/LOGIC_ZERO_1179 ),
    .IB(\counter<12>/CYINIT_1204 ),
    .SEL(\counter<12>/CYSELF_1185 ),
    .O(\Mcount_counter_cy[12] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYMUXF2  (
    .IA(\counter<12>/LOGIC_ZERO_1179 ),
    .IB(\counter<12>/LOGIC_ZERO_1179 ),
    .SEL(\counter<12>/CYSELF_1185 ),
    .O(\counter<12>/CYMUXF2_1180 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYINIT  (
    .I(\Mcount_counter_cy[11] ),
    .O(\counter<12>/CYINIT_1204 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYSELF  (
    .I(Mcount_counter_lut[12]),
    .O(\counter<12>/CYSELF_1185 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/DYMUX  (
    .I(\counter<12>/XORG_1187 ),
    .O(\counter<12>/DYMUX_1189 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/XORG  (
    .I0(\Mcount_counter_cy[12] ),
    .I1(Mcount_counter_lut[13]),
    .O(\counter<12>/XORG_1187 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/COUTUSED  (
    .I(\counter<12>/CYMUXFAST_1184 ),
    .O(\Mcount_counter_cy[13] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/FASTCARRY  (
    .I(\Mcount_counter_cy[11] ),
    .O(\counter<12>/FASTCARRY_1182 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYAND  (
    .I0(\counter<12>/CYSELG_1171 ),
    .I1(\counter<12>/CYSELF_1185 ),
    .O(\counter<12>/CYAND_1183 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYMUXFAST  (
    .IA(\counter<12>/CYMUXG2_1181 ),
    .IB(\counter<12>/FASTCARRY_1182 ),
    .SEL(\counter<12>/CYAND_1183 ),
    .O(\counter<12>/CYMUXFAST_1184 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYMUXG2  (
    .IA(\counter<12>/LOGIC_ZERO_1179 ),
    .IB(\counter<12>/CYMUXF2_1180 ),
    .SEL(\counter<12>/CYSELG_1171 ),
    .O(\counter<12>/CYMUXG2_1181 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CYSELG  (
    .I(Mcount_counter_lut[13]),
    .O(\counter<12>/CYSELG_1171 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<12>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \counter<12>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<12>/CLKINV_1168 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X67Y77" ))
  \Mcount_counter_lut<13>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(counter[13]),
    .O(Mcount_counter_lut[13])
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/LOGIC_ZERO  (
    .O(\counter<14>/LOGIC_ZERO_1235 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/DXMUX  (
    .I(\counter<14>/XORF_1261 ),
    .O(\counter<14>/DXMUX_1263 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/XORF  (
    .I0(\counter<14>/CYINIT_1260 ),
    .I1(Mcount_counter_lut[14]),
    .O(\counter<14>/XORF_1261 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYMUXF  (
    .IA(\counter<14>/LOGIC_ZERO_1235 ),
    .IB(\counter<14>/CYINIT_1260 ),
    .SEL(\counter<14>/CYSELF_1241 ),
    .O(\Mcount_counter_cy[14] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYMUXF2  (
    .IA(\counter<14>/LOGIC_ZERO_1235 ),
    .IB(\counter<14>/LOGIC_ZERO_1235 ),
    .SEL(\counter<14>/CYSELF_1241 ),
    .O(\counter<14>/CYMUXF2_1236 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYINIT  (
    .I(\Mcount_counter_cy[13] ),
    .O(\counter<14>/CYINIT_1260 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYSELF  (
    .I(Mcount_counter_lut[14]),
    .O(\counter<14>/CYSELF_1241 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/DYMUX  (
    .I(\counter<14>/XORG_1243 ),
    .O(\counter<14>/DYMUX_1245 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/XORG  (
    .I0(\Mcount_counter_cy[14] ),
    .I1(Mcount_counter_lut[15]),
    .O(\counter<14>/XORG_1243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/FASTCARRY  (
    .I(\Mcount_counter_cy[13] ),
    .O(\counter<14>/FASTCARRY_1238 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYAND  (
    .I0(\counter<14>/CYSELG_1227 ),
    .I1(\counter<14>/CYSELF_1241 ),
    .O(\counter<14>/CYAND_1239 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYMUXFAST  (
    .IA(\counter<14>/CYMUXG2_1237 ),
    .IB(\counter<14>/FASTCARRY_1238 ),
    .SEL(\counter<14>/CYAND_1239 ),
    .O(\counter<14>/CYMUXFAST_1240 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYMUXG2  (
    .IA(\counter<14>/LOGIC_ZERO_1235 ),
    .IB(\counter<14>/CYMUXF2_1236 ),
    .SEL(\counter<14>/CYSELG_1227 ),
    .O(\counter<14>/CYMUXG2_1237 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CYSELG  (
    .I(Mcount_counter_lut[15]),
    .O(\counter<14>/CYSELG_1227 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<14>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y78" ))
  \counter<14>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<14>/CLKINV_1224 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/LOGIC_ZERO  (
    .O(\counter<16>/LOGIC_ZERO_1309 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/DXMUX  (
    .I(\counter<16>/XORF_1310 ),
    .O(\counter<16>/DXMUX_1312 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/XORF  (
    .I0(\counter<16>/CYINIT_1308 ),
    .I1(Mcount_counter_lut[16]),
    .O(\counter<16>/XORF_1310 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/CYMUXF  (
    .IA(\counter<16>/LOGIC_ZERO_1309 ),
    .IB(\counter<16>/CYINIT_1308 ),
    .SEL(\counter<16>/CYSELF_1300 ),
    .O(\Mcount_counter_cy[16] )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/CYINIT  (
    .I(\counter<14>/CYMUXFAST_1240 ),
    .O(\counter<16>/CYINIT_1308 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/CYSELF  (
    .I(Mcount_counter_lut[16]),
    .O(\counter<16>/CYSELF_1300 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/DYMUX  (
    .I(\counter<16>/XORG_1290 ),
    .O(\counter<16>/DYMUX_1292 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/XORG  (
    .I0(\Mcount_counter_cy[16] ),
    .I1(\counter<16>/G ),
    .O(\counter<16>/XORG_1290 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/SRINV  (
    .I(MR_IBUF_717),
    .O(\counter<16>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\counter<16>/CLKINV_1277 )
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \ANODE<0>/PAD  (
    .PAD(ANODE[0])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  ANODE_0_OBUF (
    .I(\ANODE<0>/O ),
    .O(ANODE[0])
  );
  X_OPAD #(
    .LOC ( "PAD79" ))
  \ANODE<1>/PAD  (
    .PAD(ANODE[1])
  );
  X_OBUF #(
    .LOC ( "PAD79" ))
  ANODE_1_OBUF (
    .I(\ANODE<1>/O ),
    .O(ANODE[1])
  );
  X_OPAD #(
    .LOC ( "PAD61" ))
  \ANODE<2>/PAD  (
    .PAD(ANODE[2])
  );
  X_OBUF #(
    .LOC ( "PAD61" ))
  ANODE_2_OBUF (
    .I(\ANODE<2>/O ),
    .O(ANODE[2])
  );
  X_OPAD #(
    .LOC ( "PAD67" ))
  \ANODE<3>/PAD  (
    .PAD(ANODE[3])
  );
  X_OBUF #(
    .LOC ( "PAD67" ))
  ANODE_3_OBUF (
    .I(\ANODE<3>/O ),
    .O(ANODE[3])
  );
  X_OPAD #(
    .LOC ( "PAD111" ))
  \Q<10>/PAD  (
    .PAD(Q[10])
  );
  X_OBUF #(
    .LOC ( "PAD111" ))
  Q_10_OBUF (
    .I(\Q<10>/O ),
    .O(Q[10])
  );
  X_OPAD #(
    .LOC ( "PAD101" ))
  \Q<11>/PAD  (
    .PAD(Q[11])
  );
  X_OBUF #(
    .LOC ( "PAD101" ))
  Q_11_OBUF (
    .I(\Q<11>/O ),
    .O(Q[11])
  );
  X_IPAD #(
    .LOC ( "IPAD103" ))
  \S0/PAD  (
    .PAD(S0)
  );
  X_BUF #(
    .LOC ( "IPAD103" ))
  S0_IBUF (
    .I(S0),
    .O(\S0/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD98" ))
  \S1/PAD  (
    .PAD(S1)
  );
  X_BUF #(
    .LOC ( "IPAD98" ))
  S1_IBUF (
    .I(S1),
    .O(\S1/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD82" ))
  \Q<20>/PAD  (
    .PAD(Q[20])
  );
  X_OBUF #(
    .LOC ( "PAD82" ))
  Q_20_OBUF (
    .I(\Q<20>/O ),
    .O(Q[20])
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \Q<12>/PAD  (
    .PAD(Q[12])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  Q_12_OBUF (
    .I(\Q<12>/O ),
    .O(Q[12])
  );
  X_OPAD #(
    .LOC ( "PAD81" ))
  \Q<21>/PAD  (
    .PAD(Q[21])
  );
  X_OBUF #(
    .LOC ( "PAD81" ))
  Q_21_OBUF (
    .I(\Q<21>/O ),
    .O(Q[21])
  );
  X_OPAD #(
    .LOC ( "PAD110" ))
  \Q<13>/PAD  (
    .PAD(Q[13])
  );
  X_OBUF #(
    .LOC ( "PAD110" ))
  Q_13_OBUF (
    .I(\Q<13>/O ),
    .O(Q[13])
  );
  X_OPAD #(
    .LOC ( "PAD94" ))
  \Q<22>/PAD  (
    .PAD(Q[22])
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  Q_22_OBUF (
    .I(\Q<22>/O ),
    .O(Q[22])
  );
  X_OPAD #(
    .LOC ( "PAD107" ))
  \Q<14>/PAD  (
    .PAD(Q[14])
  );
  X_OBUF #(
    .LOC ( "PAD107" ))
  Q_14_OBUF (
    .I(\Q<14>/O ),
    .O(Q[14])
  );
  X_OPAD #(
    .LOC ( "PAD76" ))
  \Q<23>/PAD  (
    .PAD(Q[23])
  );
  X_OBUF #(
    .LOC ( "PAD76" ))
  Q_23_OBUF (
    .I(\Q<23>/O ),
    .O(Q[23])
  );
  X_OPAD #(
    .LOC ( "PAD106" ))
  \Q<15>/PAD  (
    .PAD(Q[15])
  );
  X_OBUF #(
    .LOC ( "PAD106" ))
  Q_15_OBUF (
    .I(\Q<15>/O ),
    .O(Q[15])
  );
  X_IPAD #(
    .LOC ( "IPAD112" ))
  \D23/PAD  (
    .PAD(D23)
  );
  X_BUF #(
    .LOC ( "IPAD112" ))
  D23_IBUF (
    .I(D23),
    .O(\D23/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD97" ))
  \Q<16>/PAD  (
    .PAD(Q[16])
  );
  X_OBUF #(
    .LOC ( "PAD97" ))
  Q_16_OBUF (
    .I(\Q<16>/O ),
    .O(Q[16])
  );
  X_OPAD #(
    .LOC ( "PAD92" ))
  \Q<17>/PAD  (
    .PAD(Q[17])
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  Q_17_OBUF (
    .I(\Q<17>/O ),
    .O(Q[17])
  );
  X_OPAD #(
    .LOC ( "PAD91" ))
  \Q<18>/PAD  (
    .PAD(Q[18])
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  Q_18_OBUF (
    .I(\Q<18>/O ),
    .O(Q[18])
  );
  X_OPAD #(
    .LOC ( "PAD86" ))
  \Q<19>/PAD  (
    .PAD(Q[19])
  );
  X_OBUF #(
    .LOC ( "PAD86" ))
  Q_19_OBUF (
    .I(\Q<19>/O ),
    .O(Q[19])
  );
  X_IPAD #(
    .LOC ( "IPAD59" ))
  \MR/PAD  (
    .PAD(MR)
  );
  X_BUF #(
    .LOC ( "IPAD59" ))
  MR_IBUF (
    .I(MR),
    .O(\MR/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD59" ))
  \MR/IFF/IMUX  (
    .I(\MR/INBUF ),
    .O(MR_IBUF_717)
  );
  X_OPAD #(
    .LOC ( "PAD84" ))
  \LED<0>/PAD  (
    .PAD(LED[0])
  );
  X_OBUF #(
    .LOC ( "PAD84" ))
  LED_0_OBUF (
    .I(\LED<0>/O ),
    .O(LED[0])
  );
  X_OPAD #(
    .LOC ( "PAD100" ))
  \Q<0>/PAD  (
    .PAD(Q[0])
  );
  X_OBUF #(
    .LOC ( "PAD100" ))
  Q_0_OBUF (
    .I(\Q<0>/O ),
    .O(Q[0])
  );
  X_OPAD #(
    .LOC ( "PAD85" ))
  \LED<1>/PAD  (
    .PAD(LED[1])
  );
  X_OBUF #(
    .LOC ( "PAD85" ))
  LED_1_OBUF (
    .I(\LED<1>/O ),
    .O(LED[1])
  );
  X_OPAD #(
    .LOC ( "PAD115" ))
  \Q<1>/PAD  (
    .PAD(Q[1])
  );
  X_OBUF #(
    .LOC ( "PAD115" ))
  Q_1_OBUF (
    .I(\Q<1>/O ),
    .O(Q[1])
  );
  X_OPAD #(
    .LOC ( "PAD90" ))
  \LED<2>/PAD  (
    .PAD(LED[2])
  );
  X_OBUF #(
    .LOC ( "PAD90" ))
  LED_2_OBUF (
    .I(\LED<2>/O ),
    .O(LED[2])
  );
  X_OPAD #(
    .LOC ( "PAD114" ))
  \Q<2>/PAD  (
    .PAD(Q[2])
  );
  X_OBUF #(
    .LOC ( "PAD114" ))
  Q_2_OBUF (
    .I(\Q<2>/O ),
    .O(Q[2])
  );
  X_OPAD #(
    .LOC ( "PAD89" ))
  \LED<3>/PAD  (
    .PAD(LED[3])
  );
  X_OBUF #(
    .LOC ( "PAD89" ))
  LED_3_OBUF (
    .I(\LED<3>/O ),
    .O(LED[3])
  );
  X_OPAD #(
    .LOC ( "PAD113" ))
  \Q<3>/PAD  (
    .PAD(Q[3])
  );
  X_OBUF #(
    .LOC ( "PAD113" ))
  Q_3_OBUF (
    .I(\Q<3>/O ),
    .O(Q[3])
  );
  X_OPAD #(
    .LOC ( "PAD65" ))
  \LED<4>/PAD  (
    .PAD(LED[4])
  );
  X_OBUF #(
    .LOC ( "PAD65" ))
  LED_4_OBUF (
    .I(\LED<4>/O ),
    .O(LED[4])
  );
  X_OPAD #(
    .LOC ( "PAD102" ))
  \Q<4>/PAD  (
    .PAD(Q[4])
  );
  X_OBUF #(
    .LOC ( "PAD102" ))
  Q_4_OBUF (
    .I(\Q<4>/O ),
    .O(Q[4])
  );
  X_OPAD #(
    .LOC ( "PAD109" ))
  \LED<5>/PAD  (
    .PAD(LED[5])
  );
  X_OBUF #(
    .LOC ( "PAD109" ))
  LED_5_OBUF (
    .I(\LED<5>/O ),
    .O(LED[5])
  );
  X_OPAD #(
    .LOC ( "PAD99" ))
  \Q<5>/PAD  (
    .PAD(Q[5])
  );
  X_OBUF #(
    .LOC ( "PAD99" ))
  Q_5_OBUF (
    .I(\Q<5>/O ),
    .O(Q[5])
  );
  X_OPAD #(
    .LOC ( "PAD104" ))
  \Q<6>/PAD  (
    .PAD(Q[6])
  );
  X_OBUF #(
    .LOC ( "PAD104" ))
  Q_6_OBUF (
    .I(\Q<6>/O ),
    .O(Q[6])
  );
  X_OPAD #(
    .LOC ( "PAD96" ))
  \Q<7>/PAD  (
    .PAD(Q[7])
  );
  X_OBUF #(
    .LOC ( "PAD96" ))
  Q_7_OBUF (
    .I(\Q<7>/O ),
    .O(Q[7])
  );
  X_OPAD #(
    .LOC ( "PAD105" ))
  \Q<8>/PAD  (
    .PAD(Q[8])
  );
  X_OBUF #(
    .LOC ( "PAD105" ))
  Q_8_OBUF (
    .I(\Q<8>/O ),
    .O(Q[8])
  );
  X_OPAD #(
    .LOC ( "PAD80" ))
  \Q<9>/PAD  (
    .PAD(Q[9])
  );
  X_OBUF #(
    .LOC ( "PAD80" ))
  Q_9_OBUF (
    .I(\Q<9>/O ),
    .O(Q[9])
  );
  X_OPAD #(
    .LOC ( "PAD60" ))
  \CATHODE<0>/PAD  (
    .PAD(CATHODE[0])
  );
  X_OBUF #(
    .LOC ( "PAD60" ))
  CATHODE_0_OBUF (
    .I(\CATHODE<0>/O ),
    .O(CATHODE[0])
  );
  X_OPAD #(
    .LOC ( "PAD77" ))
  \CATHODE<1>/PAD  (
    .PAD(CATHODE[1])
  );
  X_OBUF #(
    .LOC ( "PAD77" ))
  CATHODE_1_OBUF (
    .I(\CATHODE<1>/O ),
    .O(CATHODE[1])
  );
  X_OPAD #(
    .LOC ( "PAD87" ))
  \CATHODE<2>/PAD  (
    .PAD(CATHODE[2])
  );
  X_OBUF #(
    .LOC ( "PAD87" ))
  CATHODE_2_OBUF (
    .I(\CATHODE<2>/O ),
    .O(CATHODE[2])
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \CATHODE<3>/PAD  (
    .PAD(CATHODE[3])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  CATHODE_3_OBUF (
    .I(\CATHODE<3>/O ),
    .O(CATHODE[3])
  );
  X_OPAD #(
    .LOC ( "PAD62" ))
  \CATHODE<4>/PAD  (
    .PAD(CATHODE[4])
  );
  X_OBUF #(
    .LOC ( "PAD62" ))
  CATHODE_4_OBUF (
    .I(\CATHODE<4>/O ),
    .O(CATHODE[4])
  );
  X_OPAD #(
    .LOC ( "PAD63" ))
  \CATHODE<5>/PAD  (
    .PAD(CATHODE[5])
  );
  X_OBUF #(
    .LOC ( "PAD63" ))
  CATHODE_5_OBUF (
    .I(\CATHODE<5>/O ),
    .O(CATHODE[5])
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \CATHODE<6>/PAD  (
    .PAD(CATHODE[6])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  CATHODE_6_OBUF (
    .I(\CATHODE<6>/O ),
    .O(CATHODE[6])
  );
  X_IPAD #(
    .LOC ( "IPAD108" ))
  \D0/PAD  (
    .PAD(D0)
  );
  X_BUF #(
    .LOC ( "IPAD108" ))
  D0_IBUF (
    .I(D0),
    .O(\D0/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD108" ))
  \D0/IFF/IMUX  (
    .I(\D0/INBUF ),
    .O(D0_IBUF_787)
  );
  X_IPAD #(
    .LOC ( "IPAD64" ))
  \CLKIN/PAD  (
    .PAD(CLKIN)
  );
  X_BUF #(
    .LOC ( "IPAD64" ))
  CLKIN_IBUF (
    .I(CLKIN),
    .O(\CLKIN/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD64" ))
  \CLKIN/IFF/IMUX  (
    .I(\CLKIN/INBUF ),
    .O(CLKENIN_and0000_norst)
  );
  X_OPAD #(
    .LOC ( "PAD95" ))
  \CATHODE<7>/PAD  (
    .PAD(CATHODE[7])
  );
  X_OBUF #(
    .LOC ( "PAD95" ))
  CATHODE_7_OBUF (
    .I(\CATHODE<7>/O ),
    .O(CATHODE[7])
  );
  X_IPAD #(
    .LOC ( "IPAD29" ))
  \CLK/PAD  (
    .PAD(CLK)
  );
  X_BUF #(
    .LOC ( "IPAD29" ))
  \CLK_BUFGP/IBUFG  (
    .I(CLK),
    .O(\CLK/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \CLK_BUFGP/BUFG  (
    .I0(\CLK_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\CLK_BUFGP/BUFG/S_INVNOT ),
    .O(CLK_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \CLK_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\CLK_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \CLK_BUFGP/BUFG/I0_USED  (
    .I(\CLK/INBUF ),
    .O(\CLK_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y50" ))
  \value_mux0000<1>/XUSED  (
    .I(\value_mux0000<1>/F5MUX_1725 ),
    .O(value_mux0000[1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y50" ))
  \value_mux0000<1>/F5MUX  (
    .IA(Mmux_value_mux0000_41_1715),
    .IB(Mmux_value_mux0000_31_1723),
    .SEL(\value_mux0000<1>/BXINV_1717 ),
    .O(\value_mux0000<1>/F5MUX_1725 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y50" ))
  \value_mux0000<1>/BXINV  (
    .I(cnt[1]),
    .O(\value_mux0000<1>/BXINV_1717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y52" ))
  \value_mux0000<2>/XUSED  (
    .I(\value_mux0000<2>/F5MUX_1750 ),
    .O(value_mux0000[2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y52" ))
  \value_mux0000<2>/F5MUX  (
    .IA(Mmux_value_mux0000_42_1740),
    .IB(Mmux_value_mux0000_32_1748),
    .SEL(\value_mux0000<2>/BXINV_1742 ),
    .O(\value_mux0000<2>/F5MUX_1750 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y52" ))
  \value_mux0000<2>/BXINV  (
    .I(cnt[1]),
    .O(\value_mux0000<2>/BXINV_1742 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y47" ))
  \value_mux0000<3>/XUSED  (
    .I(\value_mux0000<3>/F5MUX_1775 ),
    .O(value_mux0000[3])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y47" ))
  \value_mux0000<3>/F5MUX  (
    .IA(Mmux_value_mux0000_43_1765),
    .IB(Mmux_value_mux0000_33_1773),
    .SEL(\value_mux0000<3>/BXINV_1767 ),
    .O(\value_mux0000<3>/F5MUX_1775 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y47" ))
  \value_mux0000<3>/BXINV  (
    .I(cnt[1]),
    .O(\value_mux0000<3>/BXINV_1767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y51" ))
  \value_mux0000<0>/XUSED  (
    .I(\value_mux0000<0>/F5MUX_1800 ),
    .O(value_mux0000[0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y51" ))
  \value_mux0000<0>/F5MUX  (
    .IA(Mmux_value_mux0000_4_1790),
    .IB(Mmux_value_mux0000_3_1798),
    .SEL(\value_mux0000<0>/BXINV_1792 ),
    .O(\value_mux0000<0>/F5MUX_1800 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y51" ))
  \value_mux0000<0>/BXINV  (
    .I(cnt[1]),
    .O(\value_mux0000<0>/BXINV_1792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \INTREG<1>/DXMUX  (
    .I(INTREG_mux0000[22]),
    .O(\INTREG<1>/DXMUX_1839 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \INTREG<1>/DYMUX  (
    .I(INTREG_mux0000[23]),
    .O(\INTREG<1>/DYMUX_1825 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y36" ))
  \INTREG<1>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<1>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \INTREG<1>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<1>/CLKINV_1816 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \INTREG<1>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<1>/CEINV_1815 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y46" ))
  \INTREG<3>/DXMUX  (
    .I(INTREG_mux0000[20]),
    .O(\INTREG<3>/DXMUX_1883 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y46" ))
  \INTREG<3>/DYMUX  (
    .I(INTREG_mux0000[21]),
    .O(\INTREG<3>/DYMUX_1869 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y46" ))
  \INTREG<3>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<3>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y46" ))
  \INTREG<3>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<3>/CLKINV_1860 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y46" ))
  \INTREG<3>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<3>/CEINV_1859 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y45" ),
    .INIT ( 1'b1 ))
  INTREG_4 (
    .I(\INTREG<5>/DYMUX_1913 ),
    .CE(\INTREG<5>/CEINV_1903 ),
    .CLK(\INTREG<5>/CLKINV_1904 ),
    .SET(\INTREG<5>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[4])
  );
  X_LUT4 #(
    .INIT ( 16'hFCAC ),
    .LOC ( "SLICE_X67Y45" ))
  \INTREG_mux0000<18>1  (
    .ADR0(S0_IBUF_749),
    .ADR1(INTREG[6]),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[4]),
    .O(INTREG_mux0000[18])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y45" ),
    .INIT ( 1'b1 ))
  INTREG_5 (
    .I(\INTREG<5>/DXMUX_1927 ),
    .CE(\INTREG<5>/CEINV_1903 ),
    .CLK(\INTREG<5>/CLKINV_1904 ),
    .SET(\INTREG<5>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \INTREG<5>/DXMUX  (
    .I(INTREG_mux0000[18]),
    .O(\INTREG<5>/DXMUX_1927 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \INTREG<5>/DYMUX  (
    .I(INTREG_mux0000[19]),
    .O(\INTREG<5>/DYMUX_1913 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y45" ))
  \INTREG<5>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<5>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \INTREG<5>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<5>/CLKINV_1904 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \INTREG<5>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<5>/CEINV_1903 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEF0 ),
    .LOC ( "SLICE_X67Y45" ))
  \INTREG_mux0000<19>1  (
    .ADR0(INTREG[3]),
    .ADR1(S0_IBUF_749),
    .ADR2(INTREG[5]),
    .ADR3(S1_IBUF_750),
    .O(INTREG_mux0000[19])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y55" ),
    .INIT ( 1'b1 ))
  CATHODE_1 (
    .I(\CATHODE_2/DYMUX_1955 ),
    .CE(VCC),
    .CLK(\CATHODE_2/CLKINV_1946 ),
    .SET(\CATHODE_2/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_1_781)
  );
  X_LUT4 #(
    .INIT ( 16'h3092 ),
    .LOC ( "SLICE_X67Y55" ))
  Mrom_CATHODE_mux000121 (
    .ADR0(value_mux0000[2]),
    .ADR1(value_mux0000[3]),
    .ADR2(value_mux0000[0]),
    .ADR3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00012)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y55" ),
    .INIT ( 1'b1 ))
  CATHODE_2 (
    .I(\CATHODE_2/DXMUX_1968 ),
    .CE(VCC),
    .CLK(\CATHODE_2/CLKINV_1946 ),
    .SET(\CATHODE_2/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_2_782)
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y55" ))
  \CATHODE_2/DXMUX  (
    .I(Mrom_CATHODE_mux00012),
    .O(\CATHODE_2/DXMUX_1968 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y55" ))
  \CATHODE_2/DYMUX  (
    .I(Mrom_CATHODE_mux00011),
    .O(\CATHODE_2/DYMUX_1955 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y55" ))
  \CATHODE_2/SRINV  (
    .I(MR_IBUF_717),
    .O(\CATHODE_2/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y55" ))
  \CATHODE_2/CLKINV  (
    .I(CLKEN_814),
    .O(\CATHODE_2/CLKINV_1946 )
  );
  X_LUT4 #(
    .INIT ( 16'h2043 ),
    .LOC ( "SLICE_X67Y55" ))
  Mrom_CATHODE_mux0001111 (
    .ADR0(value_mux0000[0]),
    .ADR1(value_mux0000[3]),
    .ADR2(value_mux0000[2]),
    .ADR3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00011)
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \INTREG<7>/DXMUX  (
    .I(INTREG_mux0000[16]),
    .O(\INTREG<7>/DXMUX_2011 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \INTREG<7>/DYMUX  (
    .I(INTREG_mux0000[17]),
    .O(\INTREG<7>/DYMUX_1997 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y44" ))
  \INTREG<7>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<7>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \INTREG<7>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<7>/CLKINV_1988 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \INTREG<7>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<7>/CEINV_1987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y54" ))
  \CATHODE_4/DXMUX  (
    .I(Mrom_CATHODE_mux00014),
    .O(\CATHODE_4/DXMUX_2052 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y54" ))
  \CATHODE_4/DYMUX  (
    .I(Mrom_CATHODE_mux00013),
    .O(\CATHODE_4/DYMUX_2039 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y54" ))
  \CATHODE_4/SRINV  (
    .I(MR_IBUF_717),
    .O(\CATHODE_4/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y54" ))
  \CATHODE_4/CLKINV  (
    .I(CLKEN_814),
    .O(\CATHODE_4/CLKINV_2030 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \INTREG<9>/DXMUX  (
    .I(INTREG_mux0000[14]),
    .O(\INTREG<9>/DXMUX_2095 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \INTREG<9>/DYMUX  (
    .I(INTREG_mux0000[15]),
    .O(\INTREG<9>/DYMUX_2081 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y43" ))
  \INTREG<9>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<9>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \INTREG<9>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<9>/CLKINV_2072 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \INTREG<9>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<9>/CEINV_2071 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y54" ))
  \CATHODE_6/DXMUX  (
    .I(Mrom_CATHODE_mux00016),
    .O(\CATHODE_6/DXMUX_2136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y54" ))
  \CATHODE_6/DYMUX  (
    .I(Mrom_CATHODE_mux00015),
    .O(\CATHODE_6/DYMUX_2123 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y54" ))
  \CATHODE_6/SRINV  (
    .I(MR_IBUF_717),
    .O(\CATHODE_6/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y54" ))
  \CATHODE_6/CLKINV  (
    .I(CLKEN_814),
    .O(\CATHODE_6/CLKINV_2114 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y48" ))
  \CATHODE_7/DYMUX  (
    .I(Mrom_CATHODE_mux00017),
    .O(\CATHODE_7/DYMUX_2158 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y48" ))
  \CATHODE_7/CLKINV  (
    .I(CLKEN_814),
    .O(\CATHODE_7/CLKINV_2149 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCAC ),
    .LOC ( "SLICE_X67Y36" ))
  \INTREG_mux0000<12>1  (
    .ADR0(S0_IBUF_749),
    .ADR1(INTREG[12]),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[10]),
    .O(INTREG_mux0000[12])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y36" ),
    .INIT ( 1'b1 ))
  INTREG_11 (
    .I(\INTREG<11>/DXMUX_2201 ),
    .CE(\INTREG<11>/CEINV_2177 ),
    .CLK(\INTREG<11>/CLKINV_2178 ),
    .SET(\INTREG<11>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[11])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \INTREG<11>/DXMUX  (
    .I(INTREG_mux0000[12]),
    .O(\INTREG<11>/DXMUX_2201 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \INTREG<11>/DYMUX  (
    .I(INTREG_mux0000[13]),
    .O(\INTREG<11>/DYMUX_2187 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y36" ))
  \INTREG<11>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<11>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \INTREG<11>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<11>/CLKINV_2178 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \INTREG<11>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<11>/CEINV_2177 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y36" ),
    .INIT ( 1'b1 ))
  INTREG_10 (
    .I(\INTREG<11>/DYMUX_2187 ),
    .CE(\INTREG<11>/CEINV_2177 ),
    .CLK(\INTREG<11>/CLKINV_2178 ),
    .SET(\INTREG<11>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[10])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y40" ),
    .INIT ( 1'b1 ))
  INTREG_20 (
    .I(\INTREG<21>/DYMUX_2231 ),
    .CE(\INTREG<21>/CEINV_2221 ),
    .CLK(\INTREG<21>/CLKINV_2222 ),
    .SET(\INTREG<21>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[20])
  );
  X_LUT4 #(
    .INIT ( 16'hFCAC ),
    .LOC ( "SLICE_X67Y40" ))
  \INTREG_mux0000<2>1  (
    .ADR0(S0_IBUF_749),
    .ADR1(INTREG[22]),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[20]),
    .O(INTREG_mux0000[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \INTREG<21>/DXMUX  (
    .I(INTREG_mux0000[2]),
    .O(\INTREG<21>/DXMUX_2245 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \INTREG<21>/DYMUX  (
    .I(INTREG_mux0000[3]),
    .O(\INTREG<21>/DYMUX_2231 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y40" ))
  \INTREG<21>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<21>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \INTREG<21>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<21>/CLKINV_2222 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \INTREG<21>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<21>/CEINV_2221 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAD8 ),
    .LOC ( "SLICE_X67Y40" ))
  \INTREG_mux0000<3>1  (
    .ADR0(S1_IBUF_750),
    .ADR1(S0_IBUF_749),
    .ADR2(INTREG[21]),
    .ADR3(INTREG[19]),
    .O(INTREG_mux0000[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y37" ))
  \INTREG<13>/DXMUX  (
    .I(INTREG_mux0000[10]),
    .O(\INTREG<13>/DXMUX_2289 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y37" ))
  \INTREG<13>/DYMUX  (
    .I(INTREG_mux0000[11]),
    .O(\INTREG<13>/DYMUX_2275 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y37" ))
  \INTREG<13>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<13>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y37" ))
  \INTREG<13>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<13>/CLKINV_2266 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y37" ))
  \INTREG<13>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<13>/CEINV_2265 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y64" ))
  \ANODE_1/DXMUX  (
    .I(Mrom_cnt_rom00002),
    .O(\ANODE_1/DXMUX_2330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y64" ))
  \ANODE_1/DYMUX  (
    .I(Mrom_cnt_rom00003),
    .O(\ANODE_1/DYMUX_2315 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y64" ))
  \ANODE_1/SRINV  (
    .I(MR_IBUF_717),
    .O(\ANODE_1/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y64" ))
  \ANODE_1/CLKINV  (
    .I(CLKEN_814),
    .O(\ANODE_1/CLKINV_2304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \INTREG<23>/DXMUX  (
    .I(INTREG_mux0000[0]),
    .O(\INTREG<23>/DXMUX_2373 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \INTREG<23>/DYMUX  (
    .I(INTREG_mux0000[1]),
    .O(\INTREG<23>/DYMUX_2359 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y41" ))
  \INTREG<23>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<23>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \INTREG<23>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<23>/CLKINV_2350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \INTREG<23>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<23>/CEINV_2349 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \INTREG<15>/DXMUX  (
    .I(INTREG_mux0000[8]),
    .O(\INTREG<15>/DXMUX_2417 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \INTREG<15>/DYMUX  (
    .I(INTREG_mux0000[9]),
    .O(\INTREG<15>/DYMUX_2403 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y37" ))
  \INTREG<15>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<15>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \INTREG<15>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<15>/CLKINV_2394 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \INTREG<15>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<15>/CEINV_2393 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y64" ),
    .INIT ( 1'b1 ))
  ANODE_3 (
    .I(\ANODE_3/DXMUX_2458 ),
    .CE(VCC),
    .CLK(\ANODE_3/CLKINV_2432 ),
    .SET(\ANODE_3/SRINVNOT ),
    .RST(GND),
    .O(ANODE_3_746)
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y64" ))
  \ANODE_3/DXMUX  (
    .I(Mrom_cnt_rom0000),
    .O(\ANODE_3/DXMUX_2458 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y64" ))
  \ANODE_3/DYMUX  (
    .I(Mrom_cnt_rom00001),
    .O(\ANODE_3/DYMUX_2443 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y64" ))
  \ANODE_3/SRINV  (
    .I(MR_IBUF_717),
    .O(\ANODE_3/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y64" ))
  \ANODE_3/CLKINV  (
    .I(CLKEN_814),
    .O(\ANODE_3/CLKINV_2432 )
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ),
    .LOC ( "SLICE_X67Y64" ))
  Mrom_cnt_rom000011 (
    .ADR0(cnt[0]),
    .ADR1(cnt[1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mrom_cnt_rom0000)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y38" ),
    .INIT ( 1'b1 ))
  INTREG_16 (
    .I(\INTREG<17>/DYMUX_2487 ),
    .CE(\INTREG<17>/CEINV_2477 ),
    .CLK(\INTREG<17>/CLKINV_2478 ),
    .SET(\INTREG<17>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[16])
  );
  X_LUT4 #(
    .INIT ( 16'hEEE2 ),
    .LOC ( "SLICE_X66Y38" ))
  \INTREG_mux0000<6>1  (
    .ADR0(INTREG[18]),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[16]),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[6])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y38" ),
    .INIT ( 1'b1 ))
  INTREG_17 (
    .I(\INTREG<17>/DXMUX_2501 ),
    .CE(\INTREG<17>/CEINV_2477 ),
    .CLK(\INTREG<17>/CLKINV_2478 ),
    .SET(\INTREG<17>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[17])
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \INTREG<17>/DXMUX  (
    .I(INTREG_mux0000[6]),
    .O(\INTREG<17>/DXMUX_2501 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \INTREG<17>/DYMUX  (
    .I(INTREG_mux0000[7]),
    .O(\INTREG<17>/DYMUX_2487 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y38" ))
  \INTREG<17>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<17>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \INTREG<17>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<17>/CLKINV_2478 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \INTREG<17>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<17>/CEINV_2477 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ),
    .LOC ( "SLICE_X66Y38" ))
  \INTREG_mux0000<7>1  (
    .ADR0(INTREG[15]),
    .ADR1(S1_IBUF_750),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[17]),
    .O(INTREG_mux0000[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \INTREG<19>/DXMUX  (
    .I(INTREG_mux0000[4]),
    .O(\INTREG<19>/DXMUX_2545 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \INTREG<19>/DYMUX  (
    .I(INTREG_mux0000[5]),
    .O(\INTREG<19>/DYMUX_2531 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y39" ))
  \INTREG<19>/SRINV  (
    .I(MR_IBUF_717),
    .O(\INTREG<19>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \INTREG<19>/CLKINV  (
    .I(CLK_BUFGP),
    .O(\INTREG<19>/CLKINV_2522 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \INTREG<19>/CEINV  (
    .I(INTREG_not0001_0),
    .O(\INTREG<19>/CEINV_2521 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y66" ))
  \CLKENIN/DYMUX  (
    .I(CLKENIN_and0000_norst),
    .O(\CLKENIN/DYMUX_2631 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y66" ))
  \CLKENIN/SRINV  (
    .I(CLKENIN_OLD_823),
    .O(\CLKENIN/SRINV_2629 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y66" ))
  \CLKENIN/CLKINV  (
    .I(CLK_BUFGP),
    .O(\CLKENIN/CLKINV_2628 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y46" ))
  \INTREG_not0001/YUSED  (
    .I(INTREG_not0001),
    .O(INTREG_not0001_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y49" ))
  \cnt<0>/FFX/RSTOR  (
    .I(\cnt<0>/SRINVNOT ),
    .O(\cnt<0>/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y49" ),
    .INIT ( 1'b0 ))
  cnt_0 (
    .I(\cnt<0>/DXMUX_2746 ),
    .CE(VCC),
    .CLK(\cnt<0>/CLKINV_2727 ),
    .SET(GND),
    .RST(\cnt<0>/FFX/RST ),
    .O(cnt[0])
  );
  X_INV #(
    .LOC ( "SLICE_X66Y49" ))
  \cnt<0>/DXMUX  (
    .I(cnt[0]),
    .O(\cnt<0>/DXMUX_2746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y49" ))
  \cnt<0>/DYMUX  (
    .I(Mcount_cnt1),
    .O(\cnt<0>/DYMUX_2738 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y49" ))
  \cnt<0>/SRINV  (
    .I(MR_IBUF_717),
    .O(\cnt<0>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y49" ))
  \cnt<0>/CLKINV  (
    .I(CLKEN_814),
    .O(\cnt<0>/CLKINV_2727 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y49" ),
    .INIT ( 1'b0 ))
  cnt_1 (
    .I(\cnt<0>/DYMUX_2738 ),
    .CE(VCC),
    .CLK(\cnt<0>/CLKINV_2727 ),
    .SET(GND),
    .RST(\cnt<0>/SRINVNOT ),
    .O(cnt[1])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X67Y25" ))
  \Q<13>1  (
    .ADR0(VCC),
    .ADR1(MR_IBUF_717),
    .ADR2(INTREG[13]),
    .ADR3(VCC),
    .O(Q_13_OBUF_2774)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X67Y25" ))
  \Q<4>1  (
    .ADR0(VCC),
    .ADR1(MR_IBUF_717),
    .ADR2(INTREG[4]),
    .ADR3(VCC),
    .O(Q_4_OBUF_2765)
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X67Y26" ))
  \Q<14>1  (
    .ADR0(INTREG[14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_14_OBUF_2798)
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X67Y26" ))
  \Q<5>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(INTREG[5]),
    .ADR3(MR_IBUF_717),
    .O(Q_5_OBUF_2789)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y59" ))
  \CLKEN/DYMUX  (
    .I(counter[17]),
    .O(\CLKEN/DYMUX_2916 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y59" ))
  \CLKEN/CLKINV  (
    .I(CLK_BUFGP),
    .O(\CLKEN/CLKINV_2913 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \CLKENIN_OLD/DYMUX  (
    .I(CLKENIN_and0000_norst),
    .O(\CLKENIN_OLD/DYMUX_2964 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \CLKENIN_OLD/CLKINV  (
    .I(CLK_BUFGP),
    .O(\CLKENIN_OLD/CLKINV_2962 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X67Y71" ))
  \Mcount_counter_lut<1>  (
    .ADR0(VCC),
    .ADR1(counter[1]),
    .ADR2(VCC),
    .ADR3(counter[17]),
    .O(Mcount_counter_lut[1])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y71" ),
    .INIT ( 1'b0 ))
  counter_1 (
    .I(\counter<0>/DYMUX_851 ),
    .CE(VCC),
    .CLK(\counter<0>/CLKINV_835 ),
    .SET(GND),
    .RST(\counter<0>/SRINVNOT ),
    .O(counter[1])
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X67Y71" ))
  \Mcount_counter_lut<0>  (
    .ADR0(counter[0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(counter[17]),
    .O(Mcount_counter_lut[0])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y71" ),
    .INIT ( 1'b0 ))
  counter_0 (
    .I(\counter<0>/DXMUX_871 ),
    .CE(VCC),
    .CLK(\counter<0>/CLKINV_835 ),
    .SET(GND),
    .RST(\counter<0>/SRINVNOT ),
    .O(counter[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X67Y72" ))
  \Mcount_counter_lut<3>  (
    .ADR0(VCC),
    .ADR1(counter[3]),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[3])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y72" ),
    .INIT ( 1'b0 ))
  counter_3 (
    .I(\counter<2>/DYMUX_909 ),
    .CE(VCC),
    .CLK(\counter<2>/CLKINV_888 ),
    .SET(GND),
    .RST(\counter<2>/SRINVNOT ),
    .O(counter[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X67Y72" ))
  \Mcount_counter_lut<2>  (
    .ADR0(counter[2]),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[2])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y73" ),
    .INIT ( 1'b0 ))
  counter_4 (
    .I(\counter<4>/DXMUX_983 ),
    .CE(VCC),
    .CLK(\counter<4>/CLKINV_944 ),
    .SET(GND),
    .RST(\counter<4>/SRINVNOT ),
    .O(counter[4])
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X67Y74" ))
  \Mcount_counter_lut<7>  (
    .ADR0(VCC),
    .ADR1(counter[7]),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[7])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y74" ),
    .INIT ( 1'b0 ))
  counter_7 (
    .I(\counter<6>/DYMUX_1021 ),
    .CE(VCC),
    .CLK(\counter<6>/CLKINV_1000 ),
    .SET(GND),
    .RST(\counter<6>/SRINVNOT ),
    .O(counter[7])
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X67Y74" ))
  \Mcount_counter_lut<6>  (
    .ADR0(counter[6]),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[6])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y74" ),
    .INIT ( 1'b0 ))
  counter_6 (
    .I(\counter<6>/DXMUX_1039 ),
    .CE(VCC),
    .CLK(\counter<6>/CLKINV_1000 ),
    .SET(GND),
    .RST(\counter<6>/SRINVNOT ),
    .O(counter[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X67Y75" ))
  \Mcount_counter_lut<9>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(counter[9]),
    .O(Mcount_counter_lut[9])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y75" ),
    .INIT ( 1'b0 ))
  counter_9 (
    .I(\counter<8>/DYMUX_1077 ),
    .CE(VCC),
    .CLK(\counter<8>/CLKINV_1056 ),
    .SET(GND),
    .RST(\counter<8>/SRINVNOT ),
    .O(counter[9])
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X67Y75" ))
  \Mcount_counter_lut<8>  (
    .ADR0(counter[17]),
    .ADR1(VCC),
    .ADR2(counter[8]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[8])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y75" ),
    .INIT ( 1'b0 ))
  counter_8 (
    .I(\counter<8>/DXMUX_1095 ),
    .CE(VCC),
    .CLK(\counter<8>/CLKINV_1056 ),
    .SET(GND),
    .RST(\counter<8>/SRINVNOT ),
    .O(counter[8])
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X67Y76" ))
  \Mcount_counter_lut<11>  (
    .ADR0(VCC),
    .ADR1(counter[11]),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[11])
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X67Y77" ))
  \Mcount_counter_lut<12>  (
    .ADR0(counter[17]),
    .ADR1(VCC),
    .ADR2(counter[12]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[12])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y77" ),
    .INIT ( 1'b0 ))
  counter_12 (
    .I(\counter<12>/DXMUX_1207 ),
    .CE(VCC),
    .CLK(\counter<12>/CLKINV_1168 ),
    .SET(GND),
    .RST(\counter<12>/SRINVNOT ),
    .O(counter[12])
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X67Y78" ))
  \Mcount_counter_lut<15>  (
    .ADR0(counter[15]),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[15])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y78" ),
    .INIT ( 1'b0 ))
  counter_15 (
    .I(\counter<14>/DYMUX_1245 ),
    .CE(VCC),
    .CLK(\counter<14>/CLKINV_1224 ),
    .SET(GND),
    .RST(\counter<14>/SRINVNOT ),
    .O(counter[15])
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X67Y78" ))
  \Mcount_counter_lut<14>  (
    .ADR0(VCC),
    .ADR1(counter[14]),
    .ADR2(counter[17]),
    .ADR3(VCC),
    .O(Mcount_counter_lut[14])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y78" ),
    .INIT ( 1'b0 ))
  counter_14 (
    .I(\counter<14>/DXMUX_1263 ),
    .CE(VCC),
    .CLK(\counter<14>/CLKINV_1224 ),
    .SET(GND),
    .RST(\counter<14>/SRINVNOT ),
    .O(counter[14])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y79" ),
    .INIT ( 1'b0 ))
  counter_17 (
    .I(\counter<16>/DYMUX_1292 ),
    .CE(VCC),
    .CLK(\counter<16>/CLKINV_1277 ),
    .SET(GND),
    .RST(\counter<16>/SRINVNOT ),
    .O(counter[17])
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X67Y79" ))
  \Mcount_counter_lut<16>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(counter[17]),
    .ADR3(counter[16]),
    .O(Mcount_counter_lut[16])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y79" ),
    .INIT ( 1'b0 ))
  counter_16 (
    .I(\counter<16>/DXMUX_1312 ),
    .CE(VCC),
    .CLK(\counter<16>/CLKINV_1277 ),
    .SET(GND),
    .RST(\counter<16>/SRINVNOT ),
    .O(counter[16])
  );
  X_BUF #(
    .LOC ( "IPAD103" ))
  \S0/IFF/IMUX  (
    .I(\S0/INBUF ),
    .O(S0_IBUF_749)
  );
  X_BUF #(
    .LOC ( "IPAD98" ))
  \S1/IFF/IMUX  (
    .I(\S1/INBUF ),
    .O(S1_IBUF_750)
  );
  X_BUF #(
    .LOC ( "IPAD112" ))
  \D23/IFF/IMUX  (
    .I(\D23/INBUF ),
    .O(D23_IBUF_759)
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X66Y50" ))
  Mmux_value_mux0000_41 (
    .ADR0(INTREG[1]),
    .ADR1(VCC),
    .ADR2(cnt[0]),
    .ADR3(INTREG[5]),
    .O(Mmux_value_mux0000_41_1715)
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X66Y50" ))
  Mmux_value_mux0000_31 (
    .ADR0(INTREG[9]),
    .ADR1(INTREG[13]),
    .ADR2(cnt[0]),
    .ADR3(VCC),
    .O(Mmux_value_mux0000_31_1723)
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X66Y52" ))
  Mmux_value_mux0000_42 (
    .ADR0(INTREG[2]),
    .ADR1(INTREG[6]),
    .ADR2(cnt[0]),
    .ADR3(VCC),
    .O(Mmux_value_mux0000_42_1740)
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X66Y52" ))
  Mmux_value_mux0000_32 (
    .ADR0(INTREG[14]),
    .ADR1(INTREG[10]),
    .ADR2(cnt[0]),
    .ADR3(VCC),
    .O(Mmux_value_mux0000_32_1748)
  );
  X_LUT4 #(
    .INIT ( 16'hB8B8 ),
    .LOC ( "SLICE_X66Y47" ))
  Mmux_value_mux0000_43 (
    .ADR0(INTREG[7]),
    .ADR1(cnt[0]),
    .ADR2(INTREG[3]),
    .ADR3(VCC),
    .O(Mmux_value_mux0000_43_1765)
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X66Y47" ))
  Mmux_value_mux0000_33 (
    .ADR0(cnt[0]),
    .ADR1(VCC),
    .ADR2(INTREG[11]),
    .ADR3(INTREG[15]),
    .O(Mmux_value_mux0000_33_1773)
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X66Y51" ))
  Mmux_value_mux0000_4 (
    .ADR0(INTREG[0]),
    .ADR1(INTREG[4]),
    .ADR2(cnt[0]),
    .ADR3(VCC),
    .O(Mmux_value_mux0000_4_1790)
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X66Y51" ))
  Mmux_value_mux0000_3 (
    .ADR0(INTREG[8]),
    .ADR1(VCC),
    .ADR2(cnt[0]),
    .ADR3(INTREG[12]),
    .O(Mmux_value_mux0000_3_1798)
  );
  X_LUT4 #(
    .INIT ( 16'hFACC ),
    .LOC ( "SLICE_X66Y36" ))
  \INTREG_mux0000<23>1  (
    .ADR0(D0_IBUF_787),
    .ADR1(INTREG[1]),
    .ADR2(S0_IBUF_749),
    .ADR3(S1_IBUF_750),
    .O(INTREG_mux0000[23])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y36" ),
    .INIT ( 1'b1 ))
  INTREG_0 (
    .I(\INTREG<1>/DYMUX_1825 ),
    .CE(\INTREG<1>/CEINV_1815 ),
    .CLK(\INTREG<1>/CLKINV_1816 ),
    .SET(\INTREG<1>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[0])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y36" ))
  \INTREG_mux0000<22>1  (
    .ADR0(INTREG[0]),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[2]),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[22])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y36" ),
    .INIT ( 1'b1 ))
  INTREG_1 (
    .I(\INTREG<1>/DXMUX_1839 ),
    .CE(\INTREG<1>/CEINV_1815 ),
    .CLK(\INTREG<1>/CLKINV_1816 ),
    .SET(\INTREG<1>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ),
    .LOC ( "SLICE_X66Y46" ))
  \INTREG_mux0000<21>1  (
    .ADR0(INTREG[1]),
    .ADR1(S1_IBUF_750),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[3]),
    .O(INTREG_mux0000[21])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y46" ),
    .INIT ( 1'b1 ))
  INTREG_2 (
    .I(\INTREG<3>/DYMUX_1869 ),
    .CE(\INTREG<3>/CEINV_1859 ),
    .CLK(\INTREG<3>/CLKINV_1860 ),
    .SET(\INTREG<3>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[2])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y46" ))
  \INTREG_mux0000<20>1  (
    .ADR0(INTREG[2]),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[4]),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[20])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y46" ),
    .INIT ( 1'b1 ))
  INTREG_3 (
    .I(\INTREG<3>/DXMUX_1883 ),
    .CE(\INTREG<3>/CEINV_1859 ),
    .CLK(\INTREG<3>/CLKINV_1860 ),
    .SET(\INTREG<3>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[3])
  );
  X_LUT4 #(
    .INIT ( 16'hFDA8 ),
    .LOC ( "SLICE_X66Y44" ))
  \INTREG_mux0000<17>1  (
    .ADR0(S1_IBUF_750),
    .ADR1(INTREG[5]),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[7]),
    .O(INTREG_mux0000[17])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y44" ),
    .INIT ( 1'b1 ))
  INTREG_6 (
    .I(\INTREG<7>/DYMUX_1997 ),
    .CE(\INTREG<7>/CEINV_1987 ),
    .CLK(\INTREG<7>/CLKINV_1988 ),
    .SET(\INTREG<7>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[6])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y44" ))
  \INTREG_mux0000<16>1  (
    .ADR0(INTREG[6]),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[8]),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[16])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y44" ),
    .INIT ( 1'b1 ))
  INTREG_7 (
    .I(\INTREG<7>/DXMUX_2011 ),
    .CE(\INTREG<7>/CEINV_1987 ),
    .CLK(\INTREG<7>/CLKINV_1988 ),
    .SET(\INTREG<7>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[7])
  );
  X_LUT4 #(
    .INIT ( 16'h3172 ),
    .LOC ( "SLICE_X67Y54" ))
  Mrom_CATHODE_mux000131 (
    .ADR0(value_mux0000[2]),
    .ADR1(value_mux0000[3]),
    .ADR2(value_mux0000[0]),
    .ADR3(value_mux0000[1]),
    .O(Mrom_CATHODE_mux00013)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y54" ),
    .INIT ( 1'b1 ))
  CATHODE_3 (
    .I(\CATHODE_4/DYMUX_2039 ),
    .CE(VCC),
    .CLK(\CATHODE_4/CLKINV_2030 ),
    .SET(\CATHODE_4/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_3_783)
  );
  X_LUT4 #(
    .INIT ( 16'hA042 ),
    .LOC ( "SLICE_X67Y54" ))
  Mrom_CATHODE_mux000141 (
    .ADR0(value_mux0000[0]),
    .ADR1(value_mux0000[3]),
    .ADR2(value_mux0000[1]),
    .ADR3(value_mux0000[2]),
    .O(Mrom_CATHODE_mux00014)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y54" ),
    .INIT ( 1'b1 ))
  CATHODE_4 (
    .I(\CATHODE_4/DXMUX_2052 ),
    .CE(VCC),
    .CLK(\CATHODE_4/CLKINV_2030 ),
    .SET(\CATHODE_4/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_4_784)
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y43" ))
  \INTREG_mux0000<15>1  (
    .ADR0(S0_IBUF_749),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[9]),
    .ADR3(INTREG[7]),
    .O(INTREG_mux0000[15])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b1 ))
  INTREG_8 (
    .I(\INTREG<9>/DYMUX_2081 ),
    .CE(\INTREG<9>/CEINV_2071 ),
    .CLK(\INTREG<9>/CLKINV_2072 ),
    .SET(\INTREG<9>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[8])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y43" ))
  \INTREG_mux0000<14>1  (
    .ADR0(S0_IBUF_749),
    .ADR1(S1_IBUF_750),
    .ADR2(INTREG[10]),
    .ADR3(INTREG[8]),
    .O(INTREG_mux0000[14])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b1 ))
  INTREG_9 (
    .I(\INTREG<9>/DXMUX_2095 ),
    .CE(\INTREG<9>/CEINV_2071 ),
    .CLK(\INTREG<9>/CLKINV_2072 ),
    .SET(\INTREG<9>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[9])
  );
  X_LUT4 #(
    .INIT ( 16'h80A4 ),
    .LOC ( "SLICE_X66Y54" ))
  Mrom_CATHODE_mux000151 (
    .ADR0(value_mux0000[2]),
    .ADR1(value_mux0000[1]),
    .ADR2(value_mux0000[3]),
    .ADR3(value_mux0000[0]),
    .O(Mrom_CATHODE_mux00015)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y54" ),
    .INIT ( 1'b1 ))
  CATHODE_5 (
    .I(\CATHODE_6/DYMUX_2123 ),
    .CE(VCC),
    .CLK(\CATHODE_6/CLKINV_2114 ),
    .SET(\CATHODE_6/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_5_785)
  );
  X_LUT4 #(
    .INIT ( 16'hB680 ),
    .LOC ( "SLICE_X66Y54" ))
  Mrom_CATHODE_mux000161 (
    .ADR0(value_mux0000[1]),
    .ADR1(value_mux0000[0]),
    .ADR2(value_mux0000[3]),
    .ADR3(value_mux0000[2]),
    .O(Mrom_CATHODE_mux00016)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y54" ),
    .INIT ( 1'b1 ))
  CATHODE_6 (
    .I(\CATHODE_6/DXMUX_2136 ),
    .CE(VCC),
    .CLK(\CATHODE_6/CLKINV_2114 ),
    .SET(\CATHODE_6/SRINVNOT ),
    .RST(GND),
    .O(CATHODE_6_786)
  );
  X_LUT4 #(
    .INIT ( 16'h4806 ),
    .LOC ( "SLICE_X66Y48" ))
  Mrom_CATHODE_mux000171 (
    .ADR0(value_mux0000[2]),
    .ADR1(value_mux0000[0]),
    .ADR2(value_mux0000[1]),
    .ADR3(value_mux0000[3]),
    .O(Mrom_CATHODE_mux00017)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y48" ),
    .INIT ( 1'b1 ))
  CATHODE_7 (
    .I(\CATHODE_7/DYMUX_2158 ),
    .CE(VCC),
    .CLK(\CATHODE_7/CLKINV_2149 ),
    .SET(\CATHODE_7/FFY/SET ),
    .RST(GND),
    .O(CATHODE_7_789)
  );
  X_INV #(
    .LOC ( "SLICE_X66Y48" ))
  \CATHODE_7/FFY/SETOR  (
    .I(MR_IBUF_717),
    .O(\CATHODE_7/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'hEEF0 ),
    .LOC ( "SLICE_X67Y36" ))
  \INTREG_mux0000<13>1  (
    .ADR0(INTREG[9]),
    .ADR1(S0_IBUF_749),
    .ADR2(INTREG[11]),
    .ADR3(S1_IBUF_750),
    .O(INTREG_mux0000[13])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y40" ),
    .INIT ( 1'b1 ))
  INTREG_21 (
    .I(\INTREG<21>/DXMUX_2245 ),
    .CE(\INTREG<21>/CEINV_2221 ),
    .CLK(\INTREG<21>/CLKINV_2222 ),
    .SET(\INTREG<21>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[21])
  );
  X_LUT4 #(
    .INIT ( 16'hEFE0 ),
    .LOC ( "SLICE_X67Y37" ))
  \INTREG_mux0000<11>1  (
    .ADR0(INTREG[11]),
    .ADR1(S0_IBUF_749),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[13]),
    .O(INTREG_mux0000[11])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y37" ),
    .INIT ( 1'b1 ))
  INTREG_12 (
    .I(\INTREG<13>/DYMUX_2275 ),
    .CE(\INTREG<13>/CEINV_2265 ),
    .CLK(\INTREG<13>/CLKINV_2266 ),
    .SET(\INTREG<13>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[12])
  );
  X_LUT4 #(
    .INIT ( 16'hFACA ),
    .LOC ( "SLICE_X67Y37" ))
  \INTREG_mux0000<10>1  (
    .ADR0(INTREG[14]),
    .ADR1(INTREG[12]),
    .ADR2(S1_IBUF_750),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[10])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y37" ),
    .INIT ( 1'b1 ))
  INTREG_13 (
    .I(\INTREG<13>/DXMUX_2289 ),
    .CE(\INTREG<13>/CEINV_2265 ),
    .CLK(\INTREG<13>/CLKINV_2266 ),
    .SET(\INTREG<13>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[13])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X66Y64" ))
  Mrom_cnt_rom000031 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(cnt[1]),
    .ADR3(cnt[0]),
    .O(Mrom_cnt_rom00003)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y64" ),
    .INIT ( 1'b1 ))
  ANODE_0 (
    .I(\ANODE_1/DYMUX_2315 ),
    .CE(VCC),
    .CLK(\ANODE_1/CLKINV_2304 ),
    .SET(\ANODE_1/SRINVNOT ),
    .RST(GND),
    .O(ANODE_0_743)
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X66Y64" ))
  Mrom_cnt_rom000021 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(cnt[1]),
    .ADR3(cnt[0]),
    .O(Mrom_cnt_rom00002)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y64" ),
    .INIT ( 1'b1 ))
  ANODE_1 (
    .I(\ANODE_1/DXMUX_2330 ),
    .CE(VCC),
    .CLK(\ANODE_1/CLKINV_2304 ),
    .SET(\ANODE_1/SRINVNOT ),
    .RST(GND),
    .O(ANODE_1_744)
  );
  X_LUT4 #(
    .INIT ( 16'hFDA8 ),
    .LOC ( "SLICE_X66Y41" ))
  \INTREG_mux0000<1>1  (
    .ADR0(S1_IBUF_750),
    .ADR1(INTREG[21]),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[23]),
    .O(INTREG_mux0000[1])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y41" ),
    .INIT ( 1'b1 ))
  INTREG_22 (
    .I(\INTREG<23>/DYMUX_2359 ),
    .CE(\INTREG<23>/CEINV_2349 ),
    .CLK(\INTREG<23>/CLKINV_2350 ),
    .SET(\INTREG<23>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[22])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ),
    .LOC ( "SLICE_X66Y41" ))
  \INTREG_mux0000<0>1  (
    .ADR0(INTREG[22]),
    .ADR1(S1_IBUF_750),
    .ADR2(D23_IBUF_759),
    .ADR3(S0_IBUF_749),
    .O(INTREG_mux0000[0])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y41" ),
    .INIT ( 1'b1 ))
  INTREG_23 (
    .I(\INTREG<23>/DXMUX_2373 ),
    .CE(\INTREG<23>/CEINV_2349 ),
    .CLK(\INTREG<23>/CLKINV_2350 ),
    .SET(\INTREG<23>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[23])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ),
    .LOC ( "SLICE_X66Y37" ))
  \INTREG_mux0000<9>1  (
    .ADR0(INTREG[13]),
    .ADR1(S1_IBUF_750),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[15]),
    .O(INTREG_mux0000[9])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y37" ),
    .INIT ( 1'b1 ))
  INTREG_14 (
    .I(\INTREG<15>/DYMUX_2403 ),
    .CE(\INTREG<15>/CEINV_2393 ),
    .CLK(\INTREG<15>/CLKINV_2394 ),
    .SET(\INTREG<15>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[14])
  );
  X_LUT4 #(
    .INIT ( 16'hEEE4 ),
    .LOC ( "SLICE_X66Y37" ))
  \INTREG_mux0000<8>1  (
    .ADR0(S1_IBUF_750),
    .ADR1(INTREG[16]),
    .ADR2(S0_IBUF_749),
    .ADR3(INTREG[14]),
    .O(INTREG_mux0000[8])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y37" ),
    .INIT ( 1'b1 ))
  INTREG_15 (
    .I(\INTREG<15>/DXMUX_2417 ),
    .CE(\INTREG<15>/CEINV_2393 ),
    .CLK(\INTREG<15>/CLKINV_2394 ),
    .SET(\INTREG<15>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[15])
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X67Y64" ))
  Mrom_cnt_rom0000111 (
    .ADR0(cnt[0]),
    .ADR1(cnt[1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mrom_cnt_rom00001)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y64" ),
    .INIT ( 1'b1 ))
  ANODE_2 (
    .I(\ANODE_3/DYMUX_2443 ),
    .CE(VCC),
    .CLK(\ANODE_3/CLKINV_2432 ),
    .SET(\ANODE_3/SRINVNOT ),
    .RST(GND),
    .O(ANODE_2_745)
  );
  X_LUT4 #(
    .INIT ( 16'hEFE0 ),
    .LOC ( "SLICE_X67Y39" ))
  \INTREG_mux0000<5>1  (
    .ADR0(INTREG[17]),
    .ADR1(S0_IBUF_749),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[19]),
    .O(INTREG_mux0000[5])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y39" ),
    .INIT ( 1'b1 ))
  INTREG_18 (
    .I(\INTREG<19>/DYMUX_2531 ),
    .CE(\INTREG<19>/CEINV_2521 ),
    .CLK(\INTREG<19>/CLKINV_2522 ),
    .SET(\INTREG<19>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[18])
  );
  X_LUT4 #(
    .INIT ( 16'hEFE0 ),
    .LOC ( "SLICE_X67Y39" ))
  \INTREG_mux0000<4>1  (
    .ADR0(INTREG[18]),
    .ADR1(S0_IBUF_749),
    .ADR2(S1_IBUF_750),
    .ADR3(INTREG[20]),
    .O(INTREG_mux0000[4])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y39" ),
    .INIT ( 1'b1 ))
  INTREG_19 (
    .I(\INTREG<19>/DXMUX_2545 ),
    .CE(\INTREG<19>/CEINV_2521 ),
    .CLK(\INTREG<19>/CLKINV_2522 ),
    .SET(\INTREG<19>/SRINVNOT ),
    .RST(GND),
    .O(INTREG[19])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X66Y39" ))
  LED_4_and00001 (
    .ADR0(INTREG[19]),
    .ADR1(INTREG[18]),
    .ADR2(INTREG[16]),
    .ADR3(INTREG[17]),
    .O(LED_4_OBUF_2564)
  );
  X_LUT4 #(
    .INIT ( 16'hCCFF ),
    .LOC ( "SLICE_X66Y39" ))
  \Q<18>1  (
    .ADR0(VCC),
    .ADR1(INTREG[18]),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_18_OBUF_2573)
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X66Y40" ))
  \Q<19>1  (
    .ADR0(INTREG[19]),
    .ADR1(MR_IBUF_717),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Q_19_OBUF_2588)
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X66Y40" ))
  \Q<0>1  (
    .ADR0(INTREG[0]),
    .ADR1(MR_IBUF_717),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Q_0_OBUF_2597)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X67Y41" ))
  LED_5_and00001 (
    .ADR0(INTREG[23]),
    .ADR1(INTREG[22]),
    .ADR2(INTREG[21]),
    .ADR3(INTREG[20]),
    .O(LED_5_OBUF_2612)
  );
  X_LUT4 #(
    .INIT ( 16'hCFCF ),
    .LOC ( "SLICE_X67Y41" ))
  \Q<22>1  (
    .ADR0(VCC),
    .ADR1(INTREG[22]),
    .ADR2(MR_IBUF_717),
    .ADR3(VCC),
    .O(Q_22_OBUF_2621)
  );
  X_SFF #(
    .LOC ( "SLICE_X65Y66" ),
    .INIT ( 1'b0 ))
  CLKENIN (
    .I(\CLKENIN/DYMUX_2631 ),
    .CE(VCC),
    .CLK(\CLKENIN/CLKINV_2628 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\CLKENIN/SRINV_2629 ),
    .O(CLKENIN_824)
  );
  X_LUT4 #(
    .INIT ( 16'hC8C8 ),
    .LOC ( "SLICE_X67Y46" ))
  INTREG_not00011 (
    .ADR0(S0_IBUF_749),
    .ADR1(CLKENIN_824),
    .ADR2(S1_IBUF_750),
    .ADR3(VCC),
    .O(INTREG_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X67Y24" ))
  \Q<1>1  (
    .ADR0(VCC),
    .ADR1(MR_IBUF_717),
    .ADR2(INTREG[1]),
    .ADR3(VCC),
    .O(Q_1_OBUF_2660)
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X67Y24" ))
  \Q<10>1  (
    .ADR0(VCC),
    .ADR1(MR_IBUF_717),
    .ADR2(VCC),
    .ADR3(INTREG[10]),
    .O(Q_10_OBUF_2669)
  );
  X_LUT4 #(
    .INIT ( 16'hCCFF ),
    .LOC ( "SLICE_X67Y22" ))
  \Q<2>1  (
    .ADR0(VCC),
    .ADR1(INTREG[2]),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_2_OBUF_2684)
  );
  X_LUT4 #(
    .INIT ( 16'hCCFF ),
    .LOC ( "SLICE_X67Y22" ))
  \Q<11>1  (
    .ADR0(VCC),
    .ADR1(INTREG[11]),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_11_OBUF_2693)
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X67Y23" ))
  \Q<3>1  (
    .ADR0(INTREG[3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_3_OBUF_2708)
  );
  X_LUT4 #(
    .INIT ( 16'hCCFF ),
    .LOC ( "SLICE_X67Y23" ))
  \Q<12>1  (
    .ADR0(VCC),
    .ADR1(INTREG[12]),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_12_OBUF_2717)
  );
  X_LUT4 #(
    .INIT ( 16'h0FF0 ),
    .LOC ( "SLICE_X66Y49" ))
  \Mcount_cnt_xor<1>11  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(cnt[1]),
    .ADR3(cnt[0]),
    .O(Mcount_cnt1)
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X66Y28" ))
  \Q<6>1  (
    .ADR0(MR_IBUF_717),
    .ADR1(VCC),
    .ADR2(INTREG[6]),
    .ADR3(VCC),
    .O(Q_6_OBUF_2813)
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ),
    .LOC ( "SLICE_X66Y28" ))
  \Q<15>1  (
    .ADR0(MR_IBUF_717),
    .ADR1(INTREG[15]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Q_15_OBUF_2822)
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X67Y31" ))
  \Q<7>1  (
    .ADR0(INTREG[7]),
    .ADR1(MR_IBUF_717),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Q_7_OBUF_2837)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X67Y31" ))
  \Q<16>1  (
    .ADR0(VCC),
    .ADR1(MR_IBUF_717),
    .ADR2(INTREG[16]),
    .ADR3(VCC),
    .O(Q_16_OBUF_2846)
  );
  X_LUT4 #(
    .INIT ( 16'hAFAF ),
    .LOC ( "SLICE_X67Y38" ))
  \Q<8>1  (
    .ADR0(INTREG[8]),
    .ADR1(VCC),
    .ADR2(MR_IBUF_717),
    .ADR3(VCC),
    .O(Q_8_OBUF_2861)
  );
  X_LUT4 #(
    .INIT ( 16'hAFAF ),
    .LOC ( "SLICE_X67Y38" ))
  \Q<17>1  (
    .ADR0(INTREG[17]),
    .ADR1(VCC),
    .ADR2(MR_IBUF_717),
    .ADR3(VCC),
    .O(Q_17_OBUF_2870)
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X67Y53" ))
  \Q<9>1  (
    .ADR0(INTREG[9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_9_OBUF_2885)
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X67Y53" ))
  \Q<20>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(INTREG[20]),
    .ADR3(MR_IBUF_717),
    .O(Q_20_OBUF_2894)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X67Y47" ))
  LED_0_and00001 (
    .ADR0(INTREG[3]),
    .ADR1(INTREG[1]),
    .ADR2(INTREG[2]),
    .ADR3(INTREG[0]),
    .O(LED_0_OBUF_2906)
  );
  X_FF #(
    .LOC ( "SLICE_X65Y59" ),
    .INIT ( 1'b0 ))
  CLKEN (
    .I(\CLKEN/DYMUX_2916 ),
    .CE(VCC),
    .CLK(\CLKEN/CLKINV_2913 ),
    .SET(GND),
    .RST(\CLKEN/FFY/RSTAND_2921 ),
    .O(CLKEN_814)
  );
  X_INV #(
    .LOC ( "SLICE_X65Y59" ))
  \CLKEN/FFY/RSTAND  (
    .I(MR_IBUF_717),
    .O(\CLKEN/FFY/RSTAND_2921 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCFF ),
    .LOC ( "SLICE_X67Y49" ))
  \Q<21>1  (
    .ADR0(VCC),
    .ADR1(INTREG[21]),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_21_OBUF_2935)
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X67Y49" ))
  \Q<23>1  (
    .ADR0(INTREG[23]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(MR_IBUF_717),
    .O(Q_23_OBUF_2944)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X67Y43" ))
  LED_1_and00001 (
    .ADR0(INTREG[7]),
    .ADR1(INTREG[6]),
    .ADR2(INTREG[4]),
    .ADR3(INTREG[5]),
    .O(LED_1_OBUF_2956)
  );
  X_FF #(
    .LOC ( "SLICE_X64Y67" ),
    .INIT ( 1'b0 ))
  CLKENIN_OLD (
    .I(\CLKENIN_OLD/DYMUX_2964 ),
    .CE(VCC),
    .CLK(\CLKENIN_OLD/CLKINV_2962 ),
    .SET(GND),
    .RST(GND),
    .O(CLKENIN_OLD_823)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X66Y42" ))
  LED_2_and00001 (
    .ADR0(INTREG[10]),
    .ADR1(INTREG[11]),
    .ADR2(INTREG[9]),
    .ADR3(INTREG[8]),
    .O(LED_2_OBUF_2977)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X67Y42" ))
  LED_3_and00001 (
    .ADR0(INTREG[14]),
    .ADR1(INTREG[15]),
    .ADR2(INTREG[13]),
    .ADR3(INTREG[12]),
    .O(LED_3_OBUF_2989)
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X67Y79" ))
  \counter<16>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\counter<16>/G )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \ANODE<0>/OUTPUT/OFF/OMUX  (
    .I(ANODE_0_743),
    .O(\ANODE<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \ANODE<1>/OUTPUT/OFF/OMUX  (
    .I(ANODE_1_744),
    .O(\ANODE<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \ANODE<2>/OUTPUT/OFF/OMUX  (
    .I(ANODE_2_745),
    .O(\ANODE<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD67" ))
  \ANODE<3>/OUTPUT/OFF/OMUX  (
    .I(ANODE_3_746),
    .O(\ANODE<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD111" ))
  \Q<10>/OUTPUT/OFF/OMUX  (
    .I(Q_10_OBUF_2669),
    .O(\Q<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD101" ))
  \Q<11>/OUTPUT/OFF/OMUX  (
    .I(Q_11_OBUF_2693),
    .O(\Q<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD82" ))
  \Q<20>/OUTPUT/OFF/OMUX  (
    .I(Q_20_OBUF_2894),
    .O(\Q<20>/O )
  );
  X_BUF #(
    .LOC ( "PAD116" ))
  \Q<12>/OUTPUT/OFF/OMUX  (
    .I(Q_12_OBUF_2717),
    .O(\Q<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD81" ))
  \Q<21>/OUTPUT/OFF/OMUX  (
    .I(Q_21_OBUF_2935),
    .O(\Q<21>/O )
  );
  X_BUF #(
    .LOC ( "PAD110" ))
  \Q<13>/OUTPUT/OFF/OMUX  (
    .I(Q_13_OBUF_2774),
    .O(\Q<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \Q<22>/OUTPUT/OFF/OMUX  (
    .I(Q_22_OBUF_2621),
    .O(\Q<22>/O )
  );
  X_BUF #(
    .LOC ( "PAD107" ))
  \Q<14>/OUTPUT/OFF/OMUX  (
    .I(Q_14_OBUF_2798),
    .O(\Q<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \Q<23>/OUTPUT/OFF/OMUX  (
    .I(Q_23_OBUF_2944),
    .O(\Q<23>/O )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \Q<15>/OUTPUT/OFF/OMUX  (
    .I(Q_15_OBUF_2822),
    .O(\Q<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD97" ))
  \Q<16>/OUTPUT/OFF/OMUX  (
    .I(Q_16_OBUF_2846),
    .O(\Q<16>/O )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \Q<17>/OUTPUT/OFF/OMUX  (
    .I(Q_17_OBUF_2870),
    .O(\Q<17>/O )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \Q<18>/OUTPUT/OFF/OMUX  (
    .I(Q_18_OBUF_2573),
    .O(\Q<18>/O )
  );
  X_BUF #(
    .LOC ( "PAD86" ))
  \Q<19>/OUTPUT/OFF/OMUX  (
    .I(Q_19_OBUF_2588),
    .O(\Q<19>/O )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \LED<0>/OUTPUT/OFF/OMUX  (
    .I(LED_0_OBUF_2906),
    .O(\LED<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD100" ))
  \Q<0>/OUTPUT/OFF/OMUX  (
    .I(Q_0_OBUF_2597),
    .O(\Q<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD85" ))
  \LED<1>/OUTPUT/OFF/OMUX  (
    .I(LED_1_OBUF_2956),
    .O(\LED<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD115" ))
  \Q<1>/OUTPUT/OFF/OMUX  (
    .I(Q_1_OBUF_2660),
    .O(\Q<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \LED<2>/OUTPUT/OFF/OMUX  (
    .I(LED_2_OBUF_2977),
    .O(\LED<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD114" ))
  \Q<2>/OUTPUT/OFF/OMUX  (
    .I(Q_2_OBUF_2684),
    .O(\Q<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \LED<3>/OUTPUT/OFF/OMUX  (
    .I(LED_3_OBUF_2989),
    .O(\LED<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD113" ))
  \Q<3>/OUTPUT/OFF/OMUX  (
    .I(Q_3_OBUF_2708),
    .O(\Q<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \LED<4>/OUTPUT/OFF/OMUX  (
    .I(LED_4_OBUF_2564),
    .O(\LED<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD102" ))
  \Q<4>/OUTPUT/OFF/OMUX  (
    .I(Q_4_OBUF_2765),
    .O(\Q<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD109" ))
  \LED<5>/OUTPUT/OFF/OMUX  (
    .I(LED_5_OBUF_2612),
    .O(\LED<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD99" ))
  \Q<5>/OUTPUT/OFF/OMUX  (
    .I(Q_5_OBUF_2789),
    .O(\Q<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD104" ))
  \Q<6>/OUTPUT/OFF/OMUX  (
    .I(Q_6_OBUF_2813),
    .O(\Q<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \Q<7>/OUTPUT/OFF/OMUX  (
    .I(Q_7_OBUF_2837),
    .O(\Q<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \Q<8>/OUTPUT/OFF/OMUX  (
    .I(Q_8_OBUF_2861),
    .O(\Q<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \Q<9>/OUTPUT/OFF/OMUX  (
    .I(Q_9_OBUF_2885),
    .O(\Q<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \CATHODE<0>/OUTPUT/OFF/OMUX  (
    .I(\CATHODE<0>/OUTPUT/OFF/O1INV_1622 ),
    .O(\CATHODE<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \CATHODE<0>/OUTPUT/OFF/O1INV  (
    .I(1'b1),
    .O(\CATHODE<0>/OUTPUT/OFF/O1INV_1622 )
  );
  X_BUF #(
    .LOC ( "PAD77" ))
  \CATHODE<1>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_1_781),
    .O(\CATHODE<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD87" ))
  \CATHODE<2>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_2_782),
    .O(\CATHODE<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \CATHODE<3>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_3_783),
    .O(\CATHODE<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \CATHODE<4>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_4_784),
    .O(\CATHODE<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \CATHODE<5>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_5_785),
    .O(\CATHODE<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \CATHODE<6>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_6_786),
    .O(\CATHODE<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \CATHODE<7>/OUTPUT/OFF/OMUX  (
    .I(CATHODE_7_789),
    .O(\CATHODE<7>/O )
  );
  X_ONE   NlwBlock_Schieberegister_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Schieberegister_GND (
    .O(GND)
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

