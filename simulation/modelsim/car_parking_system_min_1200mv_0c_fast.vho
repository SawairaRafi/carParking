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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/19/2022 12:59:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	car_parking_system IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	user_type : IN std_logic;
	vehicle_type : IN std_logic_vector(2 DOWNTO 0);
	level : OUT std_logic_vector(1 DOWNTO 0);
	front_sensor : IN std_logic;
	level1_movement : IN std_logic;
	level2_movement : IN std_logic;
	level3_movement : IN std_logic;
	back_sensor : IN std_logic;
	password : IN std_logic_vector(1 DOWNTO 0);
	user_name : IN std_logic_vector(1 DOWNTO 0);
	EnterMoney : IN std_logic_vector(7 DOWNTO 0);
	Money_Deposited : OUT std_logic_vector(7 DOWNTO 0);
	Change : OUT std_logic_vector(7 DOWNTO 0);
	gateOpens : OUT std_logic;
	backGateOpens : OUT std_logic;
	cathode0 : OUT std_logic_vector(6 DOWNTO 0);
	cathode1 : OUT std_logic_vector(6 DOWNTO 0);
	cathode2 : OUT std_logic_vector(6 DOWNTO 0);
	cathode3 : OUT std_logic_vector(6 DOWNTO 0);
	lcd_e : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	push_btn_clk : IN std_logic;
	lcd_db : OUT std_logic_vector(7 DOWNTO 0)
	);
END car_parking_system;

-- Design Ports Information
-- level[0]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level[1]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[3]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[4]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Money_Deposited[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[5]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[6]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Change[7]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gateOpens	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- backGateOpens	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[3]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[5]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode0[6]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[5]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode1[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[1]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[2]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[4]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[5]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode2[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[4]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[5]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cathode3[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_e	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_btn_clk	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[1]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[2]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[3]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[4]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[6]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnterMoney[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_type[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_type[1]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_type[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_name[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_name[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level1_movement	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level2_movement	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level3_movement	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_type	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF car_parking_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_user_type : std_logic;
SIGNAL ww_vehicle_type : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_level : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_level1_movement : std_logic;
SIGNAL ww_level2_movement : std_logic;
SIGNAL ww_level3_movement : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_password : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_user_name : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EnterMoney : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Money_Deposited : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Change : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_gateOpens : std_logic;
SIGNAL ww_backGateOpens : std_logic;
SIGNAL ww_cathode0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cathode1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cathode2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cathode3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_push_btn_clk : std_logic;
SIGNAL ww_lcd_db : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \push_btn_clk~input_o\ : std_logic;
SIGNAL \level[0]~output_o\ : std_logic;
SIGNAL \level[1]~output_o\ : std_logic;
SIGNAL \Money_Deposited[0]~output_o\ : std_logic;
SIGNAL \Money_Deposited[1]~output_o\ : std_logic;
SIGNAL \Money_Deposited[2]~output_o\ : std_logic;
SIGNAL \Money_Deposited[3]~output_o\ : std_logic;
SIGNAL \Money_Deposited[4]~output_o\ : std_logic;
SIGNAL \Money_Deposited[5]~output_o\ : std_logic;
SIGNAL \Money_Deposited[6]~output_o\ : std_logic;
SIGNAL \Money_Deposited[7]~output_o\ : std_logic;
SIGNAL \Change[0]~output_o\ : std_logic;
SIGNAL \Change[1]~output_o\ : std_logic;
SIGNAL \Change[2]~output_o\ : std_logic;
SIGNAL \Change[3]~output_o\ : std_logic;
SIGNAL \Change[4]~output_o\ : std_logic;
SIGNAL \Change[5]~output_o\ : std_logic;
SIGNAL \Change[6]~output_o\ : std_logic;
SIGNAL \Change[7]~output_o\ : std_logic;
SIGNAL \gateOpens~output_o\ : std_logic;
SIGNAL \backGateOpens~output_o\ : std_logic;
SIGNAL \cathode0[0]~output_o\ : std_logic;
SIGNAL \cathode0[1]~output_o\ : std_logic;
SIGNAL \cathode0[2]~output_o\ : std_logic;
SIGNAL \cathode0[3]~output_o\ : std_logic;
SIGNAL \cathode0[4]~output_o\ : std_logic;
SIGNAL \cathode0[5]~output_o\ : std_logic;
SIGNAL \cathode0[6]~output_o\ : std_logic;
SIGNAL \cathode1[0]~output_o\ : std_logic;
SIGNAL \cathode1[1]~output_o\ : std_logic;
SIGNAL \cathode1[2]~output_o\ : std_logic;
SIGNAL \cathode1[3]~output_o\ : std_logic;
SIGNAL \cathode1[4]~output_o\ : std_logic;
SIGNAL \cathode1[5]~output_o\ : std_logic;
SIGNAL \cathode1[6]~output_o\ : std_logic;
SIGNAL \cathode2[0]~output_o\ : std_logic;
SIGNAL \cathode2[1]~output_o\ : std_logic;
SIGNAL \cathode2[2]~output_o\ : std_logic;
SIGNAL \cathode2[3]~output_o\ : std_logic;
SIGNAL \cathode2[4]~output_o\ : std_logic;
SIGNAL \cathode2[5]~output_o\ : std_logic;
SIGNAL \cathode2[6]~output_o\ : std_logic;
SIGNAL \cathode3[0]~output_o\ : std_logic;
SIGNAL \cathode3[1]~output_o\ : std_logic;
SIGNAL \cathode3[2]~output_o\ : std_logic;
SIGNAL \cathode3[3]~output_o\ : std_logic;
SIGNAL \cathode3[4]~output_o\ : std_logic;
SIGNAL \cathode3[5]~output_o\ : std_logic;
SIGNAL \cathode3[6]~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_db[0]~output_o\ : std_logic;
SIGNAL \lcd_db[1]~output_o\ : std_logic;
SIGNAL \lcd_db[2]~output_o\ : std_logic;
SIGNAL \lcd_db[3]~output_o\ : std_logic;
SIGNAL \lcd_db[4]~output_o\ : std_logic;
SIGNAL \lcd_db[5]~output_o\ : std_logic;
SIGNAL \lcd_db[6]~output_o\ : std_logic;
SIGNAL \lcd_db[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vehicle_type[0]~input_o\ : std_logic;
SIGNAL \vehicle_type[2]~input_o\ : std_logic;
SIGNAL \vehicle_type[1]~input_o\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \user_type~input_o\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \level2_movement~input_o\ : std_logic;
SIGNAL \level1_movement~input_o\ : std_logic;
SIGNAL \level3_movement~input_o\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \state.slotsLevel_1~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \state~62_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \slotCounter2~2_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \slotCounter2~3_combout\ : std_logic;
SIGNAL \slotCounter2~4_combout\ : std_logic;
SIGNAL \slotCounter2[2]~0_combout\ : std_logic;
SIGNAL \slotCounter2~5_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state~63_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \EnterMoney[6]~input_o\ : std_logic;
SIGNAL \EnterMoney[5]~input_o\ : std_logic;
SIGNAL \EnterMoney[4]~input_o\ : std_logic;
SIGNAL \EnterMoney[3]~input_o\ : std_logic;
SIGNAL \EnterMoney[2]~input_o\ : std_logic;
SIGNAL \EnterMoney[1]~input_o\ : std_logic;
SIGNAL \EnterMoney[0]~input_o\ : std_logic;
SIGNAL \money_count[0]~8_combout\ : std_logic;
SIGNAL \money_count[1]~10_combout\ : std_logic;
SIGNAL \levels[0]~8_combout\ : std_logic;
SIGNAL \EnterMoney[7]~input_o\ : std_logic;
SIGNAL \money_count[6]~24\ : std_logic;
SIGNAL \money_count[7]~25_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \state.bikeCharge~q\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \Money_Change~7_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \state.carCharge~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \state.slotsLevel_3~q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \levels[0]~9_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \state.vanCharge~q\ : std_logic;
SIGNAL \money_count[1]~11_combout\ : std_logic;
SIGNAL \money_count[1]~12_combout\ : std_logic;
SIGNAL \money_count[0]~9\ : std_logic;
SIGNAL \money_count[1]~13_combout\ : std_logic;
SIGNAL \money_count[1]~14\ : std_logic;
SIGNAL \money_count[2]~15_combout\ : std_logic;
SIGNAL \money_count[2]~16\ : std_logic;
SIGNAL \money_count[3]~17_combout\ : std_logic;
SIGNAL \money_count[3]~18\ : std_logic;
SIGNAL \money_count[4]~19_combout\ : std_logic;
SIGNAL \money_count[4]~20\ : std_logic;
SIGNAL \money_count[5]~21_combout\ : std_logic;
SIGNAL \money_count[5]~22\ : std_logic;
SIGNAL \money_count[6]~23_combout\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state~64_combout\ : std_logic;
SIGNAL \state~56_combout\ : std_logic;
SIGNAL \state~65_combout\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \state~54_combout\ : std_logic;
SIGNAL \state~55_combout\ : std_logic;
SIGNAL \state~66_combout\ : std_logic;
SIGNAL \state~67_combout\ : std_logic;
SIGNAL \state.freeSlots~q\ : std_logic;
SIGNAL \slotCounter2~6_combout\ : std_logic;
SIGNAL \slotCounter2[0]~1_combout\ : std_logic;
SIGNAL \slotCounter2~7_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \state.backGateOpen~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \user_name[1]~input_o\ : std_logic;
SIGNAL \user_name[0]~input_o\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \password[1]~input_o\ : std_logic;
SIGNAL \password[0]~input_o\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \state.user3~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \state.user0~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \levels[0]~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \state.user1~q\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \Selector29~4_combout\ : std_logic;
SIGNAL \state.gateOpen~q\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \state~60_combout\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state~59_combout\ : std_logic;
SIGNAL \state~69_combout\ : std_logic;
SIGNAL \state~57_combout\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state~58_combout\ : std_logic;
SIGNAL \state~61_combout\ : std_logic;
SIGNAL \state.vip~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \state.user2~q\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \state.userType~q\ : std_logic;
SIGNAL \state~68_combout\ : std_logic;
SIGNAL \state.visitor~q\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \state.vehicleType~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \state.slotsLevel_2~q\ : std_logic;
SIGNAL \levels[0]~0_combout\ : std_logic;
SIGNAL \levels[0]~5_combout\ : std_logic;
SIGNAL \levels[0]~2_combout\ : std_logic;
SIGNAL \levels[0]~1_combout\ : std_logic;
SIGNAL \levels[0]~3_combout\ : std_logic;
SIGNAL \levels[0]~6_combout\ : std_logic;
SIGNAL \levels[0]~7_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Money_Change~8_combout\ : std_logic;
SIGNAL \Money_Change~9_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Money_Change[2]~10_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Money_Change[2]~11_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Money_Change[1]~12_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Money_Change[2]~14_combout\ : std_logic;
SIGNAL \Money_Change[2]~15_combout\ : std_logic;
SIGNAL \Money_Change[1]~13\ : std_logic;
SIGNAL \Money_Change[2]~16_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3_combout\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Money_Change[2]~17\ : std_logic;
SIGNAL \Money_Change[3]~18_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add8~4\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Money_Change[3]~19\ : std_logic;
SIGNAL \Money_Change[4]~20_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9_combout\ : std_logic;
SIGNAL \Add8~11_combout\ : std_logic;
SIGNAL \Money_Change[4]~21\ : std_logic;
SIGNAL \Money_Change[5]~22_combout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Money_Change[5]~23\ : std_logic;
SIGNAL \Money_Change[6]~24_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15_combout\ : std_logic;
SIGNAL \Add8~17_combout\ : std_logic;
SIGNAL \Money_Change[6]~25\ : std_logic;
SIGNAL \Money_Change[7]~26_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add8~16\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \U1|cathodes[0]~10_combout\ : std_logic;
SIGNAL \U1|cathodes[1]~11_combout\ : std_logic;
SIGNAL \U1|cathodes[2]~12_combout\ : std_logic;
SIGNAL \U1|cathodes[3]~13_combout\ : std_logic;
SIGNAL \U1|cathodes[4]~15_combout\ : std_logic;
SIGNAL \U1|cathodes[5]~16_combout\ : std_logic;
SIGNAL \U1|cathodes[6]~14_combout\ : std_logic;
SIGNAL \U2|cathodes[0]~10_combout\ : std_logic;
SIGNAL \U2|cathodes[1]~11_combout\ : std_logic;
SIGNAL \U2|cathodes[2]~12_combout\ : std_logic;
SIGNAL \U2|cathodes[3]~13_combout\ : std_logic;
SIGNAL \U2|cathodes[4]~15_combout\ : std_logic;
SIGNAL \U2|cathodes[5]~16_combout\ : std_logic;
SIGNAL \U2|cathodes[6]~14_combout\ : std_logic;
SIGNAL \U3|cathodes[0]~10_combout\ : std_logic;
SIGNAL \U3|cathodes[1]~11_combout\ : std_logic;
SIGNAL \U3|cathodes[2]~12_combout\ : std_logic;
SIGNAL \U3|cathodes[3]~13_combout\ : std_logic;
SIGNAL \U3|cathodes[4]~15_combout\ : std_logic;
SIGNAL \U3|cathodes[5]~16_combout\ : std_logic;
SIGNAL \U3|cathodes[6]~14_combout\ : std_logic;
SIGNAL \U4|cathodes[0]~10_combout\ : std_logic;
SIGNAL \U4|cathodes[1]~11_combout\ : std_logic;
SIGNAL \U4|cathodes[2]~12_combout\ : std_logic;
SIGNAL \U4|cathodes[3]~13_combout\ : std_logic;
SIGNAL \U4|cathodes[4]~15_combout\ : std_logic;
SIGNAL \U4|cathodes[5]~16_combout\ : std_logic;
SIGNAL \U4|cathodes[6]~14_combout\ : std_logic;
SIGNAL \LCD|Selector0~0_combout\ : std_logic;
SIGNAL \LCD|Add0~0_combout\ : std_logic;
SIGNAL \LCD|Selector31~0_combout\ : std_logic;
SIGNAL \LCD|Add0~1\ : std_logic;
SIGNAL \LCD|Add0~2_combout\ : std_logic;
SIGNAL \LCD|Selector16~0_combout\ : std_logic;
SIGNAL \LCD|Add0~27\ : std_logic;
SIGNAL \LCD|Add0~28_combout\ : std_logic;
SIGNAL \LCD|Selector17~0_combout\ : std_logic;
SIGNAL \LCD|Add0~29\ : std_logic;
SIGNAL \LCD|Add0~30_combout\ : std_logic;
SIGNAL \LCD|LessThan6~0_combout\ : std_logic;
SIGNAL \LCD|LessThan6~1_combout\ : std_logic;
SIGNAL \LCD|LessThan1~0_combout\ : std_logic;
SIGNAL \LCD|Add0~31\ : std_logic;
SIGNAL \LCD|Add0~32_combout\ : std_logic;
SIGNAL \LCD|Selector15~0_combout\ : std_logic;
SIGNAL \LCD|Add0~33\ : std_logic;
SIGNAL \LCD|Add0~34_combout\ : std_logic;
SIGNAL \LCD|LessThan8~4_combout\ : std_logic;
SIGNAL \LCD|LessThan6~2_combout\ : std_logic;
SIGNAL \LCD|Selector3~0_combout\ : std_logic;
SIGNAL \LCD|Add0~49\ : std_logic;
SIGNAL \LCD|Add0~50_combout\ : std_logic;
SIGNAL \LCD|Selector6~0_combout\ : std_logic;
SIGNAL \LCD|Add0~51\ : std_logic;
SIGNAL \LCD|Add0~52_combout\ : std_logic;
SIGNAL \LCD|Selector5~0_combout\ : std_logic;
SIGNAL \LCD|Add0~53\ : std_logic;
SIGNAL \LCD|Add0~54_combout\ : std_logic;
SIGNAL \LCD|Selector4~1_combout\ : std_logic;
SIGNAL \LCD|Add0~55\ : std_logic;
SIGNAL \LCD|Add0~56_combout\ : std_logic;
SIGNAL \LCD|Selector2~0_combout\ : std_logic;
SIGNAL \LCD|Add0~57\ : std_logic;
SIGNAL \LCD|Add0~58_combout\ : std_logic;
SIGNAL \LCD|state~20_combout\ : std_logic;
SIGNAL \LCD|LessThan7~0_combout\ : std_logic;
SIGNAL \LCD|LessThan7~1_combout\ : std_logic;
SIGNAL \LCD|LessThan7~2_combout\ : std_logic;
SIGNAL \LCD|state~23_combout\ : std_logic;
SIGNAL \LCD|LessThan8~2_combout\ : std_logic;
SIGNAL \LCD|LessThan8~3_combout\ : std_logic;
SIGNAL \LCD|LessThan7~3_combout\ : std_logic;
SIGNAL \LCD|LessThan7~4_combout\ : std_logic;
SIGNAL \LCD|LessThan7~5_combout\ : std_logic;
SIGNAL \LCD|LessThan7~6_combout\ : std_logic;
SIGNAL \LCD|Selector38~0_combout\ : std_logic;
SIGNAL \LCD|Selector0~1_combout\ : std_logic;
SIGNAL \LCD|Add0~59\ : std_logic;
SIGNAL \LCD|Add0~61\ : std_logic;
SIGNAL \LCD|Add0~62_combout\ : std_logic;
SIGNAL \LCD|LessThan8~5_combout\ : std_logic;
SIGNAL \LCD|LessThan3~2_combout\ : std_logic;
SIGNAL \LCD|LessThan8~6_combout\ : std_logic;
SIGNAL \LCD|LessThan8~7_combout\ : std_logic;
SIGNAL \LCD|Selector33~0_combout\ : std_logic;
SIGNAL \LCD|LessThan3~3_combout\ : std_logic;
SIGNAL \LCD|LessThan3~5_combout\ : std_logic;
SIGNAL \LCD|LessThan3~4_combout\ : std_logic;
SIGNAL \LCD|LessThan3~6_combout\ : std_logic;
SIGNAL \LCD|state~21_combout\ : std_logic;
SIGNAL \LCD|state~22_combout\ : std_logic;
SIGNAL \LCD|state~29_combout\ : std_logic;
SIGNAL \LCD|Selector33~1_combout\ : std_logic;
SIGNAL \LCD|Selector33~2_combout\ : std_logic;
SIGNAL \LCD|state.initialize~q\ : std_logic;
SIGNAL \LCD|clk_count[11]~0_combout\ : std_logic;
SIGNAL \LCD|clk_count[11]~1_combout\ : std_logic;
SIGNAL \LCD|Selector46~0_combout\ : std_logic;
SIGNAL \LCD|Selector46~1_combout\ : std_logic;
SIGNAL \LCD|clk_count[11]~2_combout\ : std_logic;
SIGNAL \LCD|clk_count[11]~3_combout\ : std_logic;
SIGNAL \LCD|Selector30~0_combout\ : std_logic;
SIGNAL \LCD|Add0~3\ : std_logic;
SIGNAL \LCD|Add0~4_combout\ : std_logic;
SIGNAL \LCD|Selector29~0_combout\ : std_logic;
SIGNAL \LCD|Add0~5\ : std_logic;
SIGNAL \LCD|Add0~6_combout\ : std_logic;
SIGNAL \LCD|Selector28~0_combout\ : std_logic;
SIGNAL \LCD|Add0~7\ : std_logic;
SIGNAL \LCD|Add0~8_combout\ : std_logic;
SIGNAL \LCD|Selector27~0_combout\ : std_logic;
SIGNAL \LCD|Add0~9\ : std_logic;
SIGNAL \LCD|Add0~10_combout\ : std_logic;
SIGNAL \LCD|Selector26~0_combout\ : std_logic;
SIGNAL \LCD|Add0~11\ : std_logic;
SIGNAL \LCD|Add0~12_combout\ : std_logic;
SIGNAL \LCD|Selector25~0_combout\ : std_logic;
SIGNAL \LCD|Add0~13\ : std_logic;
SIGNAL \LCD|Add0~14_combout\ : std_logic;
SIGNAL \LCD|Selector24~0_combout\ : std_logic;
SIGNAL \LCD|Add0~15\ : std_logic;
SIGNAL \LCD|Add0~16_combout\ : std_logic;
SIGNAL \LCD|Selector23~0_combout\ : std_logic;
SIGNAL \LCD|Add0~17\ : std_logic;
SIGNAL \LCD|Add0~18_combout\ : std_logic;
SIGNAL \LCD|Selector22~0_combout\ : std_logic;
SIGNAL \LCD|Add0~19\ : std_logic;
SIGNAL \LCD|Add0~20_combout\ : std_logic;
SIGNAL \LCD|Selector21~0_combout\ : std_logic;
SIGNAL \LCD|Add0~21\ : std_logic;
SIGNAL \LCD|Add0~22_combout\ : std_logic;
SIGNAL \LCD|Selector20~0_combout\ : std_logic;
SIGNAL \LCD|Add0~23\ : std_logic;
SIGNAL \LCD|Add0~24_combout\ : std_logic;
SIGNAL \LCD|Selector19~0_combout\ : std_logic;
SIGNAL \LCD|Add0~25\ : std_logic;
SIGNAL \LCD|Add0~26_combout\ : std_logic;
SIGNAL \LCD|Selector18~0_combout\ : std_logic;
SIGNAL \LCD|LessThan10~0_combout\ : std_logic;
SIGNAL \LCD|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD|LessThan0~2_combout\ : std_logic;
SIGNAL \LCD|LessThan0~1_combout\ : std_logic;
SIGNAL \LCD|LessThan0~3_combout\ : std_logic;
SIGNAL \LCD|LessThan9~8_combout\ : std_logic;
SIGNAL \LCD|LessThan0~4_combout\ : std_logic;
SIGNAL \LCD|state~24_combout\ : std_logic;
SIGNAL \LCD|state.power_up~q\ : std_logic;
SIGNAL \LCD|lcd_data[5]~0_combout\ : std_logic;
SIGNAL \LCD|Selector52~0_combout\ : std_logic;
SIGNAL \LCD|Selector52~1_combout\ : std_logic;
SIGNAL \LCD|Selector52~2_combout\ : std_logic;
SIGNAL \LCD|line~q\ : std_logic;
SIGNAL \LCD|state~25_combout\ : std_logic;
SIGNAL \LCD|state.line1~q\ : std_logic;
SIGNAL \LCD|state~26_combout\ : std_logic;
SIGNAL \LCD|state.line2~q\ : std_logic;
SIGNAL \LCD|Selector4~0_combout\ : std_logic;
SIGNAL \LCD|Selector14~0_combout\ : std_logic;
SIGNAL \LCD|Add0~35\ : std_logic;
SIGNAL \LCD|Add0~36_combout\ : std_logic;
SIGNAL \LCD|Selector13~0_combout\ : std_logic;
SIGNAL \LCD|Add0~37\ : std_logic;
SIGNAL \LCD|Add0~38_combout\ : std_logic;
SIGNAL \LCD|Selector12~0_combout\ : std_logic;
SIGNAL \LCD|Add0~39\ : std_logic;
SIGNAL \LCD|Add0~40_combout\ : std_logic;
SIGNAL \LCD|Selector11~0_combout\ : std_logic;
SIGNAL \LCD|Add0~41\ : std_logic;
SIGNAL \LCD|Add0~42_combout\ : std_logic;
SIGNAL \LCD|Selector10~0_combout\ : std_logic;
SIGNAL \LCD|Add0~43\ : std_logic;
SIGNAL \LCD|Add0~44_combout\ : std_logic;
SIGNAL \LCD|Selector9~0_combout\ : std_logic;
SIGNAL \LCD|Add0~45\ : std_logic;
SIGNAL \LCD|Add0~46_combout\ : std_logic;
SIGNAL \LCD|Selector8~0_combout\ : std_logic;
SIGNAL \LCD|Add0~47\ : std_logic;
SIGNAL \LCD|Add0~48_combout\ : std_logic;
SIGNAL \LCD|Selector7~0_combout\ : std_logic;
SIGNAL \LCD|LessThan9~1_combout\ : std_logic;
SIGNAL \LCD|LessThan9~0_combout\ : std_logic;
SIGNAL \LCD|LessThan9~2_combout\ : std_logic;
SIGNAL \LCD|LessThan9~3_combout\ : std_logic;
SIGNAL \LCD|LessThan9~4_combout\ : std_logic;
SIGNAL \LCD|LessThan9~5_combout\ : std_logic;
SIGNAL \LCD|LessThan9~6_combout\ : std_logic;
SIGNAL \LCD|LessThan9~7_combout\ : std_logic;
SIGNAL \LCD|LessThan9~10_combout\ : std_logic;
SIGNAL \LCD|Selector35~0_combout\ : std_logic;
SIGNAL \LCD|Selector35~1_combout\ : std_logic;
SIGNAL \LCD|state.send~q\ : std_logic;
SIGNAL \LCD|Add1~0_combout\ : std_logic;
SIGNAL \LCD|Selector51~0_combout\ : std_logic;
SIGNAL \LCD|Selector48~0_combout\ : std_logic;
SIGNAL \LCD|Add1~1\ : std_logic;
SIGNAL \LCD|Add1~2_combout\ : std_logic;
SIGNAL \LCD|Selector50~0_combout\ : std_logic;
SIGNAL \LCD|Add1~3\ : std_logic;
SIGNAL \LCD|Add1~4_combout\ : std_logic;
SIGNAL \LCD|Selector49~0_combout\ : std_logic;
SIGNAL \LCD|Add1~5\ : std_logic;
SIGNAL \LCD|Add1~6_combout\ : std_logic;
SIGNAL \LCD|Selector48~1_combout\ : std_logic;
SIGNAL \LCD|Equal0~0_combout\ : std_logic;
SIGNAL \LCD|Add1~7\ : std_logic;
SIGNAL \LCD|Add1~8_combout\ : std_logic;
SIGNAL \LCD|Selector47~0_combout\ : std_logic;
SIGNAL \LCD|Selector47~1_combout\ : std_logic;
SIGNAL \LCD|Equal0~1_combout\ : std_logic;
SIGNAL \LCD|Selector38~1_combout\ : std_logic;
SIGNAL \LCD|Selector38~2_combout\ : std_logic;
SIGNAL \LCD|Selector38~5_combout\ : std_logic;
SIGNAL \LCD|Selector34~0_combout\ : std_logic;
SIGNAL \LCD|state.resetline~q\ : std_logic;
SIGNAL \LCD|clk_count[11]~4_combout\ : std_logic;
SIGNAL \LCD|Selector1~0_combout\ : std_logic;
SIGNAL \LCD|Add0~60_combout\ : std_logic;
SIGNAL \LCD|LessThan6~3_combout\ : std_logic;
SIGNAL \LCD|LessThan5~0_combout\ : std_logic;
SIGNAL \LCD|LessThan5~1_combout\ : std_logic;
SIGNAL \LCD|LessThan5~2_combout\ : std_logic;
SIGNAL \LCD|LessThan3~8_combout\ : std_logic;
SIGNAL \LCD|LessThan5~3_combout\ : std_logic;
SIGNAL \LCD|LessThan4~0_combout\ : std_logic;
SIGNAL \LCD|LessThan4~1_combout\ : std_logic;
SIGNAL \LCD|LessThan4~2_combout\ : std_logic;
SIGNAL \LCD|LessThan4~3_combout\ : std_logic;
SIGNAL \LCD|LessThan2~0_combout\ : std_logic;
SIGNAL \LCD|LessThan2~1_combout\ : std_logic;
SIGNAL \LCD|LessThan2~2_combout\ : std_logic;
SIGNAL \LCD|Selector46~11_combout\ : std_logic;
SIGNAL \LCD|state~27_combout\ : std_logic;
SIGNAL \LCD|Selector46~2_combout\ : std_logic;
SIGNAL \LCD|Selector46~3_combout\ : std_logic;
SIGNAL \LCD|Selector46~4_combout\ : std_logic;
SIGNAL \LCD|LessThan10~1_combout\ : std_logic;
SIGNAL \LCD|LessThan10~2_combout\ : std_logic;
SIGNAL \LCD|LessThan10~3_combout\ : std_logic;
SIGNAL \LCD|LessThan11~0_combout\ : std_logic;
SIGNAL \LCD|LessThan11~1_combout\ : std_logic;
SIGNAL \LCD|LessThan12~1_combout\ : std_logic;
SIGNAL \LCD|LessThan12~2_combout\ : std_logic;
SIGNAL \LCD|Selector46~5_combout\ : std_logic;
SIGNAL \LCD|LessThan12~0_combout\ : std_logic;
SIGNAL \LCD|Selector46~6_combout\ : std_logic;
SIGNAL \LCD|LessThan9~9_combout\ : std_logic;
SIGNAL \LCD|Selector46~7_combout\ : std_logic;
SIGNAL \LCD|LessThan1~1_combout\ : std_logic;
SIGNAL \LCD|LessThan1~2_combout\ : std_logic;
SIGNAL \LCD|LessThan1~3_combout\ : std_logic;
SIGNAL \LCD|LessThan3~7_combout\ : std_logic;
SIGNAL \LCD|Selector46~8_combout\ : std_logic;
SIGNAL \LCD|Selector46~9_combout\ : std_logic;
SIGNAL \LCD|Selector46~10_combout\ : std_logic;
SIGNAL \LCD|Selector46~12_combout\ : std_logic;
SIGNAL \LCD|e~q\ : std_logic;
SIGNAL \LCD|Selector36~0_combout\ : std_logic;
SIGNAL \LCD|Selector36~1_combout\ : std_logic;
SIGNAL \LCD|rs~q\ : std_logic;
SIGNAL \LCD|Mux7~0_combout\ : std_logic;
SIGNAL \LCD|Selector45~0_combout\ : std_logic;
SIGNAL \LCD|Selector45~1_combout\ : std_logic;
SIGNAL \LCD|Selector45~2_combout\ : std_logic;
SIGNAL \LCD|Selector45~3_combout\ : std_logic;
SIGNAL \LCD|Selector45~4_combout\ : std_logic;
SIGNAL \LCD|Selector38~3_combout\ : std_logic;
SIGNAL \LCD|Selector38~4_combout\ : std_logic;
SIGNAL \LCD|lcd_data[5]~1_combout\ : std_logic;
SIGNAL \LCD|Mux6~0_combout\ : std_logic;
SIGNAL \LCD|state~28_combout\ : std_logic;
SIGNAL \LCD|Selector44~1_combout\ : std_logic;
SIGNAL \LCD|Selector44~0_combout\ : std_logic;
SIGNAL \LCD|Selector44~2_combout\ : std_logic;
SIGNAL \LCD|Mux5~0_combout\ : std_logic;
SIGNAL \LCD|Selector43~2_combout\ : std_logic;
SIGNAL \LCD|Selector43~4_combout\ : std_logic;
SIGNAL \LCD|Selector43~5_combout\ : std_logic;
SIGNAL \LCD|Selector43~0_combout\ : std_logic;
SIGNAL \LCD|Selector43~3_combout\ : std_logic;
SIGNAL \LCD|Selector43~1_combout\ : std_logic;
SIGNAL \LCD|Selector43~6_combout\ : std_logic;
SIGNAL \LCD|Mux4~0_combout\ : std_logic;
SIGNAL \LCD|Selector42~0_combout\ : std_logic;
SIGNAL \LCD|Selector41~0_combout\ : std_logic;
SIGNAL \LCD|Selector41~1_combout\ : std_logic;
SIGNAL \LCD|Mux2~0_combout\ : std_logic;
SIGNAL \LCD|Selector40~0_combout\ : std_logic;
SIGNAL \LCD|Selector39~0_combout\ : std_logic;
SIGNAL \LCD|Selector39~1_combout\ : std_logic;
SIGNAL \LCD|Selector39~2_combout\ : std_logic;
SIGNAL \LCD|Selector38~6_combout\ : std_logic;
SIGNAL \LCD|Selector38~7_combout\ : std_logic;
SIGNAL slotCounter3 : std_logic_vector(2 DOWNTO 0);
SIGNAL Money_Change : std_logic_vector(7 DOWNTO 0);
SIGNAL passwordCount : std_logic_vector(1 DOWNTO 0);
SIGNAL levels : std_logic_vector(1 DOWNTO 0);
SIGNAL slotCounter2 : std_logic_vector(2 DOWNTO 0);
SIGNAL slotCounter1 : std_logic_vector(2 DOWNTO 0);
SIGNAL money_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD|ptr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LCD|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_state.vanCharge~q\ : std_logic;
SIGNAL \U4|ALT_INV_cathodes[0]~10_combout\ : std_logic;
SIGNAL \U3|ALT_INV_cathodes[0]~10_combout\ : std_logic;
SIGNAL \U2|ALT_INV_cathodes[0]~10_combout\ : std_logic;
SIGNAL \U1|ALT_INV_cathodes[0]~10_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_user_type <= user_type;
ww_vehicle_type <= vehicle_type;
level <= ww_level;
ww_front_sensor <= front_sensor;
ww_level1_movement <= level1_movement;
ww_level2_movement <= level2_movement;
ww_level3_movement <= level3_movement;
ww_back_sensor <= back_sensor;
ww_password <= password;
ww_user_name <= user_name;
ww_EnterMoney <= EnterMoney;
Money_Deposited <= ww_Money_Deposited;
Change <= ww_Change;
gateOpens <= ww_gateOpens;
backGateOpens <= ww_backGateOpens;
cathode0 <= ww_cathode0;
cathode1 <= ww_cathode1;
cathode2 <= ww_cathode2;
cathode3 <= ww_cathode3;
lcd_e <= ww_lcd_e;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
ww_push_btn_clk <= push_btn_clk;
lcd_db <= ww_lcd_db;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_state.vanCharge~q\ <= NOT \state.vanCharge~q\;
\U4|ALT_INV_cathodes[0]~10_combout\ <= NOT \U4|cathodes[0]~10_combout\;
\U3|ALT_INV_cathodes[0]~10_combout\ <= NOT \U3|cathodes[0]~10_combout\;
\U2|ALT_INV_cathodes[0]~10_combout\ <= NOT \U2|cathodes[0]~10_combout\;
\U1|ALT_INV_cathodes[0]~10_combout\ <= NOT \U1|cathodes[0]~10_combout\;

-- Location: IOOBUF_X115_Y47_N23
\level[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => levels(0),
	devoe => ww_devoe,
	o => \level[0]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\level[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => levels(1),
	devoe => ww_devoe,
	o => \level[1]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\Money_Deposited[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(0),
	devoe => ww_devoe,
	o => \Money_Deposited[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Money_Deposited[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(1),
	devoe => ww_devoe,
	o => \Money_Deposited[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\Money_Deposited[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(2),
	devoe => ww_devoe,
	o => \Money_Deposited[2]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\Money_Deposited[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(3),
	devoe => ww_devoe,
	o => \Money_Deposited[3]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Money_Deposited[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(4),
	devoe => ww_devoe,
	o => \Money_Deposited[4]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\Money_Deposited[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(5),
	devoe => ww_devoe,
	o => \Money_Deposited[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Money_Deposited[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(6),
	devoe => ww_devoe,
	o => \Money_Deposited[6]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Money_Deposited[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => money_count(7),
	devoe => ww_devoe,
	o => \Money_Deposited[7]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\Change[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(0),
	devoe => ww_devoe,
	o => \Change[0]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Change[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(1),
	devoe => ww_devoe,
	o => \Change[1]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\Change[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(2),
	devoe => ww_devoe,
	o => \Change[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\Change[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(3),
	devoe => ww_devoe,
	o => \Change[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\Change[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(4),
	devoe => ww_devoe,
	o => \Change[4]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\Change[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(5),
	devoe => ww_devoe,
	o => \Change[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\Change[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(6),
	devoe => ww_devoe,
	o => \Change[6]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\Change[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Money_Change(7),
	devoe => ww_devoe,
	o => \Change[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\gateOpens~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gateOpens~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\backGateOpens~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \backGateOpens~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\cathode0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_cathodes[0]~10_combout\,
	devoe => ww_devoe,
	o => \cathode0[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\cathode0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[1]~11_combout\,
	devoe => ww_devoe,
	o => \cathode0[1]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\cathode0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[2]~12_combout\,
	devoe => ww_devoe,
	o => \cathode0[2]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\cathode0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[3]~13_combout\,
	devoe => ww_devoe,
	o => \cathode0[3]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\cathode0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[4]~15_combout\,
	devoe => ww_devoe,
	o => \cathode0[4]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\cathode0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[5]~16_combout\,
	devoe => ww_devoe,
	o => \cathode0[5]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\cathode0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cathodes[6]~14_combout\,
	devoe => ww_devoe,
	o => \cathode0[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\cathode1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_cathodes[0]~10_combout\,
	devoe => ww_devoe,
	o => \cathode1[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\cathode1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[1]~11_combout\,
	devoe => ww_devoe,
	o => \cathode1[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\cathode1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[2]~12_combout\,
	devoe => ww_devoe,
	o => \cathode1[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\cathode1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[3]~13_combout\,
	devoe => ww_devoe,
	o => \cathode1[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\cathode1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[4]~15_combout\,
	devoe => ww_devoe,
	o => \cathode1[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\cathode1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[5]~16_combout\,
	devoe => ww_devoe,
	o => \cathode1[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\cathode1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|cathodes[6]~14_combout\,
	devoe => ww_devoe,
	o => \cathode1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\cathode2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_cathodes[0]~10_combout\,
	devoe => ww_devoe,
	o => \cathode2[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\cathode2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[1]~11_combout\,
	devoe => ww_devoe,
	o => \cathode2[1]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\cathode2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[2]~12_combout\,
	devoe => ww_devoe,
	o => \cathode2[2]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\cathode2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[3]~13_combout\,
	devoe => ww_devoe,
	o => \cathode2[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\cathode2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[4]~15_combout\,
	devoe => ww_devoe,
	o => \cathode2[4]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\cathode2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[5]~16_combout\,
	devoe => ww_devoe,
	o => \cathode2[5]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\cathode2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|cathodes[6]~14_combout\,
	devoe => ww_devoe,
	o => \cathode2[6]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\cathode3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_cathodes[0]~10_combout\,
	devoe => ww_devoe,
	o => \cathode3[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\cathode3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[1]~11_combout\,
	devoe => ww_devoe,
	o => \cathode3[1]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\cathode3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[2]~12_combout\,
	devoe => ww_devoe,
	o => \cathode3[2]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\cathode3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[3]~13_combout\,
	devoe => ww_devoe,
	o => \cathode3[3]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\cathode3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[4]~15_combout\,
	devoe => ww_devoe,
	o => \cathode3[4]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\cathode3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[5]~16_combout\,
	devoe => ww_devoe,
	o => \cathode3[5]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\cathode3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|cathodes[6]~14_combout\,
	devoe => ww_devoe,
	o => \cathode3[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|e~q\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|rs~q\,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\lcd_db[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_db[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\lcd_db[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_db[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\lcd_db[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_db[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\lcd_db[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_db[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\lcd_db[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_db[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\lcd_db[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_db[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\lcd_db[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_db[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\lcd_db[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_db[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N1
\vehicle_type[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_type(0),
	o => \vehicle_type[0]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\vehicle_type[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_type(2),
	o => \vehicle_type[2]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\vehicle_type[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_type(1),
	o => \vehicle_type[1]~input_o\);

-- Location: LCCOMB_X108_Y31_N22
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.vehicleType~q\ & ((\vehicle_type[2]~input_o\) # ((\vehicle_type[0]~input_o\ & \vehicle_type[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_type[0]~input_o\,
	datab => \vehicle_type[2]~input_o\,
	datac => \state.vehicleType~q\,
	datad => \vehicle_type[1]~input_o\,
	combout => \Selector22~0_combout\);

-- Location: IOIBUF_X115_Y44_N1
\user_type~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_type,
	o => \user_type~input_o\);

-- Location: LCCOMB_X107_Y30_N24
\state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~46_combout\ = (\user_type~input_o\ & \state.userType~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \user_type~input_o\,
	datad => \state.userType~q\,
	combout => \state~46_combout\);

-- Location: IOIBUF_X115_Y30_N1
\front_sensor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\back_sensor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: LCCOMB_X111_Y30_N22
\state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (\back_sensor~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \back_sensor~input_o\,
	datad => \state.idle~q\,
	combout => \state~51_combout\);

-- Location: IOIBUF_X115_Y59_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\level2_movement~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level2_movement,
	o => \level2_movement~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\level1_movement~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level1_movement,
	o => \level1_movement~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\level3_movement~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level3_movement,
	o => \level3_movement~input_o\);

-- Location: LCCOMB_X107_Y31_N30
\state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~47_combout\ = (!\level2_movement~input_o\ & (!\level1_movement~input_o\ & !\level3_movement~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \level2_movement~input_o\,
	datac => \level1_movement~input_o\,
	datad => \level3_movement~input_o\,
	combout => \state~47_combout\);

-- Location: LCCOMB_X108_Y31_N2
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\vehicle_type[0]~input_o\ & (!\vehicle_type[2]~input_o\ & (\state.vehicleType~q\ & !\vehicle_type[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_type[0]~input_o\,
	datab => \vehicle_type[2]~input_o\,
	datac => \state.vehicleType~q\,
	datad => \vehicle_type[1]~input_o\,
	combout => \Selector23~0_combout\);

-- Location: FF_X108_Y31_N3
\state.slotsLevel_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.slotsLevel_1~q\);

-- Location: LCCOMB_X106_Y31_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = slotCounter1(1) $ (!slotCounter1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => slotCounter1(1),
	datac => slotCounter1(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X107_Y31_N20
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\level1_movement~input_o\ & \state.freeSlots~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \level1_movement~input_o\,
	datac => \state.freeSlots~q\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X106_Y31_N14
\Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (\Selector37~2_combout\ & ((slotCounter1(0) & ((!slotCounter1(1)))) # (!slotCounter1(0) & (slotCounter1(2) & slotCounter1(1))))) # (!\Selector37~2_combout\ & (((!slotCounter1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~2_combout\,
	datab => slotCounter1(2),
	datac => slotCounter1(0),
	datad => slotCounter1(1),
	combout => \Selector37~4_combout\);

-- Location: LCCOMB_X107_Y31_N18
\Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\state.slotsLevel_1~q\ & (!\Add0~0_combout\ & (!\LessThan3~0_combout\))) # (!\state.slotsLevel_1~q\ & (((!\Selector37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.slotsLevel_1~q\,
	datab => \Add0~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \Selector37~4_combout\,
	combout => \Selector37~3_combout\);

-- Location: FF_X107_Y31_N19
\slotCounter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter1(1));

-- Location: LCCOMB_X107_Y31_N8
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (slotCounter1(0) & (slotCounter1(2) & !slotCounter1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter1(0),
	datac => slotCounter1(2),
	datad => slotCounter1(1),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X107_Y31_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!slotCounter1(2) & slotCounter1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => slotCounter1(2),
	datad => slotCounter1(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y31_N10
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\state.slotsLevel_1~q\ & (slotCounter1(0) $ (((!\LessThan0~0_combout\ & \Selector37~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.slotsLevel_1~q\,
	datab => \LessThan0~0_combout\,
	datac => \Selector37~2_combout\,
	datad => slotCounter1(0),
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X107_Y31_N12
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector38~0_combout\) # ((\state.slotsLevel_1~q\ & ((\LessThan3~0_combout\) # (!slotCounter1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.slotsLevel_1~q\,
	datab => \LessThan3~0_combout\,
	datac => slotCounter1(0),
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X107_Y31_N13
\slotCounter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter1(0));

-- Location: LCCOMB_X107_Y31_N24
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (slotCounter1(2) & (\level1_movement~input_o\ & (\state.freeSlots~q\ & !\state.slotsLevel_1~q\))) # (!slotCounter1(2) & (((\state.slotsLevel_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter1(2),
	datab => \level1_movement~input_o\,
	datac => \state.freeSlots~q\,
	datad => \state.slotsLevel_1~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X107_Y31_N26
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (slotCounter1(0) & ((slotCounter1(2)) # ((!slotCounter1(1) & \Selector36~0_combout\)))) # (!slotCounter1(0) & (slotCounter1(2) & ((!\Selector36~0_combout\) # (!slotCounter1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter1(0),
	datab => slotCounter1(1),
	datac => slotCounter1(2),
	datad => \Selector36~0_combout\,
	combout => \Selector36~1_combout\);

-- Location: FF_X107_Y31_N27
\slotCounter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter1(2));

-- Location: LCCOMB_X107_Y31_N0
\state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~62_combout\ = (\level1_movement~input_o\ & ((slotCounter1(2)) # (!slotCounter1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter1(2),
	datab => slotCounter1(1),
	datac => \level1_movement~input_o\,
	combout => \state~62_combout\);

-- Location: LCCOMB_X106_Y31_N2
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state.slotsLevel_2~q\ & ((slotCounter2(0) & ((slotCounter2(1)) # (slotCounter2(2)))) # (!slotCounter2(0) & (!slotCounter2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(0),
	datab => \state.slotsLevel_2~q\,
	datac => slotCounter2(1),
	datad => slotCounter2(2),
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X106_Y31_N18
\slotCounter2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~2_combout\ = (!\level1_movement~input_o\ & (\level2_movement~input_o\ & ((slotCounter2(2)) # (!slotCounter2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(1),
	datab => slotCounter2(2),
	datac => \level1_movement~input_o\,
	datad => \level2_movement~input_o\,
	combout => \slotCounter2~2_combout\);

-- Location: LCCOMB_X106_Y31_N20
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\state.freeSlots~q\ & (\slotCounter2~2_combout\ & (slotCounter2(0) $ (slotCounter2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(0),
	datab => \state.freeSlots~q\,
	datac => slotCounter2(1),
	datad => \slotCounter2~2_combout\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X106_Y31_N4
\Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (!slotCounter2(1) & (((\level1_movement~input_o\) # (!\state.freeSlots~q\)) # (!\level2_movement~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(1),
	datab => \level2_movement~input_o\,
	datac => \level1_movement~input_o\,
	datad => \state.freeSlots~q\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X106_Y31_N12
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (!\Selector40~0_combout\ & ((\state.slotsLevel_2~q\) # ((!\Selector40~2_combout\ & !\Selector40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector40~2_combout\,
	datac => \Selector40~1_combout\,
	datad => \state.slotsLevel_2~q\,
	combout => \Selector40~3_combout\);

-- Location: FF_X106_Y31_N13
\slotCounter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter2(1));

-- Location: LCCOMB_X106_Y31_N10
\slotCounter2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~3_combout\ = (slotCounter2(0)) # (((\level1_movement~input_o\) # (!slotCounter2(1))) # (!\level2_movement~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(0),
	datab => \level2_movement~input_o\,
	datac => \level1_movement~input_o\,
	datad => slotCounter2(1),
	combout => \slotCounter2~3_combout\);

-- Location: LCCOMB_X106_Y31_N0
\slotCounter2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~4_combout\ = (slotCounter2(2) & \slotCounter2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => slotCounter2(2),
	datad => \slotCounter2~3_combout\,
	combout => \slotCounter2~4_combout\);

-- Location: LCCOMB_X106_Y31_N28
\slotCounter2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2[2]~0_combout\ = (\state.freeSlots~q\ & ((\slotCounter2~4_combout\))) # (!\state.freeSlots~q\ & (slotCounter2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.freeSlots~q\,
	datac => slotCounter2(2),
	datad => \slotCounter2~4_combout\,
	combout => \slotCounter2[2]~0_combout\);

-- Location: LCCOMB_X106_Y31_N22
\slotCounter2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~5_combout\ = (slotCounter2(2)) # ((!slotCounter2(1) & slotCounter2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(1),
	datab => slotCounter2(2),
	datad => slotCounter2(0),
	combout => \slotCounter2~5_combout\);

-- Location: FF_X106_Y31_N29
\slotCounter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slotCounter2[2]~0_combout\,
	asdata => \slotCounter2~5_combout\,
	sload => \state.slotsLevel_2~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter2(2));

-- Location: LCCOMB_X106_Y31_N30
\state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (!\level1_movement~input_o\ & ((slotCounter2(2)) # (!slotCounter2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => slotCounter2(2),
	datac => \level1_movement~input_o\,
	datad => slotCounter2(1),
	combout => \state~41_combout\);

-- Location: LCCOMB_X107_Y31_N14
\state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~63_combout\ = (\state.freeSlots~q\ & ((\state~47_combout\) # ((!\state~62_combout\ & !\state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~47_combout\,
	datab => \state~62_combout\,
	datac => \state.freeSlots~q\,
	datad => \state~41_combout\,
	combout => \state~63_combout\);

-- Location: LCCOMB_X111_Y30_N12
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\back_sensor~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \back_sensor~input_o\,
	datad => \state.idle~q\,
	combout => \Selector19~0_combout\);

-- Location: IOIBUF_X115_Y27_N1
\EnterMoney[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(6),
	o => \EnterMoney[6]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\EnterMoney[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(5),
	o => \EnterMoney[5]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\EnterMoney[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(4),
	o => \EnterMoney[4]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\EnterMoney[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(3),
	o => \EnterMoney[3]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\EnterMoney[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(2),
	o => \EnterMoney[2]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\EnterMoney[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(1),
	o => \EnterMoney[1]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\EnterMoney[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(0),
	o => \EnterMoney[0]~input_o\);

-- Location: LCCOMB_X110_Y30_N4
\money_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[0]~8_combout\ = (\EnterMoney[0]~input_o\ & (money_count(0) $ (VCC))) # (!\EnterMoney[0]~input_o\ & (money_count(0) & VCC))
-- \money_count[0]~9\ = CARRY((\EnterMoney[0]~input_o\ & money_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnterMoney[0]~input_o\,
	datab => money_count(0),
	datad => VCC,
	combout => \money_count[0]~8_combout\,
	cout => \money_count[0]~9\);

-- Location: LCCOMB_X107_Y30_N30
\money_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[1]~10_combout\ = (\rst~input_o\) # (!\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \state.idle~q\,
	combout => \money_count[1]~10_combout\);

-- Location: LCCOMB_X107_Y31_N28
\levels[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~8_combout\ = ((slotCounter1(0) & (!slotCounter1(1) & slotCounter1(2)))) # (!\state.slotsLevel_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter1(0),
	datab => slotCounter1(1),
	datac => slotCounter1(2),
	datad => \state.slotsLevel_1~q\,
	combout => \levels[0]~8_combout\);

-- Location: IOIBUF_X115_Y26_N22
\EnterMoney[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EnterMoney(7),
	o => \EnterMoney[7]~input_o\);

-- Location: LCCOMB_X110_Y30_N16
\money_count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[6]~23_combout\ = ((\EnterMoney[6]~input_o\ $ (money_count(6) $ (!\money_count[5]~22\)))) # (GND)
-- \money_count[6]~24\ = CARRY((\EnterMoney[6]~input_o\ & ((money_count(6)) # (!\money_count[5]~22\))) # (!\EnterMoney[6]~input_o\ & (money_count(6) & !\money_count[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EnterMoney[6]~input_o\,
	datab => money_count(6),
	datad => VCC,
	cin => \money_count[5]~22\,
	combout => \money_count[6]~23_combout\,
	cout => \money_count[6]~24\);

-- Location: LCCOMB_X110_Y30_N18
\money_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[7]~25_combout\ = money_count(7) $ (\money_count[6]~24\ $ (\EnterMoney[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(7),
	datad => \EnterMoney[7]~input_o\,
	cin => \money_count[6]~24\,
	combout => \money_count[7]~25_combout\);

-- Location: FF_X110_Y30_N19
\money_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[7]~25_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(7));

-- Location: LCCOMB_X107_Y30_N28
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!money_count(7) & !money_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money_count(7),
	datad => money_count(6),
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X111_Y30_N8
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!money_count(2) & (!money_count(0) & money_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(2),
	datab => money_count(0),
	datad => money_count(1),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X111_Y30_N2
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (money_count(3) & (!money_count(4) & (\Equal11~0_combout\ & \state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(3),
	datab => money_count(4),
	datac => \Equal11~0_combout\,
	datad => \state~40_combout\,
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X109_Y30_N2
\state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (money_count(3) & ((money_count(2)) # ((money_count(1) & money_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(3),
	datac => money_count(2),
	datad => money_count(0),
	combout => \state~42_combout\);

-- Location: LCCOMB_X109_Y30_N8
\state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (money_count(4)) # ((money_count(5)) # (\state~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_count(4),
	datac => money_count(5),
	datad => \state~42_combout\,
	combout => \state~43_combout\);

-- Location: LCCOMB_X110_Y30_N26
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!money_count(4) & (((!money_count(1) & !money_count(2))) # (!money_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datab => money_count(1),
	datac => money_count(2),
	datad => money_count(3),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X108_Y30_N0
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Equal11~1_combout\ & ((money_count(5)) # ((!\LessThan6~0_combout\)))) # (!\Equal11~1_combout\ & (\state~43_combout\ & ((money_count(5)) # (!\LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => money_count(5),
	datac => \state~43_combout\,
	datad => \LessThan6~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X108_Y30_N30
\Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ((\Selector28~0_combout\ & (\state.bikeCharge~q\ & !\Selector26~0_combout\))) # (!\levels[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \levels[0]~8_combout\,
	datab => \Selector28~0_combout\,
	datac => \state.bikeCharge~q\,
	datad => \Selector26~0_combout\,
	combout => \Selector26~1_combout\);

-- Location: FF_X108_Y30_N31
\state.bikeCharge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.bikeCharge~q\);

-- Location: LCCOMB_X107_Y30_N26
\Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (!money_count(6) & (!money_count(7) & \state.carCharge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(6),
	datac => money_count(7),
	datad => \state.carCharge~q\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X107_Y31_N4
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.slotsLevel_2~q\ & ((slotCounter2(1)) # ((!slotCounter2(0)) # (!slotCounter2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(1),
	datab => slotCounter2(2),
	datac => slotCounter2(0),
	datad => \state.slotsLevel_2~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X110_Y30_N2
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (money_count(4) & (!money_count(3) & (money_count(2) & !money_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datab => money_count(3),
	datac => money_count(2),
	datad => money_count(1),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X109_Y30_N0
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (money_count(3)) # ((money_count(2) & ((money_count(0)) # (money_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(0),
	datab => money_count(2),
	datac => money_count(3),
	datad => money_count(1),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X110_Y30_N0
\Money_Change~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change~7_combout\ = (money_count(4) & ((money_count(2)) # (money_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datac => money_count(2),
	datad => money_count(3),
	combout => \Money_Change~7_combout\);

-- Location: LCCOMB_X110_Y30_N24
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!money_count(7) & (!money_count(0) & (!money_count(5) & !money_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(7),
	datab => money_count(0),
	datac => money_count(5),
	datad => money_count(6),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X109_Y30_N6
\state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~44_combout\ = ((!\LessThan9~0_combout\ & ((!\Equal12~0_combout\) # (!\Equal12~1_combout\)))) # (!\Money_Change~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \LessThan9~0_combout\,
	datac => \Money_Change~7_combout\,
	datad => \Equal12~0_combout\,
	combout => \state~44_combout\);

-- Location: LCCOMB_X108_Y30_N8
\Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\Selector27~0_combout\) # ((\Selector27~1_combout\ & (!money_count(5) & \state~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~1_combout\,
	datab => \Selector27~0_combout\,
	datac => money_count(5),
	datad => \state~44_combout\,
	combout => \Selector27~2_combout\);

-- Location: FF_X108_Y30_N9
\state.carCharge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.carCharge~q\);

-- Location: LCCOMB_X107_Y31_N16
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (!\level2_movement~input_o\ & (\state~41_combout\ & (\state.freeSlots~q\ & \level3_movement~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \level2_movement~input_o\,
	datab => \state~41_combout\,
	datac => \state.freeSlots~q\,
	datad => \level3_movement~input_o\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X108_Y31_N24
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\vehicle_type[0]~input_o\ & (!\vehicle_type[2]~input_o\ & (\state.vehicleType~q\ & \vehicle_type[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_type[0]~input_o\,
	datab => \vehicle_type[2]~input_o\,
	datac => \state.vehicleType~q\,
	datad => \vehicle_type[1]~input_o\,
	combout => \Selector25~0_combout\);

-- Location: FF_X108_Y31_N25
\state.slotsLevel_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.slotsLevel_3~q\);

-- Location: LCCOMB_X108_Y31_N10
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.slotsLevel_3~q\ & ((\LessThan5~0_combout\))) # (!\state.slotsLevel_3~q\ & (\Selector42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.slotsLevel_3~q\,
	datac => \Selector42~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X108_Y31_N20
\Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\state.slotsLevel_3~q\ & (!\Selector43~0_combout\ & (slotCounter3(0) $ (slotCounter3(1))))) # (!\state.slotsLevel_3~q\ & (slotCounter3(1) $ (((!slotCounter3(0) & \Selector43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter3(0),
	datab => \state.slotsLevel_3~q\,
	datac => slotCounter3(1),
	datad => \Selector43~0_combout\,
	combout => \Selector43~1_combout\);

-- Location: FF_X108_Y31_N21
\slotCounter3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter3(1));

-- Location: LCCOMB_X108_Y31_N16
\Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (slotCounter3(0) & (!slotCounter3(1) & \state.slotsLevel_3~q\)) # (!slotCounter3(0) & (slotCounter3(1) & !\state.slotsLevel_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter3(0),
	datab => slotCounter3(1),
	datad => \state.slotsLevel_3~q\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X108_Y31_N8
\Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (\Selector42~1_combout\ & ((\state.slotsLevel_3~q\) # (\Selector42~0_combout\ $ (slotCounter3(2))))) # (!\Selector42~1_combout\ & (((slotCounter3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \state.slotsLevel_3~q\,
	datac => slotCounter3(2),
	datad => \Selector42~1_combout\,
	combout => \Selector42~2_combout\);

-- Location: FF_X108_Y31_N9
\slotCounter3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter3(2));

-- Location: LCCOMB_X108_Y31_N6
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (slotCounter3(0) & (!slotCounter3(1) & slotCounter3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter3(0),
	datab => slotCounter3(1),
	datac => slotCounter3(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X108_Y31_N30
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.slotsLevel_3~q\ & (((\LessThan5~0_combout\) # (!slotCounter3(0))))) # (!\state.slotsLevel_3~q\ & (\Selector42~0_combout\ $ ((slotCounter3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~0_combout\,
	datab => \state.slotsLevel_3~q\,
	datac => slotCounter3(0),
	datad => \LessThan5~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X108_Y31_N31
\slotCounter3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter3(0));

-- Location: LCCOMB_X108_Y31_N12
\levels[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~9_combout\ = ((slotCounter3(0) & (slotCounter3(2) & !slotCounter3(1)))) # (!\state.slotsLevel_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter3(0),
	datab => slotCounter3(2),
	datac => \state.slotsLevel_3~q\,
	datad => slotCounter3(1),
	combout => \levels[0]~9_combout\);

-- Location: LCCOMB_X110_Y30_N30
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (money_count(4) & (money_count(1) & (money_count(2) & money_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datab => money_count(1),
	datac => money_count(2),
	datad => money_count(3),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X109_Y30_N12
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (money_count(1) & (money_count(3) & (money_count(2) & money_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(3),
	datac => money_count(2),
	datad => money_count(0),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X109_Y30_N28
\state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (!money_count(5) & (((!\LessThan11~0_combout\ & !\Equal12~0_combout\)) # (!\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => money_count(5),
	datac => \LessThan11~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \state~45_combout\);

-- Location: LCCOMB_X108_Y30_N18
\Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = ((\Selector28~0_combout\ & (\state.vanCharge~q\ & \state~45_combout\))) # (!\levels[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \levels[0]~9_combout\,
	datab => \Selector28~0_combout\,
	datac => \state.vanCharge~q\,
	datad => \state~45_combout\,
	combout => \Selector28~1_combout\);

-- Location: FF_X108_Y30_N19
\state.vanCharge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.vanCharge~q\);

-- Location: LCCOMB_X108_Y30_N20
\money_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[1]~11_combout\ = (!\state.bikeCharge~q\ & (!\state.carCharge~q\ & !\state.vanCharge~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datac => \state.carCharge~q\,
	datad => \state.vanCharge~q\,
	combout => \money_count[1]~11_combout\);

-- Location: LCCOMB_X111_Y30_N10
\money_count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[1]~12_combout\ = (\rst~input_o\) # ((!\state.idle~q\) # (!\money_count[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \money_count[1]~11_combout\,
	datad => \state.idle~q\,
	combout => \money_count[1]~12_combout\);

-- Location: FF_X110_Y30_N5
\money_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[0]~8_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(0));

-- Location: LCCOMB_X110_Y30_N6
\money_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[1]~13_combout\ = (money_count(1) & ((\EnterMoney[1]~input_o\ & (\money_count[0]~9\ & VCC)) # (!\EnterMoney[1]~input_o\ & (!\money_count[0]~9\)))) # (!money_count(1) & ((\EnterMoney[1]~input_o\ & (!\money_count[0]~9\)) # 
-- (!\EnterMoney[1]~input_o\ & ((\money_count[0]~9\) # (GND)))))
-- \money_count[1]~14\ = CARRY((money_count(1) & (!\EnterMoney[1]~input_o\ & !\money_count[0]~9\)) # (!money_count(1) & ((!\money_count[0]~9\) # (!\EnterMoney[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => \EnterMoney[1]~input_o\,
	datad => VCC,
	cin => \money_count[0]~9\,
	combout => \money_count[1]~13_combout\,
	cout => \money_count[1]~14\);

-- Location: FF_X110_Y30_N7
\money_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[1]~13_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(1));

-- Location: LCCOMB_X110_Y30_N8
\money_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[2]~15_combout\ = ((\EnterMoney[2]~input_o\ $ (money_count(2) $ (!\money_count[1]~14\)))) # (GND)
-- \money_count[2]~16\ = CARRY((\EnterMoney[2]~input_o\ & ((money_count(2)) # (!\money_count[1]~14\))) # (!\EnterMoney[2]~input_o\ & (money_count(2) & !\money_count[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EnterMoney[2]~input_o\,
	datab => money_count(2),
	datad => VCC,
	cin => \money_count[1]~14\,
	combout => \money_count[2]~15_combout\,
	cout => \money_count[2]~16\);

-- Location: FF_X110_Y30_N9
\money_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[2]~15_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(2));

-- Location: LCCOMB_X110_Y30_N10
\money_count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[3]~17_combout\ = (money_count(3) & ((\EnterMoney[3]~input_o\ & (\money_count[2]~16\ & VCC)) # (!\EnterMoney[3]~input_o\ & (!\money_count[2]~16\)))) # (!money_count(3) & ((\EnterMoney[3]~input_o\ & (!\money_count[2]~16\)) # 
-- (!\EnterMoney[3]~input_o\ & ((\money_count[2]~16\) # (GND)))))
-- \money_count[3]~18\ = CARRY((money_count(3) & (!\EnterMoney[3]~input_o\ & !\money_count[2]~16\)) # (!money_count(3) & ((!\money_count[2]~16\) # (!\EnterMoney[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(3),
	datab => \EnterMoney[3]~input_o\,
	datad => VCC,
	cin => \money_count[2]~16\,
	combout => \money_count[3]~17_combout\,
	cout => \money_count[3]~18\);

-- Location: FF_X110_Y30_N11
\money_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[3]~17_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(3));

-- Location: LCCOMB_X110_Y30_N12
\money_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[4]~19_combout\ = ((money_count(4) $ (\EnterMoney[4]~input_o\ $ (!\money_count[3]~18\)))) # (GND)
-- \money_count[4]~20\ = CARRY((money_count(4) & ((\EnterMoney[4]~input_o\) # (!\money_count[3]~18\))) # (!money_count(4) & (\EnterMoney[4]~input_o\ & !\money_count[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datab => \EnterMoney[4]~input_o\,
	datad => VCC,
	cin => \money_count[3]~18\,
	combout => \money_count[4]~19_combout\,
	cout => \money_count[4]~20\);

-- Location: FF_X110_Y30_N13
\money_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[4]~19_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(4));

-- Location: LCCOMB_X110_Y30_N14
\money_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \money_count[5]~21_combout\ = (money_count(5) & ((\EnterMoney[5]~input_o\ & (\money_count[4]~20\ & VCC)) # (!\EnterMoney[5]~input_o\ & (!\money_count[4]~20\)))) # (!money_count(5) & ((\EnterMoney[5]~input_o\ & (!\money_count[4]~20\)) # 
-- (!\EnterMoney[5]~input_o\ & ((\money_count[4]~20\) # (GND)))))
-- \money_count[5]~22\ = CARRY((money_count(5) & (!\EnterMoney[5]~input_o\ & !\money_count[4]~20\)) # (!money_count(5) & ((!\money_count[4]~20\) # (!\EnterMoney[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => \EnterMoney[5]~input_o\,
	datad => VCC,
	cin => \money_count[4]~20\,
	combout => \money_count[5]~21_combout\,
	cout => \money_count[5]~22\);

-- Location: FF_X110_Y30_N15
\money_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[5]~21_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(5));

-- Location: FF_X110_Y30_N17
\money_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money_count[6]~23_combout\,
	sclr => \money_count[1]~10_combout\,
	ena => \money_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money_count(6));

-- Location: LCCOMB_X110_Y30_N28
\state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (!money_count(6) & (!money_count(5) & !money_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_count(6),
	datac => money_count(5),
	datad => money_count(7),
	combout => \state~40_combout\);

-- Location: LCCOMB_X110_Y30_N20
\state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~49_combout\ = (\state.vanCharge~q\ & (((!money_count(3)) # (!money_count(2))) # (!money_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => \state.vanCharge~q\,
	datad => money_count(3),
	combout => \state~49_combout\);

-- Location: LCCOMB_X111_Y30_N28
\state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (\state.bikeCharge~q\ & (((\LessThan6~0_combout\)))) # (!\state.bikeCharge~q\ & (((\state~49_combout\)) # (!\Money_Change~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datab => \Money_Change~7_combout\,
	datac => \LessThan6~0_combout\,
	datad => \state~49_combout\,
	combout => \state~50_combout\);

-- Location: LCCOMB_X111_Y30_N4
\state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~64_combout\ = (!\money_count[1]~11_combout\ & ((!\state~50_combout\) # (!\state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~40_combout\,
	datac => \money_count[1]~11_combout\,
	datad => \state~50_combout\,
	combout => \state~64_combout\);

-- Location: LCCOMB_X110_Y30_N22
\state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~56_combout\ = (\Equal12~0_combout\ & ((\state.vanCharge~q\ & ((\Equal13~0_combout\))) # (!\state.vanCharge~q\ & (\Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.vanCharge~q\,
	datab => \Equal12~1_combout\,
	datac => \Equal13~0_combout\,
	datad => \Equal12~0_combout\,
	combout => \state~56_combout\);

-- Location: LCCOMB_X111_Y30_N14
\state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~65_combout\ = (\state.idle~q\ & ((\state.bikeCharge~q\ & (\Equal11~1_combout\)) # (!\state.bikeCharge~q\ & ((\state~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \Equal11~1_combout\,
	datac => \state.bikeCharge~q\,
	datad => \state~56_combout\,
	combout => \state~65_combout\);

-- Location: LCCOMB_X109_Y30_N30
\state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~53_combout\ = ((\state.vanCharge~q\ & (!\LessThan11~0_combout\)) # (!\state.vanCharge~q\ & ((!\LessThan9~0_combout\)))) # (!money_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \state.vanCharge~q\,
	datac => money_count(4),
	datad => \LessThan9~0_combout\,
	combout => \state~53_combout\);

-- Location: LCCOMB_X109_Y30_N24
\state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~54_combout\ = (\state~40_combout\ & ((!money_count(4)) # (!\state.bikeCharge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.bikeCharge~q\,
	datac => money_count(4),
	datad => \state~40_combout\,
	combout => \state~54_combout\);

-- Location: LCCOMB_X109_Y30_N14
\state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~55_combout\ = (\state~54_combout\ & ((\state.bikeCharge~q\ & (!\state~42_combout\)) # (!\state.bikeCharge~q\ & ((\state~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datab => \state~42_combout\,
	datac => \state~53_combout\,
	datad => \state~54_combout\,
	combout => \state~55_combout\);

-- Location: LCCOMB_X111_Y30_N18
\state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~66_combout\ = (!\state~65_combout\ & ((\Selector19~0_combout\) # ((\state~64_combout\ & \state~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \state~64_combout\,
	datac => \state~65_combout\,
	datad => \state~55_combout\,
	combout => \state~66_combout\);

-- Location: LCCOMB_X111_Y30_N0
\state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~67_combout\ = (!\rst~input_o\ & (!\state~63_combout\ & ((\state~60_combout\) # (!\state~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~60_combout\,
	datab => \rst~input_o\,
	datac => \state~63_combout\,
	datad => \state~66_combout\,
	combout => \state~67_combout\);

-- Location: FF_X111_Y30_N17
\state.freeSlots\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state~51_combout\,
	sload => VCC,
	ena => \state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.freeSlots~q\);

-- Location: LCCOMB_X106_Y31_N16
\slotCounter2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~6_combout\ = \slotCounter2~2_combout\ $ (slotCounter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slotCounter2~2_combout\,
	datad => slotCounter2(0),
	combout => \slotCounter2~6_combout\);

-- Location: LCCOMB_X106_Y31_N6
\slotCounter2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2[0]~1_combout\ = (\state.freeSlots~q\ & ((\slotCounter2~6_combout\))) # (!\state.freeSlots~q\ & (slotCounter2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.freeSlots~q\,
	datac => slotCounter2(0),
	datad => \slotCounter2~6_combout\,
	combout => \slotCounter2[0]~1_combout\);

-- Location: LCCOMB_X106_Y31_N26
\slotCounter2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \slotCounter2~7_combout\ = ((!slotCounter2(1) & slotCounter2(2))) # (!slotCounter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(1),
	datab => slotCounter2(2),
	datad => slotCounter2(0),
	combout => \slotCounter2~7_combout\);

-- Location: FF_X106_Y31_N7
\slotCounter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slotCounter2[0]~1_combout\,
	asdata => \slotCounter2~7_combout\,
	sload => \state.slotsLevel_2~q\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slotCounter2(0));

-- Location: LCCOMB_X106_Y31_N8
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (slotCounter2(0) & (slotCounter2(2) & (\state.slotsLevel_2~q\ & !slotCounter2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slotCounter2(0),
	datab => slotCounter2(2),
	datac => \state.slotsLevel_2~q\,
	datad => slotCounter2(1),
	combout => \Selector18~1_combout\);

-- Location: FF_X111_Y30_N21
\state.backGateOpen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.freeSlots~q\,
	sload => VCC,
	ena => \state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.backGateOpen~q\);

-- Location: LCCOMB_X110_Y31_N6
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\state.vip~q\ & \state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.vip~q\,
	datad => \state.idle~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X109_Y31_N26
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Selector17~1_combout\ & (((passwordCount(0) & \Selector17~0_combout\)))) # (!\Selector17~1_combout\ & ((passwordCount(1)) # ((!passwordCount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~1_combout\,
	datab => passwordCount(1),
	datac => passwordCount(0),
	datad => \Selector17~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X109_Y31_N27
\passwordCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passwordCount(0));

-- Location: LCCOMB_X109_Y31_N16
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Selector17~1_combout\ & (((passwordCount(1) & \Selector17~0_combout\)))) # (!\Selector17~1_combout\ & ((passwordCount(0)) # ((passwordCount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => passwordCount(0),
	datab => \Selector17~1_combout\,
	datac => passwordCount(1),
	datad => \Selector17~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X109_Y31_N17
\passwordCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passwordCount(1));

-- Location: IOIBUF_X115_Y31_N1
\user_name[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_name(1),
	o => \user_name[1]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\user_name[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_name(0),
	o => \user_name[0]~input_o\);

-- Location: LCCOMB_X110_Y31_N12
\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\user_name[1]~input_o\ & (\user_name[0]~input_o\ & \state.vip~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_name[1]~input_o\,
	datab => \user_name[0]~input_o\,
	datac => \state.vip~q\,
	combout => \Selector34~1_combout\);

-- Location: IOIBUF_X115_Y35_N22
\password[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(1),
	o => \password[1]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\password[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password(0),
	o => \password[0]~input_o\);

-- Location: LCCOMB_X109_Y31_N20
\Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\Selector34~1_combout\) # ((\Selector34~0_combout\ & ((\password[1]~input_o\) # (\password[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \Selector34~1_combout\,
	datac => \password[1]~input_o\,
	datad => \password[0]~input_o\,
	combout => \Selector34~2_combout\);

-- Location: FF_X109_Y31_N21
\state.user3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.user3~q\);

-- Location: LCCOMB_X109_Y31_N6
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.user3~q\ & ((!passwordCount(0)) # (!passwordCount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => passwordCount(1),
	datac => passwordCount(0),
	datad => \state.user3~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X110_Y31_N10
\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (!\user_name[1]~input_o\ & (!\user_name[0]~input_o\ & \state.vip~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_name[1]~input_o\,
	datab => \user_name[0]~input_o\,
	datac => \state.vip~q\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X109_Y31_N4
\Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector31~1_combout\) # ((\Selector31~0_combout\ & ((\password[1]~input_o\) # (!\password[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[1]~input_o\,
	datab => \Selector31~0_combout\,
	datac => \Selector31~1_combout\,
	datad => \password[0]~input_o\,
	combout => \Selector31~2_combout\);

-- Location: FF_X109_Y31_N5
\state.user0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.user0~q\);

-- Location: LCCOMB_X109_Y31_N18
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.user0~q\ & ((!passwordCount(1)) # (!passwordCount(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => passwordCount(0),
	datac => \state.user0~q\,
	datad => passwordCount(1),
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X109_Y31_N12
\levels[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~4_combout\ = (\password[1]~input_o\) # ((\password[0]~input_o\ & ((!\Selector31~0_combout\))) # (!\password[0]~input_o\ & (!\Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \password[0]~input_o\,
	datac => \password[1]~input_o\,
	datad => \Selector31~0_combout\,
	combout => \levels[0]~4_combout\);

-- Location: LCCOMB_X108_Y30_N4
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ((\state.carCharge~q\ & ((money_count(5)) # (!\state~44_combout\)))) # (!\levels[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~44_combout\,
	datab => \state.carCharge~q\,
	datac => money_count(5),
	datad => \levels[0]~4_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X109_Y31_N28
\Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\state.user1~q\ & ((\password[0]~input_o\) # (!\password[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[1]~input_o\,
	datab => \password[0]~input_o\,
	datad => \state.user1~q\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X110_Y31_N24
\Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (!\user_name[1]~input_o\ & (\user_name[0]~input_o\ & \state.vip~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_name[1]~input_o\,
	datab => \user_name[0]~input_o\,
	datac => \state.vip~q\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X109_Y31_N24
\Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\Selector32~3_combout\) # ((\Selector32~2_combout\ & ((!passwordCount(0)) # (!passwordCount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~2_combout\,
	datab => passwordCount(1),
	datac => passwordCount(0),
	datad => \Selector32~3_combout\,
	combout => \Selector32~4_combout\);

-- Location: FF_X109_Y31_N25
\state.user1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.user1~q\);

-- Location: LCCOMB_X109_Y31_N22
\Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\password[1]~input_o\ & ((\password[0]~input_o\ & (\state.user2~q\)) # (!\password[0]~input_o\ & ((\state.user1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[1]~input_o\,
	datab => \password[0]~input_o\,
	datac => \state.user2~q\,
	datad => \state.user1~q\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X109_Y31_N10
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (passwordCount(0) & passwordCount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => passwordCount(0),
	datad => passwordCount(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X108_Y30_N26
\Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\Selector29~1_combout\ & (((!\money_count[1]~11_combout\ & !\Selector28~0_combout\)) # (!\LessThan2~0_combout\))) # (!\Selector29~1_combout\ & (!\money_count[1]~11_combout\ & ((!\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datab => \money_count[1]~11_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X108_Y30_N16
\Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\Selector29~2_combout\) # ((\state.bikeCharge~q\ & \Selector26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datac => \Selector29~2_combout\,
	datad => \Selector26~0_combout\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X108_Y30_N12
\Selector29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~4_combout\ = (\Selector29~0_combout\) # ((\Selector29~3_combout\) # ((\state.vanCharge~q\ & !\state~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.vanCharge~q\,
	datab => \state~45_combout\,
	datac => \Selector29~0_combout\,
	datad => \Selector29~3_combout\,
	combout => \Selector29~4_combout\);

-- Location: FF_X108_Y30_N13
\state.gateOpen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.gateOpen~q\);

-- Location: LCCOMB_X108_Y30_N22
\Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\state.gateOpen~q\) # ((!\state.idle~q\ & (!\front_sensor~input_o\ & !\back_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \front_sensor~input_o\,
	datac => \back_sensor~input_o\,
	datad => \state.gateOpen~q\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X107_Y31_N22
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.slotsLevel_1~q\ & ((\LessThan3~0_combout\) # ((\state.slotsLevel_3~q\ & \LessThan5~0_combout\)))) # (!\state.slotsLevel_1~q\ & (\state.slotsLevel_3~q\ & ((\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.slotsLevel_1~q\,
	datab => \state.slotsLevel_3~q\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X106_Y30_N24
\Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (!\Selector18~1_combout\ & (!\state.backGateOpen~q\ & (!\Selector18~2_combout\ & !\Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~1_combout\,
	datab => \state.backGateOpen~q\,
	datac => \Selector18~2_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~3_combout\);

-- Location: FF_X106_Y30_N25
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X111_Y30_N6
\state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~60_combout\ = (\front_sensor~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => \state.idle~q\,
	combout => \state~60_combout\);

-- Location: LCCOMB_X111_Y30_N16
\state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~48_combout\ = (\rst~input_o\) # ((\state.freeSlots~q\ & \state~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \state.freeSlots~q\,
	datad => \state~47_combout\,
	combout => \state~48_combout\);

-- Location: LCCOMB_X106_Y30_N2
\state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~59_combout\ = ((!\state~41_combout\ & ((\LessThan0~0_combout\) # (!\level1_movement~input_o\)))) # (!\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \level1_movement~input_o\,
	datab => \state.idle~q\,
	datac => \state~41_combout\,
	datad => \LessThan0~0_combout\,
	combout => \state~59_combout\);

-- Location: LCCOMB_X106_Y30_N20
\state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~69_combout\ = (\state.freeSlots~q\ & ((\state~59_combout\) # ((!\state.idle~q\ & !\back_sensor~input_o\)))) # (!\state.freeSlots~q\ & (!\state.idle~q\ & (!\back_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.freeSlots~q\,
	datab => \state.idle~q\,
	datac => \back_sensor~input_o\,
	datad => \state~59_combout\,
	combout => \state~69_combout\);

-- Location: LCCOMB_X111_Y30_N20
\state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~57_combout\ = (!\state.freeSlots~q\ & ((\state.bikeCharge~q\ & (!\Equal11~1_combout\)) # (!\state.bikeCharge~q\ & ((!\state~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datab => \Equal11~1_combout\,
	datac => \state.freeSlots~q\,
	datad => \state~56_combout\,
	combout => \state~57_combout\);

-- Location: LCCOMB_X111_Y30_N26
\state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~52_combout\ = (!\money_count[1]~11_combout\ & (!\state~51_combout\ & ((!\state~50_combout\) # (!\state~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money_count[1]~11_combout\,
	datab => \state~40_combout\,
	datac => \state~51_combout\,
	datad => \state~50_combout\,
	combout => \state~52_combout\);

-- Location: LCCOMB_X111_Y30_N24
\state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~58_combout\ = (\state~52_combout\ & (((\state~57_combout\ & \state~55_combout\)) # (!\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \state~57_combout\,
	datac => \state~52_combout\,
	datad => \state~55_combout\,
	combout => \state~58_combout\);

-- Location: LCCOMB_X111_Y30_N30
\state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~61_combout\ = (!\state~48_combout\ & ((\state~60_combout\) # ((!\state~69_combout\ & !\state~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~60_combout\,
	datab => \state~48_combout\,
	datac => \state~69_combout\,
	datad => \state~58_combout\,
	combout => \state~61_combout\);

-- Location: FF_X111_Y30_N13
\state.vip\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state~46_combout\,
	sload => VCC,
	ena => \state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.vip~q\);

-- Location: LCCOMB_X109_Y31_N30
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\LessThan2~0_combout\ & (\state.user2~q\ & ((!\password[0]~input_o\) # (!\password[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \state.user2~q\,
	datac => \password[1]~input_o\,
	datad => \password[0]~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X109_Y31_N14
\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\Selector33~0_combout\) # ((\state.vip~q\ & (\user_name[1]~input_o\ & !\user_name[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.vip~q\,
	datab => \user_name[1]~input_o\,
	datac => \Selector33~0_combout\,
	datad => \user_name[0]~input_o\,
	combout => \Selector33~1_combout\);

-- Location: FF_X109_Y31_N15
\state.user2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.user2~q\);

-- Location: LCCOMB_X109_Y31_N0
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (!\state.user2~q\ & (!\state.user3~q\ & (!\state.user0~q\ & !\state.user1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.user2~q\,
	datab => \state.user3~q\,
	datac => \state.user0~q\,
	datad => \state.user1~q\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X108_Y30_N6
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector17~1_combout\ & (\front_sensor~input_o\ & ((\Selector19~0_combout\)))) # (!\Selector17~1_combout\ & ((\LessThan2~0_combout\) # ((\front_sensor~input_o\ & \Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~1_combout\,
	datab => \front_sensor~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: FF_X108_Y30_N7
\state.userType\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.userType~q\);

-- Location: LCCOMB_X107_Y30_N6
\state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~68_combout\ = (!\user_type~input_o\ & \state.userType~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \user_type~input_o\,
	datad => \state.userType~q\,
	combout => \state~68_combout\);

-- Location: FF_X111_Y30_N9
\state.visitor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state~68_combout\,
	sload => VCC,
	ena => \state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.visitor~q\);

-- Location: LCCOMB_X108_Y31_N26
\Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\) # (\state.visitor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector22~0_combout\,
	datad => \state.visitor~q\,
	combout => \Selector22~1_combout\);

-- Location: FF_X108_Y31_N27
\state.vehicleType\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.vehicleType~q\);

-- Location: LCCOMB_X108_Y31_N28
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\vehicle_type[0]~input_o\ & (!\vehicle_type[2]~input_o\ & (\state.vehicleType~q\ & !\vehicle_type[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_type[0]~input_o\,
	datab => \vehicle_type[2]~input_o\,
	datac => \state.vehicleType~q\,
	datad => \vehicle_type[1]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: FF_X108_Y31_N29
\state.slotsLevel_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.slotsLevel_2~q\);

-- Location: LCCOMB_X108_Y31_N0
\levels[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~0_combout\ = (\state.slotsLevel_2~q\) # ((\state.user2~q\) # (\state.user1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.slotsLevel_2~q\,
	datac => \state.user2~q\,
	datad => \state.user1~q\,
	combout => \levels[0]~0_combout\);

-- Location: LCCOMB_X107_Y31_N2
\levels[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~5_combout\ = (\state.slotsLevel_1~q\ & (\LessThan3~0_combout\ & ((\LessThan5~0_combout\) # (!\state.slotsLevel_3~q\)))) # (!\state.slotsLevel_1~q\ & (((\LessThan5~0_combout\)) # (!\state.slotsLevel_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.slotsLevel_1~q\,
	datab => \state.slotsLevel_3~q\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \levels[0]~5_combout\);

-- Location: LCCOMB_X109_Y31_N2
\levels[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~2_combout\ = ((!\state.user1~q\ & ((\state.slotsLevel_2~q\) # (!\password[0]~input_o\)))) # (!\password[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \password[1]~input_o\,
	datab => \password[0]~input_o\,
	datac => \state.user1~q\,
	datad => \state.slotsLevel_2~q\,
	combout => \levels[0]~2_combout\);

-- Location: LCCOMB_X109_Y31_N8
\levels[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~1_combout\ = (!\state.slotsLevel_2~q\ & ((\LessThan2~0_combout\) # ((!\state.user1~q\ & !\state.user2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \state.user1~q\,
	datac => \state.user2~q\,
	datad => \state.slotsLevel_2~q\,
	combout => \levels[0]~1_combout\);

-- Location: LCCOMB_X108_Y31_N18
\levels[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~3_combout\ = (\levels[0]~1_combout\) # ((\Selector32~2_combout\) # ((\levels[0]~2_combout\ & !\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \levels[0]~2_combout\,
	datab => \Selector27~0_combout\,
	datac => \levels[0]~1_combout\,
	datad => \Selector32~2_combout\,
	combout => \levels[0]~3_combout\);

-- Location: LCCOMB_X108_Y31_N4
\levels[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~6_combout\ = (!\rst~input_o\ & (((!\levels[0]~3_combout\) # (!\levels[0]~4_combout\)) # (!\levels[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \levels[0]~5_combout\,
	datab => \rst~input_o\,
	datac => \levels[0]~4_combout\,
	datad => \levels[0]~3_combout\,
	combout => \levels[0]~6_combout\);

-- Location: FF_X108_Y31_N1
\levels[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \levels[0]~0_combout\,
	ena => \levels[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => levels(0));

-- Location: LCCOMB_X108_Y31_N14
\levels[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \levels[0]~7_combout\ = (\state.user3~q\) # (\state.slotsLevel_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.user3~q\,
	datad => \state.slotsLevel_3~q\,
	combout => \levels[0]~7_combout\);

-- Location: FF_X108_Y31_N15
\levels[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \levels[0]~7_combout\,
	ena => \levels[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => levels(1));

-- Location: LCCOMB_X109_Y30_N18
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\state.carCharge~q\ & (((\LessThan9~0_combout\ & \Money_Change~7_combout\)) # (!\state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datab => \LessThan9~0_combout\,
	datac => \Money_Change~7_combout\,
	datad => \state~40_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X109_Y30_N20
\Money_Change~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change~8_combout\ = ((!money_count(2) & ((!money_count(0)) # (!money_count(1))))) # (!money_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(3),
	datac => money_count(2),
	datad => money_count(0),
	combout => \Money_Change~8_combout\);

-- Location: LCCOMB_X109_Y30_N22
\Money_Change~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change~9_combout\ = (\state~40_combout\ & (!money_count(4) & \Money_Change~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~40_combout\,
	datac => money_count(4),
	datad => \Money_Change~8_combout\,
	combout => \Money_Change~9_combout\);

-- Location: LCCOMB_X109_Y30_N16
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\state.vanCharge~q\ & (((\Equal13~0_combout\ & \LessThan11~0_combout\)) # (!\state~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \state.vanCharge~q\,
	datac => \LessThan11~0_combout\,
	datad => \state~40_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X109_Y30_N4
\Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Selector15~3_combout\) # ((\Selector15~2_combout\) # ((\state.bikeCharge~q\ & !\Money_Change~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.bikeCharge~q\,
	datab => \Selector15~3_combout\,
	datac => \Money_Change~9_combout\,
	datad => \Selector15~2_combout\,
	combout => \Selector15~4_combout\);

-- Location: LCCOMB_X108_Y30_N2
\Money_Change[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[2]~10_combout\ = (\state.idle~q\ & ((\money_count[1]~11_combout\) # ((\state.bikeCharge~q\ & \Money_Change~9_combout\)))) # (!\state.idle~q\ & (((\state.bikeCharge~q\ & \Money_Change~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \money_count[1]~11_combout\,
	datac => \state.bikeCharge~q\,
	datad => \Money_Change~9_combout\,
	combout => \Money_Change[2]~10_combout\);

-- Location: LCCOMB_X109_Y30_N10
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\state.carCharge~q\ & (\state~40_combout\ & ((!\Money_Change~7_combout\) # (!\LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datab => \LessThan9~0_combout\,
	datac => \Money_Change~7_combout\,
	datad => \state~40_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X109_Y30_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.vanCharge~q\ & (\state~40_combout\ & ((!\Equal13~0_combout\) # (!\LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \state.vanCharge~q\,
	datac => \Equal13~0_combout\,
	datad => \state~40_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X108_Y30_N28
\Money_Change[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[2]~11_combout\ = (\Money_Change[2]~10_combout\) # ((\Selector15~1_combout\) # (\Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Money_Change[2]~10_combout\,
	datac => \Selector15~1_combout\,
	datad => \Selector15~0_combout\,
	combout => \Money_Change[2]~11_combout\);

-- Location: LCCOMB_X108_Y30_N24
\Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = (\Selector15~4_combout\ & ((money_count(0)) # ((Money_Change(0) & \Money_Change[2]~11_combout\)))) # (!\Selector15~4_combout\ & (((Money_Change(0) & \Money_Change[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~4_combout\,
	datab => money_count(0),
	datac => Money_Change(0),
	datad => \Money_Change[2]~11_combout\,
	combout => \Selector15~5_combout\);

-- Location: FF_X108_Y30_N25
\Money_Change[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~5_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(0));

-- Location: LCCOMB_X107_Y30_N8
\Money_Change[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[1]~12_combout\ = money_count(1) $ (VCC)
-- \Money_Change[1]~13\ = CARRY(money_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_count(1),
	datad => VCC,
	combout => \Money_Change[1]~12_combout\,
	cout => \Money_Change[1]~13\);

-- Location: LCCOMB_X105_Y30_N18
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = money_count(1) $ (VCC)
-- \Add8~1\ = CARRY(money_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_count(1),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X107_Y30_N4
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\state.carCharge~q\ & (money_count(1))) # (!\state.carCharge~q\ & ((\Add8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => money_count(1),
	datad => \Add8~0_combout\,
	combout => \Add8~2_combout\);

-- Location: LCCOMB_X108_Y30_N14
\Money_Change[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[2]~14_combout\ = (\rst~input_o\) # ((!\state.carCharge~q\ & (!\state.bikeCharge~q\ & !\state.vanCharge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \state.carCharge~q\,
	datac => \state.bikeCharge~q\,
	datad => \state.vanCharge~q\,
	combout => \Money_Change[2]~14_combout\);

-- Location: LCCOMB_X107_Y30_N2
\Money_Change[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[2]~15_combout\ = (\rst~input_o\) # ((!\Selector15~0_combout\ & (!\Selector15~1_combout\ & !\Money_Change[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Selector15~0_combout\,
	datac => \Selector15~1_combout\,
	datad => \Money_Change[2]~10_combout\,
	combout => \Money_Change[2]~15_combout\);

-- Location: FF_X107_Y30_N9
\Money_Change[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[1]~12_combout\,
	asdata => \Add8~2_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(1));

-- Location: LCCOMB_X107_Y30_N10
\Money_Change[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[2]~16_combout\ = (money_count(2) & (!\Money_Change[1]~13\)) # (!money_count(2) & ((\Money_Change[1]~13\) # (GND)))
-- \Money_Change[2]~17\ = CARRY((!\Money_Change[1]~13\) # (!money_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(2),
	datad => VCC,
	cin => \Money_Change[1]~13\,
	combout => \Money_Change[2]~16_combout\,
	cout => \Money_Change[2]~17\);

-- Location: LCCOMB_X106_Y30_N4
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = money_count(2) $ (VCC)
-- \Add9~1\ = CARRY(money_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money_count(2),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X105_Y30_N20
\Add8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~3_combout\ = (money_count(2) & (\Add8~1\ & VCC)) # (!money_count(2) & (!\Add8~1\))
-- \Add8~4\ = CARRY((!money_count(2) & !\Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(2),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~3_combout\,
	cout => \Add8~4\);

-- Location: LCCOMB_X106_Y30_N30
\Add8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~5_combout\ = (\state.carCharge~q\ & (\Add9~0_combout\)) # (!\state.carCharge~q\ & ((\Add8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add9~0_combout\,
	datad => \Add8~3_combout\,
	combout => \Add8~5_combout\);

-- Location: FF_X107_Y30_N11
\Money_Change[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[2]~16_combout\,
	asdata => \Add8~5_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(2));

-- Location: LCCOMB_X107_Y30_N12
\Money_Change[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[3]~18_combout\ = (money_count(3) & (\Money_Change[2]~17\ $ (GND))) # (!money_count(3) & (!\Money_Change[2]~17\ & VCC))
-- \Money_Change[3]~19\ = CARRY((money_count(3) & !\Money_Change[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(3),
	datad => VCC,
	cin => \Money_Change[2]~17\,
	combout => \Money_Change[3]~18_combout\,
	cout => \Money_Change[3]~19\);

-- Location: LCCOMB_X106_Y30_N6
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (money_count(3) & (\Add9~1\ & VCC)) # (!money_count(3) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!money_count(3) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(3),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X105_Y30_N22
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (money_count(3) & (\Add8~4\ $ (GND))) # (!money_count(3) & (!\Add8~4\ & VCC))
-- \Add8~7\ = CARRY((money_count(3) & !\Add8~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(3),
	datad => VCC,
	cin => \Add8~4\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X106_Y30_N28
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\state.carCharge~q\ & (\Add9~2_combout\)) # (!\state.carCharge~q\ & ((\Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add9~2_combout\,
	datad => \Add8~6_combout\,
	combout => \Add8~8_combout\);

-- Location: FF_X107_Y30_N13
\Money_Change[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[3]~18_combout\,
	asdata => \Add8~8_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(3));

-- Location: LCCOMB_X107_Y30_N14
\Money_Change[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[4]~20_combout\ = (money_count(4) & (!\Money_Change[3]~19\)) # (!money_count(4) & ((\Money_Change[3]~19\) # (GND)))
-- \Money_Change[4]~21\ = CARRY((!\Money_Change[3]~19\) # (!money_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(4),
	datad => VCC,
	cin => \Money_Change[3]~19\,
	combout => \Money_Change[4]~20_combout\,
	cout => \Money_Change[4]~21\);

-- Location: LCCOMB_X106_Y30_N8
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (money_count(4) & (\Add9~3\ $ (GND))) # (!money_count(4) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((money_count(4) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(4),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X105_Y30_N24
\Add8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~9_combout\ = (money_count(4) & (\Add8~7\ & VCC)) # (!money_count(4) & (!\Add8~7\))
-- \Add8~10\ = CARRY((!money_count(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~9_combout\,
	cout => \Add8~10\);

-- Location: LCCOMB_X106_Y30_N22
\Add8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~11_combout\ = (\state.carCharge~q\ & (\Add9~4_combout\)) # (!\state.carCharge~q\ & ((\Add8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add9~4_combout\,
	datad => \Add8~9_combout\,
	combout => \Add8~11_combout\);

-- Location: FF_X107_Y30_N15
\Money_Change[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[4]~20_combout\,
	asdata => \Add8~11_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(4));

-- Location: LCCOMB_X107_Y30_N16
\Money_Change[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[5]~22_combout\ = (money_count(5) & ((GND) # (!\Money_Change[4]~21\))) # (!money_count(5) & (\Money_Change[4]~21\ $ (GND)))
-- \Money_Change[5]~23\ = CARRY((money_count(5)) # (!\Money_Change[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(5),
	datad => VCC,
	cin => \Money_Change[4]~21\,
	combout => \Money_Change[5]~22_combout\,
	cout => \Money_Change[5]~23\);

-- Location: LCCOMB_X105_Y30_N26
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (money_count(5) & ((GND) # (!\Add8~10\))) # (!money_count(5) & (\Add8~10\ $ (GND)))
-- \Add8~13\ = CARRY((money_count(5)) # (!\Add8~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(5),
	datad => VCC,
	cin => \Add8~10\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X106_Y30_N10
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (money_count(5) & (\Add9~5\ & VCC)) # (!money_count(5) & (!\Add9~5\))
-- \Add9~7\ = CARRY((!money_count(5) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X106_Y30_N0
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\state.carCharge~q\ & ((\Add9~6_combout\))) # (!\state.carCharge~q\ & (\Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add8~12_combout\,
	datad => \Add9~6_combout\,
	combout => \Add8~14_combout\);

-- Location: FF_X107_Y30_N17
\Money_Change[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[5]~22_combout\,
	asdata => \Add8~14_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(5));

-- Location: LCCOMB_X107_Y30_N18
\Money_Change[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[6]~24_combout\ = (money_count(6) & (\Money_Change[5]~23\ & VCC)) # (!money_count(6) & (!\Money_Change[5]~23\))
-- \Money_Change[6]~25\ = CARRY((!money_count(6) & !\Money_Change[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(6),
	datad => VCC,
	cin => \Money_Change[5]~23\,
	combout => \Money_Change[6]~24_combout\,
	cout => \Money_Change[6]~25\);

-- Location: LCCOMB_X106_Y30_N12
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (money_count(6) & ((GND) # (!\Add9~7\))) # (!money_count(6) & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((money_count(6)) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(6),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X105_Y30_N28
\Add8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~15_combout\ = (money_count(6) & (\Add8~13\ & VCC)) # (!money_count(6) & (!\Add8~13\))
-- \Add8~16\ = CARRY((!money_count(6) & !\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(6),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~15_combout\,
	cout => \Add8~16\);

-- Location: LCCOMB_X106_Y30_N26
\Add8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~17_combout\ = (\state.carCharge~q\ & (\Add9~8_combout\)) # (!\state.carCharge~q\ & ((\Add8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add9~8_combout\,
	datad => \Add8~15_combout\,
	combout => \Add8~17_combout\);

-- Location: FF_X107_Y30_N19
\Money_Change[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[6]~24_combout\,
	asdata => \Add8~17_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(6));

-- Location: LCCOMB_X107_Y30_N20
\Money_Change[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Money_Change[7]~26_combout\ = money_count(7) $ (\Money_Change[6]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money_count(7),
	cin => \Money_Change[6]~25\,
	combout => \Money_Change[7]~26_combout\);

-- Location: LCCOMB_X106_Y30_N14
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = money_count(7) $ (!\Add9~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money_count(7),
	cin => \Add9~9\,
	combout => \Add9~10_combout\);

-- Location: LCCOMB_X105_Y30_N30
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = \Add8~16\ $ (money_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => money_count(7),
	cin => \Add8~16\,
	combout => \Add8~18_combout\);

-- Location: LCCOMB_X106_Y30_N16
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\state.carCharge~q\ & (\Add9~10_combout\)) # (!\state.carCharge~q\ & ((\Add8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.carCharge~q\,
	datac => \Add9~10_combout\,
	datad => \Add8~18_combout\,
	combout => \Add8~20_combout\);

-- Location: FF_X107_Y30_N21
\Money_Change[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Money_Change[7]~26_combout\,
	asdata => \Add8~20_combout\,
	sclr => \Money_Change[2]~14_combout\,
	sload => \ALT_INV_state.vanCharge~q\,
	ena => \Money_Change[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Money_Change(7));

-- Location: LCCOMB_X114_Y11_N28
\U1|cathodes[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[0]~10_combout\ = (Money_Change(2) & ((Money_Change(3) $ (!Money_Change(1))) # (!Money_Change(0)))) # (!Money_Change(2) & ((Money_Change(3)) # ((Money_Change(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[0]~10_combout\);

-- Location: LCCOMB_X114_Y11_N26
\U1|cathodes[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[1]~11_combout\ = (!Money_Change(3) & ((Money_Change(2) & (Money_Change(1) & Money_Change(0))) # (!Money_Change(2) & ((Money_Change(1)) # (Money_Change(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[1]~11_combout\);

-- Location: LCCOMB_X114_Y11_N4
\U1|cathodes[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[2]~12_combout\ = (Money_Change(1) & (((!Money_Change(3) & Money_Change(0))))) # (!Money_Change(1) & ((Money_Change(2) & (!Money_Change(3))) # (!Money_Change(2) & ((Money_Change(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[2]~12_combout\);

-- Location: LCCOMB_X114_Y11_N10
\U1|cathodes[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[3]~13_combout\ = (Money_Change(0) & (Money_Change(2) $ (((!Money_Change(1)))))) # (!Money_Change(0) & ((Money_Change(2) & (!Money_Change(3) & !Money_Change(1))) # (!Money_Change(2) & (Money_Change(3) & Money_Change(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[3]~13_combout\);

-- Location: LCCOMB_X114_Y11_N18
\U1|cathodes[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[4]~15_combout\ = (Money_Change(2) & (Money_Change(3) & ((Money_Change(1)) # (!Money_Change(0))))) # (!Money_Change(2) & (!Money_Change(3) & (Money_Change(1) & !Money_Change(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[4]~15_combout\);

-- Location: LCCOMB_X114_Y11_N0
\U1|cathodes[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[5]~16_combout\ = (Money_Change(2) & ((Money_Change(3) $ (!Money_Change(1))) # (!Money_Change(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[5]~16_combout\);

-- Location: LCCOMB_X114_Y11_N24
\U1|cathodes[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cathodes[6]~14_combout\ = (!Money_Change(3) & (!Money_Change(1) & (Money_Change(2) $ (Money_Change(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(2),
	datab => Money_Change(3),
	datac => Money_Change(1),
	datad => Money_Change(0),
	combout => \U1|cathodes[6]~14_combout\);

-- Location: LCCOMB_X56_Y18_N16
\U2|cathodes[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[0]~10_combout\ = (Money_Change(6) & ((Money_Change(5) $ (!Money_Change(7))) # (!Money_Change(4)))) # (!Money_Change(6) & ((Money_Change(5)) # ((Money_Change(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[0]~10_combout\);

-- Location: LCCOMB_X56_Y18_N6
\U2|cathodes[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[1]~11_combout\ = (!Money_Change(7) & ((Money_Change(5) & ((Money_Change(4)) # (!Money_Change(6)))) # (!Money_Change(5) & (!Money_Change(6) & Money_Change(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[1]~11_combout\);

-- Location: LCCOMB_X56_Y18_N28
\U2|cathodes[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[2]~12_combout\ = (Money_Change(5) & (((!Money_Change(7) & Money_Change(4))))) # (!Money_Change(5) & ((Money_Change(6) & (!Money_Change(7))) # (!Money_Change(6) & ((Money_Change(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[2]~12_combout\);

-- Location: LCCOMB_X56_Y18_N30
\U2|cathodes[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[3]~13_combout\ = (Money_Change(4) & (Money_Change(5) $ ((!Money_Change(6))))) # (!Money_Change(4) & ((Money_Change(5) & (!Money_Change(6) & Money_Change(7))) # (!Money_Change(5) & (Money_Change(6) & !Money_Change(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[3]~13_combout\);

-- Location: LCCOMB_X56_Y18_N22
\U2|cathodes[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[4]~15_combout\ = (Money_Change(6) & (Money_Change(7) & ((Money_Change(5)) # (!Money_Change(4))))) # (!Money_Change(6) & (Money_Change(5) & (!Money_Change(7) & !Money_Change(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[4]~15_combout\);

-- Location: LCCOMB_X56_Y18_N12
\U2|cathodes[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[5]~16_combout\ = (Money_Change(6) & ((Money_Change(5) $ (!Money_Change(7))) # (!Money_Change(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[5]~16_combout\);

-- Location: LCCOMB_X56_Y18_N20
\U2|cathodes[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cathodes[6]~14_combout\ = (!Money_Change(5) & (!Money_Change(7) & (Money_Change(6) $ (Money_Change(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Money_Change(5),
	datab => Money_Change(6),
	datac => Money_Change(7),
	datad => Money_Change(4),
	combout => \U2|cathodes[6]~14_combout\);

-- Location: LCCOMB_X114_Y24_N4
\U3|cathodes[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[0]~10_combout\ = (money_count(2) & ((money_count(1) $ (!money_count(3))) # (!money_count(0)))) # (!money_count(2) & ((money_count(1)) # ((money_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[0]~10_combout\);

-- Location: LCCOMB_X114_Y24_N14
\U3|cathodes[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[1]~11_combout\ = (!money_count(3) & ((money_count(1) & ((money_count(0)) # (!money_count(2)))) # (!money_count(1) & (!money_count(2) & money_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[1]~11_combout\);

-- Location: LCCOMB_X114_Y24_N28
\U3|cathodes[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[2]~12_combout\ = (money_count(1) & (((money_count(0) & !money_count(3))))) # (!money_count(1) & ((money_count(2) & ((!money_count(3)))) # (!money_count(2) & (money_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[2]~12_combout\);

-- Location: LCCOMB_X114_Y24_N2
\U3|cathodes[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[3]~13_combout\ = (money_count(0) & (money_count(1) $ ((!money_count(2))))) # (!money_count(0) & ((money_count(1) & (!money_count(2) & money_count(3))) # (!money_count(1) & (money_count(2) & !money_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[3]~13_combout\);

-- Location: LCCOMB_X114_Y24_N10
\U3|cathodes[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[4]~15_combout\ = (money_count(2) & (money_count(3) & ((money_count(1)) # (!money_count(0))))) # (!money_count(2) & (money_count(1) & (!money_count(0) & !money_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[4]~15_combout\);

-- Location: LCCOMB_X114_Y24_N12
\U3|cathodes[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[5]~16_combout\ = (money_count(2) & ((money_count(1) $ (!money_count(3))) # (!money_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[5]~16_combout\);

-- Location: LCCOMB_X114_Y24_N24
\U3|cathodes[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|cathodes[6]~14_combout\ = (!money_count(1) & (!money_count(3) & (money_count(2) $ (money_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(1),
	datab => money_count(2),
	datac => money_count(0),
	datad => money_count(3),
	combout => \U3|cathodes[6]~14_combout\);

-- Location: LCCOMB_X114_Y34_N4
\U4|cathodes[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[0]~10_combout\ = (money_count(6) & ((money_count(5) $ (!money_count(7))) # (!money_count(4)))) # (!money_count(6) & ((money_count(5)) # ((money_count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[0]~10_combout\);

-- Location: LCCOMB_X114_Y34_N2
\U4|cathodes[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[1]~11_combout\ = (!money_count(7) & ((money_count(5) & ((money_count(4)) # (!money_count(6)))) # (!money_count(5) & (!money_count(6) & money_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[1]~11_combout\);

-- Location: LCCOMB_X114_Y34_N24
\U4|cathodes[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[2]~12_combout\ = (money_count(5) & (!money_count(7) & ((money_count(4))))) # (!money_count(5) & ((money_count(6) & (!money_count(7))) # (!money_count(6) & ((money_count(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[2]~12_combout\);

-- Location: LCCOMB_X114_Y34_N22
\U4|cathodes[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[3]~13_combout\ = (money_count(4) & (money_count(5) $ (((!money_count(6)))))) # (!money_count(4) & ((money_count(5) & (money_count(7) & !money_count(6))) # (!money_count(5) & (!money_count(7) & money_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[3]~13_combout\);

-- Location: LCCOMB_X114_Y34_N10
\U4|cathodes[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[4]~15_combout\ = (money_count(7) & (money_count(6) & ((money_count(5)) # (!money_count(4))))) # (!money_count(7) & (money_count(5) & (!money_count(6) & !money_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[4]~15_combout\);

-- Location: LCCOMB_X114_Y34_N12
\U4|cathodes[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[5]~16_combout\ = (money_count(6) & ((money_count(5) $ (!money_count(7))) # (!money_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[5]~16_combout\);

-- Location: LCCOMB_X114_Y34_N8
\U4|cathodes[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|cathodes[6]~14_combout\ = (!money_count(5) & (!money_count(7) & (money_count(6) $ (money_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money_count(5),
	datab => money_count(7),
	datac => money_count(6),
	datad => money_count(4),
	combout => \U4|cathodes[6]~14_combout\);

-- Location: LCCOMB_X70_Y69_N30
\LCD|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector0~0_combout\ = (\LCD|state.send~q\ & \LCD|LessThan9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.send~q\,
	datad => \LCD|LessThan9~10_combout\,
	combout => \LCD|Selector0~0_combout\);

-- Location: LCCOMB_X74_Y71_N0
\LCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~0_combout\ = \LCD|clk_count\(0) $ (VCC)
-- \LCD|Add0~1\ = CARRY(\LCD|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(0),
	datad => VCC,
	combout => \LCD|Add0~0_combout\,
	cout => \LCD|Add0~1\);

-- Location: LCCOMB_X73_Y71_N10
\LCD|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector31~0_combout\ = (\LCD|Add0~0_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~0_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector31~0_combout\);

-- Location: FF_X73_Y71_N11
\LCD|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(0));

-- Location: LCCOMB_X74_Y71_N2
\LCD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~2_combout\ = (\LCD|clk_count\(1) & (!\LCD|Add0~1\)) # (!\LCD|clk_count\(1) & ((\LCD|Add0~1\) # (GND)))
-- \LCD|Add0~3\ = CARRY((!\LCD|Add0~1\) # (!\LCD|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(1),
	datad => VCC,
	cin => \LCD|Add0~1\,
	combout => \LCD|Add0~2_combout\,
	cout => \LCD|Add0~3\);

-- Location: LCCOMB_X75_Y70_N22
\LCD|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector16~0_combout\ = (\LCD|Add0~30_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~30_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector16~0_combout\);

-- Location: FF_X75_Y70_N23
\LCD|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(15));

-- Location: LCCOMB_X74_Y71_N26
\LCD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~26_combout\ = (\LCD|clk_count\(13) & (!\LCD|Add0~25\)) # (!\LCD|clk_count\(13) & ((\LCD|Add0~25\) # (GND)))
-- \LCD|Add0~27\ = CARRY((!\LCD|Add0~25\) # (!\LCD|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(13),
	datad => VCC,
	cin => \LCD|Add0~25\,
	combout => \LCD|Add0~26_combout\,
	cout => \LCD|Add0~27\);

-- Location: LCCOMB_X74_Y71_N28
\LCD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~28_combout\ = (\LCD|clk_count\(14) & (\LCD|Add0~27\ $ (GND))) # (!\LCD|clk_count\(14) & (!\LCD|Add0~27\ & VCC))
-- \LCD|Add0~29\ = CARRY((\LCD|clk_count\(14) & !\LCD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(14),
	datad => VCC,
	cin => \LCD|Add0~27\,
	combout => \LCD|Add0~28_combout\,
	cout => \LCD|Add0~29\);

-- Location: LCCOMB_X73_Y71_N20
\LCD|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector17~0_combout\ = (\LCD|Add0~28_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~28_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector17~0_combout\);

-- Location: FF_X73_Y71_N21
\LCD|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(14));

-- Location: LCCOMB_X74_Y71_N30
\LCD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~30_combout\ = (\LCD|clk_count\(15) & (!\LCD|Add0~29\)) # (!\LCD|clk_count\(15) & ((\LCD|Add0~29\) # (GND)))
-- \LCD|Add0~31\ = CARRY((!\LCD|Add0~29\) # (!\LCD|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(15),
	datad => VCC,
	cin => \LCD|Add0~29\,
	combout => \LCD|Add0~30_combout\,
	cout => \LCD|Add0~31\);

-- Location: LCCOMB_X73_Y69_N20
\LCD|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~0_combout\ = (!\LCD|Add0~6_combout\ & (!\LCD|Add0~8_combout\ & (!\LCD|Add0~12_combout\ & !\LCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~6_combout\,
	datab => \LCD|Add0~8_combout\,
	datac => \LCD|Add0~12_combout\,
	datad => \LCD|Add0~10_combout\,
	combout => \LCD|LessThan6~0_combout\);

-- Location: LCCOMB_X73_Y69_N2
\LCD|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~1_combout\ = (!\LCD|Add0~16_combout\ & (!\LCD|Add0~14_combout\ & (!\LCD|Add0~18_combout\ & \LCD|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~16_combout\,
	datab => \LCD|Add0~14_combout\,
	datac => \LCD|Add0~18_combout\,
	datad => \LCD|LessThan6~0_combout\,
	combout => \LCD|LessThan6~1_combout\);

-- Location: LCCOMB_X73_Y69_N30
\LCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan1~0_combout\ = (!\LCD|Add0~26_combout\ & (!\LCD|Add0~22_combout\ & (!\LCD|Add0~24_combout\ & !\LCD|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datab => \LCD|Add0~22_combout\,
	datac => \LCD|Add0~24_combout\,
	datad => \LCD|Add0~20_combout\,
	combout => \LCD|LessThan1~0_combout\);

-- Location: LCCOMB_X74_Y70_N0
\LCD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~32_combout\ = (\LCD|clk_count\(16) & (\LCD|Add0~31\ $ (GND))) # (!\LCD|clk_count\(16) & (!\LCD|Add0~31\ & VCC))
-- \LCD|Add0~33\ = CARRY((\LCD|clk_count\(16) & !\LCD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(16),
	datad => VCC,
	cin => \LCD|Add0~31\,
	combout => \LCD|Add0~32_combout\,
	cout => \LCD|Add0~33\);

-- Location: LCCOMB_X75_Y70_N20
\LCD|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector15~0_combout\ = (\LCD|Add0~32_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~32_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector15~0_combout\);

-- Location: FF_X75_Y70_N21
\LCD|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(16));

-- Location: LCCOMB_X74_Y70_N2
\LCD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~34_combout\ = (\LCD|clk_count\(17) & (!\LCD|Add0~33\)) # (!\LCD|clk_count\(17) & ((\LCD|Add0~33\) # (GND)))
-- \LCD|Add0~35\ = CARRY((!\LCD|Add0~33\) # (!\LCD|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(17),
	datad => VCC,
	cin => \LCD|Add0~33\,
	combout => \LCD|Add0~34_combout\,
	cout => \LCD|Add0~35\);

-- Location: LCCOMB_X73_Y70_N20
\LCD|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~4_combout\ = (\LCD|Add0~34_combout\ & (\LCD|Add0~32_combout\ & ((\LCD|Add0~30_combout\) # (\LCD|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~34_combout\,
	datab => \LCD|Add0~32_combout\,
	datac => \LCD|Add0~30_combout\,
	datad => \LCD|Add0~28_combout\,
	combout => \LCD|LessThan8~4_combout\);

-- Location: LCCOMB_X73_Y69_N0
\LCD|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~2_combout\ = (\LCD|LessThan8~4_combout\ & ((\LCD|Add0~30_combout\) # ((!\LCD|LessThan1~0_combout\) # (!\LCD|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~30_combout\,
	datab => \LCD|LessThan6~1_combout\,
	datac => \LCD|LessThan1~0_combout\,
	datad => \LCD|LessThan8~4_combout\,
	combout => \LCD|LessThan6~2_combout\);

-- Location: LCCOMB_X75_Y70_N24
\LCD|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector3~0_combout\ = (\LCD|Add0~56_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~56_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector3~0_combout\);

-- Location: FF_X75_Y70_N25
\LCD|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(28));

-- Location: LCCOMB_X74_Y70_N16
\LCD|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~48_combout\ = (\LCD|clk_count\(24) & (\LCD|Add0~47\ $ (GND))) # (!\LCD|clk_count\(24) & (!\LCD|Add0~47\ & VCC))
-- \LCD|Add0~49\ = CARRY((\LCD|clk_count\(24) & !\LCD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(24),
	datad => VCC,
	cin => \LCD|Add0~47\,
	combout => \LCD|Add0~48_combout\,
	cout => \LCD|Add0~49\);

-- Location: LCCOMB_X74_Y70_N18
\LCD|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~50_combout\ = (\LCD|clk_count\(25) & (!\LCD|Add0~49\)) # (!\LCD|clk_count\(25) & ((\LCD|Add0~49\) # (GND)))
-- \LCD|Add0~51\ = CARRY((!\LCD|Add0~49\) # (!\LCD|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(25),
	datad => VCC,
	cin => \LCD|Add0~49\,
	combout => \LCD|Add0~50_combout\,
	cout => \LCD|Add0~51\);

-- Location: LCCOMB_X72_Y70_N16
\LCD|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector6~0_combout\ = (\LCD|Add0~50_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~50_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector6~0_combout\);

-- Location: FF_X72_Y70_N17
\LCD|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(25));

-- Location: LCCOMB_X74_Y70_N20
\LCD|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~52_combout\ = (\LCD|clk_count\(26) & (\LCD|Add0~51\ $ (GND))) # (!\LCD|clk_count\(26) & (!\LCD|Add0~51\ & VCC))
-- \LCD|Add0~53\ = CARRY((\LCD|clk_count\(26) & !\LCD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(26),
	datad => VCC,
	cin => \LCD|Add0~51\,
	combout => \LCD|Add0~52_combout\,
	cout => \LCD|Add0~53\);

-- Location: LCCOMB_X72_Y70_N30
\LCD|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~0_combout\ = (\LCD|Add0~52_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~52_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector5~0_combout\);

-- Location: FF_X72_Y70_N31
\LCD|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(26));

-- Location: LCCOMB_X74_Y70_N22
\LCD|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~54_combout\ = (\LCD|clk_count\(27) & (!\LCD|Add0~53\)) # (!\LCD|clk_count\(27) & ((\LCD|Add0~53\) # (GND)))
-- \LCD|Add0~55\ = CARRY((!\LCD|Add0~53\) # (!\LCD|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(27),
	datad => VCC,
	cin => \LCD|Add0~53\,
	combout => \LCD|Add0~54_combout\,
	cout => \LCD|Add0~55\);

-- Location: LCCOMB_X72_Y70_N28
\LCD|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector4~1_combout\ = (\LCD|Add0~54_combout\ & (\LCD|Selector4~0_combout\ & (!\LCD|state.resetline~q\ & \LCD|clk_count[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~54_combout\,
	datab => \LCD|Selector4~0_combout\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|clk_count[11]~3_combout\,
	combout => \LCD|Selector4~1_combout\);

-- Location: FF_X72_Y70_N29
\LCD|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(27));

-- Location: LCCOMB_X74_Y70_N24
\LCD|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~56_combout\ = (\LCD|clk_count\(28) & (\LCD|Add0~55\ $ (GND))) # (!\LCD|clk_count\(28) & (!\LCD|Add0~55\ & VCC))
-- \LCD|Add0~57\ = CARRY((\LCD|clk_count\(28) & !\LCD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(28),
	datad => VCC,
	cin => \LCD|Add0~55\,
	combout => \LCD|Add0~56_combout\,
	cout => \LCD|Add0~57\);

-- Location: LCCOMB_X75_Y70_N12
\LCD|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector2~0_combout\ = (\LCD|Add0~58_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~58_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector2~0_combout\);

-- Location: FF_X75_Y70_N13
\LCD|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(29));

-- Location: LCCOMB_X74_Y70_N26
\LCD|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~58_combout\ = (\LCD|clk_count\(29) & (!\LCD|Add0~57\)) # (!\LCD|clk_count\(29) & ((\LCD|Add0~57\) # (GND)))
-- \LCD|Add0~59\ = CARRY((!\LCD|Add0~57\) # (!\LCD|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(29),
	datad => VCC,
	cin => \LCD|Add0~57\,
	combout => \LCD|Add0~58_combout\,
	cout => \LCD|Add0~59\);

-- Location: LCCOMB_X73_Y70_N8
\LCD|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~20_combout\ = (!\LCD|Add0~56_combout\ & !\LCD|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~56_combout\,
	datad => \LCD|Add0~58_combout\,
	combout => \LCD|state~20_combout\);

-- Location: LCCOMB_X73_Y70_N30
\LCD|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~0_combout\ = (!\LCD|Add0~38_combout\ & (!\LCD|Add0~42_combout\ & (!\LCD|Add0~40_combout\ & !\LCD|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~38_combout\,
	datab => \LCD|Add0~42_combout\,
	datac => \LCD|Add0~40_combout\,
	datad => \LCD|Add0~36_combout\,
	combout => \LCD|LessThan7~0_combout\);

-- Location: LCCOMB_X73_Y70_N0
\LCD|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~1_combout\ = (!\LCD|Add0~50_combout\ & (!\LCD|Add0~46_combout\ & (!\LCD|Add0~44_combout\ & !\LCD|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~50_combout\,
	datab => \LCD|Add0~46_combout\,
	datac => \LCD|Add0~44_combout\,
	datad => \LCD|Add0~48_combout\,
	combout => \LCD|LessThan7~1_combout\);

-- Location: LCCOMB_X73_Y70_N14
\LCD|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~2_combout\ = (!\LCD|Add0~52_combout\ & (!\LCD|Add0~54_combout\ & (\LCD|LessThan7~0_combout\ & \LCD|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~52_combout\,
	datab => \LCD|Add0~54_combout\,
	datac => \LCD|LessThan7~0_combout\,
	datad => \LCD|LessThan7~1_combout\,
	combout => \LCD|LessThan7~2_combout\);

-- Location: LCCOMB_X74_Y69_N20
\LCD|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~23_combout\ = (\LCD|LessThan6~2_combout\) # (((\LCD|Add0~60_combout\) # (!\LCD|LessThan7~2_combout\)) # (!\LCD|state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan6~2_combout\,
	datab => \LCD|state~20_combout\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|LessThan7~2_combout\,
	combout => \LCD|state~23_combout\);

-- Location: LCCOMB_X73_Y69_N4
\LCD|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~2_combout\ = (\LCD|Add0~12_combout\ & \LCD|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~12_combout\,
	datad => \LCD|Add0~10_combout\,
	combout => \LCD|LessThan8~2_combout\);

-- Location: LCCOMB_X73_Y69_N10
\LCD|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~3_combout\ = (\LCD|Add0~18_combout\ & \LCD|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~18_combout\,
	datad => \LCD|Add0~16_combout\,
	combout => \LCD|LessThan8~3_combout\);

-- Location: LCCOMB_X73_Y69_N24
\LCD|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~3_combout\ = (((!\LCD|LessThan8~3_combout\) # (!\LCD|LessThan8~2_combout\)) # (!\LCD|Add0~14_combout\)) # (!\LCD|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~8_combout\,
	datab => \LCD|Add0~14_combout\,
	datac => \LCD|LessThan8~2_combout\,
	datad => \LCD|LessThan8~3_combout\,
	combout => \LCD|LessThan7~3_combout\);

-- Location: LCCOMB_X73_Y69_N16
\LCD|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~4_combout\ = (!\LCD|Add0~30_combout\ & (((\LCD|LessThan1~0_combout\ & \LCD|LessThan7~3_combout\)) # (!\LCD|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~30_combout\,
	datab => \LCD|Add0~28_combout\,
	datac => \LCD|LessThan1~0_combout\,
	datad => \LCD|LessThan7~3_combout\,
	combout => \LCD|LessThan7~4_combout\);

-- Location: LCCOMB_X73_Y69_N26
\LCD|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~5_combout\ = ((\LCD|LessThan7~4_combout\) # (!\LCD|Add0~32_combout\)) # (!\LCD|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~34_combout\,
	datac => \LCD|Add0~32_combout\,
	datad => \LCD|LessThan7~4_combout\,
	combout => \LCD|LessThan7~5_combout\);

-- Location: LCCOMB_X76_Y69_N14
\LCD|LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan7~6_combout\ = (!\LCD|Add0~60_combout\ & (\LCD|state~20_combout\ & (\LCD|LessThan7~2_combout\ & \LCD|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~60_combout\,
	datab => \LCD|state~20_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|LessThan7~5_combout\,
	combout => \LCD|LessThan7~6_combout\);

-- Location: LCCOMB_X76_Y69_N16
\LCD|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~0_combout\ = (!\LCD|state.power_up~q\ & \LCD|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|state.power_up~q\,
	datad => \LCD|LessThan0~4_combout\,
	combout => \LCD|Selector38~0_combout\);

-- Location: LCCOMB_X72_Y69_N30
\LCD|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector0~1_combout\ = (\LCD|Add0~62_combout\ & ((\LCD|Selector0~0_combout\) # ((\LCD|state.initialize~q\) # (\LCD|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector0~0_combout\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Add0~62_combout\,
	datad => \LCD|Selector38~0_combout\,
	combout => \LCD|Selector0~1_combout\);

-- Location: FF_X72_Y69_N31
\LCD|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(31));

-- Location: LCCOMB_X74_Y70_N28
\LCD|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~60_combout\ = (\LCD|clk_count\(30) & (\LCD|Add0~59\ $ (GND))) # (!\LCD|clk_count\(30) & (!\LCD|Add0~59\ & VCC))
-- \LCD|Add0~61\ = CARRY((\LCD|clk_count\(30) & !\LCD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(30),
	datad => VCC,
	cin => \LCD|Add0~59\,
	combout => \LCD|Add0~60_combout\,
	cout => \LCD|Add0~61\);

-- Location: LCCOMB_X74_Y70_N30
\LCD|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~62_combout\ = \LCD|Add0~61\ $ (\LCD|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|clk_count\(31),
	cin => \LCD|Add0~61\,
	combout => \LCD|Add0~62_combout\);

-- Location: LCCOMB_X73_Y69_N8
\LCD|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~5_combout\ = (!\LCD|Add0~20_combout\ & (((!\LCD|Add0~14_combout\ & !\LCD|LessThan8~2_combout\)) # (!\LCD|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~20_combout\,
	datab => \LCD|Add0~14_combout\,
	datac => \LCD|LessThan8~2_combout\,
	datad => \LCD|LessThan8~3_combout\,
	combout => \LCD|LessThan8~5_combout\);

-- Location: LCCOMB_X74_Y69_N28
\LCD|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~2_combout\ = (\LCD|Add0~24_combout\ & \LCD|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~24_combout\,
	datad => \LCD|Add0~22_combout\,
	combout => \LCD|LessThan3~2_combout\);

-- Location: LCCOMB_X73_Y69_N6
\LCD|LessThan8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~6_combout\ = (!\LCD|Add0~26_combout\ & (!\LCD|Add0~30_combout\ & ((\LCD|LessThan8~5_combout\) # (!\LCD|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datab => \LCD|Add0~30_combout\,
	datac => \LCD|LessThan8~5_combout\,
	datad => \LCD|LessThan3~2_combout\,
	combout => \LCD|LessThan8~6_combout\);

-- Location: LCCOMB_X75_Y69_N10
\LCD|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan8~7_combout\ = (!\LCD|Add0~56_combout\ & (!\LCD|Add0~58_combout\ & (!\LCD|Add0~60_combout\ & \LCD|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~56_combout\,
	datab => \LCD|Add0~58_combout\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|LessThan7~2_combout\,
	combout => \LCD|LessThan8~7_combout\);

-- Location: LCCOMB_X76_Y69_N4
\LCD|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector33~0_combout\ = (\LCD|Add0~62_combout\) # ((\LCD|LessThan8~7_combout\ & ((\LCD|LessThan8~6_combout\) # (!\LCD|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~62_combout\,
	datab => \LCD|LessThan8~6_combout\,
	datac => \LCD|LessThan8~4_combout\,
	datad => \LCD|LessThan8~7_combout\,
	combout => \LCD|Selector33~0_combout\);

-- Location: LCCOMB_X74_Y69_N6
\LCD|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~3_combout\ = (!\LCD|Add0~30_combout\ & (!\LCD|Add0~34_combout\ & (!\LCD|Add0~28_combout\ & !\LCD|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~30_combout\,
	datab => \LCD|Add0~34_combout\,
	datac => \LCD|Add0~28_combout\,
	datad => \LCD|Add0~32_combout\,
	combout => \LCD|LessThan3~3_combout\);

-- Location: LCCOMB_X73_Y71_N2
\LCD|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~5_combout\ = ((!\LCD|Add0~10_combout\ & ((!\LCD|Add0~8_combout\) # (!\LCD|Add0~6_combout\)))) # (!\LCD|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~6_combout\,
	datab => \LCD|Add0~8_combout\,
	datac => \LCD|Add0~12_combout\,
	datad => \LCD|Add0~10_combout\,
	combout => \LCD|LessThan3~5_combout\);

-- Location: LCCOMB_X74_Y69_N12
\LCD|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~4_combout\ = ((!\LCD|Add0~20_combout\ & ((!\LCD|Add0~18_combout\) # (!\LCD|Add0~16_combout\)))) # (!\LCD|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~16_combout\,
	datab => \LCD|Add0~20_combout\,
	datac => \LCD|Add0~18_combout\,
	datad => \LCD|LessThan3~2_combout\,
	combout => \LCD|LessThan3~4_combout\);

-- Location: LCCOMB_X74_Y69_N14
\LCD|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~6_combout\ = (\LCD|LessThan3~4_combout\) # ((!\LCD|Add0~14_combout\ & (!\LCD|Add0~20_combout\ & \LCD|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~14_combout\,
	datab => \LCD|Add0~20_combout\,
	datac => \LCD|LessThan3~5_combout\,
	datad => \LCD|LessThan3~4_combout\,
	combout => \LCD|LessThan3~6_combout\);

-- Location: LCCOMB_X75_Y69_N0
\LCD|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~21_combout\ = (!\LCD|Add0~26_combout\ & (\LCD|LessThan3~3_combout\ & (\LCD|LessThan7~0_combout\ & \LCD|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datab => \LCD|LessThan3~3_combout\,
	datac => \LCD|LessThan7~0_combout\,
	datad => \LCD|LessThan3~6_combout\,
	combout => \LCD|state~21_combout\);

-- Location: LCCOMB_X75_Y69_N2
\LCD|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~22_combout\ = (!\LCD|Add0~52_combout\ & (!\LCD|Add0~54_combout\ & (\LCD|LessThan7~1_combout\ & \LCD|state~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~52_combout\,
	datab => \LCD|Add0~54_combout\,
	datac => \LCD|LessThan7~1_combout\,
	datad => \LCD|state~21_combout\,
	combout => \LCD|state~22_combout\);

-- Location: LCCOMB_X75_Y69_N30
\LCD|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~29_combout\ = (\LCD|Add0~60_combout\) # ((\LCD|Add0~56_combout\) # ((\LCD|Add0~58_combout\) # (!\LCD|state~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~60_combout\,
	datab => \LCD|Add0~56_combout\,
	datac => \LCD|Add0~58_combout\,
	datad => \LCD|state~22_combout\,
	combout => \LCD|state~29_combout\);

-- Location: LCCOMB_X76_Y69_N6
\LCD|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector33~1_combout\ = (\LCD|state~23_combout\ & (!\LCD|LessThan7~6_combout\ & (!\LCD|Selector33~0_combout\ & \LCD|state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state~23_combout\,
	datab => \LCD|LessThan7~6_combout\,
	datac => \LCD|Selector33~0_combout\,
	datad => \LCD|state~29_combout\,
	combout => \LCD|Selector33~1_combout\);

-- Location: LCCOMB_X76_Y69_N0
\LCD|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector33~2_combout\ = (\LCD|state.power_up~q\ & (((\LCD|state.initialize~q\ & !\LCD|Selector33~1_combout\)))) # (!\LCD|state.power_up~q\ & (((\LCD|state.initialize~q\ & !\LCD|Selector33~1_combout\)) # (!\LCD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.power_up~q\,
	datab => \LCD|LessThan0~4_combout\,
	datac => \LCD|state.initialize~q\,
	datad => \LCD|Selector33~1_combout\,
	combout => \LCD|Selector33~2_combout\);

-- Location: FF_X76_Y69_N1
\LCD|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector33~2_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.initialize~q\);

-- Location: LCCOMB_X73_Y70_N6
\LCD|clk_count[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count[11]~0_combout\ = (\LCD|state~20_combout\ & (\LCD|LessThan7~2_combout\ & ((\LCD|LessThan7~4_combout\) # (!\LCD|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan7~4_combout\,
	datab => \LCD|state~20_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|LessThan6~2_combout\,
	combout => \LCD|clk_count[11]~0_combout\);

-- Location: LCCOMB_X73_Y70_N4
\LCD|clk_count[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count[11]~1_combout\ = (\LCD|state.initialize~q\ & ((\LCD|Add0~62_combout\) # ((!\LCD|Add0~60_combout\ & \LCD|clk_count[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.initialize~q\,
	datab => \LCD|Add0~60_combout\,
	datac => \LCD|Add0~62_combout\,
	datad => \LCD|clk_count[11]~0_combout\,
	combout => \LCD|clk_count[11]~1_combout\);

-- Location: LCCOMB_X73_Y70_N18
\LCD|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~0_combout\ = ((\LCD|LessThan8~4_combout\ & !\LCD|LessThan8~6_combout\)) # (!\LCD|LessThan7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|LessThan8~4_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|LessThan8~6_combout\,
	combout => \LCD|Selector46~0_combout\);

-- Location: LCCOMB_X73_Y70_N24
\LCD|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~1_combout\ = (!\LCD|Add0~62_combout\ & ((\LCD|Add0~60_combout\) # ((\LCD|Selector46~0_combout\) # (!\LCD|state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~62_combout\,
	datab => \LCD|Add0~60_combout\,
	datac => \LCD|state~20_combout\,
	datad => \LCD|Selector46~0_combout\,
	combout => \LCD|Selector46~1_combout\);

-- Location: LCCOMB_X73_Y70_N10
\LCD|clk_count[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count[11]~2_combout\ = (\LCD|state.send~q\ & (!\LCD|LessThan9~10_combout\)) # (!\LCD|state.send~q\ & ((\LCD|Selector46~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|LessThan9~10_combout\,
	datad => \LCD|Selector46~1_combout\,
	combout => \LCD|clk_count[11]~2_combout\);

-- Location: LCCOMB_X73_Y70_N16
\LCD|clk_count[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count[11]~3_combout\ = (\LCD|clk_count[11]~1_combout\) # ((\LCD|state.power_up~q\ & ((!\LCD|clk_count[11]~2_combout\))) # (!\LCD|state.power_up~q\ & (\LCD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.power_up~q\,
	datab => \LCD|LessThan0~4_combout\,
	datac => \LCD|clk_count[11]~1_combout\,
	datad => \LCD|clk_count[11]~2_combout\,
	combout => \LCD|clk_count[11]~3_combout\);

-- Location: LCCOMB_X73_Y70_N2
\LCD|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector30~0_combout\ = (!\LCD|state.resetline~q\ & (\LCD|Selector4~0_combout\ & (\LCD|Add0~2_combout\ & \LCD|clk_count[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.resetline~q\,
	datab => \LCD|Selector4~0_combout\,
	datac => \LCD|Add0~2_combout\,
	datad => \LCD|clk_count[11]~3_combout\,
	combout => \LCD|Selector30~0_combout\);

-- Location: FF_X73_Y70_N3
\LCD|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(1));

-- Location: LCCOMB_X74_Y71_N4
\LCD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~4_combout\ = (\LCD|clk_count\(2) & (\LCD|Add0~3\ $ (GND))) # (!\LCD|clk_count\(2) & (!\LCD|Add0~3\ & VCC))
-- \LCD|Add0~5\ = CARRY((\LCD|clk_count\(2) & !\LCD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(2),
	datad => VCC,
	cin => \LCD|Add0~3\,
	combout => \LCD|Add0~4_combout\,
	cout => \LCD|Add0~5\);

-- Location: LCCOMB_X73_Y71_N16
\LCD|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector29~0_combout\ = (\LCD|Add0~4_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~4_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector29~0_combout\);

-- Location: FF_X73_Y71_N17
\LCD|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(2));

-- Location: LCCOMB_X74_Y71_N6
\LCD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~6_combout\ = (\LCD|clk_count\(3) & (!\LCD|Add0~5\)) # (!\LCD|clk_count\(3) & ((\LCD|Add0~5\) # (GND)))
-- \LCD|Add0~7\ = CARRY((!\LCD|Add0~5\) # (!\LCD|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(3),
	datad => VCC,
	cin => \LCD|Add0~5\,
	combout => \LCD|Add0~6_combout\,
	cout => \LCD|Add0~7\);

-- Location: LCCOMB_X73_Y71_N14
\LCD|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector28~0_combout\ = (\LCD|Add0~6_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~6_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector28~0_combout\);

-- Location: FF_X73_Y71_N15
\LCD|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(3));

-- Location: LCCOMB_X74_Y71_N8
\LCD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~8_combout\ = (\LCD|clk_count\(4) & (\LCD|Add0~7\ $ (GND))) # (!\LCD|clk_count\(4) & (!\LCD|Add0~7\ & VCC))
-- \LCD|Add0~9\ = CARRY((\LCD|clk_count\(4) & !\LCD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(4),
	datad => VCC,
	cin => \LCD|Add0~7\,
	combout => \LCD|Add0~8_combout\,
	cout => \LCD|Add0~9\);

-- Location: LCCOMB_X73_Y71_N12
\LCD|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector27~0_combout\ = (\LCD|Add0~8_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~8_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector27~0_combout\);

-- Location: FF_X73_Y71_N13
\LCD|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(4));

-- Location: LCCOMB_X74_Y71_N10
\LCD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~10_combout\ = (\LCD|clk_count\(5) & (!\LCD|Add0~9\)) # (!\LCD|clk_count\(5) & ((\LCD|Add0~9\) # (GND)))
-- \LCD|Add0~11\ = CARRY((!\LCD|Add0~9\) # (!\LCD|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(5),
	datad => VCC,
	cin => \LCD|Add0~9\,
	combout => \LCD|Add0~10_combout\,
	cout => \LCD|Add0~11\);

-- Location: LCCOMB_X73_Y71_N6
\LCD|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector26~0_combout\ = (\LCD|Add0~10_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~10_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector26~0_combout\);

-- Location: FF_X73_Y71_N7
\LCD|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(5));

-- Location: LCCOMB_X74_Y71_N12
\LCD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~12_combout\ = (\LCD|clk_count\(6) & (\LCD|Add0~11\ $ (GND))) # (!\LCD|clk_count\(6) & (!\LCD|Add0~11\ & VCC))
-- \LCD|Add0~13\ = CARRY((\LCD|clk_count\(6) & !\LCD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(6),
	datad => VCC,
	cin => \LCD|Add0~11\,
	combout => \LCD|Add0~12_combout\,
	cout => \LCD|Add0~13\);

-- Location: LCCOMB_X73_Y71_N8
\LCD|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector25~0_combout\ = (\LCD|Add0~12_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~12_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector25~0_combout\);

-- Location: FF_X73_Y71_N9
\LCD|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(6));

-- Location: LCCOMB_X74_Y71_N14
\LCD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~14_combout\ = (\LCD|clk_count\(7) & (!\LCD|Add0~13\)) # (!\LCD|clk_count\(7) & ((\LCD|Add0~13\) # (GND)))
-- \LCD|Add0~15\ = CARRY((!\LCD|Add0~13\) # (!\LCD|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(7),
	datad => VCC,
	cin => \LCD|Add0~13\,
	combout => \LCD|Add0~14_combout\,
	cout => \LCD|Add0~15\);

-- Location: LCCOMB_X75_Y71_N8
\LCD|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector24~0_combout\ = (\LCD|Add0~14_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~14_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector24~0_combout\);

-- Location: FF_X75_Y71_N9
\LCD|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(7));

-- Location: LCCOMB_X74_Y71_N16
\LCD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~16_combout\ = (\LCD|clk_count\(8) & (\LCD|Add0~15\ $ (GND))) # (!\LCD|clk_count\(8) & (!\LCD|Add0~15\ & VCC))
-- \LCD|Add0~17\ = CARRY((\LCD|clk_count\(8) & !\LCD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(8),
	datad => VCC,
	cin => \LCD|Add0~15\,
	combout => \LCD|Add0~16_combout\,
	cout => \LCD|Add0~17\);

-- Location: LCCOMB_X75_Y71_N18
\LCD|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector23~0_combout\ = (\LCD|Add0~16_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~16_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector23~0_combout\);

-- Location: FF_X75_Y71_N19
\LCD|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(8));

-- Location: LCCOMB_X74_Y71_N18
\LCD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~18_combout\ = (\LCD|clk_count\(9) & (!\LCD|Add0~17\)) # (!\LCD|clk_count\(9) & ((\LCD|Add0~17\) # (GND)))
-- \LCD|Add0~19\ = CARRY((!\LCD|Add0~17\) # (!\LCD|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(9),
	datad => VCC,
	cin => \LCD|Add0~17\,
	combout => \LCD|Add0~18_combout\,
	cout => \LCD|Add0~19\);

-- Location: LCCOMB_X75_Y71_N16
\LCD|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector22~0_combout\ = (\LCD|Add0~18_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~18_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector22~0_combout\);

-- Location: FF_X75_Y71_N17
\LCD|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(9));

-- Location: LCCOMB_X74_Y71_N20
\LCD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~20_combout\ = (\LCD|clk_count\(10) & (\LCD|Add0~19\ $ (GND))) # (!\LCD|clk_count\(10) & (!\LCD|Add0~19\ & VCC))
-- \LCD|Add0~21\ = CARRY((\LCD|clk_count\(10) & !\LCD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(10),
	datad => VCC,
	cin => \LCD|Add0~19\,
	combout => \LCD|Add0~20_combout\,
	cout => \LCD|Add0~21\);

-- Location: LCCOMB_X73_Y71_N26
\LCD|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector21~0_combout\ = (\LCD|Add0~20_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~20_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector21~0_combout\);

-- Location: FF_X73_Y71_N27
\LCD|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(10));

-- Location: LCCOMB_X74_Y71_N22
\LCD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~22_combout\ = (\LCD|clk_count\(11) & (!\LCD|Add0~21\)) # (!\LCD|clk_count\(11) & ((\LCD|Add0~21\) # (GND)))
-- \LCD|Add0~23\ = CARRY((!\LCD|Add0~21\) # (!\LCD|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(11),
	datad => VCC,
	cin => \LCD|Add0~21\,
	combout => \LCD|Add0~22_combout\,
	cout => \LCD|Add0~23\);

-- Location: LCCOMB_X75_Y71_N6
\LCD|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector20~0_combout\ = (\LCD|Add0~22_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~22_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector20~0_combout\);

-- Location: FF_X75_Y71_N7
\LCD|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(11));

-- Location: LCCOMB_X74_Y71_N24
\LCD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~24_combout\ = (\LCD|clk_count\(12) & (\LCD|Add0~23\ $ (GND))) # (!\LCD|clk_count\(12) & (!\LCD|Add0~23\ & VCC))
-- \LCD|Add0~25\ = CARRY((\LCD|clk_count\(12) & !\LCD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(12),
	datad => VCC,
	cin => \LCD|Add0~23\,
	combout => \LCD|Add0~24_combout\,
	cout => \LCD|Add0~25\);

-- Location: LCCOMB_X75_Y71_N4
\LCD|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector19~0_combout\ = (\LCD|Add0~24_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~24_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector19~0_combout\);

-- Location: FF_X75_Y71_N5
\LCD|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(12));

-- Location: LCCOMB_X73_Y70_N12
\LCD|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector18~0_combout\ = (\LCD|Add0~26_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datac => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector18~0_combout\);

-- Location: FF_X73_Y70_N13
\LCD|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(13));

-- Location: LCCOMB_X75_Y71_N12
\LCD|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan10~0_combout\ = (!\LCD|clk_count\(11) & (!\LCD|clk_count\(9) & (!\LCD|clk_count\(12) & !\LCD|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(11),
	datab => \LCD|clk_count\(9),
	datac => \LCD|clk_count\(12),
	datad => \LCD|clk_count\(10),
	combout => \LCD|LessThan10~0_combout\);

-- Location: LCCOMB_X73_Y71_N24
\LCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~0_combout\ = (!\LCD|clk_count\(5) & !\LCD|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(5),
	datac => \LCD|clk_count\(6),
	combout => \LCD|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y71_N30
\LCD|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~2_combout\ = (\LCD|LessThan10~0_combout\ & (((!\LCD|clk_count\(7) & \LCD|LessThan0~0_combout\)) # (!\LCD|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan10~0_combout\,
	datab => \LCD|clk_count\(8),
	datac => \LCD|clk_count\(7),
	datad => \LCD|LessThan0~0_combout\,
	combout => \LCD|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y70_N16
\LCD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~1_combout\ = (((!\LCD|clk_count\(18)) # (!\LCD|clk_count\(17))) # (!\LCD|clk_count\(16))) # (!\LCD|clk_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(15),
	datab => \LCD|clk_count\(16),
	datac => \LCD|clk_count\(17),
	datad => \LCD|clk_count\(18),
	combout => \LCD|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y70_N30
\LCD|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~3_combout\ = (\LCD|LessThan0~1_combout\) # ((!\LCD|clk_count\(14) & ((\LCD|LessThan0~2_combout\) # (!\LCD|clk_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(13),
	datab => \LCD|clk_count\(14),
	datac => \LCD|LessThan0~2_combout\,
	datad => \LCD|LessThan0~1_combout\,
	combout => \LCD|LessThan0~3_combout\);

-- Location: LCCOMB_X75_Y70_N28
\LCD|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~8_combout\ = (!\LCD|clk_count\(29) & (!\LCD|clk_count\(27) & (!\LCD|clk_count\(28) & !\LCD|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(29),
	datab => \LCD|clk_count\(27),
	datac => \LCD|clk_count\(28),
	datad => \LCD|clk_count\(30),
	combout => \LCD|LessThan9~8_combout\);

-- Location: LCCOMB_X75_Y70_N4
\LCD|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~4_combout\ = (\LCD|clk_count\(31)) # ((\LCD|LessThan0~3_combout\ & (\LCD|LessThan9~2_combout\ & \LCD|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan0~3_combout\,
	datab => \LCD|clk_count\(31),
	datac => \LCD|LessThan9~2_combout\,
	datad => \LCD|LessThan9~8_combout\,
	combout => \LCD|LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y69_N18
\LCD|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~24_combout\ = (\rst~input_o\ & ((\LCD|state.power_up~q\) # (!\LCD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \LCD|state.power_up~q\,
	datad => \LCD|LessThan0~4_combout\,
	combout => \LCD|state~24_combout\);

-- Location: FF_X76_Y69_N19
\LCD|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.power_up~q\);

-- Location: LCCOMB_X76_Y69_N20
\LCD|lcd_data[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|lcd_data[5]~0_combout\ = (\LCD|state.power_up~q\ & (!\LCD|state.initialize~q\ & !\LCD|state.resetline~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.power_up~q\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|state.resetline~q\,
	combout => \LCD|lcd_data[5]~0_combout\);

-- Location: LCCOMB_X70_Y69_N22
\LCD|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector52~0_combout\ = (\LCD|state.send~q\ & !\LCD|LessThan9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.send~q\,
	datad => \LCD|LessThan9~10_combout\,
	combout => \LCD|Selector52~0_combout\);

-- Location: LCCOMB_X70_Y69_N24
\LCD|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector52~1_combout\ = (\LCD|state.line1~q\) # ((\LCD|Selector52~0_combout\ & (\LCD|Equal0~1_combout\ $ (!\LCD|line~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|line~q\,
	datac => \LCD|Selector52~0_combout\,
	datad => \LCD|state.line1~q\,
	combout => \LCD|Selector52~1_combout\);

-- Location: LCCOMB_X70_Y69_N28
\LCD|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector52~2_combout\ = (!\LCD|Selector52~1_combout\ & ((\LCD|line~q\) # ((!\LCD|Selector0~0_combout\ & \LCD|lcd_data[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector0~0_combout\,
	datab => \LCD|lcd_data[5]~0_combout\,
	datac => \LCD|line~q\,
	datad => \LCD|Selector52~1_combout\,
	combout => \LCD|Selector52~2_combout\);

-- Location: FF_X70_Y69_N29
\LCD|line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector52~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|line~q\);

-- Location: LCCOMB_X70_Y69_N20
\LCD|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~25_combout\ = (!\LCD|Equal0~1_combout\ & (!\LCD|line~q\ & (\LCD|Selector52~0_combout\ & \rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|line~q\,
	datac => \LCD|Selector52~0_combout\,
	datad => \rst~input_o\,
	combout => \LCD|state~25_combout\);

-- Location: FF_X70_Y69_N21
\LCD|state.line1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.line1~q\);

-- Location: LCCOMB_X70_Y69_N2
\LCD|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~26_combout\ = (!\LCD|Equal0~1_combout\ & (\LCD|line~q\ & (\LCD|Selector52~0_combout\ & \rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|line~q\,
	datac => \LCD|Selector52~0_combout\,
	datad => \rst~input_o\,
	combout => \LCD|state~26_combout\);

-- Location: FF_X70_Y69_N3
\LCD|state.line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.line2~q\);

-- Location: LCCOMB_X72_Y70_N20
\LCD|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector4~0_combout\ = (!\LCD|state.line1~q\ & !\LCD|state.line2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|state.line1~q\,
	datad => \LCD|state.line2~q\,
	combout => \LCD|Selector4~0_combout\);

-- Location: LCCOMB_X72_Y70_N6
\LCD|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector14~0_combout\ = (\LCD|Selector4~0_combout\ & (\LCD|Add0~34_combout\ & (!\LCD|state.resetline~q\ & \LCD|clk_count[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector4~0_combout\,
	datab => \LCD|Add0~34_combout\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|clk_count[11]~3_combout\,
	combout => \LCD|Selector14~0_combout\);

-- Location: FF_X72_Y70_N7
\LCD|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(17));

-- Location: LCCOMB_X74_Y70_N4
\LCD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~36_combout\ = (\LCD|clk_count\(18) & (\LCD|Add0~35\ $ (GND))) # (!\LCD|clk_count\(18) & (!\LCD|Add0~35\ & VCC))
-- \LCD|Add0~37\ = CARRY((\LCD|clk_count\(18) & !\LCD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(18),
	datad => VCC,
	cin => \LCD|Add0~35\,
	combout => \LCD|Add0~36_combout\,
	cout => \LCD|Add0~37\);

-- Location: LCCOMB_X75_Y70_N18
\LCD|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector13~0_combout\ = (\LCD|Add0~36_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~36_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector13~0_combout\);

-- Location: FF_X75_Y70_N19
\LCD|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(18));

-- Location: LCCOMB_X74_Y70_N6
\LCD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~38_combout\ = (\LCD|clk_count\(19) & (!\LCD|Add0~37\)) # (!\LCD|clk_count\(19) & ((\LCD|Add0~37\) # (GND)))
-- \LCD|Add0~39\ = CARRY((!\LCD|Add0~37\) # (!\LCD|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(19),
	datad => VCC,
	cin => \LCD|Add0~37\,
	combout => \LCD|Add0~38_combout\,
	cout => \LCD|Add0~39\);

-- Location: LCCOMB_X72_Y70_N4
\LCD|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector12~0_combout\ = (\LCD|Add0~38_combout\ & (\LCD|Selector4~0_combout\ & (!\LCD|state.resetline~q\ & \LCD|clk_count[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~38_combout\,
	datab => \LCD|Selector4~0_combout\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|clk_count[11]~3_combout\,
	combout => \LCD|Selector12~0_combout\);

-- Location: FF_X72_Y70_N5
\LCD|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(19));

-- Location: LCCOMB_X74_Y70_N8
\LCD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~40_combout\ = (\LCD|clk_count\(20) & (\LCD|Add0~39\ $ (GND))) # (!\LCD|clk_count\(20) & (!\LCD|Add0~39\ & VCC))
-- \LCD|Add0~41\ = CARRY((\LCD|clk_count\(20) & !\LCD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(20),
	datad => VCC,
	cin => \LCD|Add0~39\,
	combout => \LCD|Add0~40_combout\,
	cout => \LCD|Add0~41\);

-- Location: LCCOMB_X73_Y70_N26
\LCD|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector11~0_combout\ = (\LCD|Add0~40_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~40_combout\,
	datac => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector11~0_combout\);

-- Location: FF_X73_Y70_N27
\LCD|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(20));

-- Location: LCCOMB_X74_Y70_N10
\LCD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~42_combout\ = (\LCD|clk_count\(21) & (!\LCD|Add0~41\)) # (!\LCD|clk_count\(21) & ((\LCD|Add0~41\) # (GND)))
-- \LCD|Add0~43\ = CARRY((!\LCD|Add0~41\) # (!\LCD|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(21),
	datad => VCC,
	cin => \LCD|Add0~41\,
	combout => \LCD|Add0~42_combout\,
	cout => \LCD|Add0~43\);

-- Location: LCCOMB_X72_Y70_N18
\LCD|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector10~0_combout\ = (\LCD|Add0~42_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~42_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector10~0_combout\);

-- Location: FF_X72_Y70_N19
\LCD|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(21));

-- Location: LCCOMB_X74_Y70_N12
\LCD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~44_combout\ = (\LCD|clk_count\(22) & (\LCD|Add0~43\ $ (GND))) # (!\LCD|clk_count\(22) & (!\LCD|Add0~43\ & VCC))
-- \LCD|Add0~45\ = CARRY((\LCD|clk_count\(22) & !\LCD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(22),
	datad => VCC,
	cin => \LCD|Add0~43\,
	combout => \LCD|Add0~44_combout\,
	cout => \LCD|Add0~45\);

-- Location: LCCOMB_X72_Y70_N8
\LCD|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector9~0_combout\ = (\LCD|Add0~44_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~44_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector9~0_combout\);

-- Location: FF_X72_Y70_N9
\LCD|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(22));

-- Location: LCCOMB_X74_Y70_N14
\LCD|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add0~46_combout\ = (\LCD|clk_count\(23) & (!\LCD|Add0~45\)) # (!\LCD|clk_count\(23) & ((\LCD|Add0~45\) # (GND)))
-- \LCD|Add0~47\ = CARRY((!\LCD|Add0~45\) # (!\LCD|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(23),
	datad => VCC,
	cin => \LCD|Add0~45\,
	combout => \LCD|Add0~46_combout\,
	cout => \LCD|Add0~47\);

-- Location: LCCOMB_X73_Y70_N28
\LCD|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~0_combout\ = (\LCD|Add0~46_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~46_combout\,
	datac => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector8~0_combout\);

-- Location: FF_X73_Y70_N29
\LCD|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(23));

-- Location: LCCOMB_X72_Y70_N22
\LCD|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector7~0_combout\ = (\LCD|Add0~48_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~48_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector7~0_combout\);

-- Location: FF_X72_Y70_N23
\LCD|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(24));

-- Location: LCCOMB_X72_Y70_N26
\LCD|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~1_combout\ = (!\LCD|clk_count\(24) & (!\LCD|clk_count\(25) & (!\LCD|clk_count\(26) & !\LCD|clk_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(24),
	datab => \LCD|clk_count\(25),
	datac => \LCD|clk_count\(26),
	datad => \LCD|clk_count\(23),
	combout => \LCD|LessThan9~1_combout\);

-- Location: LCCOMB_X72_Y70_N12
\LCD|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~0_combout\ = (!\LCD|clk_count\(22) & (!\LCD|clk_count\(21) & (!\LCD|clk_count\(19) & !\LCD|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(22),
	datab => \LCD|clk_count\(21),
	datac => \LCD|clk_count\(19),
	datad => \LCD|clk_count\(20),
	combout => \LCD|LessThan9~0_combout\);

-- Location: LCCOMB_X72_Y70_N24
\LCD|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~2_combout\ = (\LCD|LessThan9~1_combout\ & \LCD|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|LessThan9~1_combout\,
	datad => \LCD|LessThan9~0_combout\,
	combout => \LCD|LessThan9~2_combout\);

-- Location: LCCOMB_X75_Y70_N8
\LCD|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~3_combout\ = (!\LCD|clk_count\(15) & (!\LCD|clk_count\(16) & (!\LCD|clk_count\(14) & !\LCD|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(15),
	datab => \LCD|clk_count\(16),
	datac => \LCD|clk_count\(14),
	datad => \LCD|clk_count\(13),
	combout => \LCD|LessThan9~3_combout\);

-- Location: LCCOMB_X75_Y70_N10
\LCD|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~4_combout\ = (\LCD|LessThan9~2_combout\ & (!\LCD|clk_count\(18) & (!\LCD|clk_count\(17) & \LCD|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan9~2_combout\,
	datab => \LCD|clk_count\(18),
	datac => \LCD|clk_count\(17),
	datad => \LCD|LessThan9~3_combout\,
	combout => \LCD|LessThan9~4_combout\);

-- Location: LCCOMB_X73_Y71_N28
\LCD|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~5_combout\ = (!\LCD|clk_count\(5) & (!\LCD|clk_count\(3) & (!\LCD|clk_count\(6) & !\LCD|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(5),
	datab => \LCD|clk_count\(3),
	datac => \LCD|clk_count\(6),
	datad => \LCD|clk_count\(4),
	combout => \LCD|LessThan9~5_combout\);

-- Location: LCCOMB_X75_Y71_N10
\LCD|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~6_combout\ = (\LCD|LessThan9~5_combout\) # (((!\LCD|clk_count\(9)) # (!\LCD|clk_count\(7))) # (!\LCD|clk_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan9~5_combout\,
	datab => \LCD|clk_count\(8),
	datac => \LCD|clk_count\(7),
	datad => \LCD|clk_count\(9),
	combout => \LCD|LessThan9~6_combout\);

-- Location: LCCOMB_X75_Y71_N28
\LCD|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~7_combout\ = ((!\LCD|clk_count\(11) & (!\LCD|clk_count\(10) & \LCD|LessThan9~6_combout\))) # (!\LCD|clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(11),
	datab => \LCD|clk_count\(10),
	datac => \LCD|clk_count\(12),
	datad => \LCD|LessThan9~6_combout\,
	combout => \LCD|LessThan9~7_combout\);

-- Location: LCCOMB_X75_Y70_N6
\LCD|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~10_combout\ = (\LCD|clk_count\(31)) # ((\LCD|LessThan9~4_combout\ & (\LCD|LessThan9~7_combout\ & \LCD|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan9~4_combout\,
	datab => \LCD|clk_count\(31),
	datac => \LCD|LessThan9~7_combout\,
	datad => \LCD|LessThan9~8_combout\,
	combout => \LCD|LessThan9~10_combout\);

-- Location: LCCOMB_X70_Y69_N12
\LCD|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector35~0_combout\ = (\LCD|state.send~q\ & ((\LCD|LessThan9~10_combout\) # ((\LCD|Equal0~1_combout\ & !\LCD|line~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|state.send~q\,
	datac => \LCD|LessThan9~10_combout\,
	datad => \LCD|line~q\,
	combout => \LCD|Selector35~0_combout\);

-- Location: LCCOMB_X70_Y69_N0
\LCD|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector35~1_combout\ = (\LCD|Selector35~0_combout\) # ((\LCD|state.line1~q\) # ((\LCD|state.resetline~q\) # (\LCD|state.line2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector35~0_combout\,
	datab => \LCD|state.line1~q\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|state.line2~q\,
	combout => \LCD|Selector35~1_combout\);

-- Location: FF_X70_Y69_N1
\LCD|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector35~1_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.send~q\);

-- Location: LCCOMB_X70_Y70_N22
\LCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~0_combout\ = \LCD|ptr\(0) $ (GND)
-- \LCD|Add1~1\ = CARRY(!\LCD|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|ptr\(0),
	datad => VCC,
	combout => \LCD|Add1~0_combout\,
	cout => \LCD|Add1~1\);

-- Location: LCCOMB_X70_Y70_N20
\LCD|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector51~0_combout\ = (!\LCD|state.send~q\) # (!\LCD|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add1~0_combout\,
	datad => \LCD|state.send~q\,
	combout => \LCD|Selector51~0_combout\);

-- Location: LCCOMB_X72_Y70_N0
\LCD|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector48~0_combout\ = (\LCD|state.send~q\ & (!\LCD|Equal0~1_combout\ & ((!\LCD|LessThan9~10_combout\)))) # (!\LCD|state.send~q\ & (((\LCD|state.resetline~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|state.resetline~q\,
	datac => \LCD|state.send~q\,
	datad => \LCD|LessThan9~10_combout\,
	combout => \LCD|Selector48~0_combout\);

-- Location: FF_X70_Y70_N21
\LCD|ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector51~0_combout\,
	ena => \LCD|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|ptr\(0));

-- Location: LCCOMB_X70_Y70_N24
\LCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~2_combout\ = (\LCD|ptr\(1) & (!\LCD|Add1~1\)) # (!\LCD|ptr\(1) & (\LCD|Add1~1\ & VCC))
-- \LCD|Add1~3\ = CARRY((\LCD|ptr\(1) & !\LCD|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|ptr\(1),
	datad => VCC,
	cin => \LCD|Add1~1\,
	combout => \LCD|Add1~2_combout\,
	cout => \LCD|Add1~3\);

-- Location: LCCOMB_X70_Y70_N2
\LCD|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector50~0_combout\ = (!\LCD|Add1~2_combout\) # (!\LCD|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.send~q\,
	datad => \LCD|Add1~2_combout\,
	combout => \LCD|Selector50~0_combout\);

-- Location: FF_X70_Y70_N3
\LCD|ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector50~0_combout\,
	ena => \LCD|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|ptr\(1));

-- Location: LCCOMB_X70_Y70_N26
\LCD|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~4_combout\ = (\LCD|ptr\(2) & (\LCD|Add1~3\ $ (GND))) # (!\LCD|ptr\(2) & ((GND) # (!\LCD|Add1~3\)))
-- \LCD|Add1~5\ = CARRY((!\LCD|Add1~3\) # (!\LCD|ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|ptr\(2),
	datad => VCC,
	cin => \LCD|Add1~3\,
	combout => \LCD|Add1~4_combout\,
	cout => \LCD|Add1~5\);

-- Location: LCCOMB_X70_Y70_N0
\LCD|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector49~0_combout\ = (!\LCD|state.send~q\) # (!\LCD|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add1~4_combout\,
	datad => \LCD|state.send~q\,
	combout => \LCD|Selector49~0_combout\);

-- Location: FF_X70_Y70_N1
\LCD|ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector49~0_combout\,
	ena => \LCD|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|ptr\(2));

-- Location: LCCOMB_X70_Y70_N28
\LCD|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~6_combout\ = (\LCD|ptr\(3) & (!\LCD|Add1~5\)) # (!\LCD|ptr\(3) & (\LCD|Add1~5\ & VCC))
-- \LCD|Add1~7\ = CARRY((\LCD|ptr\(3) & !\LCD|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datad => VCC,
	cin => \LCD|Add1~5\,
	combout => \LCD|Add1~6_combout\,
	cout => \LCD|Add1~7\);

-- Location: LCCOMB_X70_Y70_N10
\LCD|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector48~1_combout\ = (!\LCD|Add1~6_combout\) # (!\LCD|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.send~q\,
	datad => \LCD|Add1~6_combout\,
	combout => \LCD|Selector48~1_combout\);

-- Location: FF_X70_Y70_N11
\LCD|ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector48~1_combout\,
	ena => \LCD|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|ptr\(3));

-- Location: LCCOMB_X70_Y70_N8
\LCD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal0~0_combout\ = (\LCD|ptr\(1) & \LCD|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|ptr\(1),
	datad => \LCD|ptr\(0),
	combout => \LCD|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y70_N30
\LCD|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~8_combout\ = \LCD|Add1~7\ $ (\LCD|ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|ptr\(4),
	cin => \LCD|Add1~7\,
	combout => \LCD|Add1~8_combout\);

-- Location: LCCOMB_X72_Y70_N2
\LCD|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector47~0_combout\ = (\LCD|state.send~q\ & (((\LCD|Add1~8_combout\ & !\LCD|Equal0~1_combout\)))) # (!\LCD|state.send~q\ & (\LCD|state.resetline~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|state.resetline~q\,
	datac => \LCD|Add1~8_combout\,
	datad => \LCD|Equal0~1_combout\,
	combout => \LCD|Selector47~0_combout\);

-- Location: LCCOMB_X72_Y70_N14
\LCD|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector47~1_combout\ = (\LCD|state.send~q\ & ((\LCD|LessThan9~10_combout\ & ((\LCD|ptr\(4)))) # (!\LCD|LessThan9~10_combout\ & (\LCD|Selector47~0_combout\)))) # (!\LCD|state.send~q\ & ((\LCD|Selector47~0_combout\) # ((\LCD|ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|Selector47~0_combout\,
	datac => \LCD|ptr\(4),
	datad => \LCD|LessThan9~10_combout\,
	combout => \LCD|Selector47~1_combout\);

-- Location: FF_X72_Y70_N15
\LCD|ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|ptr\(4));

-- Location: LCCOMB_X70_Y70_N16
\LCD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal0~1_combout\ = (\LCD|ptr\(3) & (\LCD|ptr\(2) & (\LCD|Equal0~0_combout\ & !\LCD|ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(2),
	datac => \LCD|Equal0~0_combout\,
	datad => \LCD|ptr\(4),
	combout => \LCD|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y69_N26
\LCD|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~1_combout\ = (\LCD|Add0~34_combout\ & (\LCD|LessThan8~4_combout\ & (!\LCD|LessThan8~6_combout\ & \LCD|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~34_combout\,
	datab => \LCD|LessThan8~4_combout\,
	datac => \LCD|LessThan8~6_combout\,
	datad => \LCD|Add0~32_combout\,
	combout => \LCD|Selector38~1_combout\);

-- Location: LCCOMB_X75_Y69_N14
\LCD|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~2_combout\ = (!\LCD|Add0~62_combout\ & (((!\LCD|LessThan7~4_combout\ & \LCD|Selector38~1_combout\)) # (!\LCD|LessThan8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~62_combout\,
	datab => \LCD|LessThan7~4_combout\,
	datac => \LCD|Selector38~1_combout\,
	datad => \LCD|LessThan8~7_combout\,
	combout => \LCD|Selector38~2_combout\);

-- Location: LCCOMB_X75_Y69_N20
\LCD|Selector38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~5_combout\ = (\LCD|state~29_combout\ & (\LCD|state.initialize~q\ & (\LCD|Selector38~2_combout\ & \LCD|state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state~29_combout\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Selector38~2_combout\,
	datad => \LCD|state~23_combout\,
	combout => \LCD|Selector38~5_combout\);

-- Location: LCCOMB_X70_Y69_N14
\LCD|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector34~0_combout\ = (\LCD|Selector38~5_combout\) # ((\LCD|Equal0~1_combout\ & (\LCD|line~q\ & \LCD|Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~1_combout\,
	datab => \LCD|line~q\,
	datac => \LCD|Selector52~0_combout\,
	datad => \LCD|Selector38~5_combout\,
	combout => \LCD|Selector34~0_combout\);

-- Location: FF_X70_Y69_N15
\LCD|state.resetline\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector34~0_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.resetline~q\);

-- Location: LCCOMB_X73_Y70_N22
\LCD|clk_count[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count[11]~4_combout\ = (\LCD|state.resetline~q\) # ((\LCD|state.line2~q\) # ((\LCD|state.line1~q\) # (!\LCD|clk_count[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.resetline~q\,
	datab => \LCD|state.line2~q\,
	datac => \LCD|state.line1~q\,
	datad => \LCD|clk_count[11]~3_combout\,
	combout => \LCD|clk_count[11]~4_combout\);

-- Location: LCCOMB_X75_Y70_N2
\LCD|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector1~0_combout\ = (\LCD|Add0~60_combout\ & !\LCD|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Add0~60_combout\,
	datad => \LCD|clk_count[11]~4_combout\,
	combout => \LCD|Selector1~0_combout\);

-- Location: FF_X75_Y70_N3
\LCD|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count\(30));

-- Location: LCCOMB_X73_Y69_N22
\LCD|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan6~3_combout\ = (!\LCD|Add0~10_combout\ & (!\LCD|Add0~6_combout\ & !\LCD|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~10_combout\,
	datac => \LCD|Add0~6_combout\,
	datad => \LCD|Add0~8_combout\,
	combout => \LCD|LessThan6~3_combout\);

-- Location: LCCOMB_X74_Y69_N30
\LCD|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan5~0_combout\ = (!\LCD|Add0~16_combout\ & (((\LCD|LessThan6~3_combout\) # (!\LCD|Add0~14_combout\)) # (!\LCD|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~16_combout\,
	datab => \LCD|Add0~12_combout\,
	datac => \LCD|Add0~14_combout\,
	datad => \LCD|LessThan6~3_combout\,
	combout => \LCD|LessThan5~0_combout\);

-- Location: LCCOMB_X76_Y69_N8
\LCD|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan5~1_combout\ = (!\LCD|Add0~22_combout\ & (!\LCD|Add0~20_combout\ & ((\LCD|LessThan5~0_combout\) # (!\LCD|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~22_combout\,
	datab => \LCD|Add0~20_combout\,
	datac => \LCD|Add0~18_combout\,
	datad => \LCD|LessThan5~0_combout\,
	combout => \LCD|LessThan5~1_combout\);

-- Location: LCCOMB_X76_Y69_N30
\LCD|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan5~2_combout\ = (!\LCD|Add0~26_combout\) # (!\LCD|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Add0~24_combout\,
	datad => \LCD|Add0~26_combout\,
	combout => \LCD|LessThan5~2_combout\);

-- Location: LCCOMB_X74_Y69_N18
\LCD|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~8_combout\ = (\LCD|LessThan3~3_combout\ & (!\LCD|Add0~58_combout\ & (!\LCD|Add0~56_combout\ & \LCD|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan3~3_combout\,
	datab => \LCD|Add0~58_combout\,
	datac => \LCD|Add0~56_combout\,
	datad => \LCD|LessThan7~2_combout\,
	combout => \LCD|LessThan3~8_combout\);

-- Location: LCCOMB_X76_Y69_N28
\LCD|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan5~3_combout\ = (!\LCD|Add0~60_combout\ & (\LCD|LessThan3~8_combout\ & ((\LCD|LessThan5~1_combout\) # (\LCD|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~60_combout\,
	datab => \LCD|LessThan5~1_combout\,
	datac => \LCD|LessThan5~2_combout\,
	datad => \LCD|LessThan3~8_combout\,
	combout => \LCD|LessThan5~3_combout\);

-- Location: LCCOMB_X73_Y71_N30
\LCD|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan4~0_combout\ = (!\LCD|Add0~16_combout\ & (((!\LCD|Add0~14_combout\) # (!\LCD|Add0~12_combout\)) # (!\LCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~10_combout\,
	datab => \LCD|Add0~12_combout\,
	datac => \LCD|Add0~14_combout\,
	datad => \LCD|Add0~16_combout\,
	combout => \LCD|LessThan4~0_combout\);

-- Location: LCCOMB_X73_Y69_N28
\LCD|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan4~1_combout\ = ((!\LCD|Add0~20_combout\) # (!\LCD|Add0~22_combout\)) # (!\LCD|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~18_combout\,
	datab => \LCD|Add0~22_combout\,
	datad => \LCD|Add0~20_combout\,
	combout => \LCD|LessThan4~1_combout\);

-- Location: LCCOMB_X73_Y69_N18
\LCD|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan4~2_combout\ = ((!\LCD|Add0~24_combout\ & ((\LCD|LessThan4~0_combout\) # (\LCD|LessThan4~1_combout\)))) # (!\LCD|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~24_combout\,
	datab => \LCD|LessThan4~0_combout\,
	datac => \LCD|Add0~26_combout\,
	datad => \LCD|LessThan4~1_combout\,
	combout => \LCD|LessThan4~2_combout\);

-- Location: LCCOMB_X72_Y69_N16
\LCD|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan4~3_combout\ = (\LCD|LessThan3~3_combout\ & (\LCD|LessThan4~2_combout\ & (\LCD|LessThan7~2_combout\ & \LCD|state~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan3~3_combout\,
	datab => \LCD|LessThan4~2_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|state~20_combout\,
	combout => \LCD|LessThan4~3_combout\);

-- Location: LCCOMB_X73_Y71_N4
\LCD|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan2~0_combout\ = (!\LCD|Add0~14_combout\ & (((!\LCD|Add0~8_combout\) # (!\LCD|Add0~12_combout\)) # (!\LCD|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~10_combout\,
	datab => \LCD|Add0~12_combout\,
	datac => \LCD|Add0~8_combout\,
	datad => \LCD|Add0~14_combout\,
	combout => \LCD|LessThan2~0_combout\);

-- Location: LCCOMB_X74_Y69_N4
\LCD|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan2~1_combout\ = (!\LCD|Add0~22_combout\ & (((\LCD|LessThan2~0_combout\) # (!\LCD|Add0~20_combout\)) # (!\LCD|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan8~3_combout\,
	datab => \LCD|Add0~20_combout\,
	datac => \LCD|LessThan2~0_combout\,
	datad => \LCD|Add0~22_combout\,
	combout => \LCD|LessThan2~1_combout\);

-- Location: LCCOMB_X74_Y69_N10
\LCD|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan2~2_combout\ = (!\LCD|Add0~26_combout\ & (\LCD|LessThan3~8_combout\ & ((\LCD|LessThan2~1_combout\) # (!\LCD|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datab => \LCD|LessThan2~1_combout\,
	datac => \LCD|Add0~24_combout\,
	datad => \LCD|LessThan3~8_combout\,
	combout => \LCD|LessThan2~2_combout\);

-- Location: LCCOMB_X72_Y69_N4
\LCD|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~11_combout\ = (!\LCD|state.send~q\ & (!\LCD|LessThan4~3_combout\ & (\LCD|state.initialize~q\ & !\LCD|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|LessThan4~3_combout\,
	datac => \LCD|state.initialize~q\,
	datad => \LCD|LessThan2~2_combout\,
	combout => \LCD|Selector46~11_combout\);

-- Location: LCCOMB_X72_Y69_N26
\LCD|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~27_combout\ = (!\LCD|Add0~56_combout\ & (!\LCD|LessThan6~2_combout\ & (\LCD|LessThan7~2_combout\ & !\LCD|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~56_combout\,
	datab => \LCD|LessThan6~2_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|Add0~58_combout\,
	combout => \LCD|state~27_combout\);

-- Location: LCCOMB_X72_Y69_N18
\LCD|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~2_combout\ = (\LCD|LessThan4~3_combout\) # ((\LCD|state~27_combout\) # (\LCD|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|LessThan4~3_combout\,
	datac => \LCD|state~27_combout\,
	datad => \LCD|LessThan2~2_combout\,
	combout => \LCD|Selector46~2_combout\);

-- Location: LCCOMB_X72_Y69_N12
\LCD|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~3_combout\ = (!\LCD|state.send~q\ & (\LCD|state.initialize~q\ & ((\LCD|Add0~60_combout\) # (!\LCD|Selector46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|Selector46~2_combout\,
	combout => \LCD|Selector46~3_combout\);

-- Location: LCCOMB_X72_Y69_N22
\LCD|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~4_combout\ = (\LCD|Selector46~3_combout\ & ((\LCD|LessThan7~6_combout\) # ((\LCD|Selector46~1_combout\ & \LCD|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector46~1_combout\,
	datab => \LCD|e~q\,
	datac => \LCD|LessThan7~6_combout\,
	datad => \LCD|Selector46~3_combout\,
	combout => \LCD|Selector46~4_combout\);

-- Location: LCCOMB_X73_Y71_N22
\LCD|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan10~1_combout\ = (\LCD|clk_count\(2)) # ((\LCD|clk_count\(3)) # (\LCD|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(2),
	datac => \LCD|clk_count\(3),
	datad => \LCD|clk_count\(4),
	combout => \LCD|LessThan10~1_combout\);

-- Location: LCCOMB_X76_Y71_N4
\LCD|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan10~2_combout\ = (\LCD|LessThan10~0_combout\ & (((!\LCD|clk_count\(6)) # (!\LCD|clk_count\(5))) # (!\LCD|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan10~1_combout\,
	datab => \LCD|clk_count\(5),
	datac => \LCD|clk_count\(6),
	datad => \LCD|LessThan10~0_combout\,
	combout => \LCD|LessThan10~2_combout\);

-- Location: LCCOMB_X75_Y71_N22
\LCD|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan10~3_combout\ = (\LCD|LessThan10~2_combout\ & (!\LCD|clk_count\(8) & (\LCD|LessThan9~4_combout\ & !\LCD|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan10~2_combout\,
	datab => \LCD|clk_count\(8),
	datac => \LCD|LessThan9~4_combout\,
	datad => \LCD|clk_count\(7),
	combout => \LCD|LessThan10~3_combout\);

-- Location: LCCOMB_X73_Y71_N0
\LCD|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan11~0_combout\ = (((!\LCD|clk_count\(4)) # (!\LCD|clk_count\(3))) # (!\LCD|clk_count\(6))) # (!\LCD|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(5),
	datab => \LCD|clk_count\(6),
	datac => \LCD|clk_count\(3),
	datad => \LCD|clk_count\(4),
	combout => \LCD|LessThan11~0_combout\);

-- Location: LCCOMB_X75_Y71_N26
\LCD|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan11~1_combout\ = (!\LCD|clk_count\(9) & (((!\LCD|clk_count\(7) & \LCD|LessThan11~0_combout\)) # (!\LCD|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(9),
	datab => \LCD|clk_count\(8),
	datac => \LCD|clk_count\(7),
	datad => \LCD|LessThan11~0_combout\,
	combout => \LCD|LessThan11~1_combout\);

-- Location: LCCOMB_X73_Y71_N18
\LCD|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan12~1_combout\ = (!\LCD|clk_count\(4) & (\LCD|LessThan0~0_combout\ & ((!\LCD|clk_count\(3)) # (!\LCD|clk_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(4),
	datab => \LCD|clk_count\(2),
	datac => \LCD|clk_count\(3),
	datad => \LCD|LessThan0~0_combout\,
	combout => \LCD|LessThan12~1_combout\);

-- Location: LCCOMB_X75_Y71_N0
\LCD|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan12~2_combout\ = ((!\LCD|clk_count\(8) & ((\LCD|LessThan12~1_combout\) # (!\LCD|clk_count\(7))))) # (!\LCD|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan12~1_combout\,
	datab => \LCD|clk_count\(8),
	datac => \LCD|clk_count\(7),
	datad => \LCD|clk_count\(9),
	combout => \LCD|LessThan12~2_combout\);

-- Location: LCCOMB_X75_Y71_N24
\LCD|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~5_combout\ = (\LCD|clk_count\(11) & (!\LCD|clk_count\(10) & ((\LCD|LessThan12~2_combout\)))) # (!\LCD|clk_count\(11) & (\LCD|clk_count\(10) & (!\LCD|LessThan11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(11),
	datab => \LCD|clk_count\(10),
	datac => \LCD|LessThan11~1_combout\,
	datad => \LCD|LessThan12~2_combout\,
	combout => \LCD|Selector46~5_combout\);

-- Location: LCCOMB_X75_Y71_N2
\LCD|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan12~0_combout\ = (!\LCD|clk_count\(12) & \LCD|LessThan9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count\(12),
	datac => \LCD|LessThan9~4_combout\,
	combout => \LCD|LessThan12~0_combout\);

-- Location: LCCOMB_X75_Y71_N14
\LCD|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~6_combout\ = (\LCD|LessThan10~3_combout\ & (((\LCD|e~q\)))) # (!\LCD|LessThan10~3_combout\ & (\LCD|LessThan12~0_combout\ & (\LCD|Selector46~5_combout\ $ (!\LCD|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan10~3_combout\,
	datab => \LCD|Selector46~5_combout\,
	datac => \LCD|e~q\,
	datad => \LCD|LessThan12~0_combout\,
	combout => \LCD|Selector46~6_combout\);

-- Location: LCCOMB_X75_Y70_N26
\LCD|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan9~9_combout\ = (\LCD|LessThan9~8_combout\ & (\LCD|LessThan9~7_combout\ & \LCD|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|LessThan9~8_combout\,
	datac => \LCD|LessThan9~7_combout\,
	datad => \LCD|LessThan9~4_combout\,
	combout => \LCD|LessThan9~9_combout\);

-- Location: LCCOMB_X75_Y71_N20
\LCD|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~7_combout\ = (\LCD|e~q\ & (((!\LCD|LessThan9~9_combout\) # (!\LCD|Selector46~6_combout\)))) # (!\LCD|e~q\ & (!\LCD|clk_count\(11) & (\LCD|Selector46~6_combout\ & \LCD|LessThan9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(11),
	datab => \LCD|e~q\,
	datac => \LCD|Selector46~6_combout\,
	datad => \LCD|LessThan9~9_combout\,
	combout => \LCD|Selector46~7_combout\);

-- Location: LCCOMB_X73_Y69_N14
\LCD|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan1~1_combout\ = (((!\LCD|Add0~8_combout\ & !\LCD|Add0~6_combout\)) # (!\LCD|LessThan8~2_combout\)) # (!\LCD|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~18_combout\,
	datab => \LCD|Add0~8_combout\,
	datac => \LCD|LessThan8~2_combout\,
	datad => \LCD|Add0~6_combout\,
	combout => \LCD|LessThan1~1_combout\);

-- Location: LCCOMB_X73_Y69_N12
\LCD|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan1~2_combout\ = (\LCD|LessThan3~3_combout\ & (((\LCD|LessThan1~1_combout\) # (!\LCD|Add0~14_combout\)) # (!\LCD|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~16_combout\,
	datab => \LCD|Add0~14_combout\,
	datac => \LCD|LessThan1~1_combout\,
	datad => \LCD|LessThan3~3_combout\,
	combout => \LCD|LessThan1~2_combout\);

-- Location: LCCOMB_X72_Y69_N24
\LCD|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan1~3_combout\ = (\LCD|LessThan1~0_combout\ & (\LCD|LessThan7~2_combout\ & (\LCD|LessThan1~2_combout\ & \LCD|state~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan1~0_combout\,
	datab => \LCD|LessThan7~2_combout\,
	datac => \LCD|LessThan1~2_combout\,
	datad => \LCD|state~20_combout\,
	combout => \LCD|LessThan1~3_combout\);

-- Location: LCCOMB_X74_Y69_N16
\LCD|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan3~7_combout\ = (!\LCD|Add0~26_combout\ & (\LCD|LessThan3~6_combout\ & \LCD|LessThan3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~26_combout\,
	datac => \LCD|LessThan3~6_combout\,
	datad => \LCD|LessThan3~8_combout\,
	combout => \LCD|LessThan3~7_combout\);

-- Location: LCCOMB_X72_Y69_N6
\LCD|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~8_combout\ = (!\LCD|Add0~60_combout\ & ((\LCD|LessThan1~3_combout\) # ((\LCD|LessThan3~7_combout\ & !\LCD|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~60_combout\,
	datab => \LCD|LessThan1~3_combout\,
	datac => \LCD|LessThan3~7_combout\,
	datad => \LCD|LessThan2~2_combout\,
	combout => \LCD|Selector46~8_combout\);

-- Location: LCCOMB_X72_Y69_N0
\LCD|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~9_combout\ = (\LCD|state.initialize~q\ & (((\LCD|Add0~62_combout\) # (\LCD|Selector46~8_combout\)))) # (!\LCD|state.initialize~q\ & (\LCD|e~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|e~q\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Add0~62_combout\,
	datad => \LCD|Selector46~8_combout\,
	combout => \LCD|Selector46~9_combout\);

-- Location: LCCOMB_X72_Y69_N2
\LCD|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~10_combout\ = (\LCD|state.send~q\ & (!\LCD|clk_count\(31) & (\LCD|Selector46~7_combout\))) # (!\LCD|state.send~q\ & (((\LCD|Selector46~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count\(31),
	datab => \LCD|Selector46~7_combout\,
	datac => \LCD|state.send~q\,
	datad => \LCD|Selector46~9_combout\,
	combout => \LCD|Selector46~10_combout\);

-- Location: LCCOMB_X72_Y69_N8
\LCD|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector46~12_combout\ = (\LCD|Selector46~4_combout\) # ((\LCD|Selector46~10_combout\) # ((\LCD|LessThan5~3_combout\ & \LCD|Selector46~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan5~3_combout\,
	datab => \LCD|Selector46~11_combout\,
	datac => \LCD|Selector46~4_combout\,
	datad => \LCD|Selector46~10_combout\,
	combout => \LCD|Selector46~12_combout\);

-- Location: FF_X72_Y69_N9
\LCD|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector46~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|e~q\);

-- Location: LCCOMB_X70_Y69_N26
\LCD|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector36~0_combout\ = (\LCD|rs~q\ & ((\LCD|state.send~q\) # ((\LCD|state.initialize~q\) # (\LCD|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|rs~q\,
	datab => \LCD|state.send~q\,
	datac => \LCD|state.initialize~q\,
	datad => \LCD|Selector38~0_combout\,
	combout => \LCD|Selector36~0_combout\);

-- Location: LCCOMB_X70_Y69_N8
\LCD|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector36~1_combout\ = (\LCD|state.line1~q\) # ((\LCD|Selector36~0_combout\) # (\LCD|state.line2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.line1~q\,
	datac => \LCD|Selector36~0_combout\,
	datad => \LCD|state.line2~q\,
	combout => \LCD|Selector36~1_combout\);

-- Location: FF_X70_Y69_N9
\LCD|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|rs~q\);

-- Location: LCCOMB_X70_Y70_N12
\LCD|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux7~0_combout\ = (\LCD|ptr\(0) & (!\LCD|ptr\(3) & (\LCD|ptr\(1) & !\LCD|ptr\(2)))) # (!\LCD|ptr\(0) & ((\LCD|ptr\(1) $ (\LCD|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(0),
	datac => \LCD|ptr\(1),
	datad => \LCD|ptr\(2),
	combout => \LCD|Mux7~0_combout\);

-- Location: LCCOMB_X76_Y69_N26
\LCD|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector45~0_combout\ = (\LCD|state.resetline~q\) # ((\LCD|state.power_up~q\ & !\LCD|state.initialize~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.power_up~q\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|state.initialize~q\,
	combout => \LCD|Selector45~0_combout\);

-- Location: LCCOMB_X72_Y69_N10
\LCD|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector45~1_combout\ = (!\LCD|Selector45~0_combout\ & ((\LCD|Add0~60_combout\) # (!\LCD|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~0_combout\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|LessThan4~3_combout\,
	combout => \LCD|Selector45~1_combout\);

-- Location: LCCOMB_X74_Y69_N24
\LCD|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector45~2_combout\ = (\LCD|state.initialize~q\ & !\LCD|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.initialize~q\,
	datad => \LCD|Add0~62_combout\,
	combout => \LCD|Selector45~2_combout\);

-- Location: LCCOMB_X75_Y69_N12
\LCD|Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector45~3_combout\ = (\LCD|Selector45~1_combout\ & (\LCD|Selector45~2_combout\ & (!\LCD|state~22_combout\ & \LCD|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~1_combout\,
	datab => \LCD|Selector45~2_combout\,
	datac => \LCD|state~22_combout\,
	datad => \LCD|LessThan5~3_combout\,
	combout => \LCD|Selector45~3_combout\);

-- Location: LCCOMB_X75_Y69_N24
\LCD|Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector45~4_combout\ = (\LCD|Selector45~3_combout\) # ((\LCD|Mux7~0_combout\ & \LCD|lcd_data[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Mux7~0_combout\,
	datac => \LCD|lcd_data[5]~0_combout\,
	datad => \LCD|Selector45~3_combout\,
	combout => \LCD|Selector45~4_combout\);

-- Location: LCCOMB_X75_Y69_N16
\LCD|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~3_combout\ = (!\LCD|state~22_combout\ & ((\LCD|LessThan6~2_combout\) # (!\LCD|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan6~2_combout\,
	datac => \LCD|LessThan7~2_combout\,
	datad => \LCD|state~22_combout\,
	combout => \LCD|Selector38~3_combout\);

-- Location: LCCOMB_X75_Y69_N18
\LCD|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~4_combout\ = (\LCD|state.initialize~q\ & ((\LCD|Add0~60_combout\) # ((\LCD|Selector38~3_combout\) # (!\LCD|state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~60_combout\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|state~20_combout\,
	datad => \LCD|Selector38~3_combout\,
	combout => \LCD|Selector38~4_combout\);

-- Location: LCCOMB_X75_Y69_N28
\LCD|lcd_data[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|lcd_data[5]~1_combout\ = (!\LCD|state.send~q\ & (!\LCD|Selector38~0_combout\ & ((!\LCD|Selector38~4_combout\) # (!\LCD|Selector38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.send~q\,
	datab => \LCD|Selector38~0_combout\,
	datac => \LCD|Selector38~2_combout\,
	datad => \LCD|Selector38~4_combout\,
	combout => \LCD|lcd_data[5]~1_combout\);

-- Location: FF_X75_Y69_N25
\LCD|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector45~4_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(0));

-- Location: LCCOMB_X70_Y70_N14
\LCD|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux6~0_combout\ = (\LCD|ptr\(1) & (!\LCD|ptr\(2) & ((\LCD|ptr\(3)) # (!\LCD|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(0),
	datac => \LCD|ptr\(1),
	datad => \LCD|ptr\(2),
	combout => \LCD|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y69_N8
\LCD|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~28_combout\ = (!\LCD|Add0~56_combout\ & (!\LCD|Add0~58_combout\ & \LCD|state~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Add0~56_combout\,
	datab => \LCD|Add0~58_combout\,
	datad => \LCD|state~22_combout\,
	combout => \LCD|state~28_combout\);

-- Location: LCCOMB_X75_Y69_N26
\LCD|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector44~1_combout\ = (\LCD|Selector45~1_combout\ & (\LCD|Selector45~2_combout\ & (!\LCD|state~28_combout\ & \LCD|state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~1_combout\,
	datab => \LCD|Selector45~2_combout\,
	datac => \LCD|state~28_combout\,
	datad => \LCD|state~23_combout\,
	combout => \LCD|Selector44~1_combout\);

-- Location: LCCOMB_X76_Y69_N2
\LCD|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector44~0_combout\ = (\LCD|LessThan7~6_combout\ & !\LCD|LessThan5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|LessThan7~6_combout\,
	datad => \LCD|LessThan5~3_combout\,
	combout => \LCD|Selector44~0_combout\);

-- Location: LCCOMB_X75_Y69_N22
\LCD|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector44~2_combout\ = (\LCD|lcd_data[5]~0_combout\ & ((\LCD|Mux6~0_combout\) # ((\LCD|Selector44~1_combout\ & \LCD|Selector44~0_combout\)))) # (!\LCD|lcd_data[5]~0_combout\ & (((\LCD|Selector44~1_combout\ & \LCD|Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|lcd_data[5]~0_combout\,
	datab => \LCD|Mux6~0_combout\,
	datac => \LCD|Selector44~1_combout\,
	datad => \LCD|Selector44~0_combout\,
	combout => \LCD|Selector44~2_combout\);

-- Location: FF_X75_Y69_N23
\LCD|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector44~2_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(1));

-- Location: LCCOMB_X70_Y70_N4
\LCD|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux5~0_combout\ = (\LCD|ptr\(3) & (!\LCD|ptr\(0) & (\LCD|ptr\(1) $ (\LCD|ptr\(2))))) # (!\LCD|ptr\(3) & (\LCD|ptr\(0) & (\LCD|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(0),
	datac => \LCD|ptr\(1),
	datad => \LCD|ptr\(2),
	combout => \LCD|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y70_N10
\LCD|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~2_combout\ = (\LCD|Mux5~0_combout\ & (!\LCD|state.initialize~q\ & (!\LCD|state.resetline~q\ & \LCD|state.power_up~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux5~0_combout\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|state.power_up~q\,
	combout => \LCD|Selector43~2_combout\);

-- Location: LCCOMB_X72_Y69_N20
\LCD|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~4_combout\ = (!\LCD|Selector45~0_combout\ & (!\LCD|Add0~60_combout\ & \LCD|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~0_combout\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|LessThan1~3_combout\,
	combout => \LCD|Selector43~4_combout\);

-- Location: LCCOMB_X72_Y69_N14
\LCD|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~5_combout\ = ((!\LCD|Selector43~4_combout\ & ((\LCD|state.resetline~q\) # (!\LCD|Add0~62_combout\)))) # (!\LCD|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.resetline~q\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Add0~62_combout\,
	datad => \LCD|Selector43~4_combout\,
	combout => \LCD|Selector43~5_combout\);

-- Location: LCCOMB_X74_Y69_N22
\LCD|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~0_combout\ = (\LCD|state.initialize~q\ & (!\LCD|Add0~60_combout\ & !\LCD|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.initialize~q\,
	datac => \LCD|Add0~60_combout\,
	datad => \LCD|LessThan2~2_combout\,
	combout => \LCD|Selector43~0_combout\);

-- Location: LCCOMB_X76_Y69_N22
\LCD|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~3_combout\ = (!\LCD|state~27_combout\ & (\LCD|Selector45~1_combout\ & (\LCD|Selector43~0_combout\ & \LCD|Selector44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state~27_combout\,
	datab => \LCD|Selector45~1_combout\,
	datac => \LCD|Selector43~0_combout\,
	datad => \LCD|Selector44~0_combout\,
	combout => \LCD|Selector43~3_combout\);

-- Location: LCCOMB_X76_Y69_N24
\LCD|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~1_combout\ = (!\LCD|Selector45~0_combout\ & (\LCD|LessThan3~7_combout\ & \LCD|Selector43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~0_combout\,
	datac => \LCD|LessThan3~7_combout\,
	datad => \LCD|Selector43~0_combout\,
	combout => \LCD|Selector43~1_combout\);

-- Location: LCCOMB_X76_Y69_N10
\LCD|Selector43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector43~6_combout\ = (\LCD|Selector43~2_combout\) # (((\LCD|Selector43~3_combout\) # (\LCD|Selector43~1_combout\)) # (!\LCD|Selector43~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector43~2_combout\,
	datab => \LCD|Selector43~5_combout\,
	datac => \LCD|Selector43~3_combout\,
	datad => \LCD|Selector43~1_combout\,
	combout => \LCD|Selector43~6_combout\);

-- Location: FF_X76_Y69_N11
\LCD|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector43~6_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(2));

-- Location: LCCOMB_X70_Y70_N18
\LCD|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux4~0_combout\ = (\LCD|ptr\(3) & (!\LCD|ptr\(2) & (\LCD|ptr\(0) $ (\LCD|ptr\(1))))) # (!\LCD|ptr\(3) & (\LCD|ptr\(2) & (\LCD|ptr\(0) $ (!\LCD|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(0),
	datac => \LCD|ptr\(1),
	datad => \LCD|ptr\(2),
	combout => \LCD|Mux4~0_combout\);

-- Location: LCCOMB_X76_Y69_N12
\LCD|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector42~0_combout\ = ((\LCD|Selector43~1_combout\) # ((\LCD|Mux4~0_combout\ & \LCD|lcd_data[5]~0_combout\))) # (!\LCD|Selector43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux4~0_combout\,
	datab => \LCD|lcd_data[5]~0_combout\,
	datac => \LCD|Selector43~5_combout\,
	datad => \LCD|Selector43~1_combout\,
	combout => \LCD|Selector42~0_combout\);

-- Location: FF_X76_Y69_N13
\LCD|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector42~0_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(3));

-- Location: LCCOMB_X72_Y69_N28
\LCD|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector41~0_combout\ = (!\LCD|Selector43~4_combout\ & ((\LCD|Selector45~0_combout\) # ((\LCD|state.initialize~q\ & !\LCD|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector45~0_combout\,
	datab => \LCD|state.initialize~q\,
	datac => \LCD|Add0~62_combout\,
	datad => \LCD|Selector43~4_combout\,
	combout => \LCD|Selector41~0_combout\);

-- Location: LCCOMB_X75_Y69_N4
\LCD|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector41~1_combout\ = ((\LCD|Equal0~0_combout\ & (!\LCD|ptr\(2) & \LCD|lcd_data[5]~0_combout\))) # (!\LCD|Selector41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Equal0~0_combout\,
	datab => \LCD|ptr\(2),
	datac => \LCD|lcd_data[5]~0_combout\,
	datad => \LCD|Selector41~0_combout\,
	combout => \LCD|Selector41~1_combout\);

-- Location: FF_X75_Y69_N5
\LCD|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector41~1_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(4));

-- Location: LCCOMB_X70_Y70_N6
\LCD|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux2~0_combout\ = (\LCD|ptr\(3) & (((!\LCD|ptr\(0) & !\LCD|ptr\(1))) # (!\LCD|ptr\(2)))) # (!\LCD|ptr\(3) & (\LCD|ptr\(1) $ (((!\LCD|ptr\(0) & \LCD|ptr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|ptr\(3),
	datab => \LCD|ptr\(0),
	datac => \LCD|ptr\(1),
	datad => \LCD|ptr\(2),
	combout => \LCD|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y69_N6
\LCD|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector40~0_combout\ = ((\LCD|lcd_data[5]~0_combout\ & !\LCD|Mux2~0_combout\)) # (!\LCD|Selector41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|lcd_data[5]~0_combout\,
	datac => \LCD|Mux2~0_combout\,
	datad => \LCD|Selector41~0_combout\,
	combout => \LCD|Selector40~0_combout\);

-- Location: FF_X75_Y69_N7
\LCD|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector40~0_combout\,
	ena => \LCD|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(5));

-- Location: LCCOMB_X70_Y69_N10
\LCD|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector39~0_combout\ = (\LCD|lcd_data\(6) & ((\LCD|state.send~q\) # ((\LCD|line~q\ & \LCD|state.resetline~q\)))) # (!\LCD|lcd_data\(6) & (\LCD|line~q\ & (\LCD|state.resetline~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|lcd_data\(6),
	datab => \LCD|line~q\,
	datac => \LCD|state.resetline~q\,
	datad => \LCD|state.send~q\,
	combout => \LCD|Selector39~0_combout\);

-- Location: LCCOMB_X70_Y69_N4
\LCD|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector39~1_combout\ = (\LCD|Selector39~0_combout\) # ((\LCD|Mux2~0_combout\ & ((\LCD|state.line1~q\) # (\LCD|state.line2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector39~0_combout\,
	datab => \LCD|state.line1~q\,
	datac => \LCD|Mux2~0_combout\,
	datad => \LCD|state.line2~q\,
	combout => \LCD|Selector39~1_combout\);

-- Location: LCCOMB_X74_Y69_N8
\LCD|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector39~2_combout\ = (\LCD|Selector39~1_combout\) # ((\LCD|lcd_data\(6) & ((\LCD|Selector38~0_combout\) # (\LCD|Selector38~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector38~0_combout\,
	datab => \LCD|Selector39~1_combout\,
	datac => \LCD|lcd_data\(6),
	datad => \LCD|Selector38~5_combout\,
	combout => \LCD|Selector39~2_combout\);

-- Location: FF_X74_Y69_N9
\LCD|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector39~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(6));

-- Location: LCCOMB_X74_Y69_N0
\LCD|Selector38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~6_combout\ = (\LCD|state.resetline~q\) # ((\LCD|lcd_data\(7) & \LCD|state.send~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.resetline~q\,
	datab => \LCD|lcd_data\(7),
	datad => \LCD|state.send~q\,
	combout => \LCD|Selector38~6_combout\);

-- Location: LCCOMB_X74_Y69_N2
\LCD|Selector38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector38~7_combout\ = (\LCD|Selector38~6_combout\) # ((\LCD|lcd_data\(7) & ((\LCD|Selector38~0_combout\) # (\LCD|Selector38~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector38~0_combout\,
	datab => \LCD|Selector38~6_combout\,
	datac => \LCD|lcd_data\(7),
	datad => \LCD|Selector38~5_combout\,
	combout => \LCD|Selector38~7_combout\);

-- Location: FF_X74_Y69_N3
\LCD|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Selector38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_data\(7));

-- Location: IOIBUF_X5_Y0_N22
\push_btn_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_btn_clk,
	o => \push_btn_clk~input_o\);

ww_level(0) <= \level[0]~output_o\;

ww_level(1) <= \level[1]~output_o\;

ww_Money_Deposited(0) <= \Money_Deposited[0]~output_o\;

ww_Money_Deposited(1) <= \Money_Deposited[1]~output_o\;

ww_Money_Deposited(2) <= \Money_Deposited[2]~output_o\;

ww_Money_Deposited(3) <= \Money_Deposited[3]~output_o\;

ww_Money_Deposited(4) <= \Money_Deposited[4]~output_o\;

ww_Money_Deposited(5) <= \Money_Deposited[5]~output_o\;

ww_Money_Deposited(6) <= \Money_Deposited[6]~output_o\;

ww_Money_Deposited(7) <= \Money_Deposited[7]~output_o\;

ww_Change(0) <= \Change[0]~output_o\;

ww_Change(1) <= \Change[1]~output_o\;

ww_Change(2) <= \Change[2]~output_o\;

ww_Change(3) <= \Change[3]~output_o\;

ww_Change(4) <= \Change[4]~output_o\;

ww_Change(5) <= \Change[5]~output_o\;

ww_Change(6) <= \Change[6]~output_o\;

ww_Change(7) <= \Change[7]~output_o\;

ww_gateOpens <= \gateOpens~output_o\;

ww_backGateOpens <= \backGateOpens~output_o\;

ww_cathode0(0) <= \cathode0[0]~output_o\;

ww_cathode0(1) <= \cathode0[1]~output_o\;

ww_cathode0(2) <= \cathode0[2]~output_o\;

ww_cathode0(3) <= \cathode0[3]~output_o\;

ww_cathode0(4) <= \cathode0[4]~output_o\;

ww_cathode0(5) <= \cathode0[5]~output_o\;

ww_cathode0(6) <= \cathode0[6]~output_o\;

ww_cathode1(0) <= \cathode1[0]~output_o\;

ww_cathode1(1) <= \cathode1[1]~output_o\;

ww_cathode1(2) <= \cathode1[2]~output_o\;

ww_cathode1(3) <= \cathode1[3]~output_o\;

ww_cathode1(4) <= \cathode1[4]~output_o\;

ww_cathode1(5) <= \cathode1[5]~output_o\;

ww_cathode1(6) <= \cathode1[6]~output_o\;

ww_cathode2(0) <= \cathode2[0]~output_o\;

ww_cathode2(1) <= \cathode2[1]~output_o\;

ww_cathode2(2) <= \cathode2[2]~output_o\;

ww_cathode2(3) <= \cathode2[3]~output_o\;

ww_cathode2(4) <= \cathode2[4]~output_o\;

ww_cathode2(5) <= \cathode2[5]~output_o\;

ww_cathode2(6) <= \cathode2[6]~output_o\;

ww_cathode3(0) <= \cathode3[0]~output_o\;

ww_cathode3(1) <= \cathode3[1]~output_o\;

ww_cathode3(2) <= \cathode3[2]~output_o\;

ww_cathode3(3) <= \cathode3[3]~output_o\;

ww_cathode3(4) <= \cathode3[4]~output_o\;

ww_cathode3(5) <= \cathode3[5]~output_o\;

ww_cathode3(6) <= \cathode3[6]~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_db(0) <= \lcd_db[0]~output_o\;

ww_lcd_db(1) <= \lcd_db[1]~output_o\;

ww_lcd_db(2) <= \lcd_db[2]~output_o\;

ww_lcd_db(3) <= \lcd_db[3]~output_o\;

ww_lcd_db(4) <= \lcd_db[4]~output_o\;

ww_lcd_db(5) <= \lcd_db[5]~output_o\;

ww_lcd_db(6) <= \lcd_db[6]~output_o\;

ww_lcd_db(7) <= \lcd_db[7]~output_o\;
END structure;


