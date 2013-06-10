--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: DUT_timesim.vhd
-- /___/   /\     Timestamp: Wed Nov 16 14:23:54 2011
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm DUT -w -dir netgen/fit -ofmt vhdl -sim DUT.nga DUT_timesim.vhd 
-- Device	: XC2C256-7-PQ208 (Speed File: Version 14.0 Advance Product Specification)
-- Input file	: DUT.nga
-- Output file	: C:\Documents and Settings\aaw251\Desktop\ModelSim_Projects\ISE_Projects\Aufgabe2\netgen\fit\DUT_timesim.vhd
-- # of Entities	: 1
-- Design Name	: DUT.nga
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

entity DUT is
  port (
    clk : in STD_LOGIC := 'X'; 
    nres : in STD_LOGIC := 'X'; 
    ok : out STD_LOGIC; 
    txdat : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    rxdat : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end DUT;

architecture Structure of DUT is
  signal clk_II_FCLK_1 : STD_LOGIC; 
  signal nres_II_UIM_3 : STD_LOGIC; 
  signal txdat_3_II_UIM_5 : STD_LOGIC; 
  signal txdat_3_II_IREG_6 : STD_LOGIC; 
  signal Gnd_7 : STD_LOGIC; 
  signal Vcc_8 : STD_LOGIC; 
  signal txdat_2_II_UIM_11 : STD_LOGIC; 
  signal txdat_2_II_IREG_12 : STD_LOGIC; 
  signal txdat_1_II_UIM_15 : STD_LOGIC; 
  signal txdat_1_II_IREG_16 : STD_LOGIC; 
  signal txdat_0_II_UIM_19 : STD_LOGIC; 
  signal txdat_0_II_IREG_20 : STD_LOGIC; 
  signal ok_MC_Q_23 : STD_LOGIC; 
  signal rxdat_0_MC_Q_25 : STD_LOGIC; 
  signal rxdat_1_MC_Q_27 : STD_LOGIC; 
  signal rxdat_2_MC_Q_29 : STD_LOGIC; 
  signal rxdat_3_MC_Q_31 : STD_LOGIC; 
  signal ok_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal ok_MC_D_33 : STD_LOGIC; 
  signal ok_MC_D1_34 : STD_LOGIC; 
  signal ok_MC_D2_35 : STD_LOGIC; 
  signal p1_ok_s_36 : STD_LOGIC; 
  signal p1_ok_s_MC_Q : STD_LOGIC; 
  signal p1_ok_s_MC_D_38 : STD_LOGIC; 
  signal p1_ok_s_MC_D1_39 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_40 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_0_46 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_1_47 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_2_48 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_3_49 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_4_50 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_5_51 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_6_52 : STD_LOGIC; 
  signal p1_ok_s_MC_D2_PT_7_53 : STD_LOGIC; 
  signal sigx_s_0_MC_Q : STD_LOGIC; 
  signal sigx_s_0_MC_D_55 : STD_LOGIC; 
  signal sigx_s_0_MC_D1_56 : STD_LOGIC; 
  signal sigx_s_0_MC_D2_57 : STD_LOGIC; 
  signal sigx_s_1_MC_Q : STD_LOGIC; 
  signal sigx_s_1_MC_D_59 : STD_LOGIC; 
  signal sigx_s_1_MC_D1_60 : STD_LOGIC; 
  signal sigx_s_1_MC_D2_61 : STD_LOGIC; 
  signal sigx_s_2_MC_Q : STD_LOGIC; 
  signal sigx_s_2_MC_D_63 : STD_LOGIC; 
  signal sigx_s_2_MC_D1_64 : STD_LOGIC; 
  signal sigx_s_2_MC_D2_65 : STD_LOGIC; 
  signal sigx_s_3_MC_Q : STD_LOGIC; 
  signal sigx_s_3_MC_D_67 : STD_LOGIC; 
  signal sigx_s_3_MC_D1_68 : STD_LOGIC; 
  signal sigx_s_3_MC_D2_69 : STD_LOGIC; 
  signal sigx_s_4_MC_Q : STD_LOGIC; 
  signal sigx_s_4_MC_D_71 : STD_LOGIC; 
  signal sigx_s_4_MC_D1_72 : STD_LOGIC; 
  signal sigx_s_4_MC_D2_73 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_Q : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D_76 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D1_77 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D2_78 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D2_PT_0_79 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D2_PT_1_80 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D2_PT_2_81 : STD_LOGIC; 
  signal p4bit_sigin_s_4_MC_D2_PT_3_82 : STD_LOGIC; 
  signal rxdat_0_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal rxdat_0_MC_D_84 : STD_LOGIC; 
  signal rxdat_0_MC_D1_85 : STD_LOGIC; 
  signal rxdat_0_MC_D2_86 : STD_LOGIC; 
  signal p1_siginres_0_MC_Q : STD_LOGIC; 
  signal p1_siginres_0_MC_D_89 : STD_LOGIC; 
  signal p1_siginres_0_MC_D1_90 : STD_LOGIC; 
  signal p1_siginres_0_MC_D2_91 : STD_LOGIC; 
  signal rxdat_1_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal rxdat_1_MC_D_93 : STD_LOGIC; 
  signal rxdat_1_MC_D1_94 : STD_LOGIC; 
  signal rxdat_1_MC_D2_95 : STD_LOGIC; 
  signal p1_siginres_1_MC_Q : STD_LOGIC; 
  signal p1_siginres_1_MC_D_98 : STD_LOGIC; 
  signal p1_siginres_1_MC_D1_99 : STD_LOGIC; 
  signal p1_siginres_1_MC_D2_100 : STD_LOGIC; 
  signal rxdat_2_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal rxdat_2_MC_D_102 : STD_LOGIC; 
  signal rxdat_2_MC_D1_103 : STD_LOGIC; 
  signal rxdat_2_MC_D2_104 : STD_LOGIC; 
  signal p1_siginres_2_MC_Q : STD_LOGIC; 
  signal p1_siginres_2_MC_D_107 : STD_LOGIC; 
  signal p1_siginres_2_MC_D1_108 : STD_LOGIC; 
  signal p1_siginres_2_MC_D2_109 : STD_LOGIC; 
  signal rxdat_3_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal rxdat_3_MC_D_111 : STD_LOGIC; 
  signal rxdat_3_MC_D1_112 : STD_LOGIC; 
  signal rxdat_3_MC_D2_113 : STD_LOGIC; 
  signal p1_siginres_3_MC_Q : STD_LOGIC; 
  signal p1_siginres_3_MC_D_116 : STD_LOGIC; 
  signal p1_siginres_3_MC_D1_117 : STD_LOGIC; 
  signal p1_siginres_3_MC_D2_118 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ok_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_p1_ok_s_MC_D2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sigx_s_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_rxdat_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p1_siginres_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal p4bit_sigin_s : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal sigx_s : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal p1_siginres : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  clk_II_FCLK : X_BUF
    port map (
      I => clk,
      O => clk_II_FCLK_1
    );
  nres_II_UIM : X_BUF
    port map (
      I => nres,
      O => nres_II_UIM_3
    );
  txdat_3_II_UIM : X_BUF
    port map (
      I => txdat(3),
      O => txdat_3_II_UIM_5
    );
  txdat_3_II_IREG : X_BUF
    port map (
      I => txdat(3),
      O => txdat_3_II_IREG_6
    );
  p4bit_sigin_s_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_3_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p4bit_sigin_s_3_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p4bit_sigin_s(3)
    );
  Gnd : X_ZERO
    port map (
      O => Gnd_7
    );
  Vcc : X_ONE
    port map (
      O => Vcc_8
    );
  txdat_2_II_UIM : X_BUF
    port map (
      I => txdat(2),
      O => txdat_2_II_UIM_11
    );
  txdat_2_II_IREG : X_BUF
    port map (
      I => txdat(2),
      O => txdat_2_II_IREG_12
    );
  p4bit_sigin_s_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_2_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p4bit_sigin_s_2_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p4bit_sigin_s(2)
    );
  txdat_1_II_UIM : X_BUF
    port map (
      I => txdat(1),
      O => txdat_1_II_UIM_15
    );
  txdat_1_II_IREG : X_BUF
    port map (
      I => txdat(1),
      O => txdat_1_II_IREG_16
    );
  p4bit_sigin_s_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_1_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p4bit_sigin_s_1_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p4bit_sigin_s(1)
    );
  txdat_0_II_UIM : X_BUF
    port map (
      I => txdat(0),
      O => txdat_0_II_UIM_19
    );
  txdat_0_II_IREG : X_BUF
    port map (
      I => txdat(0),
      O => txdat_0_II_IREG_20
    );
  p4bit_sigin_s_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_0_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p4bit_sigin_s_0_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p4bit_sigin_s(0)
    );
  ok_24 : X_BUF
    port map (
      I => ok_MC_Q_23,
      O => ok
    );
  rxdat_0_Q : X_BUF
    port map (
      I => rxdat_0_MC_Q_25,
      O => rxdat(0)
    );
  rxdat_1_Q : X_BUF
    port map (
      I => rxdat_1_MC_Q_27,
      O => rxdat(1)
    );
  rxdat_2_Q : X_BUF
    port map (
      I => rxdat_2_MC_Q_29,
      O => rxdat(2)
    );
  rxdat_3_Q : X_BUF
    port map (
      I => rxdat_3_MC_Q_31,
      O => rxdat(3)
    );
  ok_MC_Q : X_BUF
    port map (
      I => ok_MC_Q_tsimrenamed_net_Q,
      O => ok_MC_Q_23
    );
  ok_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ok_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_ok_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => ok_MC_Q_tsimrenamed_net_Q
    );
  ok_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ok_MC_D_IN0,
      I1 => NlwBufferSignal_ok_MC_D_IN1,
      O => ok_MC_D_33
    );
  ok_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_ok_MC_D1_IN0,
      I1 => NlwBufferSignal_ok_MC_D1_IN1,
      O => ok_MC_D1_34
    );
  ok_MC_D2 : X_ZERO
    port map (
      O => ok_MC_D2_35
    );
  p1_ok_s : X_BUF
    port map (
      I => p1_ok_s_MC_Q,
      O => p1_ok_s_36
    );
  p1_ok_s_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p1_ok_s_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p1_ok_s_MC_Q
    );
  p1_ok_s_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D_IN1,
      O => p1_ok_s_MC_D_38
    );
  p1_ok_s_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D1_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D1_IN1,
      O => p1_ok_s_MC_D1_39
    );
  p1_ok_s_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_p1_ok_s_MC_D2_PT_0_IN3,
      O => p1_ok_s_MC_D2_PT_0_46
    );
  p1_ok_s_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_p1_ok_s_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN3,
      O => p1_ok_s_MC_D2_PT_1_47
    );
  p1_ok_s_MC_D2_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_p1_ok_s_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN3,
      O => p1_ok_s_MC_D2_PT_2_48
    );
  p1_ok_s_MC_D2_PT_3 : X_AND4
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN3,
      O => p1_ok_s_MC_D2_PT_3_49
    );
  p1_ok_s_MC_D2_PT_4 : X_AND4
    port map (
      I0 => NlwInverterSignal_p1_ok_s_MC_D2_PT_4_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN1,
      I2 => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN2,
      I3 => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN3,
      O => p1_ok_s_MC_D2_PT_4_50
    );
  p1_ok_s_MC_D2_PT_5 : X_AND4
    port map (
      I0 => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN1,
      I2 => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN2,
      I3 => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN3,
      O => p1_ok_s_MC_D2_PT_5_51
    );
  p1_ok_s_MC_D2_PT_6 : X_AND4
    port map (
      I0 => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN0,
      I1 => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN1,
      I2 => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN2,
      I3 => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN3,
      O => p1_ok_s_MC_D2_PT_6_52
    );
  p1_ok_s_MC_D2_PT_7 : X_AND4
    port map (
      I0 => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN0,
      I1 => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN1,
      I2 => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN2,
      I3 => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN3,
      O => p1_ok_s_MC_D2_PT_7_53
    );
  p1_ok_s_MC_D2 : X_OR8
    port map (
      I0 => NlwBufferSignal_p1_ok_s_MC_D2_IN0,
      I1 => NlwBufferSignal_p1_ok_s_MC_D2_IN1,
      I2 => NlwBufferSignal_p1_ok_s_MC_D2_IN2,
      I3 => NlwBufferSignal_p1_ok_s_MC_D2_IN3,
      I4 => NlwBufferSignal_p1_ok_s_MC_D2_IN4,
      I5 => NlwBufferSignal_p1_ok_s_MC_D2_IN5,
      I6 => NlwBufferSignal_p1_ok_s_MC_D2_IN6,
      I7 => NlwBufferSignal_p1_ok_s_MC_D2_IN7,
      O => p1_ok_s_MC_D2_40
    );
  sigx_s_0_Q : X_BUF
    port map (
      I => sigx_s_0_MC_Q,
      O => sigx_s(0)
    );
  sigx_s_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_sigx_s_0_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_sigx_s_0_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => sigx_s_0_MC_Q
    );
  sigx_s_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sigx_s_0_MC_D_IN0,
      I1 => NlwBufferSignal_sigx_s_0_MC_D_IN1,
      O => sigx_s_0_MC_D_55
    );
  sigx_s_0_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_sigx_s_0_MC_D1_IN0,
      I1 => NlwBufferSignal_sigx_s_0_MC_D1_IN1,
      O => sigx_s_0_MC_D1_56
    );
  sigx_s_0_MC_D2 : X_ZERO
    port map (
      O => sigx_s_0_MC_D2_57
    );
  sigx_s_1_Q : X_BUF
    port map (
      I => sigx_s_1_MC_Q,
      O => sigx_s(1)
    );
  sigx_s_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_sigx_s_1_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_sigx_s_1_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => sigx_s_1_MC_Q
    );
  sigx_s_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sigx_s_1_MC_D_IN0,
      I1 => NlwBufferSignal_sigx_s_1_MC_D_IN1,
      O => sigx_s_1_MC_D_59
    );
  sigx_s_1_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_sigx_s_1_MC_D1_IN0,
      I1 => NlwBufferSignal_sigx_s_1_MC_D1_IN1,
      O => sigx_s_1_MC_D1_60
    );
  sigx_s_1_MC_D2 : X_ZERO
    port map (
      O => sigx_s_1_MC_D2_61
    );
  sigx_s_2_Q : X_BUF
    port map (
      I => sigx_s_2_MC_Q,
      O => sigx_s(2)
    );
  sigx_s_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_sigx_s_2_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_sigx_s_2_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => sigx_s_2_MC_Q
    );
  sigx_s_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sigx_s_2_MC_D_IN0,
      I1 => NlwBufferSignal_sigx_s_2_MC_D_IN1,
      O => sigx_s_2_MC_D_63
    );
  sigx_s_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_sigx_s_2_MC_D1_IN0,
      I1 => NlwBufferSignal_sigx_s_2_MC_D1_IN1,
      O => sigx_s_2_MC_D1_64
    );
  sigx_s_2_MC_D2 : X_ZERO
    port map (
      O => sigx_s_2_MC_D2_65
    );
  sigx_s_3_Q : X_BUF
    port map (
      I => sigx_s_3_MC_Q,
      O => sigx_s(3)
    );
  sigx_s_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_sigx_s_3_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_sigx_s_3_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => sigx_s_3_MC_Q
    );
  sigx_s_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sigx_s_3_MC_D_IN0,
      I1 => NlwBufferSignal_sigx_s_3_MC_D_IN1,
      O => sigx_s_3_MC_D_67
    );
  sigx_s_3_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_sigx_s_3_MC_D1_IN0,
      I1 => NlwBufferSignal_sigx_s_3_MC_D1_IN1,
      O => sigx_s_3_MC_D1_68
    );
  sigx_s_3_MC_D2 : X_ZERO
    port map (
      O => sigx_s_3_MC_D2_69
    );
  sigx_s_4_Q : X_BUF
    port map (
      I => sigx_s_4_MC_Q,
      O => sigx_s(4)
    );
  sigx_s_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_sigx_s_4_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_sigx_s_4_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => sigx_s_4_MC_Q
    );
  sigx_s_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sigx_s_4_MC_D_IN0,
      I1 => NlwBufferSignal_sigx_s_4_MC_D_IN1,
      O => sigx_s_4_MC_D_71
    );
  sigx_s_4_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_sigx_s_4_MC_D1_IN0,
      I1 => NlwBufferSignal_sigx_s_4_MC_D1_IN1,
      O => sigx_s_4_MC_D1_72
    );
  sigx_s_4_MC_D2 : X_ZERO
    port map (
      O => sigx_s_4_MC_D2_73
    );
  p4bit_sigin_s_4_Q : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_Q,
      O => p4bit_sigin_s(4)
    );
  p4bit_sigin_s_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p4bit_sigin_s_4_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p4bit_sigin_s_4_MC_Q
    );
  p4bit_sigin_s_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN0,
      I1 => NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN1,
      O => p4bit_sigin_s_4_MC_D_76
    );
  p4bit_sigin_s_4_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN0,
      I1 => NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN1,
      O => p4bit_sigin_s_4_MC_D1_77
    );
  p4bit_sigin_s_4_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2,
      O => p4bit_sigin_s_4_MC_D2_PT_0_79
    );
  p4bit_sigin_s_4_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN2,
      O => p4bit_sigin_s_4_MC_D2_PT_1_80
    );
  p4bit_sigin_s_4_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN2,
      O => p4bit_sigin_s_4_MC_D2_PT_2_81
    );
  p4bit_sigin_s_4_MC_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2,
      O => p4bit_sigin_s_4_MC_D2_PT_3_82
    );
  p4bit_sigin_s_4_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN0,
      I1 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN1,
      I2 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN2,
      I3 => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN3,
      O => p4bit_sigin_s_4_MC_D2_78
    );
  rxdat_0_MC_Q : X_BUF
    port map (
      I => rxdat_0_MC_Q_tsimrenamed_net_Q,
      O => rxdat_0_MC_Q_25
    );
  rxdat_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_rxdat_0_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_rxdat_0_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => rxdat_0_MC_Q_tsimrenamed_net_Q
    );
  rxdat_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_rxdat_0_MC_D_IN0,
      I1 => NlwBufferSignal_rxdat_0_MC_D_IN1,
      O => rxdat_0_MC_D_84
    );
  rxdat_0_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_rxdat_0_MC_D1_IN0,
      I1 => NlwBufferSignal_rxdat_0_MC_D1_IN1,
      O => rxdat_0_MC_D1_85
    );
  rxdat_0_MC_D2 : X_ZERO
    port map (
      O => rxdat_0_MC_D2_86
    );
  p1_siginres_0_Q : X_BUF
    port map (
      I => p1_siginres_0_MC_Q,
      O => p1_siginres(0)
    );
  p1_siginres_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p1_siginres_0_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p1_siginres_0_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p1_siginres_0_MC_Q
    );
  p1_siginres_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p1_siginres_0_MC_D_IN0,
      I1 => NlwBufferSignal_p1_siginres_0_MC_D_IN1,
      O => p1_siginres_0_MC_D_89
    );
  p1_siginres_0_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p1_siginres_0_MC_D1_IN0,
      I1 => NlwBufferSignal_p1_siginres_0_MC_D1_IN1,
      O => p1_siginres_0_MC_D1_90
    );
  p1_siginres_0_MC_D2 : X_ZERO
    port map (
      O => p1_siginres_0_MC_D2_91
    );
  rxdat_1_MC_Q : X_BUF
    port map (
      I => rxdat_1_MC_Q_tsimrenamed_net_Q,
      O => rxdat_1_MC_Q_27
    );
  rxdat_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_rxdat_1_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_rxdat_1_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => rxdat_1_MC_Q_tsimrenamed_net_Q
    );
  rxdat_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_rxdat_1_MC_D_IN0,
      I1 => NlwBufferSignal_rxdat_1_MC_D_IN1,
      O => rxdat_1_MC_D_93
    );
  rxdat_1_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_rxdat_1_MC_D1_IN0,
      I1 => NlwBufferSignal_rxdat_1_MC_D1_IN1,
      O => rxdat_1_MC_D1_94
    );
  rxdat_1_MC_D2 : X_ZERO
    port map (
      O => rxdat_1_MC_D2_95
    );
  p1_siginres_1_Q : X_BUF
    port map (
      I => p1_siginres_1_MC_Q,
      O => p1_siginres(1)
    );
  p1_siginres_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p1_siginres_1_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p1_siginres_1_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p1_siginres_1_MC_Q
    );
  p1_siginres_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p1_siginres_1_MC_D_IN0,
      I1 => NlwBufferSignal_p1_siginres_1_MC_D_IN1,
      O => p1_siginres_1_MC_D_98
    );
  p1_siginres_1_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p1_siginres_1_MC_D1_IN0,
      I1 => NlwBufferSignal_p1_siginres_1_MC_D1_IN1,
      O => p1_siginres_1_MC_D1_99
    );
  p1_siginres_1_MC_D2 : X_ZERO
    port map (
      O => p1_siginres_1_MC_D2_100
    );
  rxdat_2_MC_Q : X_BUF
    port map (
      I => rxdat_2_MC_Q_tsimrenamed_net_Q,
      O => rxdat_2_MC_Q_29
    );
  rxdat_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_rxdat_2_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_rxdat_2_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => rxdat_2_MC_Q_tsimrenamed_net_Q
    );
  rxdat_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_rxdat_2_MC_D_IN0,
      I1 => NlwBufferSignal_rxdat_2_MC_D_IN1,
      O => rxdat_2_MC_D_102
    );
  rxdat_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_rxdat_2_MC_D1_IN0,
      I1 => NlwBufferSignal_rxdat_2_MC_D1_IN1,
      O => rxdat_2_MC_D1_103
    );
  rxdat_2_MC_D2 : X_ZERO
    port map (
      O => rxdat_2_MC_D2_104
    );
  p1_siginres_2_Q : X_BUF
    port map (
      I => p1_siginres_2_MC_Q,
      O => p1_siginres(2)
    );
  p1_siginres_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p1_siginres_2_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p1_siginres_2_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p1_siginres_2_MC_Q
    );
  p1_siginres_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p1_siginres_2_MC_D_IN0,
      I1 => NlwBufferSignal_p1_siginres_2_MC_D_IN1,
      O => p1_siginres_2_MC_D_107
    );
  p1_siginres_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p1_siginres_2_MC_D1_IN0,
      I1 => NlwBufferSignal_p1_siginres_2_MC_D1_IN1,
      O => p1_siginres_2_MC_D1_108
    );
  p1_siginres_2_MC_D2 : X_ZERO
    port map (
      O => p1_siginres_2_MC_D2_109
    );
  rxdat_3_MC_Q : X_BUF
    port map (
      I => rxdat_3_MC_Q_tsimrenamed_net_Q,
      O => rxdat_3_MC_Q_31
    );
  rxdat_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_rxdat_3_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_rxdat_3_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => rxdat_3_MC_Q_tsimrenamed_net_Q
    );
  rxdat_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_rxdat_3_MC_D_IN0,
      I1 => NlwBufferSignal_rxdat_3_MC_D_IN1,
      O => rxdat_3_MC_D_111
    );
  rxdat_3_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_rxdat_3_MC_D1_IN0,
      I1 => NlwBufferSignal_rxdat_3_MC_D1_IN1,
      O => rxdat_3_MC_D1_112
    );
  rxdat_3_MC_D2 : X_ZERO
    port map (
      O => rxdat_3_MC_D2_113
    );
  p1_siginres_3_Q : X_BUF
    port map (
      I => p1_siginres_3_MC_Q,
      O => p1_siginres(3)
    );
  p1_siginres_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p1_siginres_3_MC_REG_IN,
      CE => Vcc_8,
      CLK => NlwBufferSignal_p1_siginres_3_MC_REG_CLK,
      SET => Gnd_7,
      RST => Gnd_7,
      O => p1_siginres_3_MC_Q
    );
  p1_siginres_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p1_siginres_3_MC_D_IN0,
      I1 => NlwBufferSignal_p1_siginres_3_MC_D_IN1,
      O => p1_siginres_3_MC_D_116
    );
  p1_siginres_3_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p1_siginres_3_MC_D1_IN0,
      I1 => NlwBufferSignal_p1_siginres_3_MC_D1_IN1,
      O => p1_siginres_3_MC_D1_117
    );
  p1_siginres_3_MC_D2 : X_ZERO
    port map (
      O => p1_siginres_3_MC_D2_118
    );
  NlwBufferBlock_p4bit_sigin_s_3_MC_REG_IN : X_BUF
    port map (
      I => txdat_3_II_IREG_6,
      O => NlwBufferSignal_p4bit_sigin_s_3_MC_REG_IN
    );
  NlwBufferBlock_p4bit_sigin_s_3_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p4bit_sigin_s_3_MC_REG_CLK
    );
  NlwBufferBlock_p4bit_sigin_s_2_MC_REG_IN : X_BUF
    port map (
      I => txdat_2_II_IREG_12,
      O => NlwBufferSignal_p4bit_sigin_s_2_MC_REG_IN
    );
  NlwBufferBlock_p4bit_sigin_s_2_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p4bit_sigin_s_2_MC_REG_CLK
    );
  NlwBufferBlock_p4bit_sigin_s_1_MC_REG_IN : X_BUF
    port map (
      I => txdat_1_II_IREG_16,
      O => NlwBufferSignal_p4bit_sigin_s_1_MC_REG_IN
    );
  NlwBufferBlock_p4bit_sigin_s_1_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p4bit_sigin_s_1_MC_REG_CLK
    );
  NlwBufferBlock_p4bit_sigin_s_0_MC_REG_IN : X_BUF
    port map (
      I => txdat_0_II_IREG_20,
      O => NlwBufferSignal_p4bit_sigin_s_0_MC_REG_IN
    );
  NlwBufferBlock_p4bit_sigin_s_0_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p4bit_sigin_s_0_MC_REG_CLK
    );
  NlwBufferBlock_ok_MC_REG_IN : X_BUF
    port map (
      I => ok_MC_D_33,
      O => NlwBufferSignal_ok_MC_REG_IN
    );
  NlwBufferBlock_ok_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_ok_MC_REG_CLK
    );
  NlwBufferBlock_ok_MC_D_IN0 : X_BUF
    port map (
      I => ok_MC_D1_34,
      O => NlwBufferSignal_ok_MC_D_IN0
    );
  NlwBufferBlock_ok_MC_D_IN1 : X_BUF
    port map (
      I => ok_MC_D2_35,
      O => NlwBufferSignal_ok_MC_D_IN1
    );
  NlwBufferBlock_ok_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_ok_MC_D1_IN0
    );
  NlwBufferBlock_ok_MC_D1_IN1 : X_BUF
    port map (
      I => p1_ok_s_36,
      O => NlwBufferSignal_ok_MC_D1_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_REG_IN : X_BUF
    port map (
      I => p1_ok_s_MC_D_38,
      O => NlwBufferSignal_p1_ok_s_MC_REG_IN
    );
  NlwBufferBlock_p1_ok_s_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p1_ok_s_MC_REG_CLK
    );
  NlwBufferBlock_p1_ok_s_MC_D_IN0 : X_BUF
    port map (
      I => p1_ok_s_MC_D1_39,
      O => NlwBufferSignal_p1_ok_s_MC_D_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D_IN1 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_40,
      O => NlwBufferSignal_p1_ok_s_MC_D_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D1_IN0 : X_BUF
    port map (
      I => sigx_s(0),
      O => NlwBufferSignal_p1_ok_s_MC_D1_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D1_IN1 : X_BUF
    port map (
      I => sigx_s(0),
      O => NlwBufferSignal_p1_ok_s_MC_D1_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_4_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_4_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_5_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_5_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_5_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_5_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_6_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_6_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_6_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_6_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_7_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_7_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_7_IN2 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_PT_7_IN3 : X_BUF
    port map (
      I => sigx_s(4),
      O => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN0 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_0_46,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN0
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN1 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_1_47,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN1
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN2 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_2_48,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN2
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN3 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_3_49,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN3
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN4 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_4_50,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN4
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN5 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_5_51,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN5
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN6 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_6_52,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN6
    );
  NlwBufferBlock_p1_ok_s_MC_D2_IN7 : X_BUF
    port map (
      I => p1_ok_s_MC_D2_PT_7_53,
      O => NlwBufferSignal_p1_ok_s_MC_D2_IN7
    );
  NlwBufferBlock_sigx_s_0_MC_REG_IN : X_BUF
    port map (
      I => sigx_s_0_MC_D_55,
      O => NlwBufferSignal_sigx_s_0_MC_REG_IN
    );
  NlwBufferBlock_sigx_s_0_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_sigx_s_0_MC_REG_CLK
    );
  NlwBufferBlock_sigx_s_0_MC_D_IN0 : X_BUF
    port map (
      I => sigx_s_0_MC_D1_56,
      O => NlwBufferSignal_sigx_s_0_MC_D_IN0
    );
  NlwBufferBlock_sigx_s_0_MC_D_IN1 : X_BUF
    port map (
      I => sigx_s_0_MC_D2_57,
      O => NlwBufferSignal_sigx_s_0_MC_D_IN1
    );
  NlwBufferBlock_sigx_s_0_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_sigx_s_0_MC_D1_IN0
    );
  NlwBufferBlock_sigx_s_0_MC_D1_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s(0),
      O => NlwBufferSignal_sigx_s_0_MC_D1_IN1
    );
  NlwBufferBlock_sigx_s_1_MC_REG_IN : X_BUF
    port map (
      I => sigx_s_1_MC_D_59,
      O => NlwBufferSignal_sigx_s_1_MC_REG_IN
    );
  NlwBufferBlock_sigx_s_1_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_sigx_s_1_MC_REG_CLK
    );
  NlwBufferBlock_sigx_s_1_MC_D_IN0 : X_BUF
    port map (
      I => sigx_s_1_MC_D1_60,
      O => NlwBufferSignal_sigx_s_1_MC_D_IN0
    );
  NlwBufferBlock_sigx_s_1_MC_D_IN1 : X_BUF
    port map (
      I => sigx_s_1_MC_D2_61,
      O => NlwBufferSignal_sigx_s_1_MC_D_IN1
    );
  NlwBufferBlock_sigx_s_1_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_sigx_s_1_MC_D1_IN0
    );
  NlwBufferBlock_sigx_s_1_MC_D1_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s(1),
      O => NlwBufferSignal_sigx_s_1_MC_D1_IN1
    );
  NlwBufferBlock_sigx_s_2_MC_REG_IN : X_BUF
    port map (
      I => sigx_s_2_MC_D_63,
      O => NlwBufferSignal_sigx_s_2_MC_REG_IN
    );
  NlwBufferBlock_sigx_s_2_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_sigx_s_2_MC_REG_CLK
    );
  NlwBufferBlock_sigx_s_2_MC_D_IN0 : X_BUF
    port map (
      I => sigx_s_2_MC_D1_64,
      O => NlwBufferSignal_sigx_s_2_MC_D_IN0
    );
  NlwBufferBlock_sigx_s_2_MC_D_IN1 : X_BUF
    port map (
      I => sigx_s_2_MC_D2_65,
      O => NlwBufferSignal_sigx_s_2_MC_D_IN1
    );
  NlwBufferBlock_sigx_s_2_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_sigx_s_2_MC_D1_IN0
    );
  NlwBufferBlock_sigx_s_2_MC_D1_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s(2),
      O => NlwBufferSignal_sigx_s_2_MC_D1_IN1
    );
  NlwBufferBlock_sigx_s_3_MC_REG_IN : X_BUF
    port map (
      I => sigx_s_3_MC_D_67,
      O => NlwBufferSignal_sigx_s_3_MC_REG_IN
    );
  NlwBufferBlock_sigx_s_3_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_sigx_s_3_MC_REG_CLK
    );
  NlwBufferBlock_sigx_s_3_MC_D_IN0 : X_BUF
    port map (
      I => sigx_s_3_MC_D1_68,
      O => NlwBufferSignal_sigx_s_3_MC_D_IN0
    );
  NlwBufferBlock_sigx_s_3_MC_D_IN1 : X_BUF
    port map (
      I => sigx_s_3_MC_D2_69,
      O => NlwBufferSignal_sigx_s_3_MC_D_IN1
    );
  NlwBufferBlock_sigx_s_3_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_sigx_s_3_MC_D1_IN0
    );
  NlwBufferBlock_sigx_s_3_MC_D1_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s(3),
      O => NlwBufferSignal_sigx_s_3_MC_D1_IN1
    );
  NlwBufferBlock_sigx_s_4_MC_REG_IN : X_BUF
    port map (
      I => sigx_s_4_MC_D_71,
      O => NlwBufferSignal_sigx_s_4_MC_REG_IN
    );
  NlwBufferBlock_sigx_s_4_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_sigx_s_4_MC_REG_CLK
    );
  NlwBufferBlock_sigx_s_4_MC_D_IN0 : X_BUF
    port map (
      I => sigx_s_4_MC_D1_72,
      O => NlwBufferSignal_sigx_s_4_MC_D_IN0
    );
  NlwBufferBlock_sigx_s_4_MC_D_IN1 : X_BUF
    port map (
      I => sigx_s_4_MC_D2_73,
      O => NlwBufferSignal_sigx_s_4_MC_D_IN1
    );
  NlwBufferBlock_sigx_s_4_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_sigx_s_4_MC_D1_IN0
    );
  NlwBufferBlock_sigx_s_4_MC_D1_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s(4),
      O => NlwBufferSignal_sigx_s_4_MC_D1_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_REG_IN : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D_76,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_REG_IN
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_REG_CLK
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D_IN0 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D1_77,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D2_78,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D1_IN0 : X_BUF
    port map (
      I => txdat_3_II_UIM_5,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D1_IN1 : X_BUF
    port map (
      I => txdat_3_II_UIM_5,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D1_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => txdat_2_II_UIM_11,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => txdat_1_II_UIM_15,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => txdat_0_II_UIM_19,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => txdat_2_II_UIM_11,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => txdat_1_II_UIM_15,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => txdat_0_II_UIM_19,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => txdat_2_II_UIM_11,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => txdat_1_II_UIM_15,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => txdat_0_II_UIM_19,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => txdat_2_II_UIM_11,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => txdat_1_II_UIM_15,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => txdat_0_II_UIM_19,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_IN0 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D2_PT_0_79,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN0
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_IN1 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D2_PT_1_80,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN1
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_IN2 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D2_PT_2_81,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN2
    );
  NlwBufferBlock_p4bit_sigin_s_4_MC_D2_IN3 : X_BUF
    port map (
      I => p4bit_sigin_s_4_MC_D2_PT_3_82,
      O => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_IN3
    );
  NlwBufferBlock_rxdat_0_MC_REG_IN : X_BUF
    port map (
      I => rxdat_0_MC_D_84,
      O => NlwBufferSignal_rxdat_0_MC_REG_IN
    );
  NlwBufferBlock_rxdat_0_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_rxdat_0_MC_REG_CLK
    );
  NlwBufferBlock_rxdat_0_MC_D_IN0 : X_BUF
    port map (
      I => rxdat_0_MC_D1_85,
      O => NlwBufferSignal_rxdat_0_MC_D_IN0
    );
  NlwBufferBlock_rxdat_0_MC_D_IN1 : X_BUF
    port map (
      I => rxdat_0_MC_D2_86,
      O => NlwBufferSignal_rxdat_0_MC_D_IN1
    );
  NlwBufferBlock_rxdat_0_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_rxdat_0_MC_D1_IN0
    );
  NlwBufferBlock_rxdat_0_MC_D1_IN1 : X_BUF
    port map (
      I => p1_siginres(0),
      O => NlwBufferSignal_rxdat_0_MC_D1_IN1
    );
  NlwBufferBlock_p1_siginres_0_MC_REG_IN : X_BUF
    port map (
      I => p1_siginres_0_MC_D_89,
      O => NlwBufferSignal_p1_siginres_0_MC_REG_IN
    );
  NlwBufferBlock_p1_siginres_0_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p1_siginres_0_MC_REG_CLK
    );
  NlwBufferBlock_p1_siginres_0_MC_D_IN0 : X_BUF
    port map (
      I => p1_siginres_0_MC_D1_90,
      O => NlwBufferSignal_p1_siginres_0_MC_D_IN0
    );
  NlwBufferBlock_p1_siginres_0_MC_D_IN1 : X_BUF
    port map (
      I => p1_siginres_0_MC_D2_91,
      O => NlwBufferSignal_p1_siginres_0_MC_D_IN1
    );
  NlwBufferBlock_p1_siginres_0_MC_D1_IN0 : X_BUF
    port map (
      I => sigx_s(0),
      O => NlwBufferSignal_p1_siginres_0_MC_D1_IN0
    );
  NlwBufferBlock_p1_siginres_0_MC_D1_IN1 : X_BUF
    port map (
      I => sigx_s(0),
      O => NlwBufferSignal_p1_siginres_0_MC_D1_IN1
    );
  NlwBufferBlock_rxdat_1_MC_REG_IN : X_BUF
    port map (
      I => rxdat_1_MC_D_93,
      O => NlwBufferSignal_rxdat_1_MC_REG_IN
    );
  NlwBufferBlock_rxdat_1_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_rxdat_1_MC_REG_CLK
    );
  NlwBufferBlock_rxdat_1_MC_D_IN0 : X_BUF
    port map (
      I => rxdat_1_MC_D1_94,
      O => NlwBufferSignal_rxdat_1_MC_D_IN0
    );
  NlwBufferBlock_rxdat_1_MC_D_IN1 : X_BUF
    port map (
      I => rxdat_1_MC_D2_95,
      O => NlwBufferSignal_rxdat_1_MC_D_IN1
    );
  NlwBufferBlock_rxdat_1_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_rxdat_1_MC_D1_IN0
    );
  NlwBufferBlock_rxdat_1_MC_D1_IN1 : X_BUF
    port map (
      I => p1_siginres(1),
      O => NlwBufferSignal_rxdat_1_MC_D1_IN1
    );
  NlwBufferBlock_p1_siginres_1_MC_REG_IN : X_BUF
    port map (
      I => p1_siginres_1_MC_D_98,
      O => NlwBufferSignal_p1_siginres_1_MC_REG_IN
    );
  NlwBufferBlock_p1_siginres_1_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p1_siginres_1_MC_REG_CLK
    );
  NlwBufferBlock_p1_siginres_1_MC_D_IN0 : X_BUF
    port map (
      I => p1_siginres_1_MC_D1_99,
      O => NlwBufferSignal_p1_siginres_1_MC_D_IN0
    );
  NlwBufferBlock_p1_siginres_1_MC_D_IN1 : X_BUF
    port map (
      I => p1_siginres_1_MC_D2_100,
      O => NlwBufferSignal_p1_siginres_1_MC_D_IN1
    );
  NlwBufferBlock_p1_siginres_1_MC_D1_IN0 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_siginres_1_MC_D1_IN0
    );
  NlwBufferBlock_p1_siginres_1_MC_D1_IN1 : X_BUF
    port map (
      I => sigx_s(1),
      O => NlwBufferSignal_p1_siginres_1_MC_D1_IN1
    );
  NlwBufferBlock_rxdat_2_MC_REG_IN : X_BUF
    port map (
      I => rxdat_2_MC_D_102,
      O => NlwBufferSignal_rxdat_2_MC_REG_IN
    );
  NlwBufferBlock_rxdat_2_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_rxdat_2_MC_REG_CLK
    );
  NlwBufferBlock_rxdat_2_MC_D_IN0 : X_BUF
    port map (
      I => rxdat_2_MC_D1_103,
      O => NlwBufferSignal_rxdat_2_MC_D_IN0
    );
  NlwBufferBlock_rxdat_2_MC_D_IN1 : X_BUF
    port map (
      I => rxdat_2_MC_D2_104,
      O => NlwBufferSignal_rxdat_2_MC_D_IN1
    );
  NlwBufferBlock_rxdat_2_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_rxdat_2_MC_D1_IN0
    );
  NlwBufferBlock_rxdat_2_MC_D1_IN1 : X_BUF
    port map (
      I => p1_siginres(2),
      O => NlwBufferSignal_rxdat_2_MC_D1_IN1
    );
  NlwBufferBlock_p1_siginres_2_MC_REG_IN : X_BUF
    port map (
      I => p1_siginres_2_MC_D_107,
      O => NlwBufferSignal_p1_siginres_2_MC_REG_IN
    );
  NlwBufferBlock_p1_siginres_2_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p1_siginres_2_MC_REG_CLK
    );
  NlwBufferBlock_p1_siginres_2_MC_D_IN0 : X_BUF
    port map (
      I => p1_siginres_2_MC_D1_108,
      O => NlwBufferSignal_p1_siginres_2_MC_D_IN0
    );
  NlwBufferBlock_p1_siginres_2_MC_D_IN1 : X_BUF
    port map (
      I => p1_siginres_2_MC_D2_109,
      O => NlwBufferSignal_p1_siginres_2_MC_D_IN1
    );
  NlwBufferBlock_p1_siginres_2_MC_D1_IN0 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_siginres_2_MC_D1_IN0
    );
  NlwBufferBlock_p1_siginres_2_MC_D1_IN1 : X_BUF
    port map (
      I => sigx_s(2),
      O => NlwBufferSignal_p1_siginres_2_MC_D1_IN1
    );
  NlwBufferBlock_rxdat_3_MC_REG_IN : X_BUF
    port map (
      I => rxdat_3_MC_D_111,
      O => NlwBufferSignal_rxdat_3_MC_REG_IN
    );
  NlwBufferBlock_rxdat_3_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_rxdat_3_MC_REG_CLK
    );
  NlwBufferBlock_rxdat_3_MC_D_IN0 : X_BUF
    port map (
      I => rxdat_3_MC_D1_112,
      O => NlwBufferSignal_rxdat_3_MC_D_IN0
    );
  NlwBufferBlock_rxdat_3_MC_D_IN1 : X_BUF
    port map (
      I => rxdat_3_MC_D2_113,
      O => NlwBufferSignal_rxdat_3_MC_D_IN1
    );
  NlwBufferBlock_rxdat_3_MC_D1_IN0 : X_BUF
    port map (
      I => nres_II_UIM_3,
      O => NlwBufferSignal_rxdat_3_MC_D1_IN0
    );
  NlwBufferBlock_rxdat_3_MC_D1_IN1 : X_BUF
    port map (
      I => p1_siginres(3),
      O => NlwBufferSignal_rxdat_3_MC_D1_IN1
    );
  NlwBufferBlock_p1_siginres_3_MC_REG_IN : X_BUF
    port map (
      I => p1_siginres_3_MC_D_116,
      O => NlwBufferSignal_p1_siginres_3_MC_REG_IN
    );
  NlwBufferBlock_p1_siginres_3_MC_REG_CLK : X_BUF
    port map (
      I => clk_II_FCLK_1,
      O => NlwBufferSignal_p1_siginres_3_MC_REG_CLK
    );
  NlwBufferBlock_p1_siginres_3_MC_D_IN0 : X_BUF
    port map (
      I => p1_siginres_3_MC_D1_117,
      O => NlwBufferSignal_p1_siginres_3_MC_D_IN0
    );
  NlwBufferBlock_p1_siginres_3_MC_D_IN1 : X_BUF
    port map (
      I => p1_siginres_3_MC_D2_118,
      O => NlwBufferSignal_p1_siginres_3_MC_D_IN1
    );
  NlwBufferBlock_p1_siginres_3_MC_D1_IN0 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_siginres_3_MC_D1_IN0
    );
  NlwBufferBlock_p1_siginres_3_MC_D1_IN1 : X_BUF
    port map (
      I => sigx_s(3),
      O => NlwBufferSignal_p1_siginres_3_MC_D1_IN1
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_3_IN3
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_4_IN0,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_4_IN0
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN0,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN0
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN2,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN2
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_5_IN3,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_5_IN3
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN0,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN0
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_6_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN1,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN1
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_6_IN3 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_6_IN3,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_6_IN3
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_7_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN0,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN0
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_7_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN1,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN1
    );
  NlwInverterBlock_p1_ok_s_MC_D2_PT_7_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p1_ok_s_MC_D2_PT_7_IN2,
      O => NlwInverterSignal_p1_ok_s_MC_D2_PT_7_IN2
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_p4bit_sigin_s_4_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_p4bit_sigin_s_4_MC_D2_PT_3_IN2
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

