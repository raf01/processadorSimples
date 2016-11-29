-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "11/29/2016 18:27:21"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processadorSimples IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END processadorSimples;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[8]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[9]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processadorSimples IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ula|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ula|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \ula|Add0~6_combout\ : std_logic;
SIGNAL \ula|Add0~9_combout\ : std_logic;
SIGNAL \ula|Add0~15_combout\ : std_logic;
SIGNAL \ula|Add0~18_combout\ : std_logic;
SIGNAL \ula|Add0~21_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[9]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \ula|Mux7~0_combout\ : std_logic;
SIGNAL \ula|Add0~5_combout\ : std_logic;
SIGNAL \ula|Add0~8_combout\ : std_logic;
SIGNAL \ula|Add0~11_combout\ : std_logic;
SIGNAL \ula|Mux3~0_combout\ : std_logic;
SIGNAL \ula|Mux1~0_combout\ : std_logic;
SIGNAL \ula|Add0~20_combout\ : std_logic;
SIGNAL \ula|Mux1~2_combout\ : std_logic;
SIGNAL \ula|Mux0~1_combout\ : std_logic;
SIGNAL \ula|Mux0~5_combout\ : std_logic;
SIGNAL \RAM|mem[10][0]~regout\ : std_logic;
SIGNAL \RAM|mem[9][0]~regout\ : std_logic;
SIGNAL \RAM|mem[8][0]~regout\ : std_logic;
SIGNAL \RAM|Mux7~0_combout\ : std_logic;
SIGNAL \RAM|mem[11][0]~regout\ : std_logic;
SIGNAL \RAM|Mux7~1_combout\ : std_logic;
SIGNAL \RAM|mem[5][0]~regout\ : std_logic;
SIGNAL \RAM|mem[0][0]~regout\ : std_logic;
SIGNAL \RAM|mem[14][0]~regout\ : std_logic;
SIGNAL \RAM|mem[15][0]~regout\ : std_logic;
SIGNAL \RAM|mem[6][1]~regout\ : std_logic;
SIGNAL \RAM|mem[10][1]~regout\ : std_logic;
SIGNAL \RAM|mem[2][1]~regout\ : std_logic;
SIGNAL \RAM|Mux6~0_combout\ : std_logic;
SIGNAL \RAM|mem[14][1]~regout\ : std_logic;
SIGNAL \RAM|Mux6~1_combout\ : std_logic;
SIGNAL \RAM|mem[9][1]~regout\ : std_logic;
SIGNAL \RAM|mem[1][1]~regout\ : std_logic;
SIGNAL \RAM|mem[4][1]~regout\ : std_logic;
SIGNAL \RAM|mem[0][1]~regout\ : std_logic;
SIGNAL \RAM|mem[3][1]~regout\ : std_logic;
SIGNAL \RAM|mem[6][2]~regout\ : std_logic;
SIGNAL \RAM|mem[5][2]~regout\ : std_logic;
SIGNAL \RAM|mem[4][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~0_combout\ : std_logic;
SIGNAL \RAM|mem[7][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~1_combout\ : std_logic;
SIGNAL \RAM|mem[0][2]~regout\ : std_logic;
SIGNAL \RAM|mem[3][2]~regout\ : std_logic;
SIGNAL \RAM|mem[14][2]~regout\ : std_logic;
SIGNAL \RAM|mem[13][2]~regout\ : std_logic;
SIGNAL \RAM|mem[1][3]~regout\ : std_logic;
SIGNAL \RAM|mem[2][3]~regout\ : std_logic;
SIGNAL \RAM|mem[14][3]~regout\ : std_logic;
SIGNAL \RAM|mem[10][4]~regout\ : std_logic;
SIGNAL \RAM|mem[9][4]~regout\ : std_logic;
SIGNAL \RAM|mem[8][4]~regout\ : std_logic;
SIGNAL \RAM|Mux3~0_combout\ : std_logic;
SIGNAL \RAM|mem[11][4]~regout\ : std_logic;
SIGNAL \RAM|Mux3~1_combout\ : std_logic;
SIGNAL \RAM|mem[6][4]~regout\ : std_logic;
SIGNAL \RAM|mem[2][4]~regout\ : std_logic;
SIGNAL \RAM|mem[0][4]~regout\ : std_logic;
SIGNAL \RAM|mem[6][5]~regout\ : std_logic;
SIGNAL \RAM|mem[10][5]~regout\ : std_logic;
SIGNAL \RAM|mem[2][5]~regout\ : std_logic;
SIGNAL \RAM|Mux2~0_combout\ : std_logic;
SIGNAL \RAM|mem[14][5]~regout\ : std_logic;
SIGNAL \RAM|Mux2~1_combout\ : std_logic;
SIGNAL \RAM|mem[1][5]~regout\ : std_logic;
SIGNAL \RAM|mem[4][5]~regout\ : std_logic;
SIGNAL \RAM|mem[0][5]~regout\ : std_logic;
SIGNAL \RAM|mem[3][5]~regout\ : std_logic;
SIGNAL \RAM|mem[7][6]~regout\ : std_logic;
SIGNAL \RAM|mem[2][6]~regout\ : std_logic;
SIGNAL \RAM|mem[3][6]~regout\ : std_logic;
SIGNAL \RAM|mem[5][7]~regout\ : std_logic;
SIGNAL \RAM|mem[1][7]~regout\ : std_logic;
SIGNAL \RAM|mem[14][7]~regout\ : std_logic;
SIGNAL \RAM|mem[8][7]~regout\ : std_logic;
SIGNAL \RAM|mem[0][7]~regout\ : std_logic;
SIGNAL \RAM|mem[3][7]~regout\ : std_logic;
SIGNAL \RAM|mem[15][7]~regout\ : std_logic;
SIGNAL \RAM|mem~12_combout\ : std_logic;
SIGNAL \RAM|mem~20_combout\ : std_logic;
SIGNAL \RAM|mem~21_combout\ : std_logic;
SIGNAL \RAM|mem~22_combout\ : std_logic;
SIGNAL \RAM|mem~23_combout\ : std_logic;
SIGNAL \RAM|mem~26_combout\ : std_logic;
SIGNAL \RAM|mem~27_combout\ : std_logic;
SIGNAL \RAM|mem~28_combout\ : std_logic;
SIGNAL \RAM|mem~29_combout\ : std_logic;
SIGNAL \RAM|mem~32_combout\ : std_logic;
SIGNAL \RAM|mem~34_combout\ : std_logic;
SIGNAL \RAM|mem~36_combout\ : std_logic;
SIGNAL \RAM|mem~37_combout\ : std_logic;
SIGNAL \RAM|mem~38_combout\ : std_logic;
SIGNAL \RAM|mem~39_combout\ : std_logic;
SIGNAL \RAM|mem~41_combout\ : std_logic;
SIGNAL \RAM|mem~43_combout\ : std_logic;
SIGNAL \RAM|mem~44_combout\ : std_logic;
SIGNAL \RAM|mem~46_combout\ : std_logic;
SIGNAL \RAM|mem~47_combout\ : std_logic;
SIGNAL \ula|Mux2~4_combout\ : std_logic;
SIGNAL \ula|Mux3~4_combout\ : std_logic;
SIGNAL \ula|Mux5~4_combout\ : std_logic;
SIGNAL \RAM|mem[5][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[14][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[14][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[5][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[7][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[10][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[14][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[7][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[8][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[5][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][7]~feeder_combout\ : std_logic;
SIGNAL \mux|out2~0_combout\ : std_logic;
SIGNAL \mux|out2~4_combout\ : std_logic;
SIGNAL \mux|out2~1_combout\ : std_logic;
SIGNAL \mux|out2~5_combout\ : std_logic;
SIGNAL \mux|out2[4]~feeder_combout\ : std_logic;
SIGNAL \mux|out2~8_combout\ : std_logic;
SIGNAL \mux|out2~7_combout\ : std_logic;
SIGNAL \mux|out2[6]~feeder_combout\ : std_logic;
SIGNAL \ula|saidaULA[1]~0_combout\ : std_logic;
SIGNAL \mux|out0[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \mux|out1~0_combout\ : std_logic;
SIGNAL \mux|out1~1_combout\ : std_logic;
SIGNAL \mux|out1[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Mux7~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mux|out0[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \mux|out2~2_combout\ : std_logic;
SIGNAL \mux|out2~3_combout\ : std_logic;
SIGNAL \mux|out2~6_combout\ : std_logic;
SIGNAL \mux|out1~2_combout\ : std_logic;
SIGNAL \mux|out1[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Mux6~1_combout\ : std_logic;
SIGNAL \ula|saidaULA[1]~1_combout\ : std_logic;
SIGNAL \mux|out0~1_combout\ : std_logic;
SIGNAL \mux|out0[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \UC|Decoder0~3_combout\ : std_logic;
SIGNAL \UC|we~feeder_combout\ : std_logic;
SIGNAL \UC|we~regout\ : std_logic;
SIGNAL \mux|out1~3_combout\ : std_logic;
SIGNAL \mux|out1[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Mux5~1_combout\ : std_logic;
SIGNAL \mux|out0[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Add0~0_combout\ : std_logic;
SIGNAL \ula|Add0~2_cout\ : std_logic;
SIGNAL \ula|Add0~4\ : std_logic;
SIGNAL \ula|Add0~7\ : std_logic;
SIGNAL \ula|Add0~10\ : std_logic;
SIGNAL \ula|Add0~12_combout\ : std_logic;
SIGNAL \mux|out1~4_combout\ : std_logic;
SIGNAL \mux|out1[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Mux4~1_combout\ : std_logic;
SIGNAL \mux|out1~6_combout\ : std_logic;
SIGNAL \mux|out1[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \mux|out1~8_combout\ : std_logic;
SIGNAL \mux|out1[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \mux|out1[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \mux|out1~5_combout\ : std_logic;
SIGNAL \mux|out1[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ : std_logic;
SIGNAL \ula|Mux0~0_combout\ : std_logic;
SIGNAL \ula|Mux0~2_combout\ : std_logic;
SIGNAL \ula|Mux0~3_combout\ : std_logic;
SIGNAL \mux|out0[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ula|Mux2~5_combout\ : std_logic;
SIGNAL \mux|out1[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \mux|out1~7_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \ula|Mux2~0_combout\ : std_logic;
SIGNAL \ula|Mux2~1_combout\ : std_logic;
SIGNAL \ula|Mux2~2_combout\ : std_logic;
SIGNAL \ula|Mux2~3_combout\ : std_logic;
SIGNAL \UC|Decoder0~2_combout\ : std_logic;
SIGNAL \UC|enableULA~regout\ : std_logic;
SIGNAL \ula|saidaULA[0]~2_combout\ : std_logic;
SIGNAL \UC|dataInMem[5]~feeder_combout\ : std_logic;
SIGNAL \RAM|Decoder0~14_combout\ : std_logic;
SIGNAL \RAM|mem[12][0]~18_combout\ : std_logic;
SIGNAL \RAM|mem[12][5]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~2_combout\ : std_logic;
SIGNAL \RAM|mem[8][0]~2_combout\ : std_logic;
SIGNAL \RAM|mem[8][5]~regout\ : std_logic;
SIGNAL \RAM|Mux2~4_combout\ : std_logic;
SIGNAL \RAM|Mux2~5_combout\ : std_logic;
SIGNAL \RAM|Decoder0~1_combout\ : std_logic;
SIGNAL \RAM|mem[9][0]~1_combout\ : std_logic;
SIGNAL \RAM|mem[9][5]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~12_combout\ : std_logic;
SIGNAL \RAM|mem[13][0]~16_combout\ : std_logic;
SIGNAL \RAM|mem[13][5]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~4_combout\ : std_logic;
SIGNAL \RAM|mem[5][0]~4_combout\ : std_logic;
SIGNAL \RAM|mem[5][5]~regout\ : std_logic;
SIGNAL \RAM|Mux2~2_combout\ : std_logic;
SIGNAL \RAM|Mux2~3_combout\ : std_logic;
SIGNAL \RAM|Mux2~6_combout\ : std_logic;
SIGNAL \RAM|mem[15][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|Decoder0~15_combout\ : std_logic;
SIGNAL \RAM|mem[15][0]~19_combout\ : std_logic;
SIGNAL \RAM|mem[15][5]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~3_combout\ : std_logic;
SIGNAL \RAM|mem[11][0]~3_combout\ : std_logic;
SIGNAL \RAM|mem[11][5]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~7_combout\ : std_logic;
SIGNAL \RAM|mem[7][0]~7_combout\ : std_logic;
SIGNAL \RAM|mem[7][5]~regout\ : std_logic;
SIGNAL \RAM|Mux2~7_combout\ : std_logic;
SIGNAL \RAM|Mux2~8_combout\ : std_logic;
SIGNAL \RAM|Mux2~9_combout\ : std_logic;
SIGNAL \UC|rd~0_combout\ : std_logic;
SIGNAL \UC|rd~feeder_combout\ : std_logic;
SIGNAL \UC|rd~regout\ : std_logic;
SIGNAL \UC|Decoder0~1_combout\ : std_logic;
SIGNAL \UC|variacao~regout\ : std_logic;
SIGNAL \mux|out0~11_combout\ : std_logic;
SIGNAL \mux|out0~12_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \ula|Mux0~4_combout\ : std_logic;
SIGNAL \ula|Add0~23_combout\ : std_logic;
SIGNAL \ula|Add0~17_combout\ : std_logic;
SIGNAL \ula|Add0~14_combout\ : std_logic;
SIGNAL \ula|Add0~13\ : std_logic;
SIGNAL \ula|Add0~16\ : std_logic;
SIGNAL \ula|Add0~19\ : std_logic;
SIGNAL \ula|Add0~22\ : std_logic;
SIGNAL \ula|Add0~24_combout\ : std_logic;
SIGNAL \ula|Mux0~6_combout\ : std_logic;
SIGNAL \ula|Mux0~7_combout\ : std_logic;
SIGNAL \UC|dataInMem[7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[11][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[11][7]~regout\ : std_logic;
SIGNAL \RAM|Mux0~7_combout\ : std_logic;
SIGNAL \RAM|mem[7][7]~regout\ : std_logic;
SIGNAL \RAM|Mux0~8_combout\ : std_logic;
SIGNAL \RAM|mem[13][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[13][7]~regout\ : std_logic;
SIGNAL \RAM|mem[9][7]~regout\ : std_logic;
SIGNAL \RAM|Mux0~0_combout\ : std_logic;
SIGNAL \RAM|Mux0~1_combout\ : std_logic;
SIGNAL \RAM|mem[10][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0_combout\ : std_logic;
SIGNAL \RAM|mem[10][0]~0_combout\ : std_logic;
SIGNAL \RAM|mem[10][7]~regout\ : std_logic;
SIGNAL \RAM|mem~45_combout\ : std_logic;
SIGNAL \RAM|Decoder0~8_combout\ : std_logic;
SIGNAL \RAM|mem[2][4]~9_combout\ : std_logic;
SIGNAL \RAM|mem[2][7]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~5_combout\ : std_logic;
SIGNAL \RAM|mem[6][0]~5_combout\ : std_logic;
SIGNAL \RAM|mem[6][7]~regout\ : std_logic;
SIGNAL \RAM|Mux0~2_combout\ : std_logic;
SIGNAL \RAM|Mux0~3_combout\ : std_logic;
SIGNAL \RAM|mem[12][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[12][7]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~6_combout\ : std_logic;
SIGNAL \RAM|mem[4][0]~6_combout\ : std_logic;
SIGNAL \RAM|mem[4][7]~regout\ : std_logic;
SIGNAL \RAM|Mux0~4_combout\ : std_logic;
SIGNAL \RAM|Mux0~5_combout\ : std_logic;
SIGNAL \RAM|Mux0~6_combout\ : std_logic;
SIGNAL \RAM|Mux0~9_combout\ : std_logic;
SIGNAL \mux|out0~15_combout\ : std_logic;
SIGNAL \mux|out0~16_combout\ : std_logic;
SIGNAL \mux|out0[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[9]~11_combout\ : std_logic;
SIGNAL \ula|Mux1~1_combout\ : std_logic;
SIGNAL \ula|Mux1~3_combout\ : std_logic;
SIGNAL \ula|Mux1~4_combout\ : std_logic;
SIGNAL \ula|Mux1~5_combout\ : std_logic;
SIGNAL \UC|dataInMem[6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][6]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~13_combout\ : std_logic;
SIGNAL \RAM|mem[14][0]~17_combout\ : std_logic;
SIGNAL \RAM|mem[14][6]~regout\ : std_logic;
SIGNAL \RAM|mem[13][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[13][6]~regout\ : std_logic;
SIGNAL \RAM|mem[12][6]~regout\ : std_logic;
SIGNAL \RAM|Mux1~7_combout\ : std_logic;
SIGNAL \RAM|Mux1~8_combout\ : std_logic;
SIGNAL \RAM|mem[6][6]~regout\ : std_logic;
SIGNAL \RAM|mem[4][6]~regout\ : std_logic;
SIGNAL \RAM|mem[5][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[5][6]~regout\ : std_logic;
SIGNAL \RAM|Mux1~0_combout\ : std_logic;
SIGNAL \RAM|Mux1~1_combout\ : std_logic;
SIGNAL \RAM|mem[11][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[11][6]~regout\ : std_logic;
SIGNAL \RAM|mem[9][6]~regout\ : std_logic;
SIGNAL \RAM|mem[10][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[10][6]~regout\ : std_logic;
SIGNAL \RAM|mem[8][6]~regout\ : std_logic;
SIGNAL \RAM|Mux1~2_combout\ : std_logic;
SIGNAL \RAM|Mux1~3_combout\ : std_logic;
SIGNAL \RAM|Decoder0~9_combout\ : std_logic;
SIGNAL \RAM|mem~40_combout\ : std_logic;
SIGNAL \RAM|mem[1][3]~11_combout\ : std_logic;
SIGNAL \RAM|mem[1][6]~regout\ : std_logic;
SIGNAL \RAM|Decoder0~10_combout\ : std_logic;
SIGNAL \RAM|mem~42_combout\ : std_logic;
SIGNAL \RAM|mem[0][6]~13_combout\ : std_logic;
SIGNAL \RAM|mem[0][6]~regout\ : std_logic;
SIGNAL \RAM|Mux1~4_combout\ : std_logic;
SIGNAL \RAM|Mux1~5_combout\ : std_logic;
SIGNAL \RAM|Mux1~6_combout\ : std_logic;
SIGNAL \RAM|Mux1~9_combout\ : std_logic;
SIGNAL \mux|out0~13_combout\ : std_logic;
SIGNAL \mux|out0~14_combout\ : std_logic;
SIGNAL \mux|out0[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \mux|out0[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \mux|out0[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ula|Mux3~5_combout\ : std_logic;
SIGNAL \ula|Mux3~1_combout\ : std_logic;
SIGNAL \ula|Mux3~2_combout\ : std_logic;
SIGNAL \ula|Mux3~3_combout\ : std_logic;
SIGNAL \UC|dataInMem[4]~feeder_combout\ : std_logic;
SIGNAL \RAM|Decoder0~11_combout\ : std_logic;
SIGNAL \RAM|mem~35_combout\ : std_logic;
SIGNAL \RAM|mem[3][4]~15_combout\ : std_logic;
SIGNAL \RAM|mem[3][4]~regout\ : std_logic;
SIGNAL \RAM|mem~33_combout\ : std_logic;
SIGNAL \RAM|mem[1][4]~regout\ : std_logic;
SIGNAL \RAM|Mux3~4_combout\ : std_logic;
SIGNAL \RAM|Mux3~5_combout\ : std_logic;
SIGNAL \RAM|mem[5][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[5][4]~regout\ : std_logic;
SIGNAL \RAM|mem[7][4]~regout\ : std_logic;
SIGNAL \RAM|mem[4][4]~regout\ : std_logic;
SIGNAL \RAM|Mux3~2_combout\ : std_logic;
SIGNAL \RAM|Mux3~3_combout\ : std_logic;
SIGNAL \RAM|Mux3~6_combout\ : std_logic;
SIGNAL \RAM|mem[15][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][4]~regout\ : std_logic;
SIGNAL \RAM|mem[13][4]~regout\ : std_logic;
SIGNAL \RAM|mem[14][4]~regout\ : std_logic;
SIGNAL \RAM|mem[12][4]~regout\ : std_logic;
SIGNAL \RAM|Mux3~7_combout\ : std_logic;
SIGNAL \RAM|Mux3~8_combout\ : std_logic;
SIGNAL \RAM|Mux3~9_combout\ : std_logic;
SIGNAL \mux|out0~9_combout\ : std_logic;
SIGNAL \mux|out0~10_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \ula|Mux4~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \ula|Mux4~5_combout\ : std_logic;
SIGNAL \ula|Mux4~0_combout\ : std_logic;
SIGNAL \ula|Mux4~2_combout\ : std_logic;
SIGNAL \ula|Mux4~3_combout\ : std_logic;
SIGNAL \UC|dataInMem[3]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[5][3]~regout\ : std_logic;
SIGNAL \RAM|mem[13][3]~regout\ : std_logic;
SIGNAL \RAM|mem[9][3]~regout\ : std_logic;
SIGNAL \RAM|Mux4~0_combout\ : std_logic;
SIGNAL \RAM|Mux4~1_combout\ : std_logic;
SIGNAL \RAM|mem[15][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][3]~regout\ : std_logic;
SIGNAL \RAM|mem[7][3]~regout\ : std_logic;
SIGNAL \RAM|mem[11][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[11][3]~regout\ : std_logic;
SIGNAL \RAM|mem~31_combout\ : std_logic;
SIGNAL \RAM|mem[3][3]~regout\ : std_logic;
SIGNAL \RAM|Mux4~7_combout\ : std_logic;
SIGNAL \RAM|Mux4~8_combout\ : std_logic;
SIGNAL \RAM|mem[12][3]~regout\ : std_logic;
SIGNAL \RAM|mem[8][3]~regout\ : std_logic;
SIGNAL \RAM|mem[4][3]~regout\ : std_logic;
SIGNAL \RAM|mem~30_combout\ : std_logic;
SIGNAL \RAM|mem[0][3]~regout\ : std_logic;
SIGNAL \RAM|Mux4~4_combout\ : std_logic;
SIGNAL \RAM|Mux4~5_combout\ : std_logic;
SIGNAL \RAM|mem[10][3]~regout\ : std_logic;
SIGNAL \RAM|mem[6][3]~regout\ : std_logic;
SIGNAL \RAM|Mux4~2_combout\ : std_logic;
SIGNAL \RAM|Mux4~3_combout\ : std_logic;
SIGNAL \RAM|Mux4~6_combout\ : std_logic;
SIGNAL \RAM|Mux4~9_combout\ : std_logic;
SIGNAL \mux|out0~7_combout\ : std_logic;
SIGNAL \mux|out0~8_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \ula|Mux5~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \ula|Mux5~5_combout\ : std_logic;
SIGNAL \ula|Mux5~2_combout\ : std_logic;
SIGNAL \ula|Mux5~3_combout\ : std_logic;
SIGNAL \UC|dataInMem[2]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem~24_combout\ : std_logic;
SIGNAL \RAM|mem[1][2]~regout\ : std_logic;
SIGNAL \RAM|mem~25_combout\ : std_logic;
SIGNAL \RAM|mem[2][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~4_combout\ : std_logic;
SIGNAL \RAM|Mux5~5_combout\ : std_logic;
SIGNAL \RAM|mem[9][2]~regout\ : std_logic;
SIGNAL \RAM|mem[8][2]~regout\ : std_logic;
SIGNAL \RAM|mem[10][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~2_combout\ : std_logic;
SIGNAL \RAM|mem[11][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~3_combout\ : std_logic;
SIGNAL \RAM|Mux5~6_combout\ : std_logic;
SIGNAL \RAM|mem[15][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[15][2]~regout\ : std_logic;
SIGNAL \RAM|mem[12][2]~regout\ : std_logic;
SIGNAL \RAM|Mux5~7_combout\ : std_logic;
SIGNAL \RAM|Mux5~8_combout\ : std_logic;
SIGNAL \RAM|Mux5~9_combout\ : std_logic;
SIGNAL \mux|out0~5_combout\ : std_logic;
SIGNAL \mux|out0~6_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \ula|Mux6~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \ula|Mux6~5_combout\ : std_logic;
SIGNAL \ula|Mux6~0_combout\ : std_logic;
SIGNAL \ula|Mux6~2_combout\ : std_logic;
SIGNAL \ula|Mux6~3_combout\ : std_logic;
SIGNAL \UC|dataInMem[1]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[12][1]~regout\ : std_logic;
SIGNAL \RAM|mem[8][1]~regout\ : std_logic;
SIGNAL \RAM|Mux6~4_combout\ : std_logic;
SIGNAL \RAM|Mux6~5_combout\ : std_logic;
SIGNAL \RAM|mem[13][1]~regout\ : std_logic;
SIGNAL \RAM|mem[5][1]~regout\ : std_logic;
SIGNAL \RAM|Mux6~2_combout\ : std_logic;
SIGNAL \RAM|Mux6~3_combout\ : std_logic;
SIGNAL \RAM|Mux6~6_combout\ : std_logic;
SIGNAL \RAM|mem[15][1]~regout\ : std_logic;
SIGNAL \RAM|mem[11][1]~regout\ : std_logic;
SIGNAL \RAM|mem[7][1]~regout\ : std_logic;
SIGNAL \RAM|Mux6~7_combout\ : std_logic;
SIGNAL \RAM|Mux6~8_combout\ : std_logic;
SIGNAL \RAM|Mux6~9_combout\ : std_logic;
SIGNAL \mux|out0~3_combout\ : std_logic;
SIGNAL \mux|out0~4_combout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \ula|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \ula|Add0~3_combout\ : std_logic;
SIGNAL \ula|Mux7~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \ula|Mux7~1_combout\ : std_logic;
SIGNAL \ula|Mux7~4_combout\ : std_logic;
SIGNAL \ula|Mux7~5_combout\ : std_logic;
SIGNAL \UC|dataInMem[0]~feeder_combout\ : std_logic;
SIGNAL \RAM|mem[13][0]~regout\ : std_logic;
SIGNAL \RAM|mem[12][0]~regout\ : std_logic;
SIGNAL \RAM|Mux7~7_combout\ : std_logic;
SIGNAL \RAM|Mux7~8_combout\ : std_logic;
SIGNAL \RAM|mem[7][0]~regout\ : std_logic;
SIGNAL \RAM|mem[6][0]~regout\ : std_logic;
SIGNAL \RAM|mem[4][0]~regout\ : std_logic;
SIGNAL \RAM|Mux7~2_combout\ : std_logic;
SIGNAL \RAM|Mux7~3_combout\ : std_logic;
SIGNAL \RAM|mem~14_combout\ : std_logic;
SIGNAL \RAM|mem[3][0]~regout\ : std_logic;
SIGNAL \RAM|mem~8_combout\ : std_logic;
SIGNAL \RAM|mem[2][0]~regout\ : std_logic;
SIGNAL \RAM|mem~10_combout\ : std_logic;
SIGNAL \RAM|mem[1][0]~regout\ : std_logic;
SIGNAL \RAM|Mux7~4_combout\ : std_logic;
SIGNAL \RAM|Mux7~5_combout\ : std_logic;
SIGNAL \RAM|Mux7~6_combout\ : std_logic;
SIGNAL \RAM|Mux7~9_combout\ : std_logic;
SIGNAL \mux|out0~0_combout\ : std_logic;
SIGNAL \mux|out0~2_combout\ : std_logic;
SIGNAL \mux|Mux7~0_combout\ : std_logic;
SIGNAL \mux|Mux7~1_combout\ : std_logic;
SIGNAL \mux|Mux6~0_combout\ : std_logic;
SIGNAL \mux|Mux6~1_combout\ : std_logic;
SIGNAL \mux|Mux5~0_combout\ : std_logic;
SIGNAL \mux|Mux5~1_combout\ : std_logic;
SIGNAL \mux|Mux4~0_combout\ : std_logic;
SIGNAL \mux|Mux4~1_combout\ : std_logic;
SIGNAL \mux|Mux3~0_combout\ : std_logic;
SIGNAL \mux|Mux3~1_combout\ : std_logic;
SIGNAL \mux|Mux2~0_combout\ : std_logic;
SIGNAL \mux|Mux2~1_combout\ : std_logic;
SIGNAL \mux|Mux1~0_combout\ : std_logic;
SIGNAL \mux|Mux1~1_combout\ : std_logic;
SIGNAL \mux|Mux0~0_combout\ : std_logic;
SIGNAL \mux|Mux0~1_combout\ : std_logic;
SIGNAL \UC|Decoder0~0_combout\ : std_logic;
SIGNAL \UC|ledSaidaMem[1]~feeder_combout\ : std_logic;
SIGNAL \UC|ledSaidaMem[2]~feeder_combout\ : std_logic;
SIGNAL \UC|ledSaidaMem[4]~feeder_combout\ : std_logic;
SIGNAL \UC|ledSaidaMem[5]~feeder_combout\ : std_logic;
SIGNAL \UC|ledSaidaMem[7]~feeder_combout\ : std_logic;
SIGNAL \ula|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \ula|saidaULA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux|out2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux|choiceOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|ledSaidaMem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|dataInMem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|barmemoria\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ula|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\ula|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\ula|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\ula|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \ula|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\ula|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \ula|Mult0|auto_generated|mac_mult1~dataout\ & \ula|Mult0|auto_generated|mac_mult1~1\ & \ula|Mult0|auto_generated|mac_mult1~0\);

\ula|Mult0|auto_generated|mac_out2~0\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\ula|Mult0|auto_generated|mac_out2~1\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\ula|Mult0|auto_generated|mac_out2~dataout\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\ula|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\ula|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\ula|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\ula|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\ula|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\ula|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\ula|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\ula|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\ula|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\ula|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\ula|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\ula|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\ula|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\ula|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\ula|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\ula|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\mux|out0~16_combout\ & \mux|out0~14_combout\ & \mux|out0~12_combout\ & \mux|out0~10_combout\ & \mux|out0~8_combout\ & \mux|out0~6_combout\ & \mux|out0~4_combout\ & \mux|out0~2_combout\ & gnd);

\ula|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\mux|out1~8_combout\ & \mux|out1~7_combout\ & \mux|out1~6_combout\ & \mux|out1~5_combout\ & \mux|out1~4_combout\ & \mux|out1~3_combout\ & \mux|out1~2_combout\ & \mux|out1~1_combout\ & gnd);

\ula|Mult0|auto_generated|mac_mult1~0\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\ula|Mult0|auto_generated|mac_mult1~1\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\ula|Mult0|auto_generated|mac_mult1~dataout\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\ula|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCCOMB_X37_Y13_N24
\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) 
-- # (!\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\mux|out1[1]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\mux|out1[1]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))) 
-- # (!\mux|out1[1]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X37_Y13_N26
\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\mux|out1[2]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) 
-- # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\mux|out1[2]~_Duplicate_1_regout\))) 
-- # (!\ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\mux|out1[2]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \mux|out1[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X37_Y13_N16
\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) 
-- # (!\mux|out1[3]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\mux|out1[3]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (\mux|out1[3]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X36_Y12_N8
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ $ (\mux|out1[4]~_Duplicate_1_regout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # 
-- (!\mux|out1[4]~_Duplicate_1_regout\))) # (!\ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & (!\mux|out1[4]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datab => \mux|out1[4]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X37_Y12_N10
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\mux|out1[2]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\mux|out1[2]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # 
-- (!\mux|out1[2]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X37_Y12_N12
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\mux|out1[3]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # (!\mux|out1[3]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (\mux|out1[3]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X37_Y12_N16
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\mux|out1[5]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\mux|out1[5]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\mux|out1[5]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # (!\mux|out1[5]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (\mux|out1[5]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\mux|out1[5]~_Duplicate_1_regout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datab => \mux|out1[5]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X38_Y12_N0
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\mux|out0[1]~_Duplicate_1_regout\ & ((GND) # (!\mux|out1[0]~_Duplicate_1_regout\))) # (!\mux|out0[1]~_Duplicate_1_regout\ & (\mux|out1[0]~_Duplicate_1_regout\ $ (GND)))
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\mux|out0[1]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[1]~_Duplicate_1_regout\,
	datab => \mux|out1[0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X38_Y12_N10
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\mux|out1[5]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # 
-- (!\mux|out1[5]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ 
-- & (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\mux|out1[5]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\))) # (!\mux|out1[5]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[5]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: DSPOUT_X28_Y13_N2
\ula|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ula|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y11_N6
\ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~6_combout\ = ((\ula|Add0~5_combout\ $ (\mux|out0[1]~_Duplicate_1_regout\ $ (\ula|Add0~4\)))) # (GND)
-- \ula|Add0~7\ = CARRY((\ula|Add0~5_combout\ & (\mux|out0[1]~_Duplicate_1_regout\ & !\ula|Add0~4\)) # (!\ula|Add0~5_combout\ & ((\mux|out0[1]~_Duplicate_1_regout\) # (!\ula|Add0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~5_combout\,
	datab => \mux|out0[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Add0~4\,
	combout => \ula|Add0~6_combout\,
	cout => \ula|Add0~7\);

-- Location: LCCOMB_X35_Y11_N8
\ula|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~9_combout\ = (\ula|Add0~8_combout\ & ((\mux|out0[2]~_Duplicate_1_regout\ & (!\ula|Add0~7\)) # (!\mux|out0[2]~_Duplicate_1_regout\ & ((\ula|Add0~7\) # (GND))))) # (!\ula|Add0~8_combout\ & ((\mux|out0[2]~_Duplicate_1_regout\ & (\ula|Add0~7\ & 
-- VCC)) # (!\mux|out0[2]~_Duplicate_1_regout\ & (!\ula|Add0~7\))))
-- \ula|Add0~10\ = CARRY((\ula|Add0~8_combout\ & ((!\ula|Add0~7\) # (!\mux|out0[2]~_Duplicate_1_regout\))) # (!\ula|Add0~8_combout\ & (!\mux|out0[2]~_Duplicate_1_regout\ & !\ula|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~8_combout\,
	datab => \mux|out0[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Add0~7\,
	combout => \ula|Add0~9_combout\,
	cout => \ula|Add0~10\);

-- Location: LCCOMB_X35_Y11_N12
\ula|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~15_combout\ = (\mux|out0[4]~_Duplicate_1_regout\ & ((\ula|Add0~14_combout\ & (!\ula|Add0~13\)) # (!\ula|Add0~14_combout\ & (\ula|Add0~13\ & VCC)))) # (!\mux|out0[4]~_Duplicate_1_regout\ & ((\ula|Add0~14_combout\ & ((\ula|Add0~13\) # (GND))) # 
-- (!\ula|Add0~14_combout\ & (!\ula|Add0~13\))))
-- \ula|Add0~16\ = CARRY((\mux|out0[4]~_Duplicate_1_regout\ & (\ula|Add0~14_combout\ & !\ula|Add0~13\)) # (!\mux|out0[4]~_Duplicate_1_regout\ & ((\ula|Add0~14_combout\) # (!\ula|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[4]~_Duplicate_1_regout\,
	datab => \ula|Add0~14_combout\,
	datad => VCC,
	cin => \ula|Add0~13\,
	combout => \ula|Add0~15_combout\,
	cout => \ula|Add0~16\);

-- Location: LCCOMB_X35_Y11_N14
\ula|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~18_combout\ = ((\mux|out0[5]~_Duplicate_1_regout\ $ (\ula|Add0~17_combout\ $ (\ula|Add0~16\)))) # (GND)
-- \ula|Add0~19\ = CARRY((\mux|out0[5]~_Duplicate_1_regout\ & ((!\ula|Add0~16\) # (!\ula|Add0~17_combout\))) # (!\mux|out0[5]~_Duplicate_1_regout\ & (!\ula|Add0~17_combout\ & !\ula|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[5]~_Duplicate_1_regout\,
	datab => \ula|Add0~17_combout\,
	datad => VCC,
	cin => \ula|Add0~16\,
	combout => \ula|Add0~18_combout\,
	cout => \ula|Add0~19\);

-- Location: LCCOMB_X35_Y11_N16
\ula|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~21_combout\ = (\ula|Add0~20_combout\ & ((\mux|out0[6]~_Duplicate_1_regout\ & (!\ula|Add0~19\)) # (!\mux|out0[6]~_Duplicate_1_regout\ & ((\ula|Add0~19\) # (GND))))) # (!\ula|Add0~20_combout\ & ((\mux|out0[6]~_Duplicate_1_regout\ & (\ula|Add0~19\ 
-- & VCC)) # (!\mux|out0[6]~_Duplicate_1_regout\ & (!\ula|Add0~19\))))
-- \ula|Add0~22\ = CARRY((\ula|Add0~20_combout\ & ((!\ula|Add0~19\) # (!\mux|out0[6]~_Duplicate_1_regout\))) # (!\ula|Add0~20_combout\ & (!\mux|out0[6]~_Duplicate_1_regout\ & !\ula|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~20_combout\,
	datab => \mux|out0[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Add0~19\,
	combout => \ula|Add0~21_combout\,
	cout => \ula|Add0~22\);

-- Location: LCCOMB_X36_Y13_N16
\ula|Div0|auto_generated|divider|divider|StageOut[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[9]~0_combout\ = (\mux|out1[3]~_Duplicate_1_regout\) # ((\mux|out1[1]~_Duplicate_1_regout\ & (\mux|out1[0]~_Duplicate_1_regout\ & !\mux|out0[6]~_Duplicate_1_regout\)) # (!\mux|out1[1]~_Duplicate_1_regout\ & 
-- (!\mux|out1[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datac => \mux|out1[0]~_Duplicate_1_regout\,
	datad => \mux|out0[6]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[9]~0_combout\);

-- Location: LCCOMB_X36_Y13_N30
\ula|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\mux|out0[7]~_Duplicate_1_regout\ & ((\mux|out1[2]~_Duplicate_1_regout\) # ((\ula|Div0|auto_generated|divider|divider|StageOut[9]~0_combout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \mux|out0[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[9]~0_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X37_Y13_N20
\ula|Div0|auto_generated|divider|divider|StageOut[18]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X37_Y13_N4
\ula|Div0|auto_generated|divider|divider|StageOut[27]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X36_Y12_N12
\ula|Div0|auto_generated|divider|divider|selnose[36]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ = (!\mux|out1[5]~_Duplicate_1_regout\ & (!\mux|out1[7]~_Duplicate_1_regout\ & !\mux|out1[6]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[5]~_Duplicate_1_regout\,
	datac => \mux|out1[7]~_Duplicate_1_regout\,
	datad => \mux|out1[6]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\);

-- Location: LCCOMB_X37_Y12_N20
\ula|Div0|auto_generated|divider|divider|StageOut[36]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\))) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (((\ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LCCOMB_X37_Y12_N0
\ula|Div0|auto_generated|divider|divider|StageOut[45]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X37_Y12_N30
\ula|Div0|auto_generated|divider|divider|StageOut[42]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X38_Y12_N20
\ula|Div0|auto_generated|divider|divider|StageOut[53]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X38_Y12_N30
\ula|Div0|auto_generated|divider|divider|StageOut[48]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\mux|out0[1]~_Duplicate_1_regout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\mux|out0[1]~_Duplicate_1_regout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[1]~_Duplicate_1_regout\,
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X39_Y12_N20
\ula|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~0_combout\ = (\mux|out1[0]~_Duplicate_1_regout\ & (\mux|out2\(5) $ (((\mux|out0[0]~_Duplicate_1_regout\ & \mux|out2\(4)))))) # (!\mux|out1[0]~_Duplicate_1_regout\ & (\mux|out2\(5) & (\mux|out0[0]~_Duplicate_1_regout\ $ (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out0[0]~_Duplicate_1_regout\,
	datac => \mux|out1[0]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y11_N2
\ula|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~5_combout\ = \mux|out2\(4) $ (\mux|out1[1]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out2\(4),
	datad => \mux|out1[1]~_Duplicate_1_regout\,
	combout => \ula|Add0~5_combout\);

-- Location: LCCOMB_X35_Y11_N20
\ula|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~8_combout\ = \mux|out1[2]~_Duplicate_1_regout\ $ (\mux|out2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out1[2]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Add0~8_combout\);

-- Location: LCCOMB_X39_Y11_N4
\ula|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~11_combout\ = \mux|out2\(4) $ (\mux|out1[3]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out2\(4),
	datad => \mux|out1[3]~_Duplicate_1_regout\,
	combout => \ula|Add0~11_combout\);

-- Location: LCCOMB_X36_Y11_N0
\ula|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~0_combout\ = (\ula|saidaULA[1]~0_combout\ & ((\ula|saidaULA[1]~1_combout\ & (\ula|Add0~15_combout\)) # (!\ula|saidaULA[1]~1_combout\ & ((\ula|Mult0|auto_generated|mac_out2~DATAOUT4\))))) # (!\ula|saidaULA[1]~0_combout\ & 
-- (((\ula|saidaULA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~15_combout\,
	datab => \ula|saidaULA[1]~0_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \ula|saidaULA[1]~1_combout\,
	combout => \ula|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y11_N16
\ula|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~0_combout\ = (\mux|out1[6]~_Duplicate_1_regout\ & (\mux|out2\(5) $ (((\mux|out0[6]~_Duplicate_1_regout\ & \mux|out2\(4)))))) # (!\mux|out1[6]~_Duplicate_1_regout\ & (\mux|out2\(5) & (\mux|out0[6]~_Duplicate_1_regout\ $ (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[6]~_Duplicate_1_regout\,
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \ula|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y11_N16
\ula|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~20_combout\ = \mux|out2\(4) $ (\mux|out1[6]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out2\(4),
	datad => \mux|out1[6]~_Duplicate_1_regout\,
	combout => \ula|Add0~20_combout\);

-- Location: LCCOMB_X36_Y11_N14
\ula|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~2_combout\ = (\ula|saidaULA[1]~1_combout\ & ((\ula|Add0~21_combout\) # ((!\ula|saidaULA[1]~0_combout\)))) # (!\ula|saidaULA[1]~1_combout\ & (((\ula|Mult0|auto_generated|mac_out2~DATAOUT6\ & \ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~1_combout\,
	datab => \ula|Add0~21_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \ula|saidaULA[1]~0_combout\,
	combout => \ula|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y11_N10
\ula|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~1_combout\ = (\mux|out0[7]~_Duplicate_1_regout\ & (\mux|out1[7]~_Duplicate_1_regout\ & ((\mux|out2\(4))))) # (!\mux|out0[7]~_Duplicate_1_regout\ & (((\mux|out1[0]~_Duplicate_1_regout\ & !\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[7]~_Duplicate_1_regout\,
	datab => \mux|out1[0]~_Duplicate_1_regout\,
	datac => \mux|out0[7]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y11_N24
\ula|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~5_combout\ = (\mux|out2\(4) & (\mux|out1[7]~_Duplicate_1_regout\ $ (((!\mux|out0[7]~_Duplicate_1_regout\ & !\mux|out2\(5)))))) # (!\mux|out2\(4) & (\mux|out0[7]~_Duplicate_1_regout\ $ (((\mux|out1[7]~_Duplicate_1_regout\ & !\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[7]~_Duplicate_1_regout\,
	datab => \mux|out2\(4),
	datac => \mux|out1[7]~_Duplicate_1_regout\,
	datad => \mux|out2\(5),
	combout => \ula|Mux0~5_combout\);

-- Location: LCFF_X47_Y11_N1
\RAM|mem[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][0]~regout\);

-- Location: LCFF_X45_Y10_N17
\RAM|mem[9][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][0]~regout\);

-- Location: LCFF_X46_Y12_N29
\RAM|mem[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][0]~regout\);

-- Location: LCCOMB_X47_Y12_N0
\RAM|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~0_combout\ = (\mux|out2\(0) & (((\RAM|mem[9][0]~regout\) # (\mux|out2\(1))))) # (!\mux|out2\(0) & (\RAM|mem[8][0]~regout\ & ((!\mux|out2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[8][0]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[9][0]~regout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux7~0_combout\);

-- Location: LCFF_X49_Y13_N17
\RAM|mem[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][0]~regout\);

-- Location: LCCOMB_X47_Y12_N30
\RAM|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~1_combout\ = (\mux|out2\(1) & ((\RAM|Mux7~0_combout\ & ((\RAM|mem[11][0]~regout\))) # (!\RAM|Mux7~0_combout\ & (\RAM|mem[10][0]~regout\)))) # (!\mux|out2\(1) & (((\RAM|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[10][0]~regout\,
	datac => \RAM|mem[11][0]~regout\,
	datad => \RAM|Mux7~0_combout\,
	combout => \RAM|Mux7~1_combout\);

-- Location: LCFF_X47_Y10_N25
\RAM|mem[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[5][0]~feeder_combout\,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][0]~regout\);

-- Location: LCFF_X49_Y12_N5
\RAM|mem[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~12_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][0]~regout\);

-- Location: LCFF_X46_Y11_N13
\RAM|mem[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[14][0]~feeder_combout\,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][0]~regout\);

-- Location: LCFF_X48_Y13_N13
\RAM|mem[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][0]~regout\);

-- Location: LCFF_X47_Y13_N17
\RAM|mem[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][1]~regout\);

-- Location: LCFF_X47_Y11_N25
\RAM|mem[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][1]~regout\);

-- Location: LCFF_X49_Y13_N29
\RAM|mem[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~20_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][1]~regout\);

-- Location: LCCOMB_X47_Y11_N24
\RAM|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~0_combout\ = (\mux|out2\(2) & (((\mux|out2\(3))))) # (!\mux|out2\(2) & ((\mux|out2\(3) & ((\RAM|mem[10][1]~regout\))) # (!\mux|out2\(3) & (\RAM|mem[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[2][1]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[10][1]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux6~0_combout\);

-- Location: LCFF_X46_Y11_N27
\RAM|mem[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][1]~regout\);

-- Location: LCCOMB_X47_Y13_N16
\RAM|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~1_combout\ = (\mux|out2\(2) & ((\RAM|Mux6~0_combout\ & (\RAM|mem[14][1]~regout\)) # (!\RAM|Mux6~0_combout\ & ((\RAM|mem[6][1]~regout\))))) # (!\mux|out2\(2) & (((\RAM|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[14][1]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[6][1]~regout\,
	datad => \RAM|Mux6~0_combout\,
	combout => \RAM|Mux6~1_combout\);

-- Location: LCFF_X46_Y10_N15
\RAM|mem[9][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][1]~regout\);

-- Location: LCFF_X46_Y10_N21
\RAM|mem[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~21_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][1]~regout\);

-- Location: LCFF_X47_Y13_N15
\RAM|mem[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][1]~regout\);

-- Location: LCFF_X46_Y12_N25
\RAM|mem[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~22_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][1]~regout\);

-- Location: LCFF_X49_Y10_N17
\RAM|mem[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~23_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][1]~regout\);

-- Location: LCFF_X47_Y13_N29
\RAM|mem[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][2]~regout\);

-- Location: LCFF_X47_Y10_N31
\RAM|mem[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[5][2]~feeder_combout\,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][2]~regout\);

-- Location: LCFF_X47_Y13_N23
\RAM|mem[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][2]~regout\);

-- Location: LCCOMB_X48_Y13_N30
\RAM|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~0_combout\ = (\mux|out2\(0) & ((\mux|out2\(1)) # ((\RAM|mem[5][2]~regout\)))) # (!\mux|out2\(0) & (!\mux|out2\(1) & ((\RAM|mem[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(1),
	datac => \RAM|mem[5][2]~regout\,
	datad => \RAM|mem[4][2]~regout\,
	combout => \RAM|Mux5~0_combout\);

-- Location: LCFF_X49_Y10_N23
\RAM|mem[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[7][2]~feeder_combout\,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][2]~regout\);

-- Location: LCCOMB_X48_Y13_N16
\RAM|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~1_combout\ = (\mux|out2\(1) & ((\RAM|Mux5~0_combout\ & ((\RAM|mem[7][2]~regout\))) # (!\RAM|Mux5~0_combout\ & (\RAM|mem[6][2]~regout\)))) # (!\mux|out2\(1) & (((\RAM|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[6][2]~regout\,
	datab => \RAM|mem[7][2]~regout\,
	datac => \mux|out2\(1),
	datad => \RAM|Mux5~0_combout\,
	combout => \RAM|Mux5~1_combout\);

-- Location: LCFF_X46_Y12_N13
\RAM|mem[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~26_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][2]~regout\);

-- Location: LCFF_X49_Y10_N1
\RAM|mem[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~27_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][2]~regout\);

-- Location: LCFF_X46_Y11_N25
\RAM|mem[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[14][2]~feeder_combout\,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][2]~regout\);

-- Location: LCFF_X45_Y11_N3
\RAM|mem[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][2]~regout\);

-- Location: LCFF_X46_Y10_N17
\RAM|mem[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~28_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][3]~regout\);

-- Location: LCFF_X49_Y13_N21
\RAM|mem[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~29_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][3]~regout\);

-- Location: LCFF_X46_Y11_N7
\RAM|mem[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][3]~regout\);

-- Location: LCFF_X49_Y11_N1
\RAM|mem[10][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[10][4]~feeder_combout\,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][4]~regout\);

-- Location: LCFF_X45_Y10_N27
\RAM|mem[9][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][4]~regout\);

-- Location: LCFF_X46_Y12_N23
\RAM|mem[8][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][4]~regout\);

-- Location: LCCOMB_X46_Y12_N22
\RAM|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~0_combout\ = (\mux|out2\(0) & ((\mux|out2\(1)) # ((\RAM|mem[9][4]~regout\)))) # (!\mux|out2\(0) & (!\mux|out2\(1) & (\RAM|mem[8][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(1),
	datac => \RAM|mem[8][4]~regout\,
	datad => \RAM|mem[9][4]~regout\,
	combout => \RAM|Mux3~0_combout\);

-- Location: LCFF_X49_Y13_N9
\RAM|mem[11][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][4]~regout\);

-- Location: LCCOMB_X47_Y12_N24
\RAM|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~1_combout\ = (\mux|out2\(1) & ((\RAM|Mux3~0_combout\ & (\RAM|mem[11][4]~regout\)) # (!\RAM|Mux3~0_combout\ & ((\RAM|mem[10][4]~regout\))))) # (!\mux|out2\(1) & (((\RAM|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[11][4]~regout\,
	datac => \RAM|mem[10][4]~regout\,
	datad => \RAM|Mux3~0_combout\,
	combout => \RAM|Mux3~1_combout\);

-- Location: LCFF_X47_Y13_N21
\RAM|mem[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][4]~regout\);

-- Location: LCFF_X46_Y13_N31
\RAM|mem[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~32_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][4]~regout\);

-- Location: LCFF_X46_Y12_N17
\RAM|mem[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~34_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][4]~regout\);

-- Location: LCFF_X47_Y13_N9
\RAM|mem[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][5]~regout\);

-- Location: LCFF_X44_Y13_N13
\RAM|mem[10][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][5]~regout\);

-- Location: LCFF_X44_Y13_N3
\RAM|mem[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~36_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][5]~regout\);

-- Location: LCCOMB_X44_Y13_N12
\RAM|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~0_combout\ = (\mux|out2\(2) & (((\mux|out2\(3))))) # (!\mux|out2\(2) & ((\mux|out2\(3) & ((\RAM|mem[10][5]~regout\))) # (!\mux|out2\(3) & (\RAM|mem[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \RAM|mem[2][5]~regout\,
	datac => \RAM|mem[10][5]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux2~0_combout\);

-- Location: LCFF_X46_Y11_N21
\RAM|mem[14][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[14][5]~feeder_combout\,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][5]~regout\);

-- Location: LCCOMB_X47_Y13_N8
\RAM|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~1_combout\ = (\RAM|Mux2~0_combout\ & ((\RAM|mem[14][5]~regout\) # ((!\mux|out2\(2))))) # (!\RAM|Mux2~0_combout\ & (((\RAM|mem[6][5]~regout\ & \mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux2~0_combout\,
	datab => \RAM|mem[14][5]~regout\,
	datac => \RAM|mem[6][5]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux2~1_combout\);

-- Location: LCFF_X46_Y10_N5
\RAM|mem[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~37_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][5]~regout\);

-- Location: LCFF_X46_Y9_N9
\RAM|mem[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][5]~regout\);

-- Location: LCFF_X46_Y12_N9
\RAM|mem[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~38_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][5]~regout\);

-- Location: LCFF_X49_Y10_N27
\RAM|mem[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~39_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][5]~regout\);

-- Location: LCFF_X47_Y9_N19
\RAM|mem[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[7][6]~feeder_combout\,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][6]~regout\);

-- Location: LCFF_X44_Y13_N21
\RAM|mem[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~41_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][6]~regout\);

-- Location: LCFF_X49_Y10_N29
\RAM|mem[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~43_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][6]~regout\);

-- Location: LCFF_X47_Y10_N21
\RAM|mem[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[5][7]~feeder_combout\,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][7]~regout\);

-- Location: LCFF_X46_Y10_N7
\RAM|mem[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~44_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][7]~regout\);

-- Location: LCFF_X46_Y11_N15
\RAM|mem[14][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(7),
	sload => VCC,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][7]~regout\);

-- Location: LCFF_X46_Y12_N3
\RAM|mem[8][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[8][7]~feeder_combout\,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][7]~regout\);

-- Location: LCFF_X46_Y12_N1
\RAM|mem[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~46_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][7]~regout\);

-- Location: LCFF_X49_Y10_N7
\RAM|mem[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~47_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][7]~regout\);

-- Location: LCFF_X49_Y11_N5
\RAM|mem[15][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][7]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][7]~regout\);

-- Location: LCCOMB_X49_Y12_N4
\RAM|mem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~12_combout\ = (\UC|dataInMem\(0) & (\RAM|Decoder0~10_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(0),
	datac => \RAM|Decoder0~10_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~12_combout\);

-- Location: LCCOMB_X49_Y13_N28
\RAM|mem~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~20_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(1) & \RAM|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(1),
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem~20_combout\);

-- Location: LCCOMB_X46_Y10_N20
\RAM|mem~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~21_combout\ = ((\UC|dataInMem\(1)) # (!\RAM|Decoder0~9_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(1),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~21_combout\);

-- Location: LCCOMB_X46_Y12_N24
\RAM|mem~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~22_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(1) & \RAM|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datac => \UC|dataInMem\(1),
	datad => \RAM|Decoder0~10_combout\,
	combout => \RAM|mem~22_combout\);

-- Location: LCCOMB_X49_Y10_N16
\RAM|mem~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~23_combout\ = (\UC|dataInMem\(1)) # ((!\UC|we~regout\) # (!\RAM|Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(1),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~23_combout\);

-- Location: LCCOMB_X46_Y12_N12
\RAM|mem~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~26_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(2) & \RAM|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datac => \UC|dataInMem\(2),
	datad => \RAM|Decoder0~10_combout\,
	combout => \RAM|mem~26_combout\);

-- Location: LCCOMB_X49_Y10_N0
\RAM|mem~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~27_combout\ = (\UC|dataInMem\(2) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(2),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~27_combout\);

-- Location: LCCOMB_X46_Y10_N16
\RAM|mem~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~28_combout\ = ((\UC|dataInMem\(3)) # (!\RAM|Decoder0~9_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(3),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~28_combout\);

-- Location: LCCOMB_X49_Y13_N20
\RAM|mem~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~29_combout\ = (\RAM|Decoder0~8_combout\ & (\UC|we~regout\ & \UC|dataInMem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datac => \UC|we~regout\,
	datad => \UC|dataInMem\(3),
	combout => \RAM|mem~29_combout\);

-- Location: LCCOMB_X46_Y13_N30
\RAM|mem~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~32_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(4) & \RAM|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datac => \UC|dataInMem\(4),
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem~32_combout\);

-- Location: LCCOMB_X46_Y12_N16
\RAM|mem~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~34_combout\ = ((\UC|dataInMem\(4)) # (!\RAM|Decoder0~10_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datac => \UC|dataInMem\(4),
	datad => \RAM|Decoder0~10_combout\,
	combout => \RAM|mem~34_combout\);

-- Location: LCCOMB_X44_Y13_N2
\RAM|mem~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~36_combout\ = (\UC|dataInMem\(5) & (\UC|we~regout\ & \RAM|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|dataInMem\(5),
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem~36_combout\);

-- Location: LCCOMB_X46_Y10_N4
\RAM|mem~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~37_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(5) & \RAM|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(5),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~37_combout\);

-- Location: LCCOMB_X46_Y12_N8
\RAM|mem~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~38_combout\ = ((\UC|dataInMem\(5)) # (!\UC|we~regout\)) # (!\RAM|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|Decoder0~10_combout\,
	datac => \UC|dataInMem\(5),
	datad => \UC|we~regout\,
	combout => \RAM|mem~38_combout\);

-- Location: LCCOMB_X49_Y10_N26
\RAM|mem~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~39_combout\ = (\UC|dataInMem\(5) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(5),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~39_combout\);

-- Location: LCCOMB_X44_Y13_N20
\RAM|mem~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~41_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(6) & \RAM|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(6),
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem~41_combout\);

-- Location: LCCOMB_X49_Y10_N28
\RAM|mem~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~43_combout\ = (\UC|dataInMem\(6) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(6),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~43_combout\);

-- Location: LCCOMB_X46_Y10_N6
\RAM|mem~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~44_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(7) & \RAM|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(7),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~44_combout\);

-- Location: LCCOMB_X46_Y12_N0
\RAM|mem~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~46_combout\ = ((\UC|dataInMem\(7)) # (!\RAM|Decoder0~10_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datab => \RAM|Decoder0~10_combout\,
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem~46_combout\);

-- Location: LCCOMB_X49_Y10_N6
\RAM|mem~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~47_combout\ = (\UC|dataInMem\(7) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|dataInMem\(7),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~47_combout\);

-- Location: LCCOMB_X35_Y11_N24
\ula|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~4_combout\ = (\mux|out1[5]~_Duplicate_1_regout\ & ((\mux|out0[5]~_Duplicate_1_regout\ $ (\mux|out2\(5))) # (!\mux|out2\(4)))) # (!\mux|out1[5]~_Duplicate_1_regout\ & (\mux|out2\(4) $ (((\mux|out0[5]~_Duplicate_1_regout\) # (!\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[5]~_Duplicate_1_regout\,
	datab => \mux|out1[5]~_Duplicate_1_regout\,
	datac => \mux|out2\(5),
	datad => \mux|out2\(4),
	combout => \ula|Mux2~4_combout\);

-- Location: LCCOMB_X36_Y11_N30
\ula|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~4_combout\ = (\mux|out1[4]~_Duplicate_1_regout\ & ((\mux|out0[4]~_Duplicate_1_regout\ $ (\mux|out2\(5))) # (!\mux|out2\(4)))) # (!\mux|out1[4]~_Duplicate_1_regout\ & (\mux|out2\(4) $ (((\mux|out0[4]~_Duplicate_1_regout\) # (!\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[4]~_Duplicate_1_regout\,
	datab => \mux|out2\(4),
	datac => \mux|out2\(5),
	datad => \mux|out1[4]~_Duplicate_1_regout\,
	combout => \ula|Mux3~4_combout\);

-- Location: LCCOMB_X37_Y11_N6
\ula|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~4_combout\ = (\mux|out1[2]~_Duplicate_1_regout\ & ((\mux|out0[2]~_Duplicate_1_regout\ $ (\mux|out2\(5))) # (!\mux|out2\(4)))) # (!\mux|out1[2]~_Duplicate_1_regout\ & (\mux|out2\(4) $ (((\mux|out0[2]~_Duplicate_1_regout\) # (!\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[2]~_Duplicate_1_regout\,
	datab => \mux|out2\(5),
	datac => \mux|out2\(4),
	datad => \mux|out1[2]~_Duplicate_1_regout\,
	combout => \ula|Mux5~4_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X47_Y10_N24
\RAM|mem[5][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][0]~feeder_combout\ = \UC|dataInMem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(0),
	combout => \RAM|mem[5][0]~feeder_combout\);

-- Location: LCCOMB_X46_Y11_N12
\RAM|mem[14][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[14][0]~feeder_combout\ = \UC|dataInMem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(0),
	combout => \RAM|mem[14][0]~feeder_combout\);

-- Location: LCCOMB_X46_Y11_N24
\RAM|mem[14][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[14][2]~feeder_combout\ = \UC|dataInMem\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(2),
	combout => \RAM|mem[14][2]~feeder_combout\);

-- Location: LCCOMB_X47_Y10_N30
\RAM|mem[5][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][2]~feeder_combout\ = \UC|dataInMem\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(2),
	combout => \RAM|mem[5][2]~feeder_combout\);

-- Location: LCCOMB_X49_Y10_N22
\RAM|mem[7][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[7][2]~feeder_combout\ = \UC|dataInMem\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(2),
	combout => \RAM|mem[7][2]~feeder_combout\);

-- Location: LCCOMB_X49_Y11_N0
\RAM|mem[10][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[10][4]~feeder_combout\ = \UC|dataInMem\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(4),
	combout => \RAM|mem[10][4]~feeder_combout\);

-- Location: LCCOMB_X46_Y11_N20
\RAM|mem[14][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[14][5]~feeder_combout\ = \UC|dataInMem\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(5),
	combout => \RAM|mem[14][5]~feeder_combout\);

-- Location: LCCOMB_X47_Y9_N18
\RAM|mem[7][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[7][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[7][6]~feeder_combout\);

-- Location: LCCOMB_X46_Y12_N2
\RAM|mem[8][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[8][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[8][7]~feeder_combout\);

-- Location: LCCOMB_X47_Y10_N20
\RAM|mem[5][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[5][7]~feeder_combout\);

-- Location: LCCOMB_X49_Y11_N4
\RAM|mem[15][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[15][7]~feeder_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X38_Y13_N2
\mux|out2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~0_combout\ = ((\KEY~combout\(2)) # (\SW~combout\(8))) # (!\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \KEY~combout\(2),
	datad => \SW~combout\(8),
	combout => \mux|out2~0_combout\);

-- Location: LCCOMB_X45_Y13_N12
\mux|out2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~4_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(3)))) # (!\mux|out2~0_combout\ & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \mux|out2\(3),
	datad => \mux|out2~0_combout\,
	combout => \mux|out2~4_combout\);

-- Location: LCFF_X45_Y13_N13
\mux|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(3));

-- Location: LCCOMB_X45_Y13_N4
\mux|out2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~1_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(0)))) # (!\mux|out2~0_combout\ & (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \mux|out2\(0),
	datad => \mux|out2~0_combout\,
	combout => \mux|out2~1_combout\);

-- Location: LCFF_X45_Y13_N19
\mux|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCCOMB_X33_Y13_N12
\mux|out2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~5_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(4)))) # (!\mux|out2~0_combout\ & (\SW~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \mux|out2~0_combout\,
	datad => \mux|out2\(4),
	combout => \mux|out2~5_combout\);

-- Location: LCCOMB_X33_Y13_N18
\mux|out2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2[4]~feeder_combout\ = \mux|out2~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|out2~5_combout\,
	combout => \mux|out2[4]~feeder_combout\);

-- Location: LCFF_X33_Y13_N19
\mux|out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X45_Y13_N20
\mux|out2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~8_combout\ = (\mux|out2~0_combout\ & (\mux|out2\(7))) # (!\mux|out2~0_combout\ & ((\SW~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out2~0_combout\,
	datac => \mux|out2\(7),
	datad => \SW~combout\(7),
	combout => \mux|out2~8_combout\);

-- Location: LCFF_X45_Y13_N9
\mux|out2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out2~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(7));

-- Location: LCCOMB_X35_Y13_N0
\mux|out2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~7_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(6)))) # (!\mux|out2~0_combout\ & (\SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datac => \mux|out2~0_combout\,
	datad => \mux|out2\(6),
	combout => \mux|out2~7_combout\);

-- Location: LCCOMB_X35_Y13_N10
\mux|out2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2[6]~feeder_combout\ = \mux|out2~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|out2~7_combout\,
	combout => \mux|out2[6]~feeder_combout\);

-- Location: LCFF_X35_Y13_N11
\mux|out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(6));

-- Location: LCCOMB_X39_Y11_N24
\ula|saidaULA[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|saidaULA[1]~0_combout\ = (!\mux|out2\(7) & !\mux|out2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out2\(7),
	datad => \mux|out2\(6),
	combout => \ula|saidaULA[1]~0_combout\);

-- Location: LCFF_X38_Y13_N11
\mux|out0[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y13_N28
\mux|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~0_combout\ = (\SW~combout\(9)) # ((\KEY~combout\(2)) # (!\SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \KEY~combout\(2),
	datad => \SW~combout\(8),
	combout => \mux|out1~0_combout\);

-- Location: LCCOMB_X36_Y13_N22
\mux|out1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~1_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[0]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \mux|out1~0_combout\,
	datad => \mux|out1[0]~_Duplicate_1_regout\,
	combout => \mux|out1~1_combout\);

-- Location: LCFF_X36_Y13_N9
\mux|out1[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X39_Y12_N28
\ula|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~3_combout\ = (\mux|out2\(5) & ((\mux|out2\(4) & ((\mux|out1[0]~_Duplicate_1_regout\))) # (!\mux|out2\(4) & (\mux|out0[0]~_Duplicate_1_regout\)))) # (!\mux|out2\(5) & (\mux|out0[0]~_Duplicate_1_regout\ $ (\mux|out1[0]~_Duplicate_1_regout\ $ 
-- (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out0[0]~_Duplicate_1_regout\,
	datac => \mux|out1[0]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux7~3_combout\);

-- Location: LCCOMB_X29_Y13_N28
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X38_Y13_N15
\mux|out0[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X45_Y13_N18
\mux|out2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~2_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(1)))) # (!\mux|out2~0_combout\ & (\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \mux|out2\(1),
	datad => \mux|out2~0_combout\,
	combout => \mux|out2~2_combout\);

-- Location: LCFF_X45_Y13_N31
\mux|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X45_Y13_N8
\mux|out2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~3_combout\ = (\mux|out2~0_combout\ & (\mux|out2\(2))) # (!\mux|out2~0_combout\ & ((\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \mux|out2~0_combout\,
	datad => \SW~combout\(2),
	combout => \mux|out2~3_combout\);

-- Location: LCFF_X45_Y13_N5
\mux|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X38_Y13_N4
\mux|out2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out2~6_combout\ = (\mux|out2~0_combout\ & ((\mux|out2\(5)))) # (!\mux|out2~0_combout\ & (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(5),
	datac => \mux|out2\(5),
	datad => \mux|out2~0_combout\,
	combout => \mux|out2~6_combout\);

-- Location: LCFF_X38_Y13_N29
\mux|out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out2~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out2\(5));

-- Location: LCCOMB_X36_Y13_N18
\mux|out1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~2_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[1]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \mux|out1~0_combout\,
	datad => \mux|out1[1]~_Duplicate_1_regout\,
	combout => \mux|out1~2_combout\);

-- Location: LCFF_X36_Y13_N21
\mux|out1[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X38_Y11_N14
\ula|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~1_combout\ = (\mux|out2\(5) & ((\mux|out2\(4) & (\mux|out1[1]~_Duplicate_1_regout\)) # (!\mux|out2\(4) & ((\mux|out0[1]~_Duplicate_1_regout\))))) # (!\mux|out2\(5) & (\mux|out1[1]~_Duplicate_1_regout\ $ (\mux|out0[1]~_Duplicate_1_regout\ $ 
-- (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out1[1]~_Duplicate_1_regout\,
	datac => \mux|out0[1]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux6~1_combout\);

-- Location: LCCOMB_X39_Y11_N10
\ula|saidaULA[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|saidaULA[1]~1_combout\ = (\mux|out2\(7)) # ((!\mux|out2\(6) & (\mux|out2\(4) $ (\mux|out2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(7),
	datab => \mux|out2\(6),
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \ula|saidaULA[1]~1_combout\);

-- Location: LCCOMB_X38_Y13_N14
\mux|out0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~1_combout\ = (\SW~combout\(9)) # ((\KEY~combout\(2)) # (\SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \KEY~combout\(2),
	datad => \SW~combout\(8),
	combout => \mux|out0~1_combout\);

-- Location: LCFF_X45_Y13_N7
\mux|out0[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X39_Y11_N18
\UC|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|Decoder0~3_combout\ = (\mux|out2\(7) & (\mux|out2\(6) & (!\mux|out2\(4) & !\mux|out2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(7),
	datab => \mux|out2\(6),
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \UC|Decoder0~3_combout\);

-- Location: LCCOMB_X46_Y13_N22
\UC|we~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|we~feeder_combout\ = \UC|Decoder0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|Decoder0~3_combout\,
	combout => \UC|we~feeder_combout\);

-- Location: LCFF_X46_Y13_N23
\UC|we\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|we~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|we~regout\);

-- Location: LCCOMB_X36_Y13_N10
\mux|out1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~3_combout\ = (\mux|out1~0_combout\ & (\mux|out1[2]~_Duplicate_1_regout\)) # (!\mux|out1~0_combout\ & ((\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \mux|out1~0_combout\,
	datad => \SW~combout\(2),
	combout => \mux|out1~3_combout\);

-- Location: LCFF_X36_Y13_N25
\mux|out1[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X37_Y11_N28
\ula|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~1_combout\ = (\mux|out2\(5) & ((\mux|out2\(4) & ((\mux|out1[2]~_Duplicate_1_regout\))) # (!\mux|out2\(4) & (\mux|out0[2]~_Duplicate_1_regout\)))) # (!\mux|out2\(5) & (\mux|out0[2]~_Duplicate_1_regout\ $ (\mux|out2\(4) $ 
-- (\mux|out1[2]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[2]~_Duplicate_1_regout\,
	datab => \mux|out2\(5),
	datac => \mux|out2\(4),
	datad => \mux|out1[2]~_Duplicate_1_regout\,
	combout => \ula|Mux5~1_combout\);

-- Location: LCFF_X45_Y13_N11
\mux|out0[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X35_Y11_N0
\ula|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~0_combout\ = \mux|out1[0]~_Duplicate_1_regout\ $ (\mux|out2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out1[0]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Add0~0_combout\);

-- Location: LCCOMB_X35_Y11_N2
\ula|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~2_cout\ = CARRY(!\mux|out2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(4),
	datad => VCC,
	cout => \ula|Add0~2_cout\);

-- Location: LCCOMB_X35_Y11_N4
\ula|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~3_combout\ = (\mux|out0[0]~_Duplicate_1_regout\ & ((\ula|Add0~0_combout\ & (!\ula|Add0~2_cout\)) # (!\ula|Add0~0_combout\ & (\ula|Add0~2_cout\ & VCC)))) # (!\mux|out0[0]~_Duplicate_1_regout\ & ((\ula|Add0~0_combout\ & ((\ula|Add0~2_cout\) # 
-- (GND))) # (!\ula|Add0~0_combout\ & (!\ula|Add0~2_cout\))))
-- \ula|Add0~4\ = CARRY((\mux|out0[0]~_Duplicate_1_regout\ & (\ula|Add0~0_combout\ & !\ula|Add0~2_cout\)) # (!\mux|out0[0]~_Duplicate_1_regout\ & ((\ula|Add0~0_combout\) # (!\ula|Add0~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[0]~_Duplicate_1_regout\,
	datab => \ula|Add0~0_combout\,
	datad => VCC,
	cin => \ula|Add0~2_cout\,
	combout => \ula|Add0~3_combout\,
	cout => \ula|Add0~4\);

-- Location: LCCOMB_X35_Y11_N10
\ula|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~12_combout\ = ((\ula|Add0~11_combout\ $ (\mux|out0[3]~_Duplicate_1_regout\ $ (\ula|Add0~10\)))) # (GND)
-- \ula|Add0~13\ = CARRY((\ula|Add0~11_combout\ & (\mux|out0[3]~_Duplicate_1_regout\ & !\ula|Add0~10\)) # (!\ula|Add0~11_combout\ & ((\mux|out0[3]~_Duplicate_1_regout\) # (!\ula|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~11_combout\,
	datab => \mux|out0[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Add0~10\,
	combout => \ula|Add0~12_combout\,
	cout => \ula|Add0~13\);

-- Location: LCCOMB_X36_Y13_N24
\mux|out1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~4_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \mux|out1~0_combout\,
	datad => \mux|out1[3]~_Duplicate_1_regout\,
	combout => \mux|out1~4_combout\);

-- Location: LCFF_X36_Y13_N5
\mux|out1[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y11_N20
\ula|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~1_combout\ = (\mux|out2\(5) & ((\mux|out2\(4) & ((\mux|out1[3]~_Duplicate_1_regout\))) # (!\mux|out2\(4) & (\mux|out0[3]~_Duplicate_1_regout\)))) # (!\mux|out2\(5) & (\mux|out0[3]~_Duplicate_1_regout\ $ (\mux|out2\(4) $ 
-- (\mux|out1[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out0[3]~_Duplicate_1_regout\,
	datac => \mux|out2\(4),
	datad => \mux|out1[3]~_Duplicate_1_regout\,
	combout => \ula|Mux4~1_combout\);

-- Location: LCCOMB_X36_Y13_N26
\mux|out1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~6_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[5]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(5),
	datac => \mux|out1[5]~_Duplicate_1_regout\,
	datad => \mux|out1~0_combout\,
	combout => \mux|out1~6_combout\);

-- Location: LCFF_X36_Y13_N27
\mux|out1[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y13_N8
\mux|out1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~8_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[7]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datad => \mux|out1~0_combout\,
	combout => \mux|out1~8_combout\);

-- Location: LCCOMB_X36_Y13_N14
\mux|out1[7]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1[7]~_Duplicate_1feeder_combout\ = \mux|out1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|out1~8_combout\,
	combout => \mux|out1[7]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X36_Y13_N15
\mux|out1[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out1[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X33_Y13_N20
\mux|out1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~5_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[4]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \mux|out1~0_combout\,
	datad => \mux|out1[4]~_Duplicate_1_regout\,
	combout => \mux|out1~5_combout\);

-- Location: LCFF_X33_Y13_N31
\mux|out1[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y13_N2
\ula|Div0|auto_generated|divider|divider|selnose[27]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ = (!\mux|out1[6]~_Duplicate_1_regout\ & (!\mux|out1[5]~_Duplicate_1_regout\ & (!\mux|out1[7]~_Duplicate_1_regout\ & !\mux|out1[4]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[6]~_Duplicate_1_regout\,
	datab => \mux|out1[5]~_Duplicate_1_regout\,
	datac => \mux|out1[7]~_Duplicate_1_regout\,
	datad => \mux|out1[4]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\);

-- Location: LCCOMB_X37_Y11_N4
\ula|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~0_combout\ = (!\mux|out1[1]~_Duplicate_1_regout\ & (!\mux|out1[2]~_Duplicate_1_regout\ & (!\mux|out1[3]~_Duplicate_1_regout\ & \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \mux|out1[2]~_Duplicate_1_regout\,
	datac => \mux|out1[3]~_Duplicate_1_regout\,
	datad => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \ula|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y11_N24
\ula|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~2_combout\ = (\ula|Mux0~1_combout\ & (((\mux|out2\(4))))) # (!\ula|Mux0~1_combout\ & ((\mux|out2\(5) & ((\mux|out2\(4)))) # (!\mux|out2\(5) & (\ula|Mux0~0_combout\ & !\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux0~1_combout\,
	datab => \ula|Mux0~0_combout\,
	datac => \mux|out2\(5),
	datad => \mux|out2\(4),
	combout => \ula|Mux0~2_combout\);

-- Location: LCCOMB_X38_Y11_N30
\ula|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~3_combout\ = (\mux|out0[7]~_Duplicate_1_regout\ & ((\ula|Mux0~2_combout\ $ (\mux|out2\(5))))) # (!\mux|out0[7]~_Duplicate_1_regout\ & ((\ula|Mux0~2_combout\) # ((\mux|out1[7]~_Duplicate_1_regout\ & \mux|out2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[7]~_Duplicate_1_regout\,
	datab => \mux|out0[7]~_Duplicate_1_regout\,
	datac => \ula|Mux0~2_combout\,
	datad => \mux|out2\(5),
	combout => \ula|Mux0~3_combout\);

-- Location: LCFF_X38_Y13_N3
\mux|out0[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X37_Y13_N22
\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\mux|out1[0]~_Duplicate_1_regout\ & (\mux|out0[5]~_Duplicate_1_regout\ $ (VCC))) # (!\mux|out1[0]~_Duplicate_1_regout\ & ((\mux|out0[5]~_Duplicate_1_regout\) # (GND)))
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\mux|out0[5]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[0]~_Duplicate_1_regout\,
	datab => \mux|out0[5]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X37_Y13_N28
\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X36_Y11_N12
\ula|Div0|auto_generated|divider|divider|selnose[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose\(18) = ((\mux|out1[3]~_Duplicate_1_regout\) # (\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose\(18));

-- Location: LCCOMB_X35_Y11_N22
\ula|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~5_combout\ = (\ula|Mux2~4_combout\ & (((\mux|out2\(5)) # (\mux|out2\(4))) # (!\ula|Div0|auto_generated|divider|divider|selnose\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux2~4_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose\(18),
	datac => \mux|out2\(5),
	datad => \mux|out2\(4),
	combout => \ula|Mux2~5_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X36_Y13_N11
\mux|out1[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out1[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y13_N12
\mux|out1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out1~7_combout\ = (\mux|out1~0_combout\ & ((\mux|out1[6]~_Duplicate_1_regout\))) # (!\mux|out1~0_combout\ & (\SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out1~0_combout\,
	datac => \SW~combout\(6),
	datad => \mux|out1[6]~_Duplicate_1_regout\,
	combout => \mux|out1~7_combout\);

-- Location: DSPMULT_X28_Y13_N0
\ula|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \ALT_INV_KEY~combout\(0),
	aclr => GND,
	ena => VCC,
	dataa => \ula|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \ula|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ula|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X36_Y11_N8
\ula|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~0_combout\ = (\ula|saidaULA[1]~1_combout\ & (((!\ula|saidaULA[1]~0_combout\)))) # (!\ula|saidaULA[1]~1_combout\ & ((\ula|saidaULA[1]~0_combout\ & ((\ula|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\ula|saidaULA[1]~0_combout\ & 
-- (\ula|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~1_combout\,
	datab => \ula|Mux2~5_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \ula|saidaULA[1]~0_combout\,
	combout => \ula|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y11_N30
\ula|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~1_combout\ = (\mux|out2\(5) & ((\mux|out2\(4) & ((\mux|out1[5]~_Duplicate_1_regout\))) # (!\mux|out2\(4) & (\mux|out0[5]~_Duplicate_1_regout\)))) # (!\mux|out2\(5) & (\mux|out0[5]~_Duplicate_1_regout\ $ (\mux|out1[5]~_Duplicate_1_regout\ $ 
-- (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[5]~_Duplicate_1_regout\,
	datab => \mux|out1[5]~_Duplicate_1_regout\,
	datac => \mux|out2\(5),
	datad => \mux|out2\(4),
	combout => \ula|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y11_N18
\ula|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~2_combout\ = (\ula|Mux2~0_combout\ & (((\ula|Mux2~1_combout\) # (!\ula|saidaULA[1]~1_combout\)))) # (!\ula|Mux2~0_combout\ & (\ula|Add0~18_combout\ & ((\ula|saidaULA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~18_combout\,
	datab => \ula|Mux2~0_combout\,
	datac => \ula|Mux2~1_combout\,
	datad => \ula|saidaULA[1]~1_combout\,
	combout => \ula|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y11_N4
\ula|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~3_combout\ = (\ula|Mux2~2_combout\ & (((\mux|out2\(5)) # (\mux|out2\(4))) # (!\ula|saidaULA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \ula|Mux2~2_combout\,
	datac => \mux|out2\(5),
	datad => \mux|out2\(4),
	combout => \ula|Mux2~3_combout\);

-- Location: LCCOMB_X38_Y11_N16
\UC|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|Decoder0~2_combout\ = (!\mux|out2\(7)) # (!\mux|out2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out2\(6),
	datac => \mux|out2\(7),
	combout => \UC|Decoder0~2_combout\);

-- Location: LCFF_X38_Y11_N1
\UC|enableULA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \UC|Decoder0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|enableULA~regout\);

-- Location: LCCOMB_X38_Y11_N0
\ula|saidaULA[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|saidaULA[0]~2_combout\ = (\UC|enableULA~regout\ & ((!\mux|out2\(6)) # (!\mux|out2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(7),
	datac => \UC|enableULA~regout\,
	datad => \mux|out2\(6),
	combout => \ula|saidaULA[0]~2_combout\);

-- Location: LCFF_X38_Y11_N5
\ula|saidaULA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux2~3_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(5));

-- Location: LCCOMB_X44_Y11_N22
\UC|dataInMem[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[5]~feeder_combout\ = \ula|saidaULA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(5),
	combout => \UC|dataInMem[5]~feeder_combout\);

-- Location: LCFF_X44_Y11_N23
\UC|dataInMem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[5]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(5));

-- Location: LCCOMB_X46_Y11_N2
\RAM|Decoder0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~14_combout\ = (!\mux|out2\(0) & (\mux|out2\(2) & (!\mux|out2\(1) & \mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(2),
	datac => \mux|out2\(1),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~14_combout\);

-- Location: LCCOMB_X46_Y11_N26
\RAM|mem[12][0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[12][0]~18_combout\ = (\UC|we~regout\ & \RAM|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datad => \RAM|Decoder0~14_combout\,
	combout => \RAM|mem[12][0]~18_combout\);

-- Location: LCFF_X47_Y12_N19
\RAM|mem[12][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][5]~regout\);

-- Location: LCCOMB_X46_Y13_N12
\RAM|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~2_combout\ = (!\mux|out2\(1) & (!\mux|out2\(0) & (!\mux|out2\(2) & \mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~2_combout\);

-- Location: LCCOMB_X46_Y13_N18
\RAM|mem[8][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[8][0]~2_combout\ = (\UC|we~regout\ & \RAM|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|we~regout\,
	datad => \RAM|Decoder0~2_combout\,
	combout => \RAM|mem[8][0]~2_combout\);

-- Location: LCFF_X46_Y12_N27
\RAM|mem[8][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][5]~regout\);

-- Location: LCCOMB_X46_Y12_N26
\RAM|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~4_combout\ = (\mux|out2\(3) & (((\RAM|mem[8][5]~regout\) # (\mux|out2\(2))))) # (!\mux|out2\(3) & (\RAM|mem[0][5]~regout\ & ((!\mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][5]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[8][5]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux2~4_combout\);

-- Location: LCCOMB_X47_Y12_N18
\RAM|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~5_combout\ = (\mux|out2\(2) & ((\RAM|Mux2~4_combout\ & ((\RAM|mem[12][5]~regout\))) # (!\RAM|Mux2~4_combout\ & (\RAM|mem[4][5]~regout\)))) # (!\mux|out2\(2) & (((\RAM|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[4][5]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[12][5]~regout\,
	datad => \RAM|Mux2~4_combout\,
	combout => \RAM|Mux2~5_combout\);

-- Location: LCCOMB_X46_Y13_N26
\RAM|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~1_combout\ = (!\mux|out2\(1) & (\mux|out2\(0) & (!\mux|out2\(2) & \mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~1_combout\);

-- Location: LCCOMB_X46_Y10_N22
\RAM|mem[9][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[9][0]~1_combout\ = (\UC|we~regout\ & \RAM|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~1_combout\,
	combout => \RAM|mem[9][0]~1_combout\);

-- Location: LCFF_X46_Y10_N23
\RAM|mem[9][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][5]~regout\);

-- Location: LCCOMB_X46_Y11_N16
\RAM|Decoder0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~12_combout\ = (!\mux|out2\(1) & (\mux|out2\(2) & (\mux|out2\(3) & \mux|out2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(2),
	datac => \mux|out2\(3),
	datad => \mux|out2\(0),
	combout => \RAM|Decoder0~12_combout\);

-- Location: LCCOMB_X46_Y11_N22
\RAM|mem[13][0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[13][0]~16_combout\ = (\RAM|Decoder0~12_combout\ & \UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|Decoder0~12_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem[13][0]~16_combout\);

-- Location: LCFF_X47_Y10_N5
\RAM|mem[13][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][5]~regout\);

-- Location: LCCOMB_X47_Y10_N18
\RAM|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~4_combout\ = (!\mux|out2\(1) & (\mux|out2\(2) & (\mux|out2\(0) & !\mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(2),
	datac => \mux|out2\(0),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~4_combout\);

-- Location: LCCOMB_X47_Y10_N12
\RAM|mem[5][0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][0]~4_combout\ = (\UC|we~regout\ & \RAM|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UC|we~regout\,
	datad => \RAM|Decoder0~4_combout\,
	combout => \RAM|mem[5][0]~4_combout\);

-- Location: LCFF_X47_Y10_N11
\RAM|mem[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][5]~regout\);

-- Location: LCCOMB_X47_Y10_N10
\RAM|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~2_combout\ = (\mux|out2\(2) & (((\RAM|mem[5][5]~regout\) # (\mux|out2\(3))))) # (!\mux|out2\(2) & (\RAM|mem[1][5]~regout\ & ((!\mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[1][5]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[5][5]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux2~2_combout\);

-- Location: LCCOMB_X47_Y10_N4
\RAM|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~3_combout\ = (\mux|out2\(3) & ((\RAM|Mux2~2_combout\ & ((\RAM|mem[13][5]~regout\))) # (!\RAM|Mux2~2_combout\ & (\RAM|mem[9][5]~regout\)))) # (!\mux|out2\(3) & (((\RAM|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \RAM|mem[9][5]~regout\,
	datac => \RAM|mem[13][5]~regout\,
	datad => \RAM|Mux2~2_combout\,
	combout => \RAM|Mux2~3_combout\);

-- Location: LCCOMB_X47_Y12_N20
\RAM|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~6_combout\ = (\mux|out2\(1) & (((\mux|out2\(0))))) # (!\mux|out2\(1) & ((\mux|out2\(0) & ((\RAM|Mux2~3_combout\))) # (!\mux|out2\(0) & (\RAM|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|Mux2~5_combout\,
	datac => \mux|out2\(0),
	datad => \RAM|Mux2~3_combout\,
	combout => \RAM|Mux2~6_combout\);

-- Location: LCCOMB_X48_Y13_N0
\RAM|mem[15][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][5]~feeder_combout\ = \UC|dataInMem\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(5),
	combout => \RAM|mem[15][5]~feeder_combout\);

-- Location: LCCOMB_X48_Y13_N14
\RAM|Decoder0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~15_combout\ = (\mux|out2\(1) & (\mux|out2\(2) & (\mux|out2\(0) & \mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(2),
	datac => \mux|out2\(0),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~15_combout\);

-- Location: LCCOMB_X48_Y13_N12
\RAM|mem[15][0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][0]~19_combout\ = (\RAM|Decoder0~15_combout\ & \UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|Decoder0~15_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem[15][0]~19_combout\);

-- Location: LCFF_X48_Y13_N1
\RAM|mem[15][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][5]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][5]~regout\);

-- Location: LCCOMB_X49_Y13_N30
\RAM|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~3_combout\ = (\mux|out2\(0) & (\mux|out2\(1) & (\mux|out2\(3) & !\mux|out2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(1),
	datac => \mux|out2\(3),
	datad => \mux|out2\(2),
	combout => \RAM|Decoder0~3_combout\);

-- Location: LCCOMB_X49_Y13_N16
\RAM|mem[11][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[11][0]~3_combout\ = (\UC|we~regout\ & \RAM|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~3_combout\,
	combout => \RAM|mem[11][0]~3_combout\);

-- Location: LCFF_X49_Y12_N11
\RAM|mem[11][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][5]~regout\);

-- Location: LCCOMB_X46_Y13_N6
\RAM|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~7_combout\ = (\mux|out2\(1) & (\mux|out2\(0) & (\mux|out2\(2) & !\mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~7_combout\);

-- Location: LCCOMB_X46_Y13_N0
\RAM|mem[7][0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[7][0]~7_combout\ = (\UC|we~regout\ & \RAM|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~7_combout\,
	combout => \RAM|mem[7][0]~7_combout\);

-- Location: LCFF_X49_Y10_N13
\RAM|mem[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(5),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][5]~regout\);

-- Location: LCCOMB_X49_Y10_N12
\RAM|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~7_combout\ = (\mux|out2\(2) & (((\RAM|mem[7][5]~regout\) # (\mux|out2\(3))))) # (!\mux|out2\(2) & (\RAM|mem[3][5]~regout\ & ((!\mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[3][5]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[7][5]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux2~7_combout\);

-- Location: LCCOMB_X49_Y12_N10
\RAM|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~8_combout\ = (\mux|out2\(3) & ((\RAM|Mux2~7_combout\ & (\RAM|mem[15][5]~regout\)) # (!\RAM|Mux2~7_combout\ & ((\RAM|mem[11][5]~regout\))))) # (!\mux|out2\(3) & (((\RAM|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \RAM|mem[15][5]~regout\,
	datac => \RAM|mem[11][5]~regout\,
	datad => \RAM|Mux2~7_combout\,
	combout => \RAM|Mux2~8_combout\);

-- Location: LCCOMB_X47_Y12_N6
\RAM|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux2~9_combout\ = (\mux|out2\(1) & ((\RAM|Mux2~6_combout\ & ((\RAM|Mux2~8_combout\))) # (!\RAM|Mux2~6_combout\ & (\RAM|Mux2~1_combout\)))) # (!\mux|out2\(1) & (((\RAM|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux2~1_combout\,
	datab => \mux|out2\(1),
	datac => \RAM|Mux2~6_combout\,
	datad => \RAM|Mux2~8_combout\,
	combout => \RAM|Mux2~9_combout\);

-- Location: LCCOMB_X39_Y12_N24
\UC|rd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|rd~0_combout\ = (\mux|out2\(7) & (\mux|out2\(6) & (\mux|out2\(5) $ (\mux|out2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out2\(7),
	datac => \mux|out2\(6),
	datad => \mux|out2\(4),
	combout => \UC|rd~0_combout\);

-- Location: LCCOMB_X47_Y9_N20
\UC|rd~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|rd~feeder_combout\ = \UC|rd~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|rd~0_combout\,
	combout => \UC|rd~feeder_combout\);

-- Location: LCFF_X47_Y9_N21
\UC|rd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|rd~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|rd~regout\);

-- Location: LCFF_X47_Y12_N7
\RAM|dataOut[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux2~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(5));

-- Location: LCCOMB_X39_Y13_N4
\UC|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|Decoder0~1_combout\ = (\mux|out2\(6) & (\mux|out2\(5) & (!\mux|out2\(4) & \mux|out2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(6),
	datab => \mux|out2\(5),
	datac => \mux|out2\(4),
	datad => \mux|out2\(7),
	combout => \UC|Decoder0~1_combout\);

-- Location: LCFF_X38_Y13_N31
\UC|barmemoria[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(5),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(5));

-- Location: LCFF_X37_Y13_N9
\UC|variacao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \UC|Decoder0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|variacao~regout\);

-- Location: LCCOMB_X38_Y13_N30
\mux|out0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~11_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(5)))) # (!\UC|variacao~regout\ & (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(5),
	datac => \UC|barmemoria\(5),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~11_combout\);

-- Location: LCCOMB_X38_Y13_N24
\mux|out0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~12_combout\ = (\mux|out0~1_combout\ & ((\mux|out0[5]~_Duplicate_1_regout\))) # (!\mux|out0~1_combout\ & (\mux|out0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~1_combout\,
	datab => \mux|out0~11_combout\,
	datad => \mux|out0[5]~_Duplicate_1_regout\,
	combout => \mux|out0~12_combout\);

-- Location: LCCOMB_X37_Y11_N2
\ula|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~4_combout\ = (\ula|saidaULA[1]~0_combout\ & (((\ula|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\ula|saidaULA[1]~1_combout\)))) # (!\ula|saidaULA[1]~0_combout\ & ((\ula|Mux0~3_combout\) # ((\ula|saidaULA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \ula|Mux0~3_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \ula|saidaULA[1]~1_combout\,
	combout => \ula|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y12_N20
\ula|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~23_combout\ = \mux|out2\(4) $ (\mux|out1[7]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out2\(4),
	datad => \mux|out1[7]~_Duplicate_1_regout\,
	combout => \ula|Add0~23_combout\);

-- Location: LCCOMB_X35_Y11_N28
\ula|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~17_combout\ = \mux|out1[5]~_Duplicate_1_regout\ $ (\mux|out2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out1[5]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Add0~17_combout\);

-- Location: LCCOMB_X35_Y11_N26
\ula|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~14_combout\ = \mux|out1[4]~_Duplicate_1_regout\ $ (\mux|out2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out1[4]~_Duplicate_1_regout\,
	datad => \mux|out2\(4),
	combout => \ula|Add0~14_combout\);

-- Location: LCCOMB_X35_Y11_N18
\ula|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~24_combout\ = \mux|out0[7]~_Duplicate_1_regout\ $ (\ula|Add0~22\ $ (\ula|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[7]~_Duplicate_1_regout\,
	datad => \ula|Add0~23_combout\,
	cin => \ula|Add0~22\,
	combout => \ula|Add0~24_combout\);

-- Location: LCCOMB_X37_Y11_N26
\ula|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~6_combout\ = (\ula|Mux0~4_combout\ & ((\ula|Mux0~5_combout\) # ((!\ula|saidaULA[1]~1_combout\)))) # (!\ula|Mux0~4_combout\ & (((\ula|Add0~24_combout\ & \ula|saidaULA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux0~5_combout\,
	datab => \ula|Mux0~4_combout\,
	datac => \ula|Add0~24_combout\,
	datad => \ula|saidaULA[1]~1_combout\,
	combout => \ula|Mux0~6_combout\);

-- Location: LCCOMB_X38_Y11_N18
\ula|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~7_combout\ = (\ula|Mux0~6_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \ula|Mux0~6_combout\,
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux0~7_combout\);

-- Location: LCFF_X38_Y11_N19
\ula|saidaULA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux0~7_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(7));

-- Location: LCCOMB_X48_Y10_N2
\UC|dataInMem[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[7]~feeder_combout\ = \ula|saidaULA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(7),
	combout => \UC|dataInMem[7]~feeder_combout\);

-- Location: LCFF_X48_Y10_N3
\UC|dataInMem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[7]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(7));

-- Location: LCCOMB_X49_Y13_N24
\RAM|mem[11][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[11][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[11][7]~feeder_combout\);

-- Location: LCFF_X49_Y13_N25
\RAM|mem[11][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[11][7]~feeder_combout\,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][7]~regout\);

-- Location: LCCOMB_X48_Y11_N0
\RAM|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~7_combout\ = (\mux|out2\(3) & (((\RAM|mem[11][7]~regout\) # (\mux|out2\(2))))) # (!\mux|out2\(3) & (\RAM|mem[3][7]~regout\ & ((!\mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[3][7]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[11][7]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux0~7_combout\);

-- Location: LCFF_X48_Y11_N19
\RAM|mem[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(7),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][7]~regout\);

-- Location: LCCOMB_X48_Y11_N18
\RAM|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~8_combout\ = (\RAM|Mux0~7_combout\ & ((\RAM|mem[15][7]~regout\) # ((!\mux|out2\(2))))) # (!\RAM|Mux0~7_combout\ & (((\RAM|mem[7][7]~regout\ & \mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[15][7]~regout\,
	datab => \RAM|Mux0~7_combout\,
	datac => \RAM|mem[7][7]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux0~8_combout\);

-- Location: LCCOMB_X47_Y10_N2
\RAM|mem[13][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[13][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[13][7]~feeder_combout\);

-- Location: LCFF_X47_Y10_N3
\RAM|mem[13][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[13][7]~feeder_combout\,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][7]~regout\);

-- Location: LCFF_X46_Y10_N13
\RAM|mem[9][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(7),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][7]~regout\);

-- Location: LCCOMB_X46_Y10_N12
\RAM|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~0_combout\ = (\mux|out2\(3) & (((\RAM|mem[9][7]~regout\) # (\mux|out2\(2))))) # (!\mux|out2\(3) & (\RAM|mem[1][7]~regout\ & ((!\mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[1][7]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[9][7]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y10_N0
\RAM|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~1_combout\ = (\mux|out2\(2) & ((\RAM|Mux0~0_combout\ & ((\RAM|mem[13][7]~regout\))) # (!\RAM|Mux0~0_combout\ & (\RAM|mem[5][7]~regout\)))) # (!\mux|out2\(2) & (((\RAM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[5][7]~regout\,
	datab => \RAM|mem[13][7]~regout\,
	datac => \mux|out2\(2),
	datad => \RAM|Mux0~0_combout\,
	combout => \RAM|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y11_N26
\RAM|mem[10][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[10][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[10][7]~feeder_combout\);

-- Location: LCCOMB_X46_Y13_N24
\RAM|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~0_combout\ = (\mux|out2\(1) & (!\mux|out2\(0) & (!\mux|out2\(2) & \mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~0_combout\);

-- Location: LCCOMB_X47_Y11_N0
\RAM|mem[10][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[10][0]~0_combout\ = (\UC|we~regout\ & \RAM|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~0_combout\,
	combout => \RAM|mem[10][0]~0_combout\);

-- Location: LCFF_X47_Y11_N27
\RAM|mem[10][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[10][7]~feeder_combout\,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][7]~regout\);

-- Location: LCCOMB_X46_Y13_N28
\RAM|mem~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~45_combout\ = (\RAM|Decoder0~8_combout\ & (\UC|we~regout\ & \UC|dataInMem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datac => \UC|we~regout\,
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem~45_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X46_Y13_N10
\RAM|Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~8_combout\ = (!\mux|out2\(0) & (!\mux|out2\(2) & (\mux|out2\(1) & !\mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(2),
	datac => \mux|out2\(1),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~8_combout\);

-- Location: LCCOMB_X46_Y13_N20
\RAM|mem[2][4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[2][4]~9_combout\ = ((\UC|we~regout\ & \RAM|Decoder0~8_combout\)) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datac => \UC|we~regout\,
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem[2][4]~9_combout\);

-- Location: LCFF_X46_Y13_N29
\RAM|mem[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~45_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][7]~regout\);

-- Location: LCCOMB_X47_Y13_N30
\RAM|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~5_combout\ = (!\mux|out2\(3) & (!\mux|out2\(0) & (\mux|out2\(2) & \mux|out2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(1),
	combout => \RAM|Decoder0~5_combout\);

-- Location: LCCOMB_X47_Y13_N28
\RAM|mem[6][0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[6][0]~5_combout\ = (\UC|we~regout\ & \RAM|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~5_combout\,
	combout => \RAM|mem[6][0]~5_combout\);

-- Location: LCFF_X47_Y13_N3
\RAM|mem[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(7),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][7]~regout\);

-- Location: LCCOMB_X47_Y13_N2
\RAM|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~2_combout\ = (\mux|out2\(3) & (((\mux|out2\(2))))) # (!\mux|out2\(3) & ((\mux|out2\(2) & ((\RAM|mem[6][7]~regout\))) # (!\mux|out2\(2) & (\RAM|mem[2][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \RAM|mem[2][7]~regout\,
	datac => \RAM|mem[6][7]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux0~2_combout\);

-- Location: LCCOMB_X48_Y11_N20
\RAM|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~3_combout\ = (\RAM|Mux0~2_combout\ & ((\RAM|mem[14][7]~regout\) # ((!\mux|out2\(3))))) # (!\RAM|Mux0~2_combout\ & (((\RAM|mem[10][7]~regout\ & \mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[14][7]~regout\,
	datab => \RAM|mem[10][7]~regout\,
	datac => \RAM|Mux0~2_combout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux0~3_combout\);

-- Location: LCCOMB_X47_Y11_N4
\RAM|mem[12][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[12][7]~feeder_combout\ = \UC|dataInMem\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(7),
	combout => \RAM|mem[12][7]~feeder_combout\);

-- Location: LCFF_X47_Y11_N5
\RAM|mem[12][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[12][7]~feeder_combout\,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][7]~regout\);

-- Location: LCCOMB_X45_Y13_N30
\RAM|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~6_combout\ = (!\mux|out2\(3) & (!\mux|out2\(0) & (!\mux|out2\(1) & \mux|out2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(0),
	datac => \mux|out2\(1),
	datad => \mux|out2\(2),
	combout => \RAM|Decoder0~6_combout\);

-- Location: LCCOMB_X46_Y13_N16
\RAM|mem[4][0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[4][0]~6_combout\ = (\RAM|Decoder0~6_combout\ & \UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|Decoder0~6_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem[4][0]~6_combout\);

-- Location: LCFF_X47_Y13_N25
\RAM|mem[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(7),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][7]~regout\);

-- Location: LCCOMB_X47_Y13_N24
\RAM|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~4_combout\ = (\mux|out2\(3) & (((\mux|out2\(2))))) # (!\mux|out2\(3) & ((\mux|out2\(2) & ((\RAM|mem[4][7]~regout\))) # (!\mux|out2\(2) & (\RAM|mem[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][7]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[4][7]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux0~4_combout\);

-- Location: LCCOMB_X48_Y11_N2
\RAM|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~5_combout\ = (\mux|out2\(3) & ((\RAM|Mux0~4_combout\ & ((\RAM|mem[12][7]~regout\))) # (!\RAM|Mux0~4_combout\ & (\RAM|mem[8][7]~regout\)))) # (!\mux|out2\(3) & (((\RAM|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[8][7]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[12][7]~regout\,
	datad => \RAM|Mux0~4_combout\,
	combout => \RAM|Mux0~5_combout\);

-- Location: LCCOMB_X48_Y11_N12
\RAM|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~6_combout\ = (\mux|out2\(0) & (\mux|out2\(1))) # (!\mux|out2\(0) & ((\mux|out2\(1) & (\RAM|Mux0~3_combout\)) # (!\mux|out2\(1) & ((\RAM|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(1),
	datac => \RAM|Mux0~3_combout\,
	datad => \RAM|Mux0~5_combout\,
	combout => \RAM|Mux0~6_combout\);

-- Location: LCCOMB_X48_Y11_N6
\RAM|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux0~9_combout\ = (\mux|out2\(0) & ((\RAM|Mux0~6_combout\ & (\RAM|Mux0~8_combout\)) # (!\RAM|Mux0~6_combout\ & ((\RAM|Mux0~1_combout\))))) # (!\mux|out2\(0) & (((\RAM|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|Mux0~8_combout\,
	datac => \RAM|Mux0~1_combout\,
	datad => \RAM|Mux0~6_combout\,
	combout => \RAM|Mux0~9_combout\);

-- Location: LCFF_X48_Y11_N7
\RAM|dataOut[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux0~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(7));

-- Location: LCFF_X35_Y13_N31
\UC|barmemoria[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(7),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(7));

-- Location: LCCOMB_X35_Y13_N30
\mux|out0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~15_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(7)))) # (!\UC|variacao~regout\ & (\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(7),
	datac => \UC|barmemoria\(7),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~15_combout\);

-- Location: LCCOMB_X36_Y13_N28
\mux|out0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~16_combout\ = (\mux|out0~1_combout\ & ((\mux|out0[7]~_Duplicate_1_regout\))) # (!\mux|out0~1_combout\ & (\mux|out0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~1_combout\,
	datac => \mux|out0~15_combout\,
	datad => \mux|out0[7]~_Duplicate_1_regout\,
	combout => \mux|out0~16_combout\);

-- Location: LCFF_X36_Y13_N23
\mux|out0[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y13_N0
\ula|Div0|auto_generated|divider|divider|selnose[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & (((!\mux|out0[6]~_Duplicate_1_regout\ & \mux|out1[0]~_Duplicate_1_regout\)) # (!\mux|out0[7]~_Duplicate_1_regout\))) # 
-- (!\mux|out1[1]~_Duplicate_1_regout\ & (!\mux|out0[6]~_Duplicate_1_regout\ & (\mux|out1[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \mux|out0[6]~_Duplicate_1_regout\,
	datac => \mux|out1[0]~_Duplicate_1_regout\,
	datad => \mux|out0[7]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\);

-- Location: LCCOMB_X36_Y13_N4
\ula|Div0|auto_generated|divider|divider|selnose[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[9]~11_combout\ = ((\mux|out1[2]~_Duplicate_1_regout\) # ((\mux|out1[3]~_Duplicate_1_regout\) # (\ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \mux|out1[2]~_Duplicate_1_regout\,
	datac => \mux|out1[3]~_Duplicate_1_regout\,
	datad => \ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[9]~11_combout\);

-- Location: LCCOMB_X37_Y11_N18
\ula|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~1_combout\ = (\mux|out2\(4) & (\ula|Mux1~0_combout\)) # (!\mux|out2\(4) & ((\mux|out2\(5) & (\ula|Mux1~0_combout\)) # (!\mux|out2\(5) & ((!\ula|Div0|auto_generated|divider|divider|selnose[9]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux1~0_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose[9]~11_combout\,
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \ula|Mux1~1_combout\);

-- Location: LCCOMB_X37_Y11_N0
\ula|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~3_combout\ = (\mux|out2\(4) & (\mux|out1[6]~_Duplicate_1_regout\ $ (((!\mux|out0[6]~_Duplicate_1_regout\ & !\mux|out2\(5)))))) # (!\mux|out2\(4) & (\mux|out0[6]~_Duplicate_1_regout\ $ (((\mux|out1[6]~_Duplicate_1_regout\ & !\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[6]~_Duplicate_1_regout\,
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \ula|Mux1~3_combout\);

-- Location: LCCOMB_X37_Y11_N30
\ula|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~4_combout\ = (\ula|Mux1~2_combout\ & (((\ula|saidaULA[1]~0_combout\) # (\ula|Mux1~3_combout\)))) # (!\ula|Mux1~2_combout\ & (\ula|Mux1~1_combout\ & (!\ula|saidaULA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux1~2_combout\,
	datab => \ula|Mux1~1_combout\,
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \ula|Mux1~3_combout\,
	combout => \ula|Mux1~4_combout\);

-- Location: LCCOMB_X39_Y11_N16
\ula|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~5_combout\ = (\ula|Mux1~4_combout\ & (((\mux|out2\(5)) # (\mux|out2\(4))) # (!\ula|saidaULA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \mux|out2\(5),
	datac => \mux|out2\(4),
	datad => \ula|Mux1~4_combout\,
	combout => \ula|Mux1~5_combout\);

-- Location: LCFF_X39_Y11_N17
\ula|saidaULA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux1~5_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(6));

-- Location: LCCOMB_X48_Y10_N4
\UC|dataInMem[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[6]~feeder_combout\ = \ula|saidaULA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(6),
	combout => \UC|dataInMem[6]~feeder_combout\);

-- Location: LCFF_X48_Y10_N5
\UC|dataInMem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[6]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(6));

-- Location: LCCOMB_X49_Y11_N10
\RAM|mem[15][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[15][6]~feeder_combout\);

-- Location: LCFF_X49_Y11_N11
\RAM|mem[15][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][6]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][6]~regout\);

-- Location: LCCOMB_X45_Y11_N22
\RAM|Decoder0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~13_combout\ = (\mux|out2\(3) & (!\mux|out2\(0) & (\mux|out2\(2) & \mux|out2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(1),
	combout => \RAM|Decoder0~13_combout\);

-- Location: LCCOMB_X46_Y11_N4
\RAM|mem[14][0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[14][0]~17_combout\ = (\UC|we~regout\ & \RAM|Decoder0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datad => \RAM|Decoder0~13_combout\,
	combout => \RAM|mem[14][0]~17_combout\);

-- Location: LCFF_X46_Y11_N11
\RAM|mem[14][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][6]~regout\);

-- Location: LCCOMB_X45_Y11_N24
\RAM|mem[13][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[13][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[13][6]~feeder_combout\);

-- Location: LCFF_X45_Y11_N25
\RAM|mem[13][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[13][6]~feeder_combout\,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][6]~regout\);

-- Location: LCFF_X46_Y11_N29
\RAM|mem[12][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][6]~regout\);

-- Location: LCCOMB_X46_Y11_N28
\RAM|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~7_combout\ = (\mux|out2\(1) & (((\mux|out2\(0))))) # (!\mux|out2\(1) & ((\mux|out2\(0) & (\RAM|mem[13][6]~regout\)) # (!\mux|out2\(0) & ((\RAM|mem[12][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[13][6]~regout\,
	datac => \RAM|mem[12][6]~regout\,
	datad => \mux|out2\(0),
	combout => \RAM|Mux1~7_combout\);

-- Location: LCCOMB_X46_Y11_N10
\RAM|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~8_combout\ = (\mux|out2\(1) & ((\RAM|Mux1~7_combout\ & (\RAM|mem[15][6]~regout\)) # (!\RAM|Mux1~7_combout\ & ((\RAM|mem[14][6]~regout\))))) # (!\mux|out2\(1) & (((\RAM|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[15][6]~regout\,
	datac => \RAM|mem[14][6]~regout\,
	datad => \RAM|Mux1~7_combout\,
	combout => \RAM|Mux1~8_combout\);

-- Location: LCFF_X47_Y13_N7
\RAM|mem[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][6]~regout\);

-- Location: LCFF_X47_Y13_N13
\RAM|mem[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][6]~regout\);

-- Location: LCCOMB_X47_Y10_N26
\RAM|mem[5][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[5][6]~feeder_combout\);

-- Location: LCFF_X47_Y10_N27
\RAM|mem[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[5][6]~feeder_combout\,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][6]~regout\);

-- Location: LCCOMB_X47_Y13_N12
\RAM|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~0_combout\ = (\mux|out2\(1) & (\mux|out2\(0))) # (!\mux|out2\(1) & ((\mux|out2\(0) & ((\RAM|mem[5][6]~regout\))) # (!\mux|out2\(0) & (\RAM|mem[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \RAM|mem[4][6]~regout\,
	datad => \RAM|mem[5][6]~regout\,
	combout => \RAM|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y13_N6
\RAM|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~1_combout\ = (\mux|out2\(1) & ((\RAM|Mux1~0_combout\ & (\RAM|mem[7][6]~regout\)) # (!\RAM|Mux1~0_combout\ & ((\RAM|mem[6][6]~regout\))))) # (!\mux|out2\(1) & (((\RAM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[7][6]~regout\,
	datab => \mux|out2\(1),
	datac => \RAM|mem[6][6]~regout\,
	datad => \RAM|Mux1~0_combout\,
	combout => \RAM|Mux1~1_combout\);

-- Location: LCCOMB_X49_Y13_N10
\RAM|mem[11][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[11][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[11][6]~feeder_combout\);

-- Location: LCFF_X49_Y13_N11
\RAM|mem[11][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[11][6]~feeder_combout\,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][6]~regout\);

-- Location: LCFF_X45_Y10_N1
\RAM|mem[9][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][6]~regout\);

-- Location: LCCOMB_X47_Y11_N16
\RAM|mem[10][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[10][6]~feeder_combout\ = \UC|dataInMem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem[10][6]~feeder_combout\);

-- Location: LCFF_X47_Y11_N17
\RAM|mem[10][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[10][6]~feeder_combout\,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][6]~regout\);

-- Location: LCFF_X45_Y10_N3
\RAM|mem[8][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(6),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][6]~regout\);

-- Location: LCCOMB_X45_Y10_N2
\RAM|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~2_combout\ = (\mux|out2\(0) & (((\mux|out2\(1))))) # (!\mux|out2\(0) & ((\mux|out2\(1) & (\RAM|mem[10][6]~regout\)) # (!\mux|out2\(1) & ((\RAM|mem[8][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|mem[10][6]~regout\,
	datac => \RAM|mem[8][6]~regout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux1~2_combout\);

-- Location: LCCOMB_X45_Y10_N0
\RAM|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~3_combout\ = (\mux|out2\(0) & ((\RAM|Mux1~2_combout\ & (\RAM|mem[11][6]~regout\)) # (!\RAM|Mux1~2_combout\ & ((\RAM|mem[9][6]~regout\))))) # (!\mux|out2\(0) & (((\RAM|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|mem[11][6]~regout\,
	datac => \RAM|mem[9][6]~regout\,
	datad => \RAM|Mux1~2_combout\,
	combout => \RAM|Mux1~3_combout\);

-- Location: LCCOMB_X46_Y10_N28
\RAM|Decoder0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~9_combout\ = (!\mux|out2\(3) & (\mux|out2\(0) & (!\mux|out2\(2) & !\mux|out2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(0),
	datac => \mux|out2\(2),
	datad => \mux|out2\(1),
	combout => \RAM|Decoder0~9_combout\);

-- Location: LCCOMB_X46_Y10_N2
\RAM|mem~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~40_combout\ = (\UC|dataInMem\(6) & (\UC|we~regout\ & \RAM|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|dataInMem\(6),
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~40_combout\);

-- Location: LCCOMB_X46_Y10_N14
\RAM|mem[1][3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[1][3]~11_combout\ = ((\UC|we~regout\ & \RAM|Decoder0~9_combout\)) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \UC|we~regout\,
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem[1][3]~11_combout\);

-- Location: LCFF_X46_Y10_N3
\RAM|mem[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~40_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][6]~regout\);

-- Location: LCCOMB_X46_Y12_N18
\RAM|Decoder0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~10_combout\ = (!\mux|out2\(0) & (!\mux|out2\(2) & (!\mux|out2\(1) & !\mux|out2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(2),
	datac => \mux|out2\(1),
	datad => \mux|out2\(3),
	combout => \RAM|Decoder0~10_combout\);

-- Location: LCCOMB_X45_Y12_N6
\RAM|mem~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~42_combout\ = ((\UC|dataInMem\(6)) # (!\UC|we~regout\)) # (!\RAM|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|Decoder0~10_combout\,
	datac => \UC|we~regout\,
	datad => \UC|dataInMem\(6),
	combout => \RAM|mem~42_combout\);

-- Location: LCCOMB_X46_Y12_N28
\RAM|mem[0][6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[0][6]~13_combout\ = ((\UC|we~regout\ & \RAM|Decoder0~10_combout\)) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datab => \KEY~combout\(1),
	datad => \RAM|Decoder0~10_combout\,
	combout => \RAM|mem[0][6]~13_combout\);

-- Location: LCFF_X45_Y12_N7
\RAM|mem[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~42_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][6]~regout\);

-- Location: LCCOMB_X44_Y13_N22
\RAM|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~4_combout\ = (\mux|out2\(1) & ((\RAM|mem[2][6]~regout\) # ((\mux|out2\(0))))) # (!\mux|out2\(1) & (((!\mux|out2\(0) & \RAM|mem[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[2][6]~regout\,
	datab => \mux|out2\(1),
	datac => \mux|out2\(0),
	datad => \RAM|mem[0][6]~regout\,
	combout => \RAM|Mux1~4_combout\);

-- Location: LCCOMB_X44_Y10_N2
\RAM|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~5_combout\ = (\mux|out2\(0) & ((\RAM|Mux1~4_combout\ & (\RAM|mem[3][6]~regout\)) # (!\RAM|Mux1~4_combout\ & ((\RAM|mem[1][6]~regout\))))) # (!\mux|out2\(0) & (((\RAM|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[3][6]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[1][6]~regout\,
	datad => \RAM|Mux1~4_combout\,
	combout => \RAM|Mux1~5_combout\);

-- Location: LCCOMB_X44_Y10_N0
\RAM|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~6_combout\ = (\mux|out2\(2) & (\mux|out2\(3))) # (!\mux|out2\(2) & ((\mux|out2\(3) & (\RAM|Mux1~3_combout\)) # (!\mux|out2\(3) & ((\RAM|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \mux|out2\(3),
	datac => \RAM|Mux1~3_combout\,
	datad => \RAM|Mux1~5_combout\,
	combout => \RAM|Mux1~6_combout\);

-- Location: LCCOMB_X44_Y10_N16
\RAM|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux1~9_combout\ = (\mux|out2\(2) & ((\RAM|Mux1~6_combout\ & (\RAM|Mux1~8_combout\)) # (!\RAM|Mux1~6_combout\ & ((\RAM|Mux1~1_combout\))))) # (!\mux|out2\(2) & (((\RAM|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \RAM|Mux1~8_combout\,
	datac => \RAM|Mux1~1_combout\,
	datad => \RAM|Mux1~6_combout\,
	combout => \RAM|Mux1~9_combout\);

-- Location: LCFF_X44_Y10_N17
\RAM|dataOut[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux1~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(6));

-- Location: LCFF_X35_Y13_N19
\UC|barmemoria[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(6),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(6));

-- Location: LCCOMB_X35_Y13_N18
\mux|out0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~13_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(6)))) # (!\UC|variacao~regout\ & (\SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datac => \UC|barmemoria\(6),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~13_combout\);

-- Location: LCCOMB_X36_Y13_N20
\mux|out0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~14_combout\ = (\mux|out0~1_combout\ & ((\mux|out0[6]~_Duplicate_1_regout\))) # (!\mux|out0~1_combout\ & (\mux|out0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~1_combout\,
	datab => \mux|out0~13_combout\,
	datad => \mux|out0[6]~_Duplicate_1_regout\,
	combout => \mux|out0~14_combout\);

-- Location: LCFF_X36_Y13_N19
\mux|out0[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \mux|out0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X37_Y13_N8
\ula|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\mux|out1[2]~_Duplicate_1_regout\) # ((\mux|out1[3]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datad => \mux|out1[0]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X37_Y13_N30
\ula|Div0|auto_generated|divider|divider|StageOut[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ = \mux|out0[6]~_Duplicate_1_regout\ $ (((!\ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[9]~7_combout\,
	datab => \mux|out0[6]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X36_Y13_N6
\ula|Div0|auto_generated|divider|divider|selnose[18]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ = (!\mux|out1[3]~_Duplicate_1_regout\ & \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out1[3]~_Duplicate_1_regout\,
	datad => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\);

-- Location: LCCOMB_X37_Y13_N2
\ula|Div0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & (((\ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X37_Y13_N0
\ula|Div0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\mux|out0[5]~_Duplicate_1_regout\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))) # (!\ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & 
-- (\mux|out0[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[5]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X33_Y13_N22
\mux|out0[4]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0[4]~_Duplicate_1feeder_combout\ = \mux|out0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux|out0~10_combout\,
	combout => \mux|out0[4]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X33_Y13_N23
\mux|out0[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|out0[4]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|out0[4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X37_Y13_N10
\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\mux|out1[0]~_Duplicate_1_regout\ & (\mux|out0[4]~_Duplicate_1_regout\ $ (VCC))) # (!\mux|out1[0]~_Duplicate_1_regout\ & ((\mux|out0[4]~_Duplicate_1_regout\) # (GND)))
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\mux|out0[4]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[0]~_Duplicate_1_regout\,
	datab => \mux|out0[4]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X37_Y13_N12
\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) 
-- # (!\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\mux|out1[1]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\mux|out1[1]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # (!\mux|out1[1]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X37_Y13_N14
\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\mux|out1[2]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\mux|out1[2]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\mux|out1[2]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X37_Y13_N18
\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X37_Y11_N20
\ula|Div0|auto_generated|divider|divider|selnose[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose\(27) = (\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose\(27));

-- Location: LCCOMB_X37_Y11_N8
\ula|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~5_combout\ = (\ula|Mux3~4_combout\ & ((\mux|out2\(4)) # ((\mux|out2\(5)) # (!\ula|Div0|auto_generated|divider|divider|selnose\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux3~4_combout\,
	datab => \mux|out2\(4),
	datac => \ula|Div0|auto_generated|divider|divider|selnose\(27),
	datad => \mux|out2\(5),
	combout => \ula|Mux3~5_combout\);

-- Location: LCCOMB_X36_Y11_N10
\ula|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~1_combout\ = (\mux|out2\(4) & (\mux|out1[4]~_Duplicate_1_regout\ $ (((!\mux|out0[4]~_Duplicate_1_regout\ & !\mux|out2\(5)))))) # (!\mux|out2\(4) & (\mux|out0[4]~_Duplicate_1_regout\ $ (((!\mux|out2\(5) & \mux|out1[4]~_Duplicate_1_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[4]~_Duplicate_1_regout\,
	datab => \mux|out2\(4),
	datac => \mux|out2\(5),
	datad => \mux|out1[4]~_Duplicate_1_regout\,
	combout => \ula|Mux3~1_combout\);

-- Location: LCCOMB_X37_Y11_N22
\ula|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~2_combout\ = (\ula|Mux3~0_combout\ & (((\ula|saidaULA[1]~0_combout\) # (\ula|Mux3~1_combout\)))) # (!\ula|Mux3~0_combout\ & (\ula|Mux3~5_combout\ & (!\ula|saidaULA[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux3~0_combout\,
	datab => \ula|Mux3~5_combout\,
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \ula|Mux3~1_combout\,
	combout => \ula|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y11_N2
\ula|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~3_combout\ = (\ula|Mux3~2_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \ula|Mux3~2_combout\,
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux3~3_combout\);

-- Location: LCFF_X38_Y11_N3
\ula|saidaULA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux3~3_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(4));

-- Location: LCCOMB_X44_Y11_N20
\UC|dataInMem[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[4]~feeder_combout\ = \ula|saidaULA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(4),
	combout => \UC|dataInMem[4]~feeder_combout\);

-- Location: LCFF_X44_Y11_N21
\UC|dataInMem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[4]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(4));

-- Location: LCCOMB_X46_Y10_N18
\RAM|Decoder0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~11_combout\ = (!\mux|out2\(2) & (\mux|out2\(0) & (!\mux|out2\(3) & \mux|out2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \mux|out2\(0),
	datac => \mux|out2\(3),
	datad => \mux|out2\(1),
	combout => \RAM|Decoder0~11_combout\);

-- Location: LCCOMB_X49_Y10_N18
\RAM|mem~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~35_combout\ = (\UC|dataInMem\(4) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(4),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~35_combout\);

-- Location: LCCOMB_X49_Y10_N8
\RAM|mem[3][4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[3][4]~15_combout\ = ((\UC|we~regout\ & \RAM|Decoder0~11_combout\)) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datac => \UC|we~regout\,
	datad => \RAM|Decoder0~11_combout\,
	combout => \RAM|mem[3][4]~15_combout\);

-- Location: LCFF_X49_Y10_N19
\RAM|mem[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~35_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][4]~regout\);

-- Location: LCCOMB_X46_Y10_N0
\RAM|mem~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~33_combout\ = (\UC|dataInMem\(4) & (\RAM|Decoder0~9_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|dataInMem\(4),
	datab => \RAM|Decoder0~9_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~33_combout\);

-- Location: LCFF_X46_Y10_N1
\RAM|mem[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~33_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][4]~regout\);

-- Location: LCCOMB_X46_Y11_N30
\RAM|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~4_combout\ = (\mux|out2\(1) & (((\mux|out2\(0))))) # (!\mux|out2\(1) & ((\mux|out2\(0) & ((\RAM|mem[1][4]~regout\))) # (!\mux|out2\(0) & (\RAM|mem[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][4]~regout\,
	datab => \RAM|mem[1][4]~regout\,
	datac => \mux|out2\(1),
	datad => \mux|out2\(0),
	combout => \RAM|Mux3~4_combout\);

-- Location: LCCOMB_X47_Y11_N30
\RAM|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~5_combout\ = (\RAM|Mux3~4_combout\ & (((\RAM|mem[3][4]~regout\) # (!\mux|out2\(1))))) # (!\RAM|Mux3~4_combout\ & (\RAM|mem[2][4]~regout\ & ((\mux|out2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[2][4]~regout\,
	datab => \RAM|mem[3][4]~regout\,
	datac => \RAM|Mux3~4_combout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux3~5_combout\);

-- Location: LCCOMB_X48_Y10_N0
\RAM|mem[5][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[5][4]~feeder_combout\ = \UC|dataInMem\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(4),
	combout => \RAM|mem[5][4]~feeder_combout\);

-- Location: LCFF_X48_Y10_N1
\RAM|mem[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[5][4]~feeder_combout\,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][4]~regout\);

-- Location: LCFF_X48_Y11_N29
\RAM|mem[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][4]~regout\);

-- Location: LCFF_X47_Y13_N11
\RAM|mem[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][4]~regout\);

-- Location: LCCOMB_X47_Y13_N10
\RAM|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~2_combout\ = (\mux|out2\(0) & (((\mux|out2\(1))))) # (!\mux|out2\(0) & ((\mux|out2\(1) & (\RAM|mem[6][4]~regout\)) # (!\mux|out2\(1) & ((\RAM|mem[4][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[6][4]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[4][4]~regout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux3~2_combout\);

-- Location: LCCOMB_X48_Y11_N28
\RAM|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~3_combout\ = (\mux|out2\(0) & ((\RAM|Mux3~2_combout\ & ((\RAM|mem[7][4]~regout\))) # (!\RAM|Mux3~2_combout\ & (\RAM|mem[5][4]~regout\)))) # (!\mux|out2\(0) & (((\RAM|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|mem[5][4]~regout\,
	datac => \RAM|mem[7][4]~regout\,
	datad => \RAM|Mux3~2_combout\,
	combout => \RAM|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y11_N14
\RAM|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~6_combout\ = (\mux|out2\(2) & ((\mux|out2\(3)) # ((\RAM|Mux3~3_combout\)))) # (!\mux|out2\(2) & (!\mux|out2\(3) & (\RAM|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \mux|out2\(3),
	datac => \RAM|Mux3~5_combout\,
	datad => \RAM|Mux3~3_combout\,
	combout => \RAM|Mux3~6_combout\);

-- Location: LCCOMB_X48_Y13_N26
\RAM|mem[15][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][4]~feeder_combout\ = \UC|dataInMem\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(4),
	combout => \RAM|mem[15][4]~feeder_combout\);

-- Location: LCFF_X48_Y13_N27
\RAM|mem[15][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][4]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][4]~regout\);

-- Location: LCFF_X47_Y10_N9
\RAM|mem[13][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][4]~regout\);

-- Location: LCFF_X46_Y11_N9
\RAM|mem[14][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[14][4]~regout\);

-- Location: LCFF_X46_Y11_N19
\RAM|mem[12][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(4),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][4]~regout\);

-- Location: LCCOMB_X46_Y11_N18
\RAM|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~7_combout\ = (\mux|out2\(1) & ((\RAM|mem[14][4]~regout\) # ((\mux|out2\(0))))) # (!\mux|out2\(1) & (((\RAM|mem[12][4]~regout\ & !\mux|out2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[14][4]~regout\,
	datac => \RAM|mem[12][4]~regout\,
	datad => \mux|out2\(0),
	combout => \RAM|Mux3~7_combout\);

-- Location: LCCOMB_X47_Y10_N8
\RAM|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~8_combout\ = (\mux|out2\(0) & ((\RAM|Mux3~7_combout\ & (\RAM|mem[15][4]~regout\)) # (!\RAM|Mux3~7_combout\ & ((\RAM|mem[13][4]~regout\))))) # (!\mux|out2\(0) & (((\RAM|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|mem[15][4]~regout\,
	datac => \RAM|mem[13][4]~regout\,
	datad => \RAM|Mux3~7_combout\,
	combout => \RAM|Mux3~8_combout\);

-- Location: LCCOMB_X48_Y11_N4
\RAM|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux3~9_combout\ = (\mux|out2\(3) & ((\RAM|Mux3~6_combout\ & ((\RAM|Mux3~8_combout\))) # (!\RAM|Mux3~6_combout\ & (\RAM|Mux3~1_combout\)))) # (!\mux|out2\(3) & (((\RAM|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux3~1_combout\,
	datab => \mux|out2\(3),
	datac => \RAM|Mux3~6_combout\,
	datad => \RAM|Mux3~8_combout\,
	combout => \RAM|Mux3~9_combout\);

-- Location: LCFF_X48_Y11_N5
\RAM|dataOut[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux3~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(4));

-- Location: LCFF_X33_Y13_N25
\UC|barmemoria[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(4),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(4));

-- Location: LCCOMB_X33_Y13_N24
\mux|out0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~9_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(4)))) # (!\UC|variacao~regout\ & (\SW~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \UC|barmemoria\(4),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~9_combout\);

-- Location: LCCOMB_X33_Y13_N26
\mux|out0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~10_combout\ = (\mux|out0~1_combout\ & ((\mux|out0[4]~_Duplicate_1_regout\))) # (!\mux|out0~1_combout\ & (\mux|out0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out0~1_combout\,
	datac => \mux|out0~9_combout\,
	datad => \mux|out0[4]~_Duplicate_1_regout\,
	combout => \mux|out0~10_combout\);

-- Location: LCCOMB_X36_Y11_N28
\ula|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~4_combout\ = (\mux|out1[3]~_Duplicate_1_regout\ & ((\mux|out2\(5) $ (\mux|out0[3]~_Duplicate_1_regout\)) # (!\mux|out2\(4)))) # (!\mux|out1[3]~_Duplicate_1_regout\ & (\mux|out2\(4) $ (((\mux|out0[3]~_Duplicate_1_regout\) # (!\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out0[3]~_Duplicate_1_regout\,
	datac => \mux|out2\(4),
	datad => \mux|out1[3]~_Duplicate_1_regout\,
	combout => \ula|Mux4~4_combout\);

-- Location: LCCOMB_X36_Y12_N28
\ula|Div0|auto_generated|divider|divider|StageOut[25]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (((\ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X36_Y12_N14
\ula|Div0|auto_generated|divider|divider|StageOut[24]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\mux|out0[4]~_Duplicate_1_regout\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))) # (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & 
-- (\mux|out0[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[4]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X36_Y12_N0
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\mux|out0[3]~_Duplicate_1_regout\ & ((GND) # (!\mux|out1[0]~_Duplicate_1_regout\))) # (!\mux|out0[3]~_Duplicate_1_regout\ & (\mux|out1[0]~_Duplicate_1_regout\ $ (GND)))
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\mux|out0[3]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[3]~_Duplicate_1_regout\,
	datab => \mux|out1[0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X36_Y12_N2
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ 
-- & (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\mux|out1[1]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))) # (!\mux|out1[1]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X36_Y12_N4
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\mux|out1[2]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\mux|out1[2]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # 
-- (!\mux|out1[2]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X36_Y12_N6
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) 
-- # (!\mux|out1[3]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\mux|out1[3]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & (\mux|out1[3]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X36_Y12_N10
\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X36_Y12_N18
\ula|Div0|auto_generated|divider|divider|selnose[36]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose\(36) = (\mux|out1[5]~_Duplicate_1_regout\) # ((\mux|out1[6]~_Duplicate_1_regout\) # ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\) # (\mux|out1[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[5]~_Duplicate_1_regout\,
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \mux|out1[7]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose\(36));

-- Location: LCCOMB_X36_Y11_N22
\ula|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~5_combout\ = (\ula|Mux4~4_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|Div0|auto_generated|divider|divider|selnose\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \ula|Mux4~4_combout\,
	datac => \mux|out2\(4),
	datad => \ula|Div0|auto_generated|divider|divider|selnose\(36),
	combout => \ula|Mux4~5_combout\);

-- Location: LCCOMB_X36_Y11_N6
\ula|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~0_combout\ = (\ula|saidaULA[1]~1_combout\ & (!\ula|saidaULA[1]~0_combout\)) # (!\ula|saidaULA[1]~1_combout\ & ((\ula|saidaULA[1]~0_combout\ & (\ula|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\ula|saidaULA[1]~0_combout\ & 
-- ((\ula|Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~1_combout\,
	datab => \ula|saidaULA[1]~0_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \ula|Mux4~5_combout\,
	combout => \ula|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y11_N26
\ula|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~2_combout\ = (\ula|saidaULA[1]~1_combout\ & ((\ula|Mux4~0_combout\ & ((\ula|Mux4~1_combout\))) # (!\ula|Mux4~0_combout\ & (\ula|Add0~12_combout\)))) # (!\ula|saidaULA[1]~1_combout\ & (((\ula|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~1_combout\,
	datab => \ula|Add0~12_combout\,
	datac => \ula|Mux4~1_combout\,
	datad => \ula|Mux4~0_combout\,
	combout => \ula|Mux4~2_combout\);

-- Location: LCCOMB_X38_Y11_N8
\ula|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~3_combout\ = (\ula|Mux4~2_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \ula|Mux4~2_combout\,
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \mux|out2\(4),
	combout => \ula|Mux4~3_combout\);

-- Location: LCFF_X38_Y11_N9
\ula|saidaULA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux4~3_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(3));

-- Location: LCCOMB_X45_Y11_N28
\UC|dataInMem[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[3]~feeder_combout\ = \ula|saidaULA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(3),
	combout => \UC|dataInMem[3]~feeder_combout\);

-- Location: LCFF_X45_Y11_N29
\UC|dataInMem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[3]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(3));

-- Location: LCFF_X47_Y10_N29
\RAM|mem[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][3]~regout\);

-- Location: LCFF_X47_Y10_N15
\RAM|mem[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][3]~regout\);

-- Location: LCFF_X46_Y10_N27
\RAM|mem[9][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][3]~regout\);

-- Location: LCCOMB_X46_Y10_N26
\RAM|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~0_combout\ = (\mux|out2\(2) & (((\mux|out2\(3))))) # (!\mux|out2\(2) & ((\mux|out2\(3) & ((\RAM|mem[9][3]~regout\))) # (!\mux|out2\(3) & (\RAM|mem[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[1][3]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[9][3]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y10_N10
\RAM|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~1_combout\ = (\mux|out2\(2) & ((\RAM|Mux4~0_combout\ & ((\RAM|mem[13][3]~regout\))) # (!\RAM|Mux4~0_combout\ & (\RAM|mem[5][3]~regout\)))) # (!\mux|out2\(2) & (((\RAM|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \RAM|mem[5][3]~regout\,
	datac => \RAM|mem[13][3]~regout\,
	datad => \RAM|Mux4~0_combout\,
	combout => \RAM|Mux4~1_combout\);

-- Location: LCCOMB_X48_Y13_N20
\RAM|mem[15][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][3]~feeder_combout\ = \UC|dataInMem\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(3),
	combout => \RAM|mem[15][3]~feeder_combout\);

-- Location: LCFF_X48_Y13_N21
\RAM|mem[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][3]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][3]~regout\);

-- Location: LCFF_X49_Y10_N11
\RAM|mem[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][3]~regout\);

-- Location: LCCOMB_X49_Y13_N22
\RAM|mem[11][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[11][3]~feeder_combout\ = \UC|dataInMem\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(3),
	combout => \RAM|mem[11][3]~feeder_combout\);

-- Location: LCFF_X49_Y13_N23
\RAM|mem[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[11][3]~feeder_combout\,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][3]~regout\);

-- Location: LCCOMB_X49_Y10_N20
\RAM|mem~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~31_combout\ = (\UC|dataInMem\(3) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|dataInMem\(3),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~31_combout\);

-- Location: LCFF_X49_Y10_N21
\RAM|mem[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~31_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][3]~regout\);

-- Location: LCCOMB_X48_Y12_N2
\RAM|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~7_combout\ = (\mux|out2\(2) & (((\mux|out2\(3))))) # (!\mux|out2\(2) & ((\mux|out2\(3) & (\RAM|mem[11][3]~regout\)) # (!\mux|out2\(3) & ((\RAM|mem[3][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \RAM|mem[11][3]~regout\,
	datac => \mux|out2\(3),
	datad => \RAM|mem[3][3]~regout\,
	combout => \RAM|Mux4~7_combout\);

-- Location: LCCOMB_X48_Y12_N28
\RAM|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~8_combout\ = (\mux|out2\(2) & ((\RAM|Mux4~7_combout\ & (\RAM|mem[15][3]~regout\)) # (!\RAM|Mux4~7_combout\ & ((\RAM|mem[7][3]~regout\))))) # (!\mux|out2\(2) & (((\RAM|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(2),
	datab => \RAM|mem[15][3]~regout\,
	datac => \RAM|mem[7][3]~regout\,
	datad => \RAM|Mux4~7_combout\,
	combout => \RAM|Mux4~8_combout\);

-- Location: LCFF_X46_Y11_N1
\RAM|mem[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][3]~regout\);

-- Location: LCFF_X46_Y12_N21
\RAM|mem[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][3]~regout\);

-- Location: LCFF_X47_Y13_N19
\RAM|mem[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][3]~regout\);

-- Location: LCCOMB_X46_Y12_N6
\RAM|mem~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~30_combout\ = (\UC|we~regout\ & (\UC|dataInMem\(3) & \RAM|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|we~regout\,
	datac => \UC|dataInMem\(3),
	datad => \RAM|Decoder0~10_combout\,
	combout => \RAM|mem~30_combout\);

-- Location: LCFF_X46_Y12_N7
\RAM|mem[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~30_combout\,
	ena => \RAM|mem[0][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[0][3]~regout\);

-- Location: LCCOMB_X47_Y13_N18
\RAM|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~4_combout\ = (\mux|out2\(3) & (\mux|out2\(2))) # (!\mux|out2\(3) & ((\mux|out2\(2) & (\RAM|mem[4][3]~regout\)) # (!\mux|out2\(2) & ((\RAM|mem[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(2),
	datac => \RAM|mem[4][3]~regout\,
	datad => \RAM|mem[0][3]~regout\,
	combout => \RAM|Mux4~4_combout\);

-- Location: LCCOMB_X46_Y12_N20
\RAM|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~5_combout\ = (\mux|out2\(3) & ((\RAM|Mux4~4_combout\ & (\RAM|mem[12][3]~regout\)) # (!\RAM|Mux4~4_combout\ & ((\RAM|mem[8][3]~regout\))))) # (!\mux|out2\(3) & (((\RAM|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \RAM|mem[12][3]~regout\,
	datac => \RAM|mem[8][3]~regout\,
	datad => \RAM|Mux4~4_combout\,
	combout => \RAM|Mux4~5_combout\);

-- Location: LCFF_X47_Y11_N9
\RAM|mem[10][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][3]~regout\);

-- Location: LCFF_X47_Y13_N5
\RAM|mem[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(3),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][3]~regout\);

-- Location: LCCOMB_X47_Y13_N4
\RAM|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~2_combout\ = (\mux|out2\(2) & (((\RAM|mem[6][3]~regout\) # (\mux|out2\(3))))) # (!\mux|out2\(2) & (\RAM|mem[2][3]~regout\ & ((!\mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[2][3]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[6][3]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux4~2_combout\);

-- Location: LCCOMB_X46_Y12_N10
\RAM|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~3_combout\ = (\mux|out2\(3) & ((\RAM|Mux4~2_combout\ & (\RAM|mem[14][3]~regout\)) # (!\RAM|Mux4~2_combout\ & ((\RAM|mem[10][3]~regout\))))) # (!\mux|out2\(3) & (((\RAM|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[14][3]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[10][3]~regout\,
	datad => \RAM|Mux4~2_combout\,
	combout => \RAM|Mux4~3_combout\);

-- Location: LCCOMB_X46_Y12_N4
\RAM|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~6_combout\ = (\mux|out2\(0) & (\mux|out2\(1))) # (!\mux|out2\(0) & ((\mux|out2\(1) & ((\RAM|Mux4~3_combout\))) # (!\mux|out2\(1) & (\RAM|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \mux|out2\(1),
	datac => \RAM|Mux4~5_combout\,
	datad => \RAM|Mux4~3_combout\,
	combout => \RAM|Mux4~6_combout\);

-- Location: LCCOMB_X45_Y12_N20
\RAM|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux4~9_combout\ = (\mux|out2\(0) & ((\RAM|Mux4~6_combout\ & ((\RAM|Mux4~8_combout\))) # (!\RAM|Mux4~6_combout\ & (\RAM|Mux4~1_combout\)))) # (!\mux|out2\(0) & (((\RAM|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|Mux4~1_combout\,
	datac => \RAM|Mux4~8_combout\,
	datad => \RAM|Mux4~6_combout\,
	combout => \RAM|Mux4~9_combout\);

-- Location: LCFF_X45_Y12_N21
\RAM|dataOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux4~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(3));

-- Location: LCFF_X45_Y13_N1
\UC|barmemoria[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(3),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(3));

-- Location: LCCOMB_X45_Y13_N0
\mux|out0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~7_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(3)))) # (!\UC|variacao~regout\ & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \UC|barmemoria\(3),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~7_combout\);

-- Location: LCCOMB_X45_Y13_N10
\mux|out0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~8_combout\ = (\mux|out0~1_combout\ & (\mux|out0[3]~_Duplicate_1_regout\)) # (!\mux|out0~1_combout\ & ((\mux|out0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out0~1_combout\,
	datac => \mux|out0[3]~_Duplicate_1_regout\,
	datad => \mux|out0~7_combout\,
	combout => \mux|out0~8_combout\);

-- Location: LCCOMB_X36_Y11_N4
\ula|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~0_combout\ = (\ula|saidaULA[1]~0_combout\ & ((\ula|saidaULA[1]~1_combout\ & (\ula|Add0~9_combout\)) # (!\ula|saidaULA[1]~1_combout\ & ((\ula|Mult0|auto_generated|mac_out2~DATAOUT2\))))) # (!\ula|saidaULA[1]~0_combout\ & 
-- (((\ula|saidaULA[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~9_combout\,
	datab => \ula|saidaULA[1]~0_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \ula|saidaULA[1]~1_combout\,
	combout => \ula|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y13_N6
\ula|Div0|auto_generated|divider|divider|StageOut[26]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X37_Y12_N26
\ula|Div0|auto_generated|divider|divider|StageOut[35]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X36_Y12_N16
\ula|Div0|auto_generated|divider|divider|StageOut[33]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (((\ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X37_Y12_N28
\ula|Div0|auto_generated|divider|divider|StageOut[32]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\mux|out0[3]~_Duplicate_1_regout\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))) # (!\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & 
-- (\mux|out0[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \mux|out0[3]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X37_Y12_N6
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\mux|out0[2]~_Duplicate_1_regout\ & ((GND) # (!\mux|out1[0]~_Duplicate_1_regout\))) # (!\mux|out0[2]~_Duplicate_1_regout\ & (\mux|out1[0]~_Duplicate_1_regout\ $ (GND)))
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\mux|out0[2]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[2]~_Duplicate_1_regout\,
	datab => \mux|out1[0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X37_Y12_N8
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # 
-- (!\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ 
-- & (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\mux|out1[1]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\))) # (!\mux|out1[1]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X37_Y12_N14
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\mux|out1[4]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\mux|out1[4]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # 
-- (!\mux|out1[4]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[4]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X37_Y12_N18
\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X37_Y12_N2
\ula|Div0|auto_generated|divider|divider|selnose[45]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose\(45) = (\mux|out1[7]~_Duplicate_1_regout\) # ((\mux|out1[6]~_Duplicate_1_regout\) # (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \mux|out1[6]~_Duplicate_1_regout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose\(45));

-- Location: LCCOMB_X37_Y11_N12
\ula|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~5_combout\ = (\ula|Mux5~4_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|Div0|auto_generated|divider|divider|selnose\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux5~4_combout\,
	datab => \mux|out2\(5),
	datac => \mux|out2\(4),
	datad => \ula|Div0|auto_generated|divider|divider|selnose\(45),
	combout => \ula|Mux5~5_combout\);

-- Location: LCCOMB_X37_Y11_N10
\ula|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~2_combout\ = (\ula|saidaULA[1]~0_combout\ & (((\ula|Mux5~0_combout\)))) # (!\ula|saidaULA[1]~0_combout\ & ((\ula|Mux5~0_combout\ & (\ula|Mux5~1_combout\)) # (!\ula|Mux5~0_combout\ & ((\ula|Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \ula|Mux5~1_combout\,
	datac => \ula|Mux5~0_combout\,
	datad => \ula|Mux5~5_combout\,
	combout => \ula|Mux5~2_combout\);

-- Location: LCCOMB_X38_Y11_N22
\ula|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~3_combout\ = (\ula|Mux5~2_combout\ & ((\mux|out2\(4)) # ((\mux|out2\(5)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(4),
	datab => \mux|out2\(5),
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \ula|Mux5~2_combout\,
	combout => \ula|Mux5~3_combout\);

-- Location: LCFF_X38_Y11_N23
\ula|saidaULA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux5~3_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(2));

-- Location: LCCOMB_X45_Y11_N14
\UC|dataInMem[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[2]~feeder_combout\ = \ula|saidaULA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(2),
	combout => \UC|dataInMem[2]~feeder_combout\);

-- Location: LCFF_X45_Y11_N15
\UC|dataInMem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[2]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(2));

-- Location: LCCOMB_X46_Y10_N24
\RAM|mem~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~24_combout\ = ((\UC|dataInMem\(2)) # (!\RAM|Decoder0~9_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(2),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~24_combout\);

-- Location: LCFF_X46_Y10_N25
\RAM|mem[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~24_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][2]~regout\);

-- Location: LCCOMB_X46_Y13_N8
\RAM|mem~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~25_combout\ = (\RAM|Decoder0~8_combout\ & (\UC|we~regout\ & \UC|dataInMem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Decoder0~8_combout\,
	datac => \UC|we~regout\,
	datad => \UC|dataInMem\(2),
	combout => \RAM|mem~25_combout\);

-- Location: LCFF_X46_Y13_N9
\RAM|mem[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~25_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][2]~regout\);

-- Location: LCCOMB_X47_Y12_N26
\RAM|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~4_combout\ = (\mux|out2\(0) & (((\mux|out2\(1))))) # (!\mux|out2\(0) & ((\mux|out2\(1) & ((\RAM|mem[2][2]~regout\))) # (!\mux|out2\(1) & (\RAM|mem[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][2]~regout\,
	datab => \RAM|mem[2][2]~regout\,
	datac => \mux|out2\(0),
	datad => \mux|out2\(1),
	combout => \RAM|Mux5~4_combout\);

-- Location: LCCOMB_X48_Y12_N14
\RAM|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~5_combout\ = (\mux|out2\(0) & ((\RAM|Mux5~4_combout\ & (\RAM|mem[3][2]~regout\)) # (!\RAM|Mux5~4_combout\ & ((\RAM|mem[1][2]~regout\))))) # (!\mux|out2\(0) & (((\RAM|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[3][2]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[1][2]~regout\,
	datad => \RAM|Mux5~4_combout\,
	combout => \RAM|Mux5~5_combout\);

-- Location: LCFF_X46_Y10_N31
\RAM|mem[9][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[9][2]~regout\);

-- Location: LCFF_X46_Y12_N31
\RAM|mem[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][2]~regout\);

-- Location: LCFF_X47_Y11_N23
\RAM|mem[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[10][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[10][2]~regout\);

-- Location: LCCOMB_X46_Y12_N30
\RAM|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~2_combout\ = (\mux|out2\(1) & ((\mux|out2\(0)) # ((\RAM|mem[10][2]~regout\)))) # (!\mux|out2\(1) & (!\mux|out2\(0) & (\RAM|mem[8][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \RAM|mem[8][2]~regout\,
	datad => \RAM|mem[10][2]~regout\,
	combout => \RAM|Mux5~2_combout\);

-- Location: LCFF_X49_Y13_N3
\RAM|mem[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][2]~regout\);

-- Location: LCCOMB_X47_Y12_N16
\RAM|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~3_combout\ = (\mux|out2\(0) & ((\RAM|Mux5~2_combout\ & ((\RAM|mem[11][2]~regout\))) # (!\RAM|Mux5~2_combout\ & (\RAM|mem[9][2]~regout\)))) # (!\mux|out2\(0) & (((\RAM|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(0),
	datab => \RAM|mem[9][2]~regout\,
	datac => \RAM|Mux5~2_combout\,
	datad => \RAM|mem[11][2]~regout\,
	combout => \RAM|Mux5~3_combout\);

-- Location: LCCOMB_X48_Y12_N24
\RAM|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~6_combout\ = (\mux|out2\(3) & ((\mux|out2\(2)) # ((\RAM|Mux5~3_combout\)))) # (!\mux|out2\(3) & (!\mux|out2\(2) & (\RAM|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(2),
	datac => \RAM|Mux5~5_combout\,
	datad => \RAM|Mux5~3_combout\,
	combout => \RAM|Mux5~6_combout\);

-- Location: LCCOMB_X48_Y13_N10
\RAM|mem[15][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem[15][2]~feeder_combout\ = \UC|dataInMem\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|dataInMem\(2),
	combout => \RAM|mem[15][2]~feeder_combout\);

-- Location: LCFF_X48_Y13_N11
\RAM|mem[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem[15][2]~feeder_combout\,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][2]~regout\);

-- Location: LCFF_X47_Y11_N13
\RAM|mem[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(2),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][2]~regout\);

-- Location: LCCOMB_X47_Y11_N12
\RAM|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~7_combout\ = (\mux|out2\(0) & ((\RAM|mem[13][2]~regout\) # ((\mux|out2\(1))))) # (!\mux|out2\(0) & (((\RAM|mem[12][2]~regout\ & !\mux|out2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[13][2]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[12][2]~regout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux5~7_combout\);

-- Location: LCCOMB_X47_Y11_N18
\RAM|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~8_combout\ = (\mux|out2\(1) & ((\RAM|Mux5~7_combout\ & ((\RAM|mem[15][2]~regout\))) # (!\RAM|Mux5~7_combout\ & (\RAM|mem[14][2]~regout\)))) # (!\mux|out2\(1) & (((\RAM|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[14][2]~regout\,
	datab => \mux|out2\(1),
	datac => \RAM|mem[15][2]~regout\,
	datad => \RAM|Mux5~7_combout\,
	combout => \RAM|Mux5~8_combout\);

-- Location: LCCOMB_X48_Y12_N18
\RAM|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux5~9_combout\ = (\mux|out2\(2) & ((\RAM|Mux5~6_combout\ & ((\RAM|Mux5~8_combout\))) # (!\RAM|Mux5~6_combout\ & (\RAM|Mux5~1_combout\)))) # (!\mux|out2\(2) & (((\RAM|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux5~1_combout\,
	datab => \mux|out2\(2),
	datac => \RAM|Mux5~6_combout\,
	datad => \RAM|Mux5~8_combout\,
	combout => \RAM|Mux5~9_combout\);

-- Location: LCFF_X48_Y12_N19
\RAM|dataOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux5~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(2));

-- Location: LCFF_X45_Y13_N29
\UC|barmemoria[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(2),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(2));

-- Location: LCCOMB_X45_Y13_N28
\mux|out0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~5_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(2)))) # (!\UC|variacao~regout\ & (\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datac => \UC|barmemoria\(2),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~5_combout\);

-- Location: LCCOMB_X45_Y13_N6
\mux|out0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~6_combout\ = (\mux|out0~1_combout\ & (\mux|out0[2]~_Duplicate_1_regout\)) # (!\mux|out0~1_combout\ & ((\mux|out0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out0~1_combout\,
	datac => \mux|out0[2]~_Duplicate_1_regout\,
	datad => \mux|out0~5_combout\,
	combout => \mux|out0~6_combout\);

-- Location: LCCOMB_X37_Y11_N14
\ula|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~4_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\mux|out0[1]~_Duplicate_1_regout\ $ (\mux|out2\(5))) # (!\mux|out2\(4)))) # (!\mux|out1[1]~_Duplicate_1_regout\ & (\mux|out2\(4) $ (((\mux|out0[1]~_Duplicate_1_regout\) # (!\mux|out2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0[1]~_Duplicate_1_regout\,
	datab => \mux|out1[1]~_Duplicate_1_regout\,
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \ula|Mux6~4_combout\);

-- Location: LCCOMB_X37_Y12_N22
\ula|Div0|auto_generated|divider|divider|StageOut[44]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X36_Y12_N26
\ula|Div0|auto_generated|divider|divider|selnose[45]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ = (!\mux|out1[6]~_Duplicate_1_regout\ & !\mux|out1[7]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datac => \mux|out1[7]~_Duplicate_1_regout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\);

-- Location: LCCOMB_X36_Y12_N30
\ula|Div0|auto_generated|divider|divider|StageOut[34]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X37_Y12_N4
\ula|Div0|auto_generated|divider|divider|StageOut[43]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\))) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (((\ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: LCCOMB_X37_Y12_N24
\ula|Div0|auto_generated|divider|divider|StageOut[41]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))) # 
-- (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X38_Y12_N28
\ula|Div0|auto_generated|divider|divider|StageOut[40]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ = (\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\mux|out0[2]~_Duplicate_1_regout\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))) # (!\ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & 
-- (\mux|out0[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \mux|out0[2]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X38_Y12_N2
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))))) # 
-- (!\mux|out1[1]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ 
-- & (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\mux|out1[1]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\))) # (!\mux|out1[1]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[1]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X38_Y12_N4
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\mux|out1[2]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\mux|out1[2]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # 
-- (!\mux|out1[2]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X38_Y12_N6
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\mux|out1[3]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # (!\mux|out1[3]~_Duplicate_1_regout\ & 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (\mux|out1[3]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\mux|out1[3]~_Duplicate_1_regout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \mux|out1[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X38_Y12_N8
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\mux|out1[4]~_Duplicate_1_regout\ $ (\ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\mux|out1[4]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # 
-- (!\mux|out1[4]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[4]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X38_Y12_N12
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ $ (\mux|out1[6]~_Duplicate_1_regout\ $ 
-- (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # 
-- (!\mux|out1[6]~_Duplicate_1_regout\))) # (!\ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & (!\mux|out1[6]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X38_Y12_N14
\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X38_Y11_N26
\ula|Div0|auto_generated|divider|divider|selnose[54]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|selnose\(54) = (\mux|out1[7]~_Duplicate_1_regout\) # (\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux|out1[7]~_Duplicate_1_regout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|selnose\(54));

-- Location: LCCOMB_X38_Y11_N6
\ula|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~5_combout\ = (\ula|Mux6~4_combout\ & ((\mux|out2\(4)) # ((\mux|out2\(5)) # (!\ula|Div0|auto_generated|divider|divider|selnose\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(4),
	datab => \ula|Mux6~4_combout\,
	datac => \mux|out2\(5),
	datad => \ula|Div0|auto_generated|divider|divider|selnose\(54),
	combout => \ula|Mux6~5_combout\);

-- Location: LCCOMB_X38_Y11_N12
\ula|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~0_combout\ = (\ula|saidaULA[1]~0_combout\ & (!\ula|saidaULA[1]~1_combout\ & (\ula|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\ula|saidaULA[1]~0_combout\ & ((\ula|saidaULA[1]~1_combout\) # ((\ula|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \ula|saidaULA[1]~1_combout\,
	datac => \ula|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \ula|Mux6~5_combout\,
	combout => \ula|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y11_N28
\ula|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~2_combout\ = (\ula|saidaULA[1]~1_combout\ & ((\ula|Mux6~0_combout\ & ((\ula|Mux6~1_combout\))) # (!\ula|Mux6~0_combout\ & (\ula|Add0~6_combout\)))) # (!\ula|saidaULA[1]~1_combout\ & (((\ula|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~6_combout\,
	datab => \ula|Mux6~1_combout\,
	datac => \ula|saidaULA[1]~1_combout\,
	datad => \ula|Mux6~0_combout\,
	combout => \ula|Mux6~2_combout\);

-- Location: LCCOMB_X38_Y11_N20
\ula|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~3_combout\ = (\ula|Mux6~2_combout\ & ((\mux|out2\(4)) # ((\mux|out2\(5)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(4),
	datab => \mux|out2\(5),
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \ula|Mux6~2_combout\,
	combout => \ula|Mux6~3_combout\);

-- Location: LCFF_X38_Y11_N21
\ula|saidaULA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux6~3_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(1));

-- Location: LCCOMB_X45_Y11_N16
\UC|dataInMem[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[1]~feeder_combout\ = \ula|saidaULA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(1),
	combout => \UC|dataInMem[1]~feeder_combout\);

-- Location: LCFF_X45_Y11_N17
\UC|dataInMem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[1]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(1));

-- Location: LCFF_X47_Y12_N5
\RAM|mem[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][1]~regout\);

-- Location: LCFF_X46_Y12_N15
\RAM|mem[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[8][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[8][1]~regout\);

-- Location: LCCOMB_X46_Y12_N14
\RAM|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~4_combout\ = (\mux|out2\(3) & (((\RAM|mem[8][1]~regout\) # (\mux|out2\(2))))) # (!\mux|out2\(3) & (\RAM|mem[0][1]~regout\ & ((!\mux|out2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][1]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[8][1]~regout\,
	datad => \mux|out2\(2),
	combout => \RAM|Mux6~4_combout\);

-- Location: LCCOMB_X47_Y12_N4
\RAM|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~5_combout\ = (\mux|out2\(2) & ((\RAM|Mux6~4_combout\ & ((\RAM|mem[12][1]~regout\))) # (!\RAM|Mux6~4_combout\ & (\RAM|mem[4][1]~regout\)))) # (!\mux|out2\(2) & (((\RAM|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[4][1]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[12][1]~regout\,
	datad => \RAM|Mux6~4_combout\,
	combout => \RAM|Mux6~5_combout\);

-- Location: LCFF_X47_Y10_N17
\RAM|mem[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][1]~regout\);

-- Location: LCFF_X47_Y10_N7
\RAM|mem[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[5][1]~regout\);

-- Location: LCCOMB_X47_Y10_N6
\RAM|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~2_combout\ = (\mux|out2\(2) & (((\RAM|mem[5][1]~regout\) # (\mux|out2\(3))))) # (!\mux|out2\(2) & (\RAM|mem[1][1]~regout\ & ((!\mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[1][1]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[5][1]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux6~2_combout\);

-- Location: LCCOMB_X47_Y10_N16
\RAM|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~3_combout\ = (\mux|out2\(3) & ((\RAM|Mux6~2_combout\ & ((\RAM|mem[13][1]~regout\))) # (!\RAM|Mux6~2_combout\ & (\RAM|mem[9][1]~regout\)))) # (!\mux|out2\(3) & (((\RAM|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[9][1]~regout\,
	datab => \mux|out2\(3),
	datac => \RAM|mem[13][1]~regout\,
	datad => \RAM|Mux6~2_combout\,
	combout => \RAM|Mux6~3_combout\);

-- Location: LCCOMB_X47_Y12_N14
\RAM|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~6_combout\ = (\mux|out2\(1) & (\mux|out2\(0))) # (!\mux|out2\(1) & ((\mux|out2\(0) & ((\RAM|Mux6~3_combout\))) # (!\mux|out2\(0) & (\RAM|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \mux|out2\(0),
	datac => \RAM|Mux6~5_combout\,
	datad => \RAM|Mux6~3_combout\,
	combout => \RAM|Mux6~6_combout\);

-- Location: LCFF_X48_Y13_N29
\RAM|mem[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[15][1]~regout\);

-- Location: LCFF_X48_Y13_N19
\RAM|mem[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[11][1]~regout\);

-- Location: LCFF_X49_Y10_N3
\RAM|mem[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(1),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][1]~regout\);

-- Location: LCCOMB_X49_Y10_N2
\RAM|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~7_combout\ = (\mux|out2\(2) & (((\RAM|mem[7][1]~regout\) # (\mux|out2\(3))))) # (!\mux|out2\(2) & (\RAM|mem[3][1]~regout\ & ((!\mux|out2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[3][1]~regout\,
	datab => \mux|out2\(2),
	datac => \RAM|mem[7][1]~regout\,
	datad => \mux|out2\(3),
	combout => \RAM|Mux6~7_combout\);

-- Location: LCCOMB_X48_Y13_N18
\RAM|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~8_combout\ = (\mux|out2\(3) & ((\RAM|Mux6~7_combout\ & (\RAM|mem[15][1]~regout\)) # (!\RAM|Mux6~7_combout\ & ((\RAM|mem[11][1]~regout\))))) # (!\mux|out2\(3) & (((\RAM|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \RAM|mem[15][1]~regout\,
	datac => \RAM|mem[11][1]~regout\,
	datad => \RAM|Mux6~7_combout\,
	combout => \RAM|Mux6~8_combout\);

-- Location: LCCOMB_X47_Y12_N28
\RAM|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux6~9_combout\ = (\mux|out2\(1) & ((\RAM|Mux6~6_combout\ & ((\RAM|Mux6~8_combout\))) # (!\RAM|Mux6~6_combout\ & (\RAM|Mux6~1_combout\)))) # (!\mux|out2\(1) & (((\RAM|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux6~1_combout\,
	datab => \mux|out2\(1),
	datac => \RAM|Mux6~6_combout\,
	datad => \RAM|Mux6~8_combout\,
	combout => \RAM|Mux6~9_combout\);

-- Location: LCFF_X47_Y12_N29
\RAM|dataOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux6~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(1));

-- Location: LCFF_X38_Y13_N23
\UC|barmemoria[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(1),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(1));

-- Location: LCCOMB_X38_Y13_N22
\mux|out0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~3_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(1)))) # (!\UC|variacao~regout\ & (\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datac => \UC|barmemoria\(1),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~3_combout\);

-- Location: LCCOMB_X38_Y13_N16
\mux|out0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~4_combout\ = (\mux|out0~1_combout\ & (\mux|out0[1]~_Duplicate_1_regout\)) # (!\mux|out0~1_combout\ & ((\mux|out0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~1_combout\,
	datac => \mux|out0[1]~_Duplicate_1_regout\,
	datad => \mux|out0~3_combout\,
	combout => \mux|out0~4_combout\);

-- Location: LCCOMB_X36_Y11_N24
\ula|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~2_combout\ = (\ula|saidaULA[1]~1_combout\ & (((\ula|Add0~3_combout\) # (!\ula|saidaULA[1]~0_combout\)))) # (!\ula|saidaULA[1]~1_combout\ & (\ula|Mult0|auto_generated|mac_out2~dataout\ & ((\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~1_combout\,
	datab => \ula|Mult0|auto_generated|mac_out2~dataout\,
	datac => \ula|Add0~3_combout\,
	datad => \ula|saidaULA[1]~0_combout\,
	combout => \ula|Mux7~2_combout\);

-- Location: LCCOMB_X38_Y12_N22
\ula|Div0|auto_generated|divider|divider|StageOut[54]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X38_Y12_N18
\ula|Div0|auto_generated|divider|divider|StageOut[52]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X38_Y12_N16
\ula|Div0|auto_generated|divider|divider|StageOut[51]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \mux|out1[7]~_Duplicate_1_regout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\);

-- Location: LCCOMB_X38_Y12_N26
\ula|Div0|auto_generated|divider|divider|StageOut[50]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[7]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X38_Y12_N24
\ula|Div0|auto_generated|divider|divider|StageOut[49]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\mux|out1[7]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # (!\mux|out1[7]~_Duplicate_1_regout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # (!\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[7]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \ula|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X39_Y12_N0
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\mux|out0[0]~_Duplicate_1_regout\) # (!\mux|out1[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[0]~_Duplicate_1_regout\,
	datab => \mux|out0[0]~_Duplicate_1_regout\,
	datad => VCC,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X39_Y12_N2
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & (\mux|out1[1]~_Duplicate_1_regout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # (!\ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\mux|out1[1]~_Duplicate_1_regout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datab => \mux|out1[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X39_Y12_N4
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\mux|out1[2]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\mux|out1[2]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[2]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X39_Y12_N6
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\mux|out1[3]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\))) # (!\mux|out1[3]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[3]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X39_Y12_N8
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\mux|out1[4]~_Duplicate_1_regout\ & (\ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)) # (!\mux|out1[4]~_Duplicate_1_regout\ & ((\ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[4]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X39_Y12_N10
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\mux|out1[5]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\))) # (!\mux|out1[5]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[5]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X39_Y12_N12
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\) # 
-- (!\mux|out1[6]~_Duplicate_1_regout\))) # (!\ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ & (!\mux|out1[6]~_Duplicate_1_regout\ & !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datab => \mux|out1[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X39_Y12_N14
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\mux|out1[7]~_Duplicate_1_regout\ & ((!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # 
-- (!\ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\))) # (!\mux|out1[7]~_Duplicate_1_regout\ & (!\ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & 
-- !\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1[7]~_Duplicate_1_regout\,
	datab => \ula|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datad => VCC,
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X39_Y12_N16
\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X39_Y12_N22
\ula|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~1_combout\ = (\mux|out2\(4) & (\ula|Mux7~0_combout\)) # (!\mux|out2\(4) & ((\mux|out2\(5) & (\ula|Mux7~0_combout\)) # (!\mux|out2\(5) & ((!\ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~0_combout\,
	datab => \mux|out2\(4),
	datac => \ula|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \mux|out2\(5),
	combout => \ula|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y12_N26
\ula|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~4_combout\ = (\ula|saidaULA[1]~0_combout\ & (((\ula|Mux7~2_combout\)))) # (!\ula|saidaULA[1]~0_combout\ & ((\ula|Mux7~2_combout\ & (\ula|Mux7~3_combout\)) # (!\ula|Mux7~2_combout\ & ((\ula|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA[1]~0_combout\,
	datab => \ula|Mux7~3_combout\,
	datac => \ula|Mux7~2_combout\,
	datad => \ula|Mux7~1_combout\,
	combout => \ula|Mux7~4_combout\);

-- Location: LCCOMB_X39_Y12_N18
\ula|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~5_combout\ = (\ula|Mux7~4_combout\ & ((\mux|out2\(5)) # ((\mux|out2\(4)) # (!\ula|saidaULA[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(5),
	datab => \mux|out2\(4),
	datac => \ula|saidaULA[1]~0_combout\,
	datad => \ula|Mux7~4_combout\,
	combout => \ula|Mux7~5_combout\);

-- Location: LCFF_X39_Y12_N19
\ula|saidaULA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \ula|Mux7~5_combout\,
	ena => \ula|saidaULA[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ula|saidaULA\(0));

-- Location: LCCOMB_X48_Y10_N26
\UC|dataInMem[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|dataInMem[0]~feeder_combout\ = \ula|saidaULA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|saidaULA\(0),
	combout => \UC|dataInMem[0]~feeder_combout\);

-- Location: LCFF_X48_Y10_N27
\UC|dataInMem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|dataInMem[0]~feeder_combout\,
	ena => \UC|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|dataInMem\(0));

-- Location: LCFF_X45_Y11_N1
\RAM|mem[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[13][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[13][0]~regout\);

-- Location: LCFF_X47_Y11_N3
\RAM|mem[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[12][0]~regout\);

-- Location: LCCOMB_X47_Y11_N2
\RAM|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~7_combout\ = (\mux|out2\(0) & (((\mux|out2\(1))))) # (!\mux|out2\(0) & ((\mux|out2\(1) & (\RAM|mem[14][0]~regout\)) # (!\mux|out2\(1) & ((\RAM|mem[12][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[14][0]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[12][0]~regout\,
	datad => \mux|out2\(1),
	combout => \RAM|Mux7~7_combout\);

-- Location: LCCOMB_X48_Y12_N20
\RAM|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~8_combout\ = (\mux|out2\(0) & ((\RAM|Mux7~7_combout\ & (\RAM|mem[15][0]~regout\)) # (!\RAM|Mux7~7_combout\ & ((\RAM|mem[13][0]~regout\))))) # (!\mux|out2\(0) & (((\RAM|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[15][0]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[13][0]~regout\,
	datad => \RAM|Mux7~7_combout\,
	combout => \RAM|Mux7~8_combout\);

-- Location: LCFF_X48_Y12_N5
\RAM|mem[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[7][0]~regout\);

-- Location: LCFF_X47_Y13_N1
\RAM|mem[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[6][0]~regout\);

-- Location: LCFF_X47_Y13_N27
\RAM|mem[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \UC|dataInMem\(0),
	sload => VCC,
	ena => \RAM|mem[4][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[4][0]~regout\);

-- Location: LCCOMB_X47_Y13_N26
\RAM|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~2_combout\ = (\mux|out2\(1) & ((\RAM|mem[6][0]~regout\) # ((\mux|out2\(0))))) # (!\mux|out2\(1) & (((\RAM|mem[4][0]~regout\ & !\mux|out2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[6][0]~regout\,
	datac => \RAM|mem[4][0]~regout\,
	datad => \mux|out2\(0),
	combout => \RAM|Mux7~2_combout\);

-- Location: LCCOMB_X48_Y12_N4
\RAM|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~3_combout\ = (\mux|out2\(0) & ((\RAM|Mux7~2_combout\ & ((\RAM|mem[7][0]~regout\))) # (!\RAM|Mux7~2_combout\ & (\RAM|mem[5][0]~regout\)))) # (!\mux|out2\(0) & (((\RAM|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[5][0]~regout\,
	datab => \mux|out2\(0),
	datac => \RAM|mem[7][0]~regout\,
	datad => \RAM|Mux7~2_combout\,
	combout => \RAM|Mux7~3_combout\);

-- Location: LCCOMB_X49_Y10_N24
\RAM|mem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~14_combout\ = (\UC|dataInMem\(0) & (\RAM|Decoder0~11_combout\ & \UC|we~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|dataInMem\(0),
	datac => \RAM|Decoder0~11_combout\,
	datad => \UC|we~regout\,
	combout => \RAM|mem~14_combout\);

-- Location: LCFF_X49_Y10_N25
\RAM|mem[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~14_combout\,
	ena => \RAM|mem[3][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[3][0]~regout\);

-- Location: LCCOMB_X49_Y13_N26
\RAM|mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~8_combout\ = ((\UC|dataInMem\(0)) # (!\RAM|Decoder0~8_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(0),
	datad => \RAM|Decoder0~8_combout\,
	combout => \RAM|mem~8_combout\);

-- Location: LCFF_X49_Y13_N27
\RAM|mem[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~8_combout\,
	ena => \RAM|mem[2][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[2][0]~regout\);

-- Location: LCCOMB_X46_Y10_N8
\RAM|mem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|mem~10_combout\ = ((\UC|dataInMem\(0)) # (!\RAM|Decoder0~9_combout\)) # (!\UC|we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UC|we~regout\,
	datac => \UC|dataInMem\(0),
	datad => \RAM|Decoder0~9_combout\,
	combout => \RAM|mem~10_combout\);

-- Location: LCFF_X46_Y10_N9
\RAM|mem[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|mem~10_combout\,
	ena => \RAM|mem[1][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|mem[1][0]~regout\);

-- Location: LCCOMB_X48_Y12_N6
\RAM|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~4_combout\ = (\mux|out2\(1) & (((\mux|out2\(0))))) # (!\mux|out2\(1) & ((\mux|out2\(0) & ((\RAM|mem[1][0]~regout\))) # (!\mux|out2\(0) & (\RAM|mem[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|mem[0][0]~regout\,
	datab => \mux|out2\(1),
	datac => \RAM|mem[1][0]~regout\,
	datad => \mux|out2\(0),
	combout => \RAM|Mux7~4_combout\);

-- Location: LCCOMB_X48_Y12_N12
\RAM|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~5_combout\ = (\mux|out2\(1) & ((\RAM|Mux7~4_combout\ & (\RAM|mem[3][0]~regout\)) # (!\RAM|Mux7~4_combout\ & ((\RAM|mem[2][0]~regout\))))) # (!\mux|out2\(1) & (((\RAM|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(1),
	datab => \RAM|mem[3][0]~regout\,
	datac => \RAM|mem[2][0]~regout\,
	datad => \RAM|Mux7~4_combout\,
	combout => \RAM|Mux7~5_combout\);

-- Location: LCCOMB_X48_Y12_N10
\RAM|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~6_combout\ = (\mux|out2\(3) & (\mux|out2\(2))) # (!\mux|out2\(3) & ((\mux|out2\(2) & (\RAM|Mux7~3_combout\)) # (!\mux|out2\(2) & ((\RAM|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(3),
	datab => \mux|out2\(2),
	datac => \RAM|Mux7~3_combout\,
	datad => \RAM|Mux7~5_combout\,
	combout => \RAM|Mux7~6_combout\);

-- Location: LCCOMB_X48_Y12_N0
\RAM|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM|Mux7~9_combout\ = (\mux|out2\(3) & ((\RAM|Mux7~6_combout\ & ((\RAM|Mux7~8_combout\))) # (!\RAM|Mux7~6_combout\ & (\RAM|Mux7~1_combout\)))) # (!\mux|out2\(3) & (((\RAM|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Mux7~1_combout\,
	datab => \mux|out2\(3),
	datac => \RAM|Mux7~8_combout\,
	datad => \RAM|Mux7~6_combout\,
	combout => \RAM|Mux7~9_combout\);

-- Location: LCFF_X48_Y12_N1
\RAM|dataOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RAM|Mux7~9_combout\,
	ena => \UC|rd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM|dataOut\(0));

-- Location: LCFF_X38_Y13_N21
\UC|barmemoria[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(0),
	sload => VCC,
	ena => \UC|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|barmemoria\(0));

-- Location: LCCOMB_X38_Y13_N20
\mux|out0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~0_combout\ = (\UC|variacao~regout\ & ((\UC|barmemoria\(0)))) # (!\UC|variacao~regout\ & (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \UC|barmemoria\(0),
	datad => \UC|variacao~regout\,
	combout => \mux|out0~0_combout\);

-- Location: LCCOMB_X38_Y13_N8
\mux|out0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|out0~2_combout\ = (\mux|out0~1_combout\ & ((\mux|out0[0]~_Duplicate_1_regout\))) # (!\mux|out0~1_combout\ & (\mux|out0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~1_combout\,
	datac => \mux|out0~0_combout\,
	datad => \mux|out0[0]~_Duplicate_1_regout\,
	combout => \mux|out0~2_combout\);

-- Location: LCCOMB_X38_Y13_N10
\mux|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux7~0_combout\ = (\SW~combout\(9) & (\SW~combout\(8))) # (!\SW~combout\(9) & ((\SW~combout\(8) & ((\mux|out1~1_combout\))) # (!\SW~combout\(8) & (\mux|out0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(8),
	datac => \mux|out0~2_combout\,
	datad => \mux|out1~1_combout\,
	combout => \mux|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y13_N12
\mux|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux7~1_combout\ = (\SW~combout\(9) & ((\mux|Mux7~0_combout\ & ((\ula|saidaULA\(0)))) # (!\mux|Mux7~0_combout\ & (\mux|out2~1_combout\)))) # (!\SW~combout\(9) & (((\mux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2~1_combout\,
	datab => \SW~combout\(9),
	datac => \mux|Mux7~0_combout\,
	datad => \ula|saidaULA\(0),
	combout => \mux|Mux7~1_combout\);

-- Location: LCFF_X38_Y13_N13
\mux|choiceOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(0));

-- Location: LCCOMB_X38_Y13_N6
\mux|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux6~0_combout\ = (\SW~combout\(9) & (((\SW~combout\(8)) # (\mux|out2~2_combout\)))) # (!\SW~combout\(9) & (\mux|out0~4_combout\ & (!\SW~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~4_combout\,
	datab => \SW~combout\(9),
	datac => \SW~combout\(8),
	datad => \mux|out2~2_combout\,
	combout => \mux|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y13_N18
\mux|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux6~1_combout\ = (\SW~combout\(8) & ((\mux|Mux6~0_combout\ & (\ula|saidaULA\(1))) # (!\mux|Mux6~0_combout\ & ((\mux|out1~2_combout\))))) # (!\SW~combout\(8) & (((\mux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA\(1),
	datab => \SW~combout\(8),
	datac => \mux|out1~2_combout\,
	datad => \mux|Mux6~0_combout\,
	combout => \mux|Mux6~1_combout\);

-- Location: LCFF_X38_Y13_N19
\mux|choiceOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(1));

-- Location: LCCOMB_X45_Y13_N2
\mux|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux5~0_combout\ = (\SW~combout\(8) & (((\SW~combout\(9)) # (\mux|out1~3_combout\)))) # (!\SW~combout\(8) & (\mux|out0~6_combout\ & (!\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~6_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \mux|out1~3_combout\,
	combout => \mux|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y13_N16
\mux|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux5~1_combout\ = (\SW~combout\(9) & ((\mux|Mux5~0_combout\ & (\ula|saidaULA\(2))) # (!\mux|Mux5~0_combout\ & ((\mux|out2~3_combout\))))) # (!\SW~combout\(9) & (((\mux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA\(2),
	datab => \SW~combout\(9),
	datac => \mux|out2~3_combout\,
	datad => \mux|Mux5~0_combout\,
	combout => \mux|Mux5~1_combout\);

-- Location: LCFF_X45_Y13_N17
\mux|choiceOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(2));

-- Location: LCCOMB_X45_Y13_N26
\mux|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux4~0_combout\ = (\SW~combout\(8) & (((\SW~combout\(9))))) # (!\SW~combout\(8) & ((\SW~combout\(9) & (\mux|out2~4_combout\)) # (!\SW~combout\(9) & ((\mux|out0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2~4_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \mux|out0~8_combout\,
	combout => \mux|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y13_N14
\mux|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux4~1_combout\ = (\SW~combout\(8) & ((\mux|Mux4~0_combout\ & (\ula|saidaULA\(3))) # (!\mux|Mux4~0_combout\ & ((\mux|out1~4_combout\))))) # (!\SW~combout\(8) & (((\mux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA\(3),
	datab => \SW~combout\(8),
	datac => \mux|out1~4_combout\,
	datad => \mux|Mux4~0_combout\,
	combout => \mux|Mux4~1_combout\);

-- Location: LCFF_X45_Y13_N15
\mux|choiceOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(3));

-- Location: LCCOMB_X33_Y13_N28
\mux|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux3~0_combout\ = (\SW~combout\(8) & ((\SW~combout\(9)) # ((\mux|out1~5_combout\)))) # (!\SW~combout\(8) & (!\SW~combout\(9) & ((\mux|out0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \mux|out1~5_combout\,
	datad => \mux|out0~10_combout\,
	combout => \mux|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y13_N16
\mux|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux3~1_combout\ = (\SW~combout\(9) & ((\mux|Mux3~0_combout\ & ((\ula|saidaULA\(4)))) # (!\mux|Mux3~0_combout\ & (\mux|out2~5_combout\)))) # (!\SW~combout\(9) & (((\mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2~5_combout\,
	datab => \ula|saidaULA\(4),
	datac => \SW~combout\(9),
	datad => \mux|Mux3~0_combout\,
	combout => \mux|Mux3~1_combout\);

-- Location: LCFF_X33_Y13_N17
\mux|choiceOut[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(4));

-- Location: LCCOMB_X38_Y13_N26
\mux|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux2~0_combout\ = (\SW~combout\(9) & (((\mux|out2~6_combout\) # (\SW~combout\(8))))) # (!\SW~combout\(9) & (\mux|out0~12_combout\ & ((!\SW~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out0~12_combout\,
	datab => \SW~combout\(9),
	datac => \mux|out2~6_combout\,
	datad => \SW~combout\(8),
	combout => \mux|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y13_N0
\mux|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux2~1_combout\ = (\SW~combout\(8) & ((\mux|Mux2~0_combout\ & ((\ula|saidaULA\(5)))) # (!\mux|Mux2~0_combout\ & (\mux|out1~6_combout\)))) # (!\SW~combout\(8) & (((\mux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out1~6_combout\,
	datab => \SW~combout\(8),
	datac => \ula|saidaULA\(5),
	datad => \mux|Mux2~0_combout\,
	combout => \mux|Mux2~1_combout\);

-- Location: LCFF_X38_Y13_N1
\mux|choiceOut[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(5));

-- Location: LCCOMB_X35_Y13_N12
\mux|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux1~0_combout\ = (\SW~combout\(8) & ((\SW~combout\(9)) # ((\mux|out1~7_combout\)))) # (!\SW~combout\(8) & (!\SW~combout\(9) & ((\mux|out0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \mux|out1~7_combout\,
	datad => \mux|out0~14_combout\,
	combout => \mux|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y13_N20
\mux|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux1~1_combout\ = (\SW~combout\(9) & ((\mux|Mux1~0_combout\ & (\ula|saidaULA\(6))) # (!\mux|Mux1~0_combout\ & ((\mux|out2~7_combout\))))) # (!\SW~combout\(9) & (((\mux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA\(6),
	datab => \mux|out2~7_combout\,
	datac => \SW~combout\(9),
	datad => \mux|Mux1~0_combout\,
	combout => \mux|Mux1~1_combout\);

-- Location: LCFF_X35_Y13_N21
\mux|choiceOut[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(6));

-- Location: LCCOMB_X45_Y13_N22
\mux|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux0~0_combout\ = (\SW~combout\(8) & (((\SW~combout\(9))))) # (!\SW~combout\(8) & ((\SW~combout\(9) & (\mux|out2~8_combout\)) # (!\SW~combout\(9) & ((\mux|out0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2~8_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \mux|out0~16_combout\,
	combout => \mux|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y13_N24
\mux|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux|Mux0~1_combout\ = (\SW~combout\(8) & ((\mux|Mux0~0_combout\ & (\ula|saidaULA\(7))) # (!\mux|Mux0~0_combout\ & ((\mux|out1~8_combout\))))) # (!\SW~combout\(8) & (((\mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|saidaULA\(7),
	datab => \SW~combout\(8),
	datac => \mux|out1~8_combout\,
	datad => \mux|Mux0~0_combout\,
	combout => \mux|Mux0~1_combout\);

-- Location: LCFF_X45_Y13_N25
\mux|choiceOut[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \mux|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux|choiceOut\(7));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X39_Y11_N22
\UC|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|Decoder0~0_combout\ = (\mux|out2\(7) & (\mux|out2\(6) & (\mux|out2\(4) & !\mux|out2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|out2\(7),
	datab => \mux|out2\(6),
	datac => \mux|out2\(4),
	datad => \mux|out2\(5),
	combout => \UC|Decoder0~0_combout\);

-- Location: LCFF_X49_Y9_N1
\UC|ledSaidaMem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(0),
	sload => VCC,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(0));

-- Location: LCCOMB_X49_Y9_N30
\UC|ledSaidaMem[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|ledSaidaMem[1]~feeder_combout\ = \RAM|dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|dataOut\(1),
	combout => \UC|ledSaidaMem[1]~feeder_combout\);

-- Location: LCFF_X49_Y9_N31
\UC|ledSaidaMem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|ledSaidaMem[1]~feeder_combout\,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(1));

-- Location: LCCOMB_X49_Y9_N16
\UC|ledSaidaMem[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|ledSaidaMem[2]~feeder_combout\ = \RAM|dataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|dataOut\(2),
	combout => \UC|ledSaidaMem[2]~feeder_combout\);

-- Location: LCFF_X49_Y9_N17
\UC|ledSaidaMem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|ledSaidaMem[2]~feeder_combout\,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(2));

-- Location: LCFF_X49_Y9_N11
\UC|ledSaidaMem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(3),
	sload => VCC,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(3));

-- Location: LCCOMB_X49_Y9_N4
\UC|ledSaidaMem[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|ledSaidaMem[4]~feeder_combout\ = \RAM|dataOut\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|dataOut\(4),
	combout => \UC|ledSaidaMem[4]~feeder_combout\);

-- Location: LCFF_X49_Y9_N5
\UC|ledSaidaMem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|ledSaidaMem[4]~feeder_combout\,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(4));

-- Location: LCCOMB_X49_Y9_N22
\UC|ledSaidaMem[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|ledSaidaMem[5]~feeder_combout\ = \RAM|dataOut\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|dataOut\(5),
	combout => \UC|ledSaidaMem[5]~feeder_combout\);

-- Location: LCFF_X49_Y9_N23
\UC|ledSaidaMem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|ledSaidaMem[5]~feeder_combout\,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(5));

-- Location: LCFF_X49_Y9_N13
\UC|ledSaidaMem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \RAM|dataOut\(6),
	sload => VCC,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(6));

-- Location: LCCOMB_X49_Y9_N18
\UC|ledSaidaMem[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UC|ledSaidaMem[7]~feeder_combout\ = \RAM|dataOut\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|dataOut\(7),
	combout => \UC|ledSaidaMem[7]~feeder_combout\);

-- Location: LCFF_X49_Y9_N19
\UC|ledSaidaMem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \UC|ledSaidaMem[7]~feeder_combout\,
	ena => \UC|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UC|ledSaidaMem\(7));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mux|choiceOut\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(8));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(9));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UC|ledSaidaMem\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


