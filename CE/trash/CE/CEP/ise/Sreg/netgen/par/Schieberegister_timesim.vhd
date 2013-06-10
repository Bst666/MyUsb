--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: Schieberegister_timesim.vhd
-- /___/   /\     Timestamp: Thu Oct 20 17:30:18 2011
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf Schieberegister.pcf -rpw 100 -tpw 0 -ar Structure -tm Schieberegister -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Schieberegister.ncd Schieberegister_timesim.vhd 
-- Device	: 3s1200efg320-4 (PRODUCTION 1.27 2010-11-18)
-- Input file	: Schieberegister.ncd
-- Output file	: \\homefs\aax289\CEP\ise\Sreg\netgen\par\Schieberegister_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Schieberegister
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Schieberegister is
  port (
    D0 : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    CLKENIN_OUT : out STD_LOGIC; 
    CLKIN : in STD_LOGIC := 'X'; 
    D23_OUT : out STD_LOGIC; 
    D23 : in STD_LOGIC := 'X'; 
    S0 : in STD_LOGIC := 'X'; 
    S1 : in STD_LOGIC := 'X'; 
    MR : in STD_LOGIC := 'X'; 
    MR_OUT : out STD_LOGIC; 
    S0_OUT : out STD_LOGIC; 
    D0_OUT : out STD_LOGIC; 
    S1_OUT : out STD_LOGIC; 
    ANODE : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 ); 
    CATHODE : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end Schieberegister;

architecture Structure of Schieberegister is
  signal CLK_BUFGP : STD_LOGIC; 
  signal MR_OUT_OBUF_735 : STD_LOGIC; 
  signal Mcount_counter_cy_1_Q : STD_LOGIC; 
  signal Mcount_counter_cy_3_Q : STD_LOGIC; 
  signal Mcount_counter_cy_5_Q : STD_LOGIC; 
  signal Mcount_counter_cy_7_Q : STD_LOGIC; 
  signal Mcount_counter_cy_9_Q : STD_LOGIC; 
  signal Mcount_counter_cy_11_Q : STD_LOGIC; 
  signal Mcount_counter_cy_13_Q : STD_LOGIC; 
  signal ANODE_0_761 : STD_LOGIC; 
  signal ANODE_1_762 : STD_LOGIC; 
  signal ANODE_2_763 : STD_LOGIC; 
  signal S0_OUT_OBUF_764 : STD_LOGIC; 
  signal ANODE_3_765 : STD_LOGIC; 
  signal S1_OUT_OBUF_768 : STD_LOGIC; 
  signal D23_OUT_OBUF_775 : STD_LOGIC; 
  signal CLKENIN_776 : STD_LOGIC; 
  signal D0_OUT_OBUF_783 : STD_LOGIC; 
  signal CATHODE_1_801 : STD_LOGIC; 
  signal CATHODE_2_802 : STD_LOGIC; 
  signal CATHODE_3_803 : STD_LOGIC; 
  signal CATHODE_4_804 : STD_LOGIC; 
  signal CATHODE_5_805 : STD_LOGIC; 
  signal CATHODE_6_806 : STD_LOGIC; 
  signal CLKENIN_and0000_norst : STD_LOGIC; 
  signal CATHODE_7_808 : STD_LOGIC; 
  signal INTREG_not0001_0 : STD_LOGIC; 
  signal CLKEN_833 : STD_LOGIC; 
  signal CLKENIN_OLD_842 : STD_LOGIC; 
  signal counter_0_DXMUX_889 : STD_LOGIC; 
  signal counter_0_XORF_887 : STD_LOGIC; 
  signal counter_0_CYINIT_886 : STD_LOGIC; 
  signal counter_0_CYSELF_878 : STD_LOGIC; 
  signal counter_0_DYMUX_869 : STD_LOGIC; 
  signal counter_0_XORG_867 : STD_LOGIC; 
  signal counter_0_CYMUXG_866 : STD_LOGIC; 
  signal Mcount_counter_cy_0_Q : STD_LOGIC; 
  signal counter_0_LOGIC_ZERO_864 : STD_LOGIC; 
  signal counter_0_CYSELG_856 : STD_LOGIC; 
  signal counter_0_SRINVNOT : STD_LOGIC; 
  signal counter_0_CLKINV_853 : STD_LOGIC; 
  signal counter_2_FFX_RST : STD_LOGIC; 
  signal counter_2_DXMUX_945 : STD_LOGIC; 
  signal counter_2_XORF_943 : STD_LOGIC; 
  signal counter_2_CYINIT_942 : STD_LOGIC; 
  signal counter_2_DYMUX_927 : STD_LOGIC; 
  signal counter_2_XORG_925 : STD_LOGIC; 
  signal Mcount_counter_cy_2_Q : STD_LOGIC; 
  signal counter_2_CYSELF_923 : STD_LOGIC; 
  signal counter_2_CYMUXFAST_922 : STD_LOGIC; 
  signal counter_2_CYAND_921 : STD_LOGIC; 
  signal counter_2_FASTCARRY_920 : STD_LOGIC; 
  signal counter_2_CYMUXG2_919 : STD_LOGIC; 
  signal counter_2_CYMUXF2_918 : STD_LOGIC; 
  signal counter_2_LOGIC_ZERO_917 : STD_LOGIC; 
  signal counter_2_CYSELG_909 : STD_LOGIC; 
  signal counter_2_SRINVNOT : STD_LOGIC; 
  signal counter_2_CLKINV_906 : STD_LOGIC; 
  signal counter_4_DXMUX_1001 : STD_LOGIC; 
  signal counter_4_XORF_999 : STD_LOGIC; 
  signal counter_4_CYINIT_998 : STD_LOGIC; 
  signal counter_4_DYMUX_983 : STD_LOGIC; 
  signal counter_4_XORG_981 : STD_LOGIC; 
  signal Mcount_counter_cy_4_Q : STD_LOGIC; 
  signal counter_4_CYSELF_979 : STD_LOGIC; 
  signal counter_4_CYMUXFAST_978 : STD_LOGIC; 
  signal counter_4_CYAND_977 : STD_LOGIC; 
  signal counter_4_FASTCARRY_976 : STD_LOGIC; 
  signal counter_4_CYMUXG2_975 : STD_LOGIC; 
  signal counter_4_CYMUXF2_974 : STD_LOGIC; 
  signal counter_4_LOGIC_ZERO_973 : STD_LOGIC; 
  signal counter_4_CYSELG_965 : STD_LOGIC; 
  signal counter_4_SRINVNOT : STD_LOGIC; 
  signal counter_4_CLKINV_962 : STD_LOGIC; 
  signal counter_6_DXMUX_1057 : STD_LOGIC; 
  signal counter_6_XORF_1055 : STD_LOGIC; 
  signal counter_6_CYINIT_1054 : STD_LOGIC; 
  signal counter_6_DYMUX_1039 : STD_LOGIC; 
  signal counter_6_XORG_1037 : STD_LOGIC; 
  signal Mcount_counter_cy_6_Q : STD_LOGIC; 
  signal counter_6_CYSELF_1035 : STD_LOGIC; 
  signal counter_6_CYMUXFAST_1034 : STD_LOGIC; 
  signal counter_6_CYAND_1033 : STD_LOGIC; 
  signal counter_6_FASTCARRY_1032 : STD_LOGIC; 
  signal counter_6_CYMUXG2_1031 : STD_LOGIC; 
  signal counter_6_CYMUXF2_1030 : STD_LOGIC; 
  signal counter_6_LOGIC_ZERO_1029 : STD_LOGIC; 
  signal counter_6_CYSELG_1021 : STD_LOGIC; 
  signal counter_6_SRINVNOT : STD_LOGIC; 
  signal counter_6_CLKINV_1018 : STD_LOGIC; 
  signal counter_8_DXMUX_1113 : STD_LOGIC; 
  signal counter_8_XORF_1111 : STD_LOGIC; 
  signal counter_8_CYINIT_1110 : STD_LOGIC; 
  signal counter_8_DYMUX_1095 : STD_LOGIC; 
  signal counter_8_XORG_1093 : STD_LOGIC; 
  signal Mcount_counter_cy_8_Q : STD_LOGIC; 
  signal counter_8_CYSELF_1091 : STD_LOGIC; 
  signal counter_8_CYMUXFAST_1090 : STD_LOGIC; 
  signal counter_8_CYAND_1089 : STD_LOGIC; 
  signal counter_8_FASTCARRY_1088 : STD_LOGIC; 
  signal counter_8_CYMUXG2_1087 : STD_LOGIC; 
  signal counter_8_CYMUXF2_1086 : STD_LOGIC; 
  signal counter_8_LOGIC_ZERO_1085 : STD_LOGIC; 
  signal counter_8_CYSELG_1077 : STD_LOGIC; 
  signal counter_8_SRINVNOT : STD_LOGIC; 
  signal counter_8_CLKINV_1074 : STD_LOGIC; 
  signal counter_10_FFY_RST : STD_LOGIC; 
  signal counter_10_DXMUX_1169 : STD_LOGIC; 
  signal counter_10_XORF_1167 : STD_LOGIC; 
  signal counter_10_CYINIT_1166 : STD_LOGIC; 
  signal counter_10_DYMUX_1151 : STD_LOGIC; 
  signal counter_10_XORG_1149 : STD_LOGIC; 
  signal Mcount_counter_cy_10_Q : STD_LOGIC; 
  signal counter_10_CYSELF_1147 : STD_LOGIC; 
  signal counter_10_CYMUXFAST_1146 : STD_LOGIC; 
  signal counter_10_CYAND_1145 : STD_LOGIC; 
  signal counter_10_FASTCARRY_1144 : STD_LOGIC; 
  signal counter_10_CYMUXG2_1143 : STD_LOGIC; 
  signal counter_10_CYMUXF2_1142 : STD_LOGIC; 
  signal counter_10_LOGIC_ZERO_1141 : STD_LOGIC; 
  signal counter_10_CYSELG_1133 : STD_LOGIC; 
  signal counter_10_SRINVNOT : STD_LOGIC; 
  signal counter_10_CLKINV_1130 : STD_LOGIC; 
  signal counter_12_DXMUX_1225 : STD_LOGIC; 
  signal counter_12_XORF_1223 : STD_LOGIC; 
  signal counter_12_CYINIT_1222 : STD_LOGIC; 
  signal counter_12_DYMUX_1207 : STD_LOGIC; 
  signal counter_12_XORG_1205 : STD_LOGIC; 
  signal Mcount_counter_cy_12_Q : STD_LOGIC; 
  signal counter_12_CYSELF_1203 : STD_LOGIC; 
  signal counter_12_CYMUXFAST_1202 : STD_LOGIC; 
  signal counter_12_CYAND_1201 : STD_LOGIC; 
  signal counter_12_FASTCARRY_1200 : STD_LOGIC; 
  signal counter_12_CYMUXG2_1199 : STD_LOGIC; 
  signal counter_12_CYMUXF2_1198 : STD_LOGIC; 
  signal counter_12_LOGIC_ZERO_1197 : STD_LOGIC; 
  signal counter_12_CYSELG_1189 : STD_LOGIC; 
  signal counter_12_SRINVNOT : STD_LOGIC; 
  signal counter_12_CLKINV_1186 : STD_LOGIC; 
  signal counter_14_DXMUX_1281 : STD_LOGIC; 
  signal counter_14_XORF_1279 : STD_LOGIC; 
  signal counter_14_CYINIT_1278 : STD_LOGIC; 
  signal counter_14_DYMUX_1263 : STD_LOGIC; 
  signal counter_14_XORG_1261 : STD_LOGIC; 
  signal Mcount_counter_cy_14_Q : STD_LOGIC; 
  signal counter_14_CYSELF_1259 : STD_LOGIC; 
  signal counter_14_CYMUXFAST_1258 : STD_LOGIC; 
  signal counter_14_CYAND_1257 : STD_LOGIC; 
  signal counter_14_FASTCARRY_1256 : STD_LOGIC; 
  signal counter_14_CYMUXG2_1255 : STD_LOGIC; 
  signal counter_14_CYMUXF2_1254 : STD_LOGIC; 
  signal counter_14_LOGIC_ZERO_1253 : STD_LOGIC; 
  signal counter_14_CYSELG_1245 : STD_LOGIC; 
  signal counter_14_SRINVNOT : STD_LOGIC; 
  signal counter_14_CLKINV_1242 : STD_LOGIC; 
  signal counter_16_DXMUX_1330 : STD_LOGIC; 
  signal counter_16_XORF_1328 : STD_LOGIC; 
  signal counter_16_LOGIC_ZERO_1327 : STD_LOGIC; 
  signal counter_16_CYINIT_1326 : STD_LOGIC; 
  signal counter_16_CYSELF_1318 : STD_LOGIC; 
  signal counter_16_DYMUX_1310 : STD_LOGIC; 
  signal counter_16_XORG_1308 : STD_LOGIC; 
  signal Mcount_counter_cy_16_Q : STD_LOGIC; 
  signal counter_16_G : STD_LOGIC; 
  signal counter_16_SRINVNOT : STD_LOGIC; 
  signal counter_16_CLKINV_1295 : STD_LOGIC; 
  signal ANODE_0_O : STD_LOGIC; 
  signal ANODE_1_O : STD_LOGIC; 
  signal ANODE_2_O : STD_LOGIC; 
  signal S0_OUT_O : STD_LOGIC; 
  signal ANODE_3_O : STD_LOGIC; 
  signal Q_10_O : STD_LOGIC; 
  signal Q_11_O : STD_LOGIC; 
  signal S0_INBUF : STD_LOGIC; 
  signal S1_INBUF : STD_LOGIC; 
  signal Q_20_O : STD_LOGIC; 
  signal Q_12_O : STD_LOGIC; 
  signal Q_21_O : STD_LOGIC; 
  signal Q_13_O : STD_LOGIC; 
  signal Q_22_O : STD_LOGIC; 
  signal Q_14_O : STD_LOGIC; 
  signal D23_OUT_O : STD_LOGIC; 
  signal CLKENIN_OUT_O : STD_LOGIC; 
  signal Q_23_O : STD_LOGIC; 
  signal Q_15_O : STD_LOGIC; 
  signal D23_INBUF : STD_LOGIC; 
  signal Q_16_O : STD_LOGIC; 
  signal S1_OUT_O : STD_LOGIC; 
  signal Q_17_O : STD_LOGIC; 
  signal Q_18_O : STD_LOGIC; 
  signal Q_19_O : STD_LOGIC; 
  signal D0_OUT_O : STD_LOGIC; 
  signal MR_INBUF : STD_LOGIC; 
  signal LED_0_O : STD_LOGIC; 
  signal Q_0_O : STD_LOGIC; 
  signal LED_1_O : STD_LOGIC; 
  signal Q_1_O : STD_LOGIC; 
  signal LED_2_O : STD_LOGIC; 
  signal Q_2_O : STD_LOGIC; 
  signal LED_3_O : STD_LOGIC; 
  signal Q_3_O : STD_LOGIC; 
  signal LED_4_O : STD_LOGIC; 
  signal Q_4_O : STD_LOGIC; 
  signal LED_5_O : STD_LOGIC; 
  signal Q_5_O : STD_LOGIC; 
  signal Q_6_O : STD_LOGIC; 
  signal Q_7_O : STD_LOGIC; 
  signal Q_8_O : STD_LOGIC; 
  signal Q_9_O : STD_LOGIC; 
  signal MR_OUT_O : STD_LOGIC; 
  signal CATHODE_0_O : STD_LOGIC; 
  signal CATHODE_1_O : STD_LOGIC; 
  signal CATHODE_2_O : STD_LOGIC; 
  signal CATHODE_3_O : STD_LOGIC; 
  signal CATHODE_4_O : STD_LOGIC; 
  signal CATHODE_5_O : STD_LOGIC; 
  signal CATHODE_6_O : STD_LOGIC; 
  signal D0_INBUF : STD_LOGIC; 
  signal CLKIN_INBUF : STD_LOGIC; 
  signal CATHODE_7_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal value_mux0000_1_F5MUX_1791 : STD_LOGIC; 
  signal Mmux_value_mux0000_31_1789 : STD_LOGIC; 
  signal value_mux0000_1_BXINV_1783 : STD_LOGIC; 
  signal Mmux_value_mux0000_41_1781 : STD_LOGIC; 
  signal value_mux0000_2_F5MUX_1816 : STD_LOGIC; 
  signal Mmux_value_mux0000_32_1814 : STD_LOGIC; 
  signal value_mux0000_2_BXINV_1808 : STD_LOGIC; 
  signal Mmux_value_mux0000_42_1806 : STD_LOGIC; 
  signal value_mux0000_3_F5MUX_1841 : STD_LOGIC; 
  signal Mmux_value_mux0000_33_1839 : STD_LOGIC; 
  signal value_mux0000_3_BXINV_1833 : STD_LOGIC; 
  signal Mmux_value_mux0000_43_1831 : STD_LOGIC; 
  signal value_mux0000_0_F5MUX_1866 : STD_LOGIC; 
  signal Mmux_value_mux0000_3_1864 : STD_LOGIC; 
  signal value_mux0000_0_BXINV_1858 : STD_LOGIC; 
  signal Mmux_value_mux0000_4_1856 : STD_LOGIC; 
  signal INTREG_1_DXMUX_1906 : STD_LOGIC; 
  signal INTREG_1_DYMUX_1891 : STD_LOGIC; 
  signal INTREG_1_SRINVNOT : STD_LOGIC; 
  signal INTREG_1_CLKINV_1882 : STD_LOGIC; 
  signal INTREG_1_CEINV_1881 : STD_LOGIC; 
  signal INTREG_3_DXMUX_1952 : STD_LOGIC; 
  signal INTREG_3_DYMUX_1937 : STD_LOGIC; 
  signal INTREG_3_SRINVNOT : STD_LOGIC; 
  signal INTREG_3_CLKINV_1928 : STD_LOGIC; 
  signal INTREG_3_CEINV_1927 : STD_LOGIC; 
  signal INTREG_5_DXMUX_1998 : STD_LOGIC; 
  signal INTREG_5_DYMUX_1983 : STD_LOGIC; 
  signal INTREG_5_SRINVNOT : STD_LOGIC; 
  signal INTREG_5_CLKINV_1974 : STD_LOGIC; 
  signal INTREG_5_CEINV_1973 : STD_LOGIC; 
  signal CATHODE_2_DXMUX_2040 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00012 : STD_LOGIC; 
  signal CATHODE_2_DYMUX_2027 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00011 : STD_LOGIC; 
  signal CATHODE_2_SRINVNOT : STD_LOGIC; 
  signal CATHODE_2_CLKINV_2018 : STD_LOGIC; 
  signal INTREG_7_DXMUX_2084 : STD_LOGIC; 
  signal INTREG_7_DYMUX_2069 : STD_LOGIC; 
  signal INTREG_7_SRINVNOT : STD_LOGIC; 
  signal INTREG_7_CLKINV_2060 : STD_LOGIC; 
  signal INTREG_7_CEINV_2059 : STD_LOGIC; 
  signal CATHODE_4_DXMUX_2126 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00014 : STD_LOGIC; 
  signal CATHODE_4_DYMUX_2113 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00013 : STD_LOGIC; 
  signal CATHODE_4_SRINVNOT : STD_LOGIC; 
  signal CATHODE_4_CLKINV_2104 : STD_LOGIC; 
  signal INTREG_9_DXMUX_2170 : STD_LOGIC; 
  signal INTREG_9_DYMUX_2155 : STD_LOGIC; 
  signal INTREG_9_SRINVNOT : STD_LOGIC; 
  signal INTREG_9_CLKINV_2146 : STD_LOGIC; 
  signal INTREG_9_CEINV_2145 : STD_LOGIC; 
  signal CATHODE_6_DXMUX_2212 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00016 : STD_LOGIC; 
  signal CATHODE_6_DYMUX_2199 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00015 : STD_LOGIC; 
  signal CATHODE_6_SRINVNOT : STD_LOGIC; 
  signal CATHODE_6_CLKINV_2190 : STD_LOGIC; 
  signal CATHODE_7_DYMUX_2234 : STD_LOGIC; 
  signal Mrom_CATHODE_mux00017 : STD_LOGIC; 
  signal CATHODE_7_CLKINV_2225 : STD_LOGIC; 
  signal INTREG_11_DXMUX_2278 : STD_LOGIC; 
  signal INTREG_11_DYMUX_2263 : STD_LOGIC; 
  signal INTREG_11_SRINVNOT : STD_LOGIC; 
  signal INTREG_11_CLKINV_2254 : STD_LOGIC; 
  signal INTREG_11_CEINV_2253 : STD_LOGIC; 
  signal INTREG_21_DXMUX_2324 : STD_LOGIC; 
  signal INTREG_21_DYMUX_2309 : STD_LOGIC; 
  signal INTREG_21_SRINVNOT : STD_LOGIC; 
  signal INTREG_21_CLKINV_2300 : STD_LOGIC; 
  signal INTREG_21_CEINV_2299 : STD_LOGIC; 
  signal INTREG_13_DXMUX_2370 : STD_LOGIC; 
  signal INTREG_13_DYMUX_2355 : STD_LOGIC; 
  signal INTREG_13_SRINVNOT : STD_LOGIC; 
  signal INTREG_13_CLKINV_2346 : STD_LOGIC; 
  signal INTREG_13_CEINV_2345 : STD_LOGIC; 
  signal ANODE_1_DXMUX_2412 : STD_LOGIC; 
  signal Mrom_cnt_rom00002 : STD_LOGIC; 
  signal ANODE_1_DYMUX_2397 : STD_LOGIC; 
  signal Mrom_cnt_rom00003 : STD_LOGIC; 
  signal ANODE_1_SRINVNOT : STD_LOGIC; 
  signal ANODE_1_CLKINV_2386 : STD_LOGIC; 
  signal INTREG_23_DXMUX_2456 : STD_LOGIC; 
  signal INTREG_23_DYMUX_2441 : STD_LOGIC; 
  signal INTREG_23_SRINVNOT : STD_LOGIC; 
  signal INTREG_23_CLKINV_2432 : STD_LOGIC; 
  signal INTREG_23_CEINV_2431 : STD_LOGIC; 
  signal INTREG_15_DXMUX_2502 : STD_LOGIC; 
  signal INTREG_15_DYMUX_2487 : STD_LOGIC; 
  signal INTREG_15_SRINVNOT : STD_LOGIC; 
  signal INTREG_15_CLKINV_2478 : STD_LOGIC; 
  signal INTREG_15_CEINV_2477 : STD_LOGIC; 
  signal ANODE_3_DXMUX_2544 : STD_LOGIC; 
  signal Mrom_cnt_rom0000 : STD_LOGIC; 
  signal ANODE_3_DYMUX_2529 : STD_LOGIC; 
  signal Mrom_cnt_rom00001 : STD_LOGIC; 
  signal ANODE_3_SRINVNOT : STD_LOGIC; 
  signal ANODE_3_CLKINV_2518 : STD_LOGIC; 
  signal INTREG_17_DXMUX_2588 : STD_LOGIC; 
  signal INTREG_17_DYMUX_2573 : STD_LOGIC; 
  signal INTREG_17_SRINVNOT : STD_LOGIC; 
  signal INTREG_17_CLKINV_2564 : STD_LOGIC; 
  signal INTREG_17_CEINV_2563 : STD_LOGIC; 
  signal INTREG_19_DXMUX_2634 : STD_LOGIC; 
  signal INTREG_19_DYMUX_2619 : STD_LOGIC; 
  signal INTREG_19_SRINVNOT : STD_LOGIC; 
  signal INTREG_19_CLKINV_2610 : STD_LOGIC; 
  signal INTREG_19_CEINV_2609 : STD_LOGIC; 
  signal Q_18_OBUF_2663 : STD_LOGIC; 
  signal LED_4_OBUF_2654 : STD_LOGIC; 
  signal Q_0_OBUF_2687 : STD_LOGIC; 
  signal Q_19_OBUF_2678 : STD_LOGIC; 
  signal Q_22_OBUF_2711 : STD_LOGIC; 
  signal LED_5_OBUF_2702 : STD_LOGIC; 
  signal CLKENIN_DYMUX_2721 : STD_LOGIC; 
  signal CLKENIN_SRINV_2719 : STD_LOGIC; 
  signal CLKENIN_CLKINV_2718 : STD_LOGIC; 
  signal INTREG_not0001 : STD_LOGIC; 
  signal Q_10_OBUF_2759 : STD_LOGIC; 
  signal Q_1_OBUF_2750 : STD_LOGIC; 
  signal Q_11_OBUF_2783 : STD_LOGIC; 
  signal Q_2_OBUF_2774 : STD_LOGIC; 
  signal Q_12_OBUF_2807 : STD_LOGIC; 
  signal Q_3_OBUF_2798 : STD_LOGIC; 
  signal cnt_0_DXMUX_2836 : STD_LOGIC; 
  signal cnt_0_DYMUX_2828 : STD_LOGIC; 
  signal Mcount_cnt1 : STD_LOGIC; 
  signal cnt_0_SRINVNOT : STD_LOGIC; 
  signal cnt_0_CLKINV_2817 : STD_LOGIC; 
  signal Q_13_OBUF_2864 : STD_LOGIC; 
  signal Q_4_OBUF_2855 : STD_LOGIC; 
  signal Q_14_OBUF_2888 : STD_LOGIC; 
  signal Q_5_OBUF_2879 : STD_LOGIC; 
  signal Q_15_OBUF_2912 : STD_LOGIC; 
  signal Q_6_OBUF_2903 : STD_LOGIC; 
  signal Q_16_OBUF_2936 : STD_LOGIC; 
  signal Q_7_OBUF_2927 : STD_LOGIC; 
  signal Q_17_OBUF_2960 : STD_LOGIC; 
  signal Q_8_OBUF_2951 : STD_LOGIC; 
  signal Q_20_OBUF_2984 : STD_LOGIC; 
  signal Q_9_OBUF_2975 : STD_LOGIC; 
  signal LED_0_OBUF_2996 : STD_LOGIC; 
  signal CLKEN_DYMUX_3006 : STD_LOGIC; 
  signal CLKEN_CLKINV_3003 : STD_LOGIC; 
  signal Q_23_OBUF_3034 : STD_LOGIC; 
  signal Q_21_OBUF_3025 : STD_LOGIC; 
  signal LED_1_OBUF_3046 : STD_LOGIC; 
  signal CLKENIN_OLD_DYMUX_3054 : STD_LOGIC; 
  signal CLKENIN_OLD_CLKINV_3052 : STD_LOGIC; 
  signal LED_2_OBUF_3067 : STD_LOGIC; 
  signal LED_3_OBUF_3079 : STD_LOGIC; 
  signal CATHODE_7_FFY_SET : STD_LOGIC; 
  signal CLKEN_FFY_RSTAND_3011 : STD_LOGIC; 
  signal CATHODE_0_OUTPUT_OFF_O1INV_1688 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal cnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal INTREG : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal value_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal INTREG_mux0000 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
begin
  counter_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      O => counter_0_LOGIC_ZERO_864
    );
  counter_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_0_XORF_887,
      O => counter_0_DXMUX_889
    );
  counter_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      I0 => counter_0_CYINIT_886,
      I1 => Mcount_counter_lut(0),
      O => counter_0_XORF_887
    );
  counter_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      IA => counter_0_LOGIC_ZERO_864,
      IB => counter_0_CYINIT_886,
      SEL => counter_0_CYSELF_878,
      O => Mcount_counter_cy_0_Q
    );
  counter_0_CYINIT : X_INV
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter(17),
      O => counter_0_CYINIT_886
    );
  counter_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(0),
      O => counter_0_CYSELF_878
    );
  counter_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_0_XORG_867,
      O => counter_0_DYMUX_869
    );
  counter_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      I0 => Mcount_counter_cy_0_Q,
      I1 => Mcount_counter_lut(1),
      O => counter_0_XORG_867
    );
  counter_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_0_CYMUXG_866,
      O => Mcount_counter_cy_1_Q
    );
  counter_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X91Y72"
    )
    port map (
      IA => counter_0_LOGIC_ZERO_864,
      IB => Mcount_counter_cy_0_Q,
      SEL => counter_0_CYSELG_856,
      O => counter_0_CYMUXG_866
    );
  counter_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(1),
      O => counter_0_CYSELG_856
    );
  counter_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_0_SRINVNOT
    );
  counter_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_0_CLKINV_853
    );
  Mcount_counter_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X91Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter(2),
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(2)
    );
  counter_2_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_2_SRINVNOT,
      O => counter_2_FFX_RST
    );
  counter_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y73",
      INIT => '0'
    )
    port map (
      I => counter_2_DXMUX_945,
      CE => VCC,
      CLK => counter_2_CLKINV_906,
      SET => GND,
      RST => counter_2_FFX_RST,
      O => counter(2)
    );
  counter_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      O => counter_2_LOGIC_ZERO_917
    );
  counter_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_2_XORF_943,
      O => counter_2_DXMUX_945
    );
  counter_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      I0 => counter_2_CYINIT_942,
      I1 => Mcount_counter_lut(2),
      O => counter_2_XORF_943
    );
  counter_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_917,
      IB => counter_2_CYINIT_942,
      SEL => counter_2_CYSELF_923,
      O => Mcount_counter_cy_2_Q
    );
  counter_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_917,
      IB => counter_2_LOGIC_ZERO_917,
      SEL => counter_2_CYSELF_923,
      O => counter_2_CYMUXF2_918
    );
  counter_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_1_Q,
      O => counter_2_CYINIT_942
    );
  counter_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(2),
      O => counter_2_CYSELF_923
    );
  counter_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_2_XORG_925,
      O => counter_2_DYMUX_927
    );
  counter_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      I0 => Mcount_counter_cy_2_Q,
      I1 => Mcount_counter_lut(3),
      O => counter_2_XORG_925
    );
  counter_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_2_CYMUXFAST_922,
      O => Mcount_counter_cy_3_Q
    );
  counter_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_1_Q,
      O => counter_2_FASTCARRY_920
    );
  counter_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      I0 => counter_2_CYSELG_909,
      I1 => counter_2_CYSELF_923,
      O => counter_2_CYAND_921
    );
  counter_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      IA => counter_2_CYMUXG2_919,
      IB => counter_2_FASTCARRY_920,
      SEL => counter_2_CYAND_921,
      O => counter_2_CYMUXFAST_922
    );
  counter_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y73"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_917,
      IB => counter_2_CYMUXF2_918,
      SEL => counter_2_CYSELG_909,
      O => counter_2_CYMUXG2_919
    );
  counter_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(3),
      O => counter_2_CYSELG_909
    );
  counter_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_2_SRINVNOT
    );
  counter_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_2_CLKINV_906
    );
  counter_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y73",
      INIT => '0'
    )
    port map (
      I => counter_2_DYMUX_927,
      CE => VCC,
      CLK => counter_2_CLKINV_906,
      SET => GND,
      RST => counter_2_SRINVNOT,
      O => counter(3)
    );
  counter_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      O => counter_4_LOGIC_ZERO_973
    );
  counter_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_4_XORF_999,
      O => counter_4_DXMUX_1001
    );
  counter_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      I0 => counter_4_CYINIT_998,
      I1 => Mcount_counter_lut(4),
      O => counter_4_XORF_999
    );
  counter_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_973,
      IB => counter_4_CYINIT_998,
      SEL => counter_4_CYSELF_979,
      O => Mcount_counter_cy_4_Q
    );
  counter_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_973,
      IB => counter_4_LOGIC_ZERO_973,
      SEL => counter_4_CYSELF_979,
      O => counter_4_CYMUXF2_974
    );
  counter_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_3_Q,
      O => counter_4_CYINIT_998
    );
  counter_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(4),
      O => counter_4_CYSELF_979
    );
  counter_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_4_XORG_981,
      O => counter_4_DYMUX_983
    );
  counter_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      I0 => Mcount_counter_cy_4_Q,
      I1 => Mcount_counter_lut(5),
      O => counter_4_XORG_981
    );
  counter_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_4_CYMUXFAST_978,
      O => Mcount_counter_cy_5_Q
    );
  counter_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_3_Q,
      O => counter_4_FASTCARRY_976
    );
  counter_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      I0 => counter_4_CYSELG_965,
      I1 => counter_4_CYSELF_979,
      O => counter_4_CYAND_977
    );
  counter_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      IA => counter_4_CYMUXG2_975,
      IB => counter_4_FASTCARRY_976,
      SEL => counter_4_CYAND_977,
      O => counter_4_CYMUXFAST_978
    );
  counter_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y74"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_973,
      IB => counter_4_CYMUXF2_974,
      SEL => counter_4_CYSELG_965,
      O => counter_4_CYMUXG2_975
    );
  counter_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(5),
      O => counter_4_CYSELG_965
    );
  counter_4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_4_SRINVNOT
    );
  counter_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y74",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_4_CLKINV_962
    );
  counter_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      O => counter_6_LOGIC_ZERO_1029
    );
  counter_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_6_XORF_1055,
      O => counter_6_DXMUX_1057
    );
  counter_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      I0 => counter_6_CYINIT_1054,
      I1 => Mcount_counter_lut(6),
      O => counter_6_XORF_1055
    );
  counter_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      IA => counter_6_LOGIC_ZERO_1029,
      IB => counter_6_CYINIT_1054,
      SEL => counter_6_CYSELF_1035,
      O => Mcount_counter_cy_6_Q
    );
  counter_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      IA => counter_6_LOGIC_ZERO_1029,
      IB => counter_6_LOGIC_ZERO_1029,
      SEL => counter_6_CYSELF_1035,
      O => counter_6_CYMUXF2_1030
    );
  counter_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_5_Q,
      O => counter_6_CYINIT_1054
    );
  counter_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(6),
      O => counter_6_CYSELF_1035
    );
  counter_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_6_XORG_1037,
      O => counter_6_DYMUX_1039
    );
  counter_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      I0 => Mcount_counter_cy_6_Q,
      I1 => Mcount_counter_lut(7),
      O => counter_6_XORG_1037
    );
  counter_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_6_CYMUXFAST_1034,
      O => Mcount_counter_cy_7_Q
    );
  counter_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_5_Q,
      O => counter_6_FASTCARRY_1032
    );
  counter_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      I0 => counter_6_CYSELG_1021,
      I1 => counter_6_CYSELF_1035,
      O => counter_6_CYAND_1033
    );
  counter_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      IA => counter_6_CYMUXG2_1031,
      IB => counter_6_FASTCARRY_1032,
      SEL => counter_6_CYAND_1033,
      O => counter_6_CYMUXFAST_1034
    );
  counter_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y75"
    )
    port map (
      IA => counter_6_LOGIC_ZERO_1029,
      IB => counter_6_CYMUXF2_1030,
      SEL => counter_6_CYSELG_1021,
      O => counter_6_CYMUXG2_1031
    );
  counter_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(7),
      O => counter_6_CYSELG_1021
    );
  counter_6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_6_SRINVNOT
    );
  counter_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y75",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_6_CLKINV_1018
    );
  counter_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      O => counter_8_LOGIC_ZERO_1085
    );
  counter_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_8_XORF_1111,
      O => counter_8_DXMUX_1113
    );
  counter_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      I0 => counter_8_CYINIT_1110,
      I1 => Mcount_counter_lut(8),
      O => counter_8_XORF_1111
    );
  counter_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      IA => counter_8_LOGIC_ZERO_1085,
      IB => counter_8_CYINIT_1110,
      SEL => counter_8_CYSELF_1091,
      O => Mcount_counter_cy_8_Q
    );
  counter_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      IA => counter_8_LOGIC_ZERO_1085,
      IB => counter_8_LOGIC_ZERO_1085,
      SEL => counter_8_CYSELF_1091,
      O => counter_8_CYMUXF2_1086
    );
  counter_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_7_Q,
      O => counter_8_CYINIT_1110
    );
  counter_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(8),
      O => counter_8_CYSELF_1091
    );
  counter_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_8_XORG_1093,
      O => counter_8_DYMUX_1095
    );
  counter_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      I0 => Mcount_counter_cy_8_Q,
      I1 => Mcount_counter_lut(9),
      O => counter_8_XORG_1093
    );
  counter_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_8_CYMUXFAST_1090,
      O => Mcount_counter_cy_9_Q
    );
  counter_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_7_Q,
      O => counter_8_FASTCARRY_1088
    );
  counter_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      I0 => counter_8_CYSELG_1077,
      I1 => counter_8_CYSELF_1091,
      O => counter_8_CYAND_1089
    );
  counter_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      IA => counter_8_CYMUXG2_1087,
      IB => counter_8_FASTCARRY_1088,
      SEL => counter_8_CYAND_1089,
      O => counter_8_CYMUXFAST_1090
    );
  counter_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y76"
    )
    port map (
      IA => counter_8_LOGIC_ZERO_1085,
      IB => counter_8_CYMUXF2_1086,
      SEL => counter_8_CYSELG_1077,
      O => counter_8_CYMUXG2_1087
    );
  counter_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(9),
      O => counter_8_CYSELG_1077
    );
  counter_8_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_8_SRINVNOT
    );
  counter_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y76",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_8_CLKINV_1074
    );
  counter_8 : X_FF
    generic map(
      LOC => "SLICE_X91Y76",
      INIT => '0'
    )
    port map (
      I => counter_8_DXMUX_1113,
      CE => VCC,
      CLK => counter_8_CLKINV_1074,
      SET => GND,
      RST => counter_8_SRINVNOT,
      O => counter(8)
    );
  Mcount_counter_lut_8_Q : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X91Y76"
    )
    port map (
      ADR0 => counter(17),
      ADR1 => VCC,
      ADR2 => counter(8),
      ADR3 => VCC,
      O => Mcount_counter_lut(8)
    );
  counter_10_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_10_SRINVNOT,
      O => counter_10_FFY_RST
    );
  counter_11 : X_FF
    generic map(
      LOC => "SLICE_X91Y77",
      INIT => '0'
    )
    port map (
      I => counter_10_DYMUX_1151,
      CE => VCC,
      CLK => counter_10_CLKINV_1130,
      SET => GND,
      RST => counter_10_FFY_RST,
      O => counter(11)
    );
  Mcount_counter_lut_10_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X91Y77"
    )
    port map (
      ADR0 => counter(10),
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(10)
    );
  counter_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      O => counter_10_LOGIC_ZERO_1141
    );
  counter_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_10_XORF_1167,
      O => counter_10_DXMUX_1169
    );
  counter_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      I0 => counter_10_CYINIT_1166,
      I1 => Mcount_counter_lut(10),
      O => counter_10_XORF_1167
    );
  counter_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      IA => counter_10_LOGIC_ZERO_1141,
      IB => counter_10_CYINIT_1166,
      SEL => counter_10_CYSELF_1147,
      O => Mcount_counter_cy_10_Q
    );
  counter_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      IA => counter_10_LOGIC_ZERO_1141,
      IB => counter_10_LOGIC_ZERO_1141,
      SEL => counter_10_CYSELF_1147,
      O => counter_10_CYMUXF2_1142
    );
  counter_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_9_Q,
      O => counter_10_CYINIT_1166
    );
  counter_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(10),
      O => counter_10_CYSELF_1147
    );
  counter_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_10_XORG_1149,
      O => counter_10_DYMUX_1151
    );
  counter_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      I0 => Mcount_counter_cy_10_Q,
      I1 => Mcount_counter_lut(11),
      O => counter_10_XORG_1149
    );
  counter_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_10_CYMUXFAST_1146,
      O => Mcount_counter_cy_11_Q
    );
  counter_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_9_Q,
      O => counter_10_FASTCARRY_1144
    );
  counter_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      I0 => counter_10_CYSELG_1133,
      I1 => counter_10_CYSELF_1147,
      O => counter_10_CYAND_1145
    );
  counter_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      IA => counter_10_CYMUXG2_1143,
      IB => counter_10_FASTCARRY_1144,
      SEL => counter_10_CYAND_1145,
      O => counter_10_CYMUXFAST_1146
    );
  counter_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y77"
    )
    port map (
      IA => counter_10_LOGIC_ZERO_1141,
      IB => counter_10_CYMUXF2_1142,
      SEL => counter_10_CYSELG_1133,
      O => counter_10_CYMUXG2_1143
    );
  counter_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(11),
      O => counter_10_CYSELG_1133
    );
  counter_10_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_10_SRINVNOT
    );
  counter_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y77",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_10_CLKINV_1130
    );
  Mcount_counter_lut_11_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X91Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => counter(11),
      O => Mcount_counter_lut(11)
    );
  counter_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      O => counter_12_LOGIC_ZERO_1197
    );
  counter_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_12_XORF_1223,
      O => counter_12_DXMUX_1225
    );
  counter_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      I0 => counter_12_CYINIT_1222,
      I1 => Mcount_counter_lut(12),
      O => counter_12_XORF_1223
    );
  counter_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      IA => counter_12_LOGIC_ZERO_1197,
      IB => counter_12_CYINIT_1222,
      SEL => counter_12_CYSELF_1203,
      O => Mcount_counter_cy_12_Q
    );
  counter_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      IA => counter_12_LOGIC_ZERO_1197,
      IB => counter_12_LOGIC_ZERO_1197,
      SEL => counter_12_CYSELF_1203,
      O => counter_12_CYMUXF2_1198
    );
  counter_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_11_Q,
      O => counter_12_CYINIT_1222
    );
  counter_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(12),
      O => counter_12_CYSELF_1203
    );
  counter_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_12_XORG_1205,
      O => counter_12_DYMUX_1207
    );
  counter_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      I0 => Mcount_counter_cy_12_Q,
      I1 => Mcount_counter_lut(13),
      O => counter_12_XORG_1205
    );
  counter_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_12_CYMUXFAST_1202,
      O => Mcount_counter_cy_13_Q
    );
  counter_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_11_Q,
      O => counter_12_FASTCARRY_1200
    );
  counter_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      I0 => counter_12_CYSELG_1189,
      I1 => counter_12_CYSELF_1203,
      O => counter_12_CYAND_1201
    );
  counter_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      IA => counter_12_CYMUXG2_1199,
      IB => counter_12_FASTCARRY_1200,
      SEL => counter_12_CYAND_1201,
      O => counter_12_CYMUXFAST_1202
    );
  counter_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y78"
    )
    port map (
      IA => counter_12_LOGIC_ZERO_1197,
      IB => counter_12_CYMUXF2_1198,
      SEL => counter_12_CYSELG_1189,
      O => counter_12_CYMUXG2_1199
    );
  counter_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(13),
      O => counter_12_CYSELG_1189
    );
  counter_12_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_12_SRINVNOT
    );
  counter_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y78",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_12_CLKINV_1186
    );
  counter_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      O => counter_14_LOGIC_ZERO_1253
    );
  counter_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_14_XORF_1279,
      O => counter_14_DXMUX_1281
    );
  counter_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      I0 => counter_14_CYINIT_1278,
      I1 => Mcount_counter_lut(14),
      O => counter_14_XORF_1279
    );
  counter_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      IA => counter_14_LOGIC_ZERO_1253,
      IB => counter_14_CYINIT_1278,
      SEL => counter_14_CYSELF_1259,
      O => Mcount_counter_cy_14_Q
    );
  counter_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      IA => counter_14_LOGIC_ZERO_1253,
      IB => counter_14_LOGIC_ZERO_1253,
      SEL => counter_14_CYSELF_1259,
      O => counter_14_CYMUXF2_1254
    );
  counter_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_13_Q,
      O => counter_14_CYINIT_1278
    );
  counter_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(14),
      O => counter_14_CYSELF_1259
    );
  counter_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_14_XORG_1261,
      O => counter_14_DYMUX_1263
    );
  counter_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      I0 => Mcount_counter_cy_14_Q,
      I1 => Mcount_counter_lut(15),
      O => counter_14_XORG_1261
    );
  counter_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_cy_13_Q,
      O => counter_14_FASTCARRY_1256
    );
  counter_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      I0 => counter_14_CYSELG_1245,
      I1 => counter_14_CYSELF_1259,
      O => counter_14_CYAND_1257
    );
  counter_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      IA => counter_14_CYMUXG2_1255,
      IB => counter_14_FASTCARRY_1256,
      SEL => counter_14_CYAND_1257,
      O => counter_14_CYMUXFAST_1258
    );
  counter_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X91Y79"
    )
    port map (
      IA => counter_14_LOGIC_ZERO_1253,
      IB => counter_14_CYMUXF2_1254,
      SEL => counter_14_CYSELG_1245,
      O => counter_14_CYMUXG2_1255
    );
  counter_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(15),
      O => counter_14_CYSELG_1245
    );
  counter_14_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_14_SRINVNOT
    );
  counter_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y79",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_14_CLKINV_1242
    );
  counter_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X91Y80"
    )
    port map (
      O => counter_16_LOGIC_ZERO_1327
    );
  counter_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_16_XORF_1328,
      O => counter_16_DXMUX_1330
    );
  counter_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X91Y80"
    )
    port map (
      I0 => counter_16_CYINIT_1326,
      I1 => Mcount_counter_lut(16),
      O => counter_16_XORF_1328
    );
  counter_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X91Y80"
    )
    port map (
      IA => counter_16_LOGIC_ZERO_1327,
      IB => counter_16_CYINIT_1326,
      SEL => counter_16_CYSELF_1318,
      O => Mcount_counter_cy_16_Q
    );
  counter_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_14_CYMUXFAST_1258,
      O => counter_16_CYINIT_1326
    );
  counter_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_counter_lut(16),
      O => counter_16_CYSELF_1318
    );
  counter_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter_16_XORG_1308,
      O => counter_16_DYMUX_1310
    );
  counter_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X91Y80"
    )
    port map (
      I0 => Mcount_counter_cy_16_Q,
      I1 => counter_16_G,
      O => counter_16_XORG_1308
    );
  counter_16_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => counter_16_SRINVNOT
    );
  counter_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => counter_16_CLKINV_1295
    );
  ANODE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => ANODE_0_O,
      O => ANODE(0)
    );
  ANODE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => ANODE_1_O,
      O => ANODE(1)
    );
  ANODE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => ANODE_2_O,
      O => ANODE(2)
    );
  S0_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => S0_OUT_O,
      O => S0_OUT
    );
  ANODE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => ANODE_3_O,
      O => ANODE(3)
    );
  Q_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD149"
    )
    port map (
      I => Q_10_O,
      O => Q(10)
    );
  Q_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => Q_11_O,
      O => Q(11)
    );
  S0_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => S0,
      O => S0_INBUF
    );
  S1_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => S1,
      O => S1_INBUF
    );
  Q_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => Q_20_O,
      O => Q(20)
    );
  Q_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => Q_12_O,
      O => Q(12)
    );
  Q_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => Q_21_O,
      O => Q(21)
    );
  Q_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => Q_13_O,
      O => Q(13)
    );
  Q_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => Q_22_O,
      O => Q(22)
    );
  Q_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => Q_14_O,
      O => Q(14)
    );
  D23_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => D23_OUT_O,
      O => D23_OUT
    );
  CLKENIN_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => CLKENIN_OUT_O,
      O => CLKENIN_OUT
    );
  Q_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => Q_23_O,
      O => Q(23)
    );
  Q_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => Q_15_O,
      O => Q(15)
    );
  D23_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => D23,
      O => D23_INBUF
    );
  Q_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => Q_16_O,
      O => Q(16)
    );
  S1_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => S1_OUT_O,
      O => S1_OUT
    );
  Q_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => Q_17_O,
      O => Q(17)
    );
  Q_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => Q_18_O,
      O => Q(18)
    );
  Q_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => Q_19_O,
      O => Q(19)
    );
  D0_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => D0_OUT_O,
      O => D0_OUT
    );
  MR_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR,
      O => MR_INBUF
    );
  LED_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => LED_0_O,
      O => LED(0)
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  LED_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => LED_1_O,
      O => LED(1)
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  LED_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => LED_2_O,
      O => LED(2)
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD150"
    )
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  LED_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => LED_3_O,
      O => LED(3)
    );
  Q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => Q_3_O,
      O => Q(3)
    );
  LED_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => LED_4_O,
      O => LED(4)
    );
  Q_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => Q_4_O,
      O => Q(4)
    );
  LED_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => LED_5_O,
      O => LED(5)
    );
  Q_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => Q_5_O,
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => Q_6_O,
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => Q_7_O,
      O => Q(7)
    );
  Q_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => Q_8_O,
      O => Q(8)
    );
  Q_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => Q_9_O,
      O => Q(9)
    );
  MR_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => MR_OUT_O,
      O => MR_OUT
    );
  CATHODE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => CATHODE_0_O,
      O => CATHODE(0)
    );
  CATHODE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => CATHODE_1_O,
      O => CATHODE(1)
    );
  CATHODE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => CATHODE_2_O,
      O => CATHODE(2)
    );
  CATHODE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => CATHODE_3_O,
      O => CATHODE(3)
    );
  CATHODE_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => CATHODE_4_O,
      O => CATHODE(4)
    );
  CATHODE_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => CATHODE_5_O,
      O => CATHODE(5)
    );
  CATHODE_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => CATHODE_6_O,
      O => CATHODE(6)
    );
  D0_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => D0,
      O => D0_INBUF
    );
  CLKIN_IBUF : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKIN,
      O => CLKIN_INBUF
    );
  CATHODE_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => CATHODE_7_O,
      O => CATHODE(7)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD39",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 798 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  value_mux0000_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => value_mux0000_1_F5MUX_1791,
      O => value_mux0000(1)
    );
  value_mux0000_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y60"
    )
    port map (
      IA => Mmux_value_mux0000_41_1781,
      IB => Mmux_value_mux0000_31_1789,
      SEL => value_mux0000_1_BXINV_1783,
      O => value_mux0000_1_F5MUX_1791
    );
  value_mux0000_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => cnt(1),
      O => value_mux0000_1_BXINV_1783
    );
  value_mux0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y63",
      PATHPULSE => 798 ps
    )
    port map (
      I => value_mux0000_2_F5MUX_1816,
      O => value_mux0000(2)
    );
  value_mux0000_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y63"
    )
    port map (
      IA => Mmux_value_mux0000_42_1806,
      IB => Mmux_value_mux0000_32_1814,
      SEL => value_mux0000_2_BXINV_1808,
      O => value_mux0000_2_F5MUX_1816
    );
  value_mux0000_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y63",
      PATHPULSE => 798 ps
    )
    port map (
      I => cnt(1),
      O => value_mux0000_2_BXINV_1808
    );
  value_mux0000_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => value_mux0000_3_F5MUX_1841,
      O => value_mux0000(3)
    );
  value_mux0000_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X90Y60"
    )
    port map (
      IA => Mmux_value_mux0000_43_1831,
      IB => Mmux_value_mux0000_33_1839,
      SEL => value_mux0000_3_BXINV_1833,
      O => value_mux0000_3_F5MUX_1841
    );
  value_mux0000_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y60",
      PATHPULSE => 798 ps
    )
    port map (
      I => cnt(1),
      O => value_mux0000_3_BXINV_1833
    );
  value_mux0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X91Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => value_mux0000_0_F5MUX_1866,
      O => value_mux0000(0)
    );
  value_mux0000_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X91Y59"
    )
    port map (
      IA => Mmux_value_mux0000_4_1856,
      IB => Mmux_value_mux0000_3_1864,
      SEL => value_mux0000_0_BXINV_1858,
      O => value_mux0000_0_F5MUX_1866
    );
  value_mux0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => cnt(1),
      O => value_mux0000_0_BXINV_1858
    );
  INTREG_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(22),
      O => INTREG_1_DXMUX_1906
    );
  INTREG_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(23),
      O => INTREG_1_DYMUX_1891
    );
  INTREG_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_1_SRINVNOT
    );
  INTREG_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_1_CLKINV_1882
    );
  INTREG_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_1_CEINV_1881
    );
  counter_10 : X_FF
    generic map(
      LOC => "SLICE_X91Y77",
      INIT => '0'
    )
    port map (
      I => counter_10_DXMUX_1169,
      CE => VCC,
      CLK => counter_10_CLKINV_1130,
      SET => GND,
      RST => counter_10_SRINVNOT,
      O => counter(10)
    );
  INTREG_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(20),
      O => INTREG_3_DXMUX_1952
    );
  INTREG_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(21),
      O => INTREG_3_DYMUX_1937
    );
  INTREG_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_3_SRINVNOT
    );
  INTREG_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_3_CLKINV_1928
    );
  INTREG_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y50",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_3_CEINV_1927
    );
  INTREG_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(18),
      O => INTREG_5_DXMUX_1998
    );
  INTREG_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(19),
      O => INTREG_5_DYMUX_1983
    );
  INTREG_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_5_SRINVNOT
    );
  INTREG_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_5_CLKINV_1974
    );
  INTREG_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_5_CEINV_1973
    );
  CATHODE_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00012,
      O => CATHODE_2_DXMUX_2040
    );
  CATHODE_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00011,
      O => CATHODE_2_DYMUX_2027
    );
  CATHODE_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => CATHODE_2_SRINVNOT
    );
  CATHODE_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => CATHODE_2_CLKINV_2018
    );
  INTREG_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(16),
      O => INTREG_7_DXMUX_2084
    );
  INTREG_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(17),
      O => INTREG_7_DYMUX_2069
    );
  INTREG_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_7_SRINVNOT
    );
  INTREG_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_7_CLKINV_2060
    );
  INTREG_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y59",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_7_CEINV_2059
    );
  CATHODE_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00014,
      O => CATHODE_4_DXMUX_2126
    );
  CATHODE_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00013,
      O => CATHODE_4_DYMUX_2113
    );
  CATHODE_4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => CATHODE_4_SRINVNOT
    );
  CATHODE_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y62",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => CATHODE_4_CLKINV_2104
    );
  INTREG_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(14),
      O => INTREG_9_DXMUX_2170
    );
  INTREG_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(15),
      O => INTREG_9_DYMUX_2155
    );
  INTREG_9_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_9_SRINVNOT
    );
  INTREG_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_9_CLKINV_2146
    );
  INTREG_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y58",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_9_CEINV_2145
    );
  CATHODE_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00016,
      O => CATHODE_6_DXMUX_2212
    );
  CATHODE_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00015,
      O => CATHODE_6_DYMUX_2199
    );
  CATHODE_6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => CATHODE_6_SRINVNOT
    );
  CATHODE_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y65",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => CATHODE_6_CLKINV_2190
    );
  CATHODE_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_CATHODE_mux00017,
      O => CATHODE_7_DYMUX_2234
    );
  CATHODE_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => CATHODE_7_CLKINV_2225
    );
  INTREG_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(12),
      O => INTREG_11_DXMUX_2278
    );
  INTREG_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(13),
      O => INTREG_11_DYMUX_2263
    );
  INTREG_11_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_11_SRINVNOT
    );
  INTREG_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_11_CLKINV_2254
    );
  INTREG_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_11_CEINV_2253
    );
  INTREG_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(2),
      O => INTREG_21_DXMUX_2324
    );
  INTREG_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(3),
      O => INTREG_21_DYMUX_2309
    );
  INTREG_21_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_21_SRINVNOT
    );
  INTREG_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_21_CLKINV_2300
    );
  INTREG_21_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y48",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_21_CEINV_2299
    );
  INTREG_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(10),
      O => INTREG_13_DXMUX_2370
    );
  INTREG_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(11),
      O => INTREG_13_DYMUX_2355
    );
  INTREG_13_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_13_SRINVNOT
    );
  INTREG_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_13_CLKINV_2346
    );
  INTREG_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y53",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_13_CEINV_2345
    );
  ANODE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y81",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_cnt_rom00002,
      O => ANODE_1_DXMUX_2412
    );
  ANODE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y81",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_cnt_rom00003,
      O => ANODE_1_DYMUX_2397
    );
  ANODE_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y81",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => ANODE_1_SRINVNOT
    );
  ANODE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y81",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => ANODE_1_CLKINV_2386
    );
  INTREG_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(0),
      O => INTREG_23_DXMUX_2456
    );
  INTREG_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(1),
      O => INTREG_23_DYMUX_2441
    );
  INTREG_23_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_23_SRINVNOT
    );
  INTREG_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_23_CLKINV_2432
    );
  INTREG_23_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y49",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_23_CEINV_2431
    );
  INTREG_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(8),
      O => INTREG_15_DXMUX_2502
    );
  INTREG_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(9),
      O => INTREG_15_DYMUX_2487
    );
  INTREG_15_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_15_SRINVNOT
    );
  INTREG_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_15_CLKINV_2478
    );
  INTREG_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y52",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_15_CEINV_2477
    );
  ANODE_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_cnt_rom0000,
      O => ANODE_3_DXMUX_2544
    );
  ANODE_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mrom_cnt_rom00001,
      O => ANODE_3_DYMUX_2529
    );
  ANODE_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => ANODE_3_SRINVNOT
    );
  ANODE_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y88",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => ANODE_3_CLKINV_2518
    );
  INTREG_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(6),
      O => INTREG_17_DXMUX_2588
    );
  INTREG_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(7),
      O => INTREG_17_DYMUX_2573
    );
  INTREG_17_SRINV : X_INV
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_17_SRINVNOT
    );
  INTREG_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_17_CLKINV_2564
    );
  INTREG_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y54",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_17_CEINV_2563
    );
  INTREG_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(4),
      O => INTREG_19_DXMUX_2634
    );
  INTREG_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_mux0000(5),
      O => INTREG_19_DYMUX_2619
    );
  INTREG_19_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => INTREG_19_SRINVNOT
    );
  INTREG_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => INTREG_19_CLKINV_2610
    );
  INTREG_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y55",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001_0,
      O => INTREG_19_CEINV_2609
    );
  CLKENIN_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKENIN_and0000_norst,
      O => CLKENIN_DYMUX_2721
    );
  CLKENIN_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKENIN_OLD_842,
      O => CLKENIN_SRINV_2719
    );
  CLKENIN_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y73",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => CLKENIN_CLKINV_2718
    );
  INTREG_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X90Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => INTREG_not0001,
      O => INTREG_not0001_0
    );
  cnt_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => cnt(0),
      O => cnt_0_DXMUX_2836
    );
  cnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => Mcount_cnt1,
      O => cnt_0_DYMUX_2828
    );
  cnt_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => cnt_0_SRINVNOT
    );
  cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y61",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKEN_833,
      O => cnt_0_CLKINV_2817
    );
  CLKEN_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => counter(17),
      O => CLKEN_DYMUX_3006
    );
  CLKEN_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => CLKEN_CLKINV_3003
    );
  CLKENIN_OLD_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X88Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKENIN_and0000_norst,
      O => CLKENIN_OLD_DYMUX_3054
    );
  CLKENIN_OLD_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X88Y72",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLK_BUFGP,
      O => CLKENIN_OLD_CLKINV_3052
    );
  Mcount_counter_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X91Y72"
    )
    port map (
      ADR0 => counter(1),
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(1)
    );
  counter_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y72",
      INIT => '0'
    )
    port map (
      I => counter_0_DYMUX_869,
      CE => VCC,
      CLK => counter_0_CLKINV_853,
      SET => GND,
      RST => counter_0_SRINVNOT,
      O => counter(1)
    );
  Mcount_counter_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X91Y72"
    )
    port map (
      ADR0 => counter(0),
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(0)
    );
  counter_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y72",
      INIT => '0'
    )
    port map (
      I => counter_0_DXMUX_889,
      CE => VCC,
      CLK => counter_0_CLKINV_853,
      SET => GND,
      RST => counter_0_SRINVNOT,
      O => counter(0)
    );
  Mcount_counter_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X91Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => counter(3),
      O => Mcount_counter_lut(3)
    );
  Mcount_counter_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X91Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter(5),
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(5)
    );
  counter_5 : X_FF
    generic map(
      LOC => "SLICE_X91Y74",
      INIT => '0'
    )
    port map (
      I => counter_4_DYMUX_983,
      CE => VCC,
      CLK => counter_4_CLKINV_962,
      SET => GND,
      RST => counter_4_SRINVNOT,
      O => counter(5)
    );
  Mcount_counter_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X91Y74"
    )
    port map (
      ADR0 => counter(4),
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(4)
    );
  counter_4 : X_FF
    generic map(
      LOC => "SLICE_X91Y74",
      INIT => '0'
    )
    port map (
      I => counter_4_DXMUX_1001,
      CE => VCC,
      CLK => counter_4_CLKINV_962,
      SET => GND,
      RST => counter_4_SRINVNOT,
      O => counter(4)
    );
  Mcount_counter_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => counter(7),
      O => Mcount_counter_lut(7)
    );
  counter_7 : X_FF
    generic map(
      LOC => "SLICE_X91Y75",
      INIT => '0'
    )
    port map (
      I => counter_6_DYMUX_1039,
      CE => VCC,
      CLK => counter_6_CLKINV_1018,
      SET => GND,
      RST => counter_6_SRINVNOT,
      O => counter(7)
    );
  Mcount_counter_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X91Y75"
    )
    port map (
      ADR0 => counter(6),
      ADR1 => VCC,
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(6)
    );
  counter_6 : X_FF
    generic map(
      LOC => "SLICE_X91Y75",
      INIT => '0'
    )
    port map (
      I => counter_6_DXMUX_1057,
      CE => VCC,
      CLK => counter_6_CLKINV_1018,
      SET => GND,
      RST => counter_6_SRINVNOT,
      O => counter(6)
    );
  Mcount_counter_lut_9_Q : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X91Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter(9),
      ADR2 => counter(17),
      ADR3 => VCC,
      O => Mcount_counter_lut(9)
    );
  counter_9 : X_FF
    generic map(
      LOC => "SLICE_X91Y76",
      INIT => '0'
    )
    port map (
      I => counter_8_DYMUX_1095,
      CE => VCC,
      CLK => counter_8_CLKINV_1074,
      SET => GND,
      RST => counter_8_SRINVNOT,
      O => counter(9)
    );
  Mcount_counter_lut_13_Q : X_LUT4
    generic map(
      INIT => X"4444",
      LOC => "SLICE_X91Y78"
    )
    port map (
      ADR0 => counter(17),
      ADR1 => counter(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_counter_lut(13)
    );
  counter_13 : X_FF
    generic map(
      LOC => "SLICE_X91Y78",
      INIT => '0'
    )
    port map (
      I => counter_12_DYMUX_1207,
      CE => VCC,
      CLK => counter_12_CLKINV_1186,
      SET => GND,
      RST => counter_12_SRINVNOT,
      O => counter(13)
    );
  Mcount_counter_lut_12_Q : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X91Y78"
    )
    port map (
      ADR0 => counter(12),
      ADR1 => counter(17),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_counter_lut(12)
    );
  counter_12 : X_FF
    generic map(
      LOC => "SLICE_X91Y78",
      INIT => '0'
    )
    port map (
      I => counter_12_DXMUX_1225,
      CE => VCC,
      CLK => counter_12_CLKINV_1186,
      SET => GND,
      RST => counter_12_SRINVNOT,
      O => counter(12)
    );
  Mcount_counter_lut_15_Q : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X91Y79"
    )
    port map (
      ADR0 => counter(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => counter(15),
      O => Mcount_counter_lut(15)
    );
  counter_15 : X_FF
    generic map(
      LOC => "SLICE_X91Y79",
      INIT => '0'
    )
    port map (
      I => counter_14_DYMUX_1263,
      CE => VCC,
      CLK => counter_14_CLKINV_1242,
      SET => GND,
      RST => counter_14_SRINVNOT,
      O => counter(15)
    );
  Mcount_counter_lut_14_Q : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X91Y79"
    )
    port map (
      ADR0 => counter(17),
      ADR1 => VCC,
      ADR2 => counter(14),
      ADR3 => VCC,
      O => Mcount_counter_lut(14)
    );
  counter_14 : X_FF
    generic map(
      LOC => "SLICE_X91Y79",
      INIT => '0'
    )
    port map (
      I => counter_14_DXMUX_1281,
      CE => VCC,
      CLK => counter_14_CLKINV_1242,
      SET => GND,
      RST => counter_14_SRINVNOT,
      O => counter(14)
    );
  counter_17 : X_FF
    generic map(
      LOC => "SLICE_X91Y80",
      INIT => '0'
    )
    port map (
      I => counter_16_DYMUX_1310,
      CE => VCC,
      CLK => counter_16_CLKINV_1295,
      SET => GND,
      RST => counter_16_SRINVNOT,
      O => counter(17)
    );
  Mcount_counter_lut_16_Q : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X91Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter(16),
      ADR2 => VCC,
      ADR3 => counter(17),
      O => Mcount_counter_lut(16)
    );
  counter_16 : X_FF
    generic map(
      LOC => "SLICE_X91Y80",
      INIT => '0'
    )
    port map (
      I => counter_16_DXMUX_1330,
      CE => VCC,
      CLK => counter_16_CLKINV_1295,
      SET => GND,
      RST => counter_16_SRINVNOT,
      O => counter(16)
    );
  S0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 798 ps
    )
    port map (
      I => S0_INBUF,
      O => S0_OUT_OBUF_764
    );
  S1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 798 ps
    )
    port map (
      I => S1_INBUF,
      O => S1_OUT_OBUF_768
    );
  D23_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 798 ps
    )
    port map (
      I => D23_INBUF,
      O => D23_OUT_OBUF_775
    );
  MR_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_INBUF,
      O => MR_OUT_OBUF_735
    );
  D0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 798 ps
    )
    port map (
      I => D0_INBUF,
      O => D0_OUT_OBUF_783
    );
  CLKIN_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKIN_INBUF,
      O => CLKENIN_and0000_norst
    );
  Mmux_value_mux0000_41 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X91Y60"
    )
    port map (
      ADR0 => cnt(0),
      ADR1 => VCC,
      ADR2 => INTREG(5),
      ADR3 => INTREG(1),
      O => Mmux_value_mux0000_41_1781
    );
  Mmux_value_mux0000_31 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X91Y60"
    )
    port map (
      ADR0 => INTREG(13),
      ADR1 => INTREG(9),
      ADR2 => cnt(0),
      ADR3 => VCC,
      O => Mmux_value_mux0000_31_1789
    );
  Mmux_value_mux0000_42 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X91Y63"
    )
    port map (
      ADR0 => INTREG(6),
      ADR1 => VCC,
      ADR2 => cnt(0),
      ADR3 => INTREG(2),
      O => Mmux_value_mux0000_42_1806
    );
  Mmux_value_mux0000_32 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X91Y63"
    )
    port map (
      ADR0 => cnt(0),
      ADR1 => VCC,
      ADR2 => INTREG(10),
      ADR3 => INTREG(14),
      O => Mmux_value_mux0000_32_1814
    );
  Mmux_value_mux0000_43 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => INTREG(7),
      ADR1 => cnt(0),
      ADR2 => VCC,
      ADR3 => INTREG(3),
      O => Mmux_value_mux0000_43_1831
    );
  Mmux_value_mux0000_33 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X90Y60"
    )
    port map (
      ADR0 => cnt(0),
      ADR1 => VCC,
      ADR2 => INTREG(15),
      ADR3 => INTREG(11),
      O => Mmux_value_mux0000_33_1839
    );
  Mmux_value_mux0000_4 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X91Y59"
    )
    port map (
      ADR0 => INTREG(4),
      ADR1 => VCC,
      ADR2 => cnt(0),
      ADR3 => INTREG(0),
      O => Mmux_value_mux0000_4_1856
    );
  Mmux_value_mux0000_3 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X91Y59"
    )
    port map (
      ADR0 => INTREG(8),
      ADR1 => VCC,
      ADR2 => cnt(0),
      ADR3 => INTREG(12),
      O => Mmux_value_mux0000_3_1864
    );
  INTREG_mux0000_23_1 : X_LUT4
    generic map(
      INIT => X"FCAC",
      LOC => "SLICE_X90Y48"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(1),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => D0_OUT_OBUF_783,
      O => INTREG_mux0000(23)
    );
  INTREG_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y48",
      INIT => '0'
    )
    port map (
      I => INTREG_1_DYMUX_1891,
      CE => INTREG_1_CEINV_1881,
      CLK => INTREG_1_CLKINV_1882,
      SET => GND,
      RST => INTREG_1_SRINVNOT,
      O => INTREG(0)
    );
  INTREG_mux0000_22_1 : X_LUT4
    generic map(
      INIT => X"FCAC",
      LOC => "SLICE_X90Y48"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(2),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => INTREG(0),
      O => INTREG_mux0000(22)
    );
  INTREG_1 : X_FF
    generic map(
      LOC => "SLICE_X90Y48",
      INIT => '0'
    )
    port map (
      I => INTREG_1_DXMUX_1906,
      CE => INTREG_1_CEINV_1881,
      CLK => INTREG_1_CLKINV_1882,
      SET => GND,
      RST => INTREG_1_SRINVNOT,
      O => INTREG(1)
    );
  INTREG_mux0000_21_1 : X_LUT4
    generic map(
      INIT => X"FACC",
      LOC => "SLICE_X90Y50"
    )
    port map (
      ADR0 => INTREG(1),
      ADR1 => INTREG(3),
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(21)
    );
  INTREG_2 : X_FF
    generic map(
      LOC => "SLICE_X90Y50",
      INIT => '0'
    )
    port map (
      I => INTREG_3_DYMUX_1937,
      CE => INTREG_3_CEINV_1927,
      CLK => INTREG_3_CLKINV_1928,
      SET => GND,
      RST => INTREG_3_SRINVNOT,
      O => INTREG(2)
    );
  INTREG_mux0000_20_1 : X_LUT4
    generic map(
      INIT => X"EEF0",
      LOC => "SLICE_X90Y50"
    )
    port map (
      ADR0 => INTREG(2),
      ADR1 => S1_OUT_OBUF_768,
      ADR2 => INTREG(4),
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(20)
    );
  INTREG_3 : X_FF
    generic map(
      LOC => "SLICE_X90Y50",
      INIT => '0'
    )
    port map (
      I => INTREG_3_DXMUX_1952,
      CE => INTREG_3_CEINV_1927,
      CLK => INTREG_3_CLKINV_1928,
      SET => GND,
      RST => INTREG_3_SRINVNOT,
      O => INTREG(3)
    );
  INTREG_mux0000_19_1 : X_LUT4
    generic map(
      INIT => X"FACA",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => INTREG(5),
      ADR1 => INTREG(3),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_mux0000(19)
    );
  INTREG_4 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => INTREG_5_DYMUX_1983,
      CE => INTREG_5_CEINV_1973,
      CLK => INTREG_5_CLKINV_1974,
      SET => GND,
      RST => INTREG_5_SRINVNOT,
      O => INTREG(4)
    );
  INTREG_mux0000_18_1 : X_LUT4
    generic map(
      INIT => X"EEE4",
      LOC => "SLICE_X90Y65"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => INTREG(6),
      ADR2 => INTREG(4),
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_mux0000(18)
    );
  INTREG_5 : X_FF
    generic map(
      LOC => "SLICE_X90Y65",
      INIT => '0'
    )
    port map (
      I => INTREG_5_DXMUX_1998,
      CE => INTREG_5_CEINV_1973,
      CLK => INTREG_5_CLKINV_1974,
      SET => GND,
      RST => INTREG_5_SRINVNOT,
      O => INTREG(5)
    );
  Mrom_CATHODE_mux0001111 : X_LUT4
    generic map(
      INIT => X"4121",
      LOC => "SLICE_X91Y58"
    )
    port map (
      ADR0 => value_mux0000(3),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(2),
      ADR3 => value_mux0000(0),
      O => Mrom_CATHODE_mux00011
    );
  CATHODE_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y58",
      INIT => '1'
    )
    port map (
      I => CATHODE_2_DYMUX_2027,
      CE => VCC,
      CLK => CATHODE_2_CLKINV_2018,
      SET => CATHODE_2_SRINVNOT,
      RST => GND,
      O => CATHODE_1_801
    );
  Mrom_CATHODE_mux000121 : X_LUT4
    generic map(
      INIT => X"6510",
      LOC => "SLICE_X91Y58"
    )
    port map (
      ADR0 => value_mux0000(3),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(2),
      ADR3 => value_mux0000(0),
      O => Mrom_CATHODE_mux00012
    );
  CATHODE_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y58",
      INIT => '1'
    )
    port map (
      I => CATHODE_2_DXMUX_2040,
      CE => VCC,
      CLK => CATHODE_2_CLKINV_2018,
      SET => CATHODE_2_SRINVNOT,
      RST => GND,
      O => CATHODE_2_802
    );
  INTREG_mux0000_17_1 : X_LUT4
    generic map(
      INIT => X"FBC8",
      LOC => "SLICE_X90Y59"
    )
    port map (
      ADR0 => INTREG(5),
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => INTREG(7),
      O => INTREG_mux0000(17)
    );
  INTREG_6 : X_FF
    generic map(
      LOC => "SLICE_X90Y59",
      INIT => '0'
    )
    port map (
      I => INTREG_7_DYMUX_2069,
      CE => INTREG_7_CEINV_2059,
      CLK => INTREG_7_CLKINV_2060,
      SET => GND,
      RST => INTREG_7_SRINVNOT,
      O => INTREG(6)
    );
  INTREG_mux0000_16_1 : X_LUT4
    generic map(
      INIT => X"EEE4",
      LOC => "SLICE_X90Y59"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => INTREG(8),
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => INTREG(6),
      O => INTREG_mux0000(16)
    );
  INTREG_7 : X_FF
    generic map(
      LOC => "SLICE_X90Y59",
      INIT => '0'
    )
    port map (
      I => INTREG_7_DXMUX_2084,
      CE => INTREG_7_CEINV_2059,
      CLK => INTREG_7_CLKINV_2060,
      SET => GND,
      RST => INTREG_7_SRINVNOT,
      O => INTREG(7)
    );
  Mrom_CATHODE_mux000131 : X_LUT4
    generic map(
      INIT => X"10F6",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => value_mux0000(2),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(0),
      ADR3 => value_mux0000(3),
      O => Mrom_CATHODE_mux00013
    );
  CATHODE_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y62",
      INIT => '1'
    )
    port map (
      I => CATHODE_4_DYMUX_2113,
      CE => VCC,
      CLK => CATHODE_4_CLKINV_2104,
      SET => CATHODE_4_SRINVNOT,
      RST => GND,
      O => CATHODE_3_803
    );
  Mrom_CATHODE_mux000141 : X_LUT4
    generic map(
      INIT => X"8490",
      LOC => "SLICE_X91Y62"
    )
    port map (
      ADR0 => value_mux0000(2),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(0),
      ADR3 => value_mux0000(3),
      O => Mrom_CATHODE_mux00014
    );
  CATHODE_4 : X_FF
    generic map(
      LOC => "SLICE_X91Y62",
      INIT => '1'
    )
    port map (
      I => CATHODE_4_DXMUX_2126,
      CE => VCC,
      CLK => CATHODE_4_CLKINV_2104,
      SET => CATHODE_4_SRINVNOT,
      RST => GND,
      O => CATHODE_4_804
    );
  INTREG_mux0000_15_1 : X_LUT4
    generic map(
      INIT => X"FCAC",
      LOC => "SLICE_X90Y58"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(9),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => INTREG(7),
      O => INTREG_mux0000(15)
    );
  INTREG_8 : X_FF
    generic map(
      LOC => "SLICE_X90Y58",
      INIT => '0'
    )
    port map (
      I => INTREG_9_DYMUX_2155,
      CE => INTREG_9_CEINV_2145,
      CLK => INTREG_9_CLKINV_2146,
      SET => GND,
      RST => INTREG_9_SRINVNOT,
      O => INTREG(8)
    );
  INTREG_mux0000_14_1 : X_LUT4
    generic map(
      INIT => X"FDA8",
      LOC => "SLICE_X90Y58"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => INTREG(8),
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => INTREG(10),
      O => INTREG_mux0000(14)
    );
  INTREG_9 : X_FF
    generic map(
      LOC => "SLICE_X90Y58",
      INIT => '0'
    )
    port map (
      I => INTREG_9_DXMUX_2170,
      CE => INTREG_9_CEINV_2145,
      CLK => INTREG_9_CLKINV_2146,
      SET => GND,
      RST => INTREG_9_SRINVNOT,
      O => INTREG(9)
    );
  Mrom_CATHODE_mux000151 : X_LUT4
    generic map(
      INIT => X"D004",
      LOC => "SLICE_X91Y65"
    )
    port map (
      ADR0 => value_mux0000(0),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(3),
      ADR3 => value_mux0000(2),
      O => Mrom_CATHODE_mux00015
    );
  CATHODE_5 : X_FF
    generic map(
      LOC => "SLICE_X91Y65",
      INIT => '1'
    )
    port map (
      I => CATHODE_6_DYMUX_2199,
      CE => VCC,
      CLK => CATHODE_6_CLKINV_2190,
      SET => CATHODE_6_SRINVNOT,
      RST => GND,
      O => CATHODE_5_805
    );
  Mrom_CATHODE_mux000161 : X_LUT4
    generic map(
      INIT => X"D680",
      LOC => "SLICE_X91Y65"
    )
    port map (
      ADR0 => value_mux0000(0),
      ADR1 => value_mux0000(1),
      ADR2 => value_mux0000(3),
      ADR3 => value_mux0000(2),
      O => Mrom_CATHODE_mux00016
    );
  CATHODE_6 : X_FF
    generic map(
      LOC => "SLICE_X91Y65",
      INIT => '1'
    )
    port map (
      I => CATHODE_6_DXMUX_2212,
      CE => VCC,
      CLK => CATHODE_6_CLKINV_2190,
      SET => CATHODE_6_SRINVNOT,
      RST => GND,
      O => CATHODE_6_806
    );
  Mrom_CATHODE_mux000171 : X_LUT4
    generic map(
      INIT => X"2904",
      LOC => "SLICE_X90Y63"
    )
    port map (
      ADR0 => value_mux0000(3),
      ADR1 => value_mux0000(2),
      ADR2 => value_mux0000(1),
      ADR3 => value_mux0000(0),
      O => Mrom_CATHODE_mux00017
    );
  CATHODE_7 : X_FF
    generic map(
      LOC => "SLICE_X90Y63",
      INIT => '1'
    )
    port map (
      I => CATHODE_7_DYMUX_2234,
      CE => VCC,
      CLK => CATHODE_7_CLKINV_2225,
      SET => CATHODE_7_FFY_SET,
      RST => GND,
      O => CATHODE_7_808
    );
  CATHODE_7_FFY_SETOR : X_INV
    generic map(
      LOC => "SLICE_X90Y63",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => CATHODE_7_FFY_SET
    );
  INTREG_mux0000_13_1 : X_LUT4
    generic map(
      INIT => X"EFE0",
      LOC => "SLICE_X90Y52"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(9),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => INTREG(11),
      O => INTREG_mux0000(13)
    );
  INTREG_10 : X_FF
    generic map(
      LOC => "SLICE_X90Y52",
      INIT => '0'
    )
    port map (
      I => INTREG_11_DYMUX_2263,
      CE => INTREG_11_CEINV_2253,
      CLK => INTREG_11_CLKINV_2254,
      SET => GND,
      RST => INTREG_11_SRINVNOT,
      O => INTREG(10)
    );
  INTREG_mux0000_12_1 : X_LUT4
    generic map(
      INIT => X"FACC",
      LOC => "SLICE_X90Y52"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(12),
      ADR2 => INTREG(10),
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(12)
    );
  INTREG_11 : X_FF
    generic map(
      LOC => "SLICE_X90Y52",
      INIT => '0'
    )
    port map (
      I => INTREG_11_DXMUX_2278,
      CE => INTREG_11_CEINV_2253,
      CLK => INTREG_11_CLKINV_2254,
      SET => GND,
      RST => INTREG_11_SRINVNOT,
      O => INTREG(11)
    );
  INTREG_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"FCB8",
      LOC => "SLICE_X91Y48"
    )
    port map (
      ADR0 => INTREG(19),
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => INTREG(21),
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_mux0000(3)
    );
  INTREG_20 : X_FF
    generic map(
      LOC => "SLICE_X91Y48",
      INIT => '0'
    )
    port map (
      I => INTREG_21_DYMUX_2309,
      CE => INTREG_21_CEINV_2299,
      CLK => INTREG_21_CLKINV_2300,
      SET => GND,
      RST => INTREG_21_SRINVNOT,
      O => INTREG(20)
    );
  INTREG_mux0000_2_1 : X_LUT4
    generic map(
      INIT => X"EEE4",
      LOC => "SLICE_X91Y48"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => INTREG(22),
      ADR2 => INTREG(20),
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_mux0000(2)
    );
  INTREG_21 : X_FF
    generic map(
      LOC => "SLICE_X91Y48",
      INIT => '0'
    )
    port map (
      I => INTREG_21_DXMUX_2324,
      CE => INTREG_21_CEINV_2299,
      CLK => INTREG_21_CLKINV_2300,
      SET => GND,
      RST => INTREG_21_SRINVNOT,
      O => INTREG(21)
    );
  INTREG_mux0000_11_1 : X_LUT4
    generic map(
      INIT => X"FCAA",
      LOC => "SLICE_X91Y53"
    )
    port map (
      ADR0 => INTREG(13),
      ADR1 => S1_OUT_OBUF_768,
      ADR2 => INTREG(11),
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(11)
    );
  INTREG_12 : X_FF
    generic map(
      LOC => "SLICE_X91Y53",
      INIT => '0'
    )
    port map (
      I => INTREG_13_DYMUX_2355,
      CE => INTREG_13_CEINV_2345,
      CLK => INTREG_13_CLKINV_2346,
      SET => GND,
      RST => INTREG_13_SRINVNOT,
      O => INTREG(12)
    );
  INTREG_mux0000_10_1 : X_LUT4
    generic map(
      INIT => X"FBC8",
      LOC => "SLICE_X91Y53"
    )
    port map (
      ADR0 => INTREG(12),
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => INTREG(14),
      O => INTREG_mux0000(10)
    );
  INTREG_13 : X_FF
    generic map(
      LOC => "SLICE_X91Y53",
      INIT => '0'
    )
    port map (
      I => INTREG_13_DXMUX_2370,
      CE => INTREG_13_CEINV_2345,
      CLK => INTREG_13_CLKINV_2346,
      SET => GND,
      RST => INTREG_13_SRINVNOT,
      O => INTREG(13)
    );
  Mrom_cnt_rom000031 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X91Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cnt(1),
      ADR2 => cnt(0),
      ADR3 => VCC,
      O => Mrom_cnt_rom00003
    );
  ANODE_0 : X_FF
    generic map(
      LOC => "SLICE_X91Y81",
      INIT => '1'
    )
    port map (
      I => ANODE_1_DYMUX_2397,
      CE => VCC,
      CLK => ANODE_1_CLKINV_2386,
      SET => ANODE_1_SRINVNOT,
      RST => GND,
      O => ANODE_0_761
    );
  Mrom_cnt_rom000021 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X91Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cnt(1),
      ADR2 => cnt(0),
      ADR3 => VCC,
      O => Mrom_cnt_rom00002
    );
  ANODE_1 : X_FF
    generic map(
      LOC => "SLICE_X91Y81",
      INIT => '1'
    )
    port map (
      I => ANODE_1_DXMUX_2412,
      CE => VCC,
      CLK => ANODE_1_CLKINV_2386,
      SET => ANODE_1_SRINVNOT,
      RST => GND,
      O => ANODE_1_762
    );
  INTREG_mux0000_1_1 : X_LUT4
    generic map(
      INIT => X"EFE0",
      LOC => "SLICE_X90Y49"
    )
    port map (
      ADR0 => INTREG(21),
      ADR1 => S1_OUT_OBUF_768,
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => INTREG(23),
      O => INTREG_mux0000(1)
    );
  INTREG_22 : X_FF
    generic map(
      LOC => "SLICE_X90Y49",
      INIT => '0'
    )
    port map (
      I => INTREG_23_DYMUX_2441,
      CE => INTREG_23_CEINV_2431,
      CLK => INTREG_23_CLKINV_2432,
      SET => GND,
      RST => INTREG_23_SRINVNOT,
      O => INTREG(22)
    );
  INTREG_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"FACC",
      LOC => "SLICE_X90Y49"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => D23_OUT_OBUF_775,
      ADR2 => INTREG(22),
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(0)
    );
  INTREG_23 : X_FF
    generic map(
      LOC => "SLICE_X90Y49",
      INIT => '0'
    )
    port map (
      I => INTREG_23_DXMUX_2456,
      CE => INTREG_23_CEINV_2431,
      CLK => INTREG_23_CLKINV_2432,
      SET => GND,
      RST => INTREG_23_SRINVNOT,
      O => INTREG(23)
    );
  INTREG_mux0000_9_1 : X_LUT4
    generic map(
      INIT => X"FBC8",
      LOC => "SLICE_X91Y52"
    )
    port map (
      ADR0 => INTREG(13),
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => S1_OUT_OBUF_768,
      ADR3 => INTREG(15),
      O => INTREG_mux0000(9)
    );
  INTREG_14 : X_FF
    generic map(
      LOC => "SLICE_X91Y52",
      INIT => '0'
    )
    port map (
      I => INTREG_15_DYMUX_2487,
      CE => INTREG_15_CEINV_2477,
      CLK => INTREG_15_CLKINV_2478,
      SET => GND,
      RST => INTREG_15_SRINVNOT,
      O => INTREG(14)
    );
  INTREG_mux0000_8_1 : X_LUT4
    generic map(
      INIT => X"FAD8",
      LOC => "SLICE_X91Y52"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => S1_OUT_OBUF_768,
      ADR2 => INTREG(16),
      ADR3 => INTREG(14),
      O => INTREG_mux0000(8)
    );
  INTREG_15 : X_FF
    generic map(
      LOC => "SLICE_X91Y52",
      INIT => '0'
    )
    port map (
      I => INTREG_15_DXMUX_2502,
      CE => INTREG_15_CEINV_2477,
      CLK => INTREG_15_CLKINV_2478,
      SET => GND,
      RST => INTREG_15_SRINVNOT,
      O => INTREG(15)
    );
  Mrom_cnt_rom0000111 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X91Y88"
    )
    port map (
      ADR0 => cnt(1),
      ADR1 => VCC,
      ADR2 => cnt(0),
      ADR3 => VCC,
      O => Mrom_cnt_rom00001
    );
  ANODE_2 : X_FF
    generic map(
      LOC => "SLICE_X91Y88",
      INIT => '1'
    )
    port map (
      I => ANODE_3_DYMUX_2529,
      CE => VCC,
      CLK => ANODE_3_CLKINV_2518,
      SET => ANODE_3_SRINVNOT,
      RST => GND,
      O => ANODE_2_763
    );
  Mrom_cnt_rom000011 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "SLICE_X91Y88"
    )
    port map (
      ADR0 => cnt(1),
      ADR1 => VCC,
      ADR2 => cnt(0),
      ADR3 => VCC,
      O => Mrom_cnt_rom0000
    );
  ANODE_3 : X_FF
    generic map(
      LOC => "SLICE_X91Y88",
      INIT => '1'
    )
    port map (
      I => ANODE_3_DXMUX_2544,
      CE => VCC,
      CLK => ANODE_3_CLKINV_2518,
      SET => ANODE_3_SRINVNOT,
      RST => GND,
      O => ANODE_3_765
    );
  INTREG_mux0000_7_1 : X_LUT4
    generic map(
      INIT => X"FCAC",
      LOC => "SLICE_X91Y54"
    )
    port map (
      ADR0 => INTREG(15),
      ADR1 => INTREG(17),
      ADR2 => S0_OUT_OBUF_764,
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_mux0000(7)
    );
  INTREG_16 : X_FF
    generic map(
      LOC => "SLICE_X91Y54",
      INIT => '0'
    )
    port map (
      I => INTREG_17_DYMUX_2573,
      CE => INTREG_17_CEINV_2563,
      CLK => INTREG_17_CLKINV_2564,
      SET => GND,
      RST => INTREG_17_SRINVNOT,
      O => INTREG(16)
    );
  INTREG_mux0000_6_1 : X_LUT4
    generic map(
      INIT => X"FAD8",
      LOC => "SLICE_X91Y54"
    )
    port map (
      ADR0 => S0_OUT_OBUF_764,
      ADR1 => S1_OUT_OBUF_768,
      ADR2 => INTREG(18),
      ADR3 => INTREG(16),
      O => INTREG_mux0000(6)
    );
  INTREG_17 : X_FF
    generic map(
      LOC => "SLICE_X91Y54",
      INIT => '0'
    )
    port map (
      I => INTREG_17_DXMUX_2588,
      CE => INTREG_17_CEINV_2563,
      CLK => INTREG_17_CLKINV_2564,
      SET => GND,
      RST => INTREG_17_SRINVNOT,
      O => INTREG(17)
    );
  INTREG_mux0000_5_1 : X_LUT4
    generic map(
      INIT => X"FBC8",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => INTREG(17),
      ADR3 => INTREG(19),
      O => INTREG_mux0000(5)
    );
  INTREG_18 : X_FF
    generic map(
      LOC => "SLICE_X90Y55",
      INIT => '0'
    )
    port map (
      I => INTREG_19_DYMUX_2619,
      CE => INTREG_19_CEINV_2609,
      CLK => INTREG_19_CLKINV_2610,
      SET => GND,
      RST => INTREG_19_SRINVNOT,
      O => INTREG(18)
    );
  INTREG_mux0000_4_1 : X_LUT4
    generic map(
      INIT => X"EEF0",
      LOC => "SLICE_X90Y55"
    )
    port map (
      ADR0 => S1_OUT_OBUF_768,
      ADR1 => INTREG(18),
      ADR2 => INTREG(20),
      ADR3 => S0_OUT_OBUF_764,
      O => INTREG_mux0000(4)
    );
  INTREG_19 : X_FF
    generic map(
      LOC => "SLICE_X90Y55",
      INIT => '0'
    )
    port map (
      I => INTREG_19_DXMUX_2634,
      CE => INTREG_19_CEINV_2609,
      CLK => INTREG_19_CLKINV_2610,
      SET => GND,
      RST => INTREG_19_SRINVNOT,
      O => INTREG(19)
    );
  LED_4_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X90Y54"
    )
    port map (
      ADR0 => INTREG(16),
      ADR1 => INTREG(18),
      ADR2 => INTREG(17),
      ADR3 => INTREG(19),
      O => LED_4_OBUF_2654
    );
  Q_18_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(18),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_18_OBUF_2663
    );
  Q_19_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => INTREG(19),
      ADR1 => MR_OUT_OBUF_735,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_19_OBUF_2678
    );
  Q_0_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X90Y40"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => INTREG(0),
      O => Q_0_OBUF_2687
    );
  LED_5_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => INTREG(23),
      ADR1 => INTREG(22),
      ADR2 => INTREG(20),
      ADR3 => INTREG(21),
      O => LED_5_OBUF_2702
    );
  Q_22_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(22),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_22_OBUF_2711
    );
  CLKENIN : X_SFF
    generic map(
      LOC => "SLICE_X88Y73",
      INIT => '0'
    )
    port map (
      I => CLKENIN_DYMUX_2721,
      CE => VCC,
      CLK => CLKENIN_CLKINV_2718,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLKENIN_SRINV_2719,
      O => CLKENIN_776
    );
  INTREG_not00011 : X_LUT4
    generic map(
      INIT => X"F0C0",
      LOC => "SLICE_X90Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => S0_OUT_OBUF_764,
      ADR2 => CLKENIN_776,
      ADR3 => S1_OUT_OBUF_768,
      O => INTREG_not0001
    );
  Q_1_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(1),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_1_OBUF_2750
    );
  Q_10_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(10),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_10_OBUF_2759
    );
  Q_2_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => INTREG(2),
      ADR1 => VCC,
      ADR2 => MR_OUT_OBUF_735,
      ADR3 => VCC,
      O => Q_2_OBUF_2774
    );
  Q_11_1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X91Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => MR_OUT_OBUF_735,
      ADR2 => INTREG(11),
      ADR3 => VCC,
      O => Q_11_OBUF_2783
    );
  Q_3_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X91Y29"
    )
    port map (
      ADR0 => INTREG(3),
      ADR1 => MR_OUT_OBUF_735,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_3_OBUF_2798
    );
  Q_12_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y29"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => VCC,
      ADR2 => INTREG(12),
      ADR3 => VCC,
      O => Q_12_OBUF_2807
    );
  Mcount_cnt_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X90Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cnt(0),
      ADR2 => VCC,
      ADR3 => cnt(1),
      O => Mcount_cnt1
    );
  cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X90Y61",
      INIT => '0'
    )
    port map (
      I => cnt_0_DYMUX_2828,
      CE => VCC,
      CLK => cnt_0_CLKINV_2817,
      SET => GND,
      RST => cnt_0_SRINVNOT,
      O => cnt(1)
    );
  cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X90Y61",
      INIT => '0'
    )
    port map (
      I => cnt_0_DXMUX_2836,
      CE => VCC,
      CLK => cnt_0_CLKINV_2817,
      SET => GND,
      RST => cnt_0_SRINVNOT,
      O => cnt(0)
    );
  Q_4_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => VCC,
      ADR2 => INTREG(4),
      ADR3 => VCC,
      O => Q_4_OBUF_2855
    );
  Q_13_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X90Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => MR_OUT_OBUF_735,
      ADR3 => INTREG(13),
      O => Q_13_OBUF_2864
    );
  Q_5_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X91Y32"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => INTREG(5),
      O => Q_5_OBUF_2879
    );
  Q_14_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X91Y32"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => INTREG(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_14_OBUF_2888
    );
  Q_6_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y37"
    )
    port map (
      ADR0 => INTREG(6),
      ADR1 => VCC,
      ADR2 => MR_OUT_OBUF_735,
      ADR3 => VCC,
      O => Q_6_OBUF_2903
    );
  Q_15_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X91Y37"
    )
    port map (
      ADR0 => MR_OUT_OBUF_735,
      ADR1 => VCC,
      ADR2 => INTREG(15),
      ADR3 => VCC,
      O => Q_15_OBUF_2912
    );
  Q_7_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X91Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(7),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_7_OBUF_2927
    );
  Q_16_1 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X91Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => INTREG(16),
      ADR3 => MR_OUT_OBUF_735,
      O => Q_16_OBUF_2936
    );
  Q_8_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(8),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_8_OBUF_2951
    );
  Q_17_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X90Y56"
    )
    port map (
      ADR0 => INTREG(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_17_OBUF_2960
    );
  Q_9_1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X90Y47"
    )
    port map (
      ADR0 => INTREG(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_9_OBUF_2975
    );
  Q_20_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(20),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_20_OBUF_2984
    );
  LED_0_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X91Y61"
    )
    port map (
      ADR0 => INTREG(3),
      ADR1 => INTREG(2),
      ADR2 => INTREG(0),
      ADR3 => INTREG(1),
      O => LED_0_OBUF_2996
    );
  CLKEN : X_FF
    generic map(
      LOC => "SLICE_X90Y80",
      INIT => '0'
    )
    port map (
      I => CLKEN_DYMUX_3006,
      CE => VCC,
      CLK => CLKEN_CLKINV_3003,
      SET => GND,
      RST => CLKEN_FFY_RSTAND_3011,
      O => CLKEN_833
    );
  CLKEN_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X90Y80",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => CLKEN_FFY_RSTAND_3011
    );
  Q_21_1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X90Y66"
    )
    port map (
      ADR0 => INTREG(21),
      ADR1 => MR_OUT_OBUF_735,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Q_21_OBUF_3025
    );
  Q_23_1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X90Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => INTREG(23),
      ADR2 => VCC,
      ADR3 => MR_OUT_OBUF_735,
      O => Q_23_OBUF_3034
    );
  LED_1_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X90Y64"
    )
    port map (
      ADR0 => INTREG(5),
      ADR1 => INTREG(6),
      ADR2 => INTREG(4),
      ADR3 => INTREG(7),
      O => LED_1_OBUF_3046
    );
  CLKENIN_OLD : X_FF
    generic map(
      LOC => "SLICE_X88Y72",
      INIT => '0'
    )
    port map (
      I => CLKENIN_OLD_DYMUX_3054,
      CE => VCC,
      CLK => CLKENIN_OLD_CLKINV_3052,
      SET => GND,
      RST => GND,
      O => CLKENIN_OLD_842
    );
  LED_2_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X91Y57"
    )
    port map (
      ADR0 => INTREG(10),
      ADR1 => INTREG(11),
      ADR2 => INTREG(8),
      ADR3 => INTREG(9),
      O => LED_2_OBUF_3067
    );
  LED_3_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X90Y57"
    )
    port map (
      ADR0 => INTREG(12),
      ADR1 => INTREG(14),
      ADR2 => INTREG(13),
      ADR3 => INTREG(15),
      O => LED_3_OBUF_3079
    );
  counter_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X91Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => counter_16_G
    );
  ANODE_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => ANODE_0_761,
      O => ANODE_0_O
    );
  ANODE_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => ANODE_1_762,
      O => ANODE_1_O
    );
  ANODE_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 798 ps
    )
    port map (
      I => ANODE_2_763,
      O => ANODE_2_O
    );
  S0_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => S0_OUT_OBUF_764,
      O => S0_OUT_O
    );
  ANODE_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 798 ps
    )
    port map (
      I => ANODE_3_765,
      O => ANODE_3_O
    );
  Q_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_10_OBUF_2759,
      O => Q_10_O
    );
  Q_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_11_OBUF_2783,
      O => Q_11_O
    );
  Q_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_20_OBUF_2984,
      O => Q_20_O
    );
  Q_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_12_OBUF_2807,
      O => Q_12_O
    );
  Q_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_21_OBUF_3025,
      O => Q_21_O
    );
  Q_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_13_OBUF_2864,
      O => Q_13_O
    );
  Q_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_22_OBUF_2711,
      O => Q_22_O
    );
  Q_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_14_OBUF_2888,
      O => Q_14_O
    );
  D23_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 798 ps
    )
    port map (
      I => D23_OUT_OBUF_775,
      O => D23_OUT_O
    );
  CLKENIN_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => CLKENIN_776,
      O => CLKENIN_OUT_O
    );
  Q_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_23_OBUF_3034,
      O => Q_23_O
    );
  Q_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_15_OBUF_2912,
      O => Q_15_O
    );
  Q_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_16_OBUF_2936,
      O => Q_16_O
    );
  S1_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 798 ps
    )
    port map (
      I => S1_OUT_OBUF_768,
      O => S1_OUT_O
    );
  Q_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_17_OBUF_2960,
      O => Q_17_O
    );
  Q_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_18_OBUF_2663,
      O => Q_18_O
    );
  Q_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_19_OBUF_2678,
      O => Q_19_O
    );
  D0_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => D0_OUT_OBUF_783,
      O => D0_OUT_O
    );
  LED_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_0_OBUF_2996,
      O => LED_0_O
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_0_OBUF_2687,
      O => Q_0_O
    );
  LED_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_1_OBUF_3046,
      O => LED_1_O
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_1_OBUF_2750,
      O => Q_1_O
    );
  LED_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_2_OBUF_3067,
      O => LED_2_O
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_2_OBUF_2774,
      O => Q_2_O
    );
  LED_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_3_OBUF_3079,
      O => LED_3_O
    );
  Q_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_3_OBUF_2798,
      O => Q_3_O
    );
  LED_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_4_OBUF_2654,
      O => LED_4_O
    );
  Q_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_4_OBUF_2855,
      O => Q_4_O
    );
  LED_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 798 ps
    )
    port map (
      I => LED_5_OBUF_2702,
      O => LED_5_O
    );
  Q_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_5_OBUF_2879,
      O => Q_5_O
    );
  Q_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_6_OBUF_2903,
      O => Q_6_O
    );
  Q_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_7_OBUF_2927,
      O => Q_7_O
    );
  Q_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_8_OBUF_2951,
      O => Q_8_O
    );
  Q_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_9_OBUF_2975,
      O => Q_9_O
    );
  MR_OUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => MR_OUT_OBUF_735,
      O => MR_OUT_O
    );
  CATHODE_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_0_OUTPUT_OFF_O1INV_1688,
      O => CATHODE_0_O
    );
  CATHODE_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 798 ps
    )
    port map (
      I => '1',
      O => CATHODE_0_OUTPUT_OFF_O1INV_1688
    );
  CATHODE_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_1_801,
      O => CATHODE_1_O
    );
  CATHODE_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_2_802,
      O => CATHODE_2_O
    );
  CATHODE_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_3_803,
      O => CATHODE_3_O
    );
  CATHODE_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_4_804,
      O => CATHODE_4_O
    );
  CATHODE_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_5_805,
      O => CATHODE_5_O
    );
  CATHODE_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_6_806,
      O => CATHODE_6_O
    );
  CATHODE_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 798 ps
    )
    port map (
      I => CATHODE_7_808,
      O => CATHODE_7_O
    );
  NlwBlock_Schieberegister_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Schieberegister_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

