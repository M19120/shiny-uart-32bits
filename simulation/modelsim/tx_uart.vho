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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/26/2023 22:00:11"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	tx_uart IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	tx_datavalid : IN std_logic;
	tx_data : IN std_logic_vector(31 DOWNTO 0);
	tx_line : OUT std_logic
	);
END tx_uart;

-- Design Ports Information
-- reset	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_line	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datavalid	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[22]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[26]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[18]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[30]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[25]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[21]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[17]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[29]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[20]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[24]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[16]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[28]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[27]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[23]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[19]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[31]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[10]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[9]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[8]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[11]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[13]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[14]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[12]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[15]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tx_uart IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_tx_datavalid : std_logic;
SIGNAL ww_tx_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tx_line : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_count[1]~11_combout\ : std_logic;
SIGNAL \clk_count[7]~23_combout\ : std_logic;
SIGNAL \state.tx_stop_bits~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \state.tx_stop_bits~0_combout\ : std_logic;
SIGNAL \state.tx_stop_bits~1_combout\ : std_logic;
SIGNAL \state.tx_stop_bits~2_combout\ : std_logic;
SIGNAL \data_index~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \tx_data[22]~input_o\ : std_logic;
SIGNAL \tx_data[26]~input_o\ : std_logic;
SIGNAL \tx_data[18]~input_o\ : std_logic;
SIGNAL \tx_data[30]~input_o\ : std_logic;
SIGNAL \tx_data[10]~input_o\ : std_logic;
SIGNAL \tx_data[9]~input_o\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data[13]~input_o\ : std_logic;
SIGNAL \tx_data[14]~input_o\ : std_logic;
SIGNAL \data[26]~feeder_combout\ : std_logic;
SIGNAL \data[30]~feeder_combout\ : std_logic;
SIGNAL \data[10]~feeder_combout\ : std_logic;
SIGNAL \data[9]~feeder_combout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \tx_line~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_count[0]~10\ : std_logic;
SIGNAL \clk_count[1]~12\ : std_logic;
SIGNAL \clk_count[2]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \tx_datavalid~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \state.tx_idle~q\ : std_logic;
SIGNAL \clk_count[2]~14\ : std_logic;
SIGNAL \clk_count[3]~16\ : std_logic;
SIGNAL \clk_count[4]~17_combout\ : std_logic;
SIGNAL \clk_count[3]~15_combout\ : std_logic;
SIGNAL \clk_count[0]~9_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \clk_count[4]~18\ : std_logic;
SIGNAL \clk_count[5]~19_combout\ : std_logic;
SIGNAL \clk_count[5]~20\ : std_logic;
SIGNAL \clk_count[6]~21_combout\ : std_logic;
SIGNAL \clk_count[6]~22\ : std_logic;
SIGNAL \clk_count[7]~24\ : std_logic;
SIGNAL \clk_count[8]~25_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.tx_start~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.tx_databits~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \tx_data[27]~input_o\ : std_logic;
SIGNAL \data[27]~feeder_combout\ : std_logic;
SIGNAL \data[4]~0_combout\ : std_logic;
SIGNAL \tx_data[31]~input_o\ : std_logic;
SIGNAL \tx_data[23]~input_o\ : std_logic;
SIGNAL \tx_data[19]~input_o\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \tx_data[25]~input_o\ : std_logic;
SIGNAL \data[25]~feeder_combout\ : std_logic;
SIGNAL \tx_data[29]~input_o\ : std_logic;
SIGNAL \tx_data[21]~input_o\ : std_logic;
SIGNAL \tx_data[17]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \tx_data[20]~input_o\ : std_logic;
SIGNAL \tx_data[28]~input_o\ : std_logic;
SIGNAL \tx_data[24]~input_o\ : std_logic;
SIGNAL \data[24]~feeder_combout\ : std_logic;
SIGNAL \tx_data[16]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \tx_data[11]~input_o\ : std_logic;
SIGNAL \tx_data[8]~input_o\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \tx_data[15]~input_o\ : std_logic;
SIGNAL \tx_data[12]~input_o\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \tx_line~reg0_q\ : std_logic;
SIGNAL data_index : std_logic_vector(4 DOWNTO 0);
SIGNAL data : std_logic_vector(31 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.tx_idle~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_tx_datavalid <= tx_datavalid;
ww_tx_data <= tx_data;
tx_line <= ww_tx_line;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_state.tx_idle~q\ <= NOT \state.tx_idle~q\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: FF_X32_Y7_N23
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[7]~23_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: FF_X32_Y7_N11
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[1]~11_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X32_Y7_N10
\clk_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[1]~11_combout\ = (clk_count(1) & (!\clk_count[0]~10\)) # (!clk_count(1) & ((\clk_count[0]~10\) # (GND)))
-- \clk_count[1]~12\ = CARRY((!\clk_count[0]~10\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \clk_count[0]~10\,
	combout => \clk_count[1]~11_combout\,
	cout => \clk_count[1]~12\);

-- Location: LCCOMB_X32_Y7_N22
\clk_count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[7]~23_combout\ = (clk_count(7) & (!\clk_count[6]~22\)) # (!clk_count(7) & ((\clk_count[6]~22\) # (GND)))
-- \clk_count[7]~24\ = CARRY((!\clk_count[6]~22\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datad => VCC,
	cin => \clk_count[6]~22\,
	combout => \clk_count[7]~23_combout\,
	cout => \clk_count[7]~24\);

-- Location: FF_X31_Y7_N23
\state.tx_stop_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \state.tx_stop_bits~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_stop_bits~q\);

-- Location: FF_X28_Y7_N17
\data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[22]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(22));

-- Location: FF_X28_Y7_N3
\data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[26]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(26));

-- Location: FF_X28_Y7_N13
\data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[18]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(18));

-- Location: LCCOMB_X28_Y7_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (data_index(2) & (((data_index(3))))) # (!data_index(2) & ((data_index(3) & (data(26))) # (!data_index(3) & ((data(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(2),
	datab => data(26),
	datac => data(18),
	datad => data_index(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X28_Y7_N11
\data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[30]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(30));

-- Location: LCCOMB_X28_Y7_N16
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (data_index(2) & ((\Mux0~0_combout\ & (data(30))) # (!\Mux0~0_combout\ & ((data(22)))))) # (!data_index(2) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(30),
	datab => data_index(2),
	datac => data(22),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X30_Y7_N5
\data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[10]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(10));

-- Location: FF_X30_Y7_N23
\data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[9]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(9));

-- Location: FF_X30_Y7_N9
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[5]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: FF_X30_Y7_N7
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[6]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: FF_X30_Y7_N29
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[2]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: FF_X30_Y7_N31
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[1]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: FF_X30_Y7_N13
\data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[13]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(13));

-- Location: FF_X30_Y7_N27
\data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[14]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(14));

-- Location: LCCOMB_X31_Y7_N0
\state.tx_stop_bits~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.tx_stop_bits~0_combout\ = (data_index(1) & (data_index(3) & (data_index(0) & data_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(1),
	datab => data_index(3),
	datac => data_index(0),
	datad => data_index(2),
	combout => \state.tx_stop_bits~0_combout\);

-- Location: LCCOMB_X31_Y7_N30
\state.tx_stop_bits~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.tx_stop_bits~1_combout\ = (\state.tx_stop_bits~0_combout\ & (data_index(4) & !\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.tx_stop_bits~0_combout\,
	datac => data_index(4),
	datad => \LessThan1~2_combout\,
	combout => \state.tx_stop_bits~1_combout\);

-- Location: LCCOMB_X31_Y7_N22
\state.tx_stop_bits~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.tx_stop_bits~2_combout\ = (\state.tx_stop_bits~1_combout\ & ((\state.tx_databits~q\) # ((\state.tx_stop_bits~q\ & \LessThan1~2_combout\)))) # (!\state.tx_stop_bits~1_combout\ & (((\state.tx_stop_bits~q\ & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_stop_bits~1_combout\,
	datab => \state.tx_databits~q\,
	datac => \state.tx_stop_bits~q\,
	datad => \LessThan1~2_combout\,
	combout => \state.tx_stop_bits~2_combout\);

-- Location: LCCOMB_X31_Y7_N16
\data_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_index~0_combout\ = (\state.tx_start~q\) # (\state.tx_stop_bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.tx_start~q\,
	datac => \state.tx_stop_bits~q\,
	combout => \data_index~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\tx_data[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(22),
	o => \tx_data[22]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\tx_data[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(26),
	o => \tx_data[26]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\tx_data[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(18),
	o => \tx_data[18]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\tx_data[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(30),
	o => \tx_data[30]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\tx_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(10),
	o => \tx_data[10]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\tx_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(9),
	o => \tx_data[9]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\tx_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\tx_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\tx_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\tx_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\tx_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(13),
	o => \tx_data[13]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\tx_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(14),
	o => \tx_data[14]~input_o\);

-- Location: LCCOMB_X28_Y7_N2
\data[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[26]~feeder_combout\ = \tx_data[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[26]~input_o\,
	combout => \data[26]~feeder_combout\);

-- Location: LCCOMB_X28_Y7_N10
\data[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[30]~feeder_combout\ = \tx_data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[30]~input_o\,
	combout => \data[30]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N4
\data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[10]~feeder_combout\ = \tx_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[10]~input_o\,
	combout => \data[10]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N22
\data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[9]~feeder_combout\ = \tx_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[9]~input_o\,
	combout => \data[9]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N8
\data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = \tx_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[5]~input_o\,
	combout => \data[5]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N28
\data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = \tx_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[2]~input_o\,
	combout => \data[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N30
\data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = \tx_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[1]~input_o\,
	combout => \data[1]~feeder_combout\);

-- Location: IOOBUF_X34_Y9_N2
\tx_line~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_line~reg0_q\,
	devoe => ww_devoe,
	o => \tx_line~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: LCCOMB_X32_Y7_N8
\clk_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[0]~9_combout\ = clk_count(0) $ (VCC)
-- \clk_count[0]~10\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \clk_count[0]~9_combout\,
	cout => \clk_count[0]~10\);

-- Location: LCCOMB_X32_Y7_N12
\clk_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[2]~13_combout\ = (clk_count(2) & (\clk_count[1]~12\ $ (GND))) # (!clk_count(2) & (!\clk_count[1]~12\ & VCC))
-- \clk_count[2]~14\ = CARRY((clk_count(2) & !\clk_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	datad => VCC,
	cin => \clk_count[1]~12\,
	combout => \clk_count[2]~13_combout\,
	cout => \clk_count[2]~14\);

-- Location: LCCOMB_X32_Y7_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X34_Y7_N8
\tx_datavalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datavalid,
	o => \tx_datavalid~input_o\);

-- Location: LCCOMB_X29_Y7_N30
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.tx_stop_bits~q\ & (\LessThan1~2_combout\ & ((\state.tx_idle~q\) # (\tx_datavalid~input_o\)))) # (!\state.tx_stop_bits~q\ & (((\state.tx_idle~q\) # (\tx_datavalid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_stop_bits~q\,
	datab => \LessThan1~2_combout\,
	datac => \state.tx_idle~q\,
	datad => \tx_datavalid~input_o\,
	combout => \Selector15~0_combout\);

-- Location: FF_X29_Y7_N31
\state.tx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_idle~q\);

-- Location: FF_X32_Y7_N13
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[2]~13_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X32_Y7_N14
\clk_count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[3]~15_combout\ = (clk_count(3) & (!\clk_count[2]~14\)) # (!clk_count(3) & ((\clk_count[2]~14\) # (GND)))
-- \clk_count[3]~16\ = CARRY((!\clk_count[2]~14\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \clk_count[2]~14\,
	combout => \clk_count[3]~15_combout\,
	cout => \clk_count[3]~16\);

-- Location: LCCOMB_X32_Y7_N16
\clk_count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[4]~17_combout\ = (clk_count(4) & (\clk_count[3]~16\ $ (GND))) # (!clk_count(4) & (!\clk_count[3]~16\ & VCC))
-- \clk_count[4]~18\ = CARRY((clk_count(4) & !\clk_count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \clk_count[3]~16\,
	combout => \clk_count[4]~17_combout\,
	cout => \clk_count[4]~18\);

-- Location: FF_X32_Y7_N17
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[4]~17_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: FF_X32_Y7_N15
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[3]~15_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: FF_X32_Y7_N9
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[0]~9_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X32_Y7_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!clk_count(3) & (!clk_count(2) & ((!clk_count(0)) # (!clk_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datab => clk_count(3),
	datac => clk_count(0),
	datad => clk_count(2),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y7_N18
\clk_count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[5]~19_combout\ = (clk_count(5) & (!\clk_count[4]~18\)) # (!clk_count(5) & ((\clk_count[4]~18\) # (GND)))
-- \clk_count[5]~20\ = CARRY((!\clk_count[4]~18\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \clk_count[4]~18\,
	combout => \clk_count[5]~19_combout\,
	cout => \clk_count[5]~20\);

-- Location: FF_X32_Y7_N19
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[5]~19_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X32_Y7_N20
\clk_count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[6]~21_combout\ = (clk_count(6) & (\clk_count[5]~20\ $ (GND))) # (!clk_count(6) & (!\clk_count[5]~20\ & VCC))
-- \clk_count[6]~22\ = CARRY((clk_count(6) & !\clk_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datad => VCC,
	cin => \clk_count[5]~20\,
	combout => \clk_count[6]~21_combout\,
	cout => \clk_count[6]~22\);

-- Location: FF_X32_Y7_N21
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[6]~21_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X32_Y7_N24
\clk_count[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[8]~25_combout\ = clk_count(8) $ (!\clk_count[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	cin => \clk_count[7]~24\,
	combout => \clk_count[8]~25_combout\);

-- Location: FF_X32_Y7_N25
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[8]~25_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_state.tx_idle~q\,
	sload => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X32_Y7_N6
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!clk_count(8)) # (!clk_count(6))) # (!clk_count(5))) # (!clk_count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(5),
	datac => clk_count(6),
	datad => clk_count(8),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y7_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # ((!clk_count(4) & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X32_Y7_N0
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\tx_datavalid~input_o\ & (((\LessThan1~2_combout\ & \state.tx_start~q\)) # (!\state.tx_idle~q\))) # (!\tx_datavalid~input_o\ & (\LessThan1~2_combout\ & (\state.tx_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_datavalid~input_o\,
	datab => \LessThan1~2_combout\,
	datac => \state.tx_start~q\,
	datad => \state.tx_idle~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X32_Y7_N1
\state.tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_start~q\);

-- Location: LCCOMB_X31_Y7_N24
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.tx_stop_bits~1_combout\ & (\state.tx_start~q\ & ((!\LessThan1~2_combout\)))) # (!\state.tx_stop_bits~1_combout\ & ((\state.tx_databits~q\) # ((\state.tx_start~q\ & !\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_stop_bits~1_combout\,
	datab => \state.tx_start~q\,
	datac => \state.tx_databits~q\,
	datad => \LessThan1~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X31_Y7_N25
\state.tx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_databits~q\);

-- Location: LCCOMB_X31_Y7_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\LessThan1~2_combout\ & (data_index(0) & VCC)) # (!\LessThan1~2_combout\ & (data_index(0) $ (VCC)))
-- \Add1~1\ = CARRY((!\LessThan1~2_combout\ & data_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => data_index(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X31_Y7_N26
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\data_index~0_combout\ & ((data_index(0)) # ((\state.tx_databits~q\ & \Add1~0_combout\)))) # (!\data_index~0_combout\ & (\state.tx_databits~q\ & ((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_index~0_combout\,
	datab => \state.tx_databits~q\,
	datac => data_index(0),
	datad => \Add1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X31_Y7_N27
\data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_index(0));

-- Location: LCCOMB_X31_Y7_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (data_index(1) & (!\Add1~1\)) # (!data_index(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!data_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_index(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X31_Y7_N28
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\data_index~0_combout\ & ((data_index(1)) # ((\state.tx_databits~q\ & \Add1~2_combout\)))) # (!\data_index~0_combout\ & (\state.tx_databits~q\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_index~0_combout\,
	datab => \state.tx_databits~q\,
	datac => data_index(1),
	datad => \Add1~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X31_Y7_N29
\data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_index(1));

-- Location: LCCOMB_X31_Y7_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (data_index(2) & (\Add1~3\ $ (GND))) # (!data_index(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((data_index(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_index(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X31_Y7_N20
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\data_index~0_combout\ & ((data_index(2)) # ((\state.tx_databits~q\ & \Add1~4_combout\)))) # (!\data_index~0_combout\ & (\state.tx_databits~q\ & ((\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_index~0_combout\,
	datab => \state.tx_databits~q\,
	datac => data_index(2),
	datad => \Add1~4_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X31_Y7_N21
\data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_index(2));

-- Location: LCCOMB_X31_Y7_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (data_index(3) & (!\Add1~5\)) # (!data_index(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!data_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_index(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X31_Y7_N18
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\data_index~0_combout\ & ((data_index(3)) # ((\state.tx_databits~q\ & \Add1~6_combout\)))) # (!\data_index~0_combout\ & (\state.tx_databits~q\ & ((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_index~0_combout\,
	datab => \state.tx_databits~q\,
	datac => data_index(3),
	datad => \Add1~6_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X31_Y7_N19
\data_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_index(3));

-- Location: LCCOMB_X31_Y7_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = data_index(4) $ (!\Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data_index(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X31_Y7_N4
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\data_index~0_combout\ & ((data_index(4)) # ((\state.tx_databits~q\ & \Add1~8_combout\)))) # (!\data_index~0_combout\ & (\state.tx_databits~q\ & ((\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_index~0_combout\,
	datab => \state.tx_databits~q\,
	datac => data_index(4),
	datad => \Add1~8_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X31_Y7_N5
\data_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_index(4));

-- Location: IOIBUF_X28_Y24_N1
\tx_data[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(27),
	o => \tx_data[27]~input_o\);

-- Location: LCCOMB_X28_Y7_N0
\data[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[27]~feeder_combout\ = \tx_data[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[27]~input_o\,
	combout => \data[27]~feeder_combout\);

-- Location: LCCOMB_X29_Y7_N10
\data[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~0_combout\ = (!\state.tx_idle~q\ & \tx_datavalid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.tx_idle~q\,
	datad => \tx_datavalid~input_o\,
	combout => \data[4]~0_combout\);

-- Location: FF_X28_Y7_N1
\data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[27]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(27));

-- Location: IOIBUF_X34_Y10_N8
\tx_data[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(31),
	o => \tx_data[31]~input_o\);

-- Location: FF_X28_Y7_N7
\data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[31]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(31));

-- Location: IOIBUF_X28_Y0_N1
\tx_data[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(23),
	o => \tx_data[23]~input_o\);

-- Location: FF_X28_Y7_N19
\data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[23]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(23));

-- Location: IOIBUF_X23_Y0_N8
\tx_data[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(19),
	o => \tx_data[19]~input_o\);

-- Location: FF_X28_Y7_N21
\data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[19]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(19));

-- Location: LCCOMB_X28_Y7_N20
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (data_index(3) & (((data_index(2))))) # (!data_index(3) & ((data_index(2) & (data(23))) # (!data_index(2) & ((data(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(3),
	datab => data(23),
	datac => data(19),
	datad => data_index(2),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X28_Y7_N6
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (data_index(3) & ((\Mux0~7_combout\ & ((data(31)))) # (!\Mux0~7_combout\ & (data(27))))) # (!data_index(3) & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(3),
	datab => data(27),
	datac => data(31),
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X30_Y0_N8
\tx_data[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(25),
	o => \tx_data[25]~input_o\);

-- Location: LCCOMB_X29_Y7_N0
\data[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[25]~feeder_combout\ = \tx_data[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[25]~input_o\,
	combout => \data[25]~feeder_combout\);

-- Location: FF_X29_Y7_N1
\data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[25]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(25));

-- Location: IOIBUF_X25_Y0_N1
\tx_data[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(29),
	o => \tx_data[29]~input_o\);

-- Location: FF_X29_Y7_N15
\data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[29]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(29));

-- Location: IOIBUF_X34_Y9_N8
\tx_data[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(21),
	o => \tx_data[21]~input_o\);

-- Location: FF_X29_Y7_N3
\data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[21]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(21));

-- Location: IOIBUF_X34_Y3_N22
\tx_data[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(17),
	o => \tx_data[17]~input_o\);

-- Location: FF_X29_Y7_N17
\data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[17]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(17));

-- Location: LCCOMB_X29_Y7_N16
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (data_index(2) & ((data(21)) # ((data_index(3))))) # (!data_index(2) & (((data(17) & !data_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(2),
	datab => data(21),
	datac => data(17),
	datad => data_index(3),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X29_Y7_N14
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (data_index(3) & ((\Mux0~2_combout\ & ((data(29)))) # (!\Mux0~2_combout\ & (data(25))))) # (!data_index(3) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(3),
	datab => data(25),
	datac => data(29),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X32_Y0_N22
\tx_data[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(20),
	o => \tx_data[20]~input_o\);

-- Location: FF_X29_Y7_N9
\data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[20]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(20));

-- Location: IOIBUF_X18_Y0_N15
\tx_data[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(28),
	o => \tx_data[28]~input_o\);

-- Location: FF_X29_Y7_N7
\data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[28]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(28));

-- Location: IOIBUF_X30_Y0_N1
\tx_data[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(24),
	o => \tx_data[24]~input_o\);

-- Location: LCCOMB_X29_Y7_N26
\data[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[24]~feeder_combout\ = \tx_data[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data[24]~input_o\,
	combout => \data[24]~feeder_combout\);

-- Location: FF_X29_Y7_N27
\data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[24]~feeder_combout\,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(24));

-- Location: IOIBUF_X21_Y0_N8
\tx_data[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(16),
	o => \tx_data[16]~input_o\);

-- Location: FF_X29_Y7_N25
\data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[16]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(16));

-- Location: LCCOMB_X29_Y7_N24
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (data_index(2) & (((data_index(3))))) # (!data_index(2) & ((data_index(3) & (data(24))) # (!data_index(3) & ((data(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(2),
	datab => data(24),
	datac => data(16),
	datad => data_index(3),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X29_Y7_N6
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (data_index(2) & ((\Mux0~4_combout\ & ((data(28)))) # (!\Mux0~4_combout\ & (data(20))))) # (!data_index(2) & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(2),
	datab => data(20),
	datac => data(28),
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X29_Y7_N28
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (data_index(0) & ((data_index(1)) # ((\Mux0~3_combout\)))) # (!data_index(0) & (!data_index(1) & ((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(0),
	datab => data_index(1),
	datac => \Mux0~3_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X29_Y7_N22
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (data_index(1) & ((\Mux0~6_combout\ & ((\Mux0~8_combout\))) # (!\Mux0~6_combout\ & (\Mux0~1_combout\)))) # (!data_index(1) & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => data_index(1),
	datac => \Mux0~8_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~9_combout\);

-- Location: IOIBUF_X30_Y0_N22
\tx_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(11),
	o => \tx_data[11]~input_o\);

-- Location: FF_X30_Y7_N19
\data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[11]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(11));

-- Location: IOIBUF_X30_Y24_N22
\tx_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(8),
	o => \tx_data[8]~input_o\);

-- Location: FF_X30_Y7_N17
\data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[8]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(8));

-- Location: LCCOMB_X30_Y7_N16
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (data_index(0) & ((data(9)) # ((data_index(1))))) # (!data_index(0) & (((data(8) & !data_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(9),
	datab => data_index(0),
	datac => data(8),
	datad => data_index(1),
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X30_Y7_N18
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (data_index(1) & ((\Mux0~10_combout\ & ((data(11)))) # (!\Mux0~10_combout\ & (data(10))))) # (!data_index(1) & (((\Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(10),
	datab => data_index(1),
	datac => data(11),
	datad => \Mux0~10_combout\,
	combout => \Mux0~11_combout\);

-- Location: IOIBUF_X34_Y4_N22
\tx_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(15),
	o => \tx_data[15]~input_o\);

-- Location: FF_X30_Y7_N11
\data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[15]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(15));

-- Location: IOIBUF_X34_Y20_N8
\tx_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(12),
	o => \tx_data[12]~input_o\);

-- Location: FF_X30_Y7_N25
\data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[12]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(12));

-- Location: LCCOMB_X30_Y7_N24
\Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (data_index(0) & (((data_index(1))))) # (!data_index(0) & ((data_index(1) & (data(14))) # (!data_index(1) & ((data(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(14),
	datab => data_index(0),
	datac => data(12),
	datad => data_index(1),
	combout => \Mux0~17_combout\);

-- Location: LCCOMB_X30_Y7_N10
\Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (data_index(0) & ((\Mux0~17_combout\ & ((data(15)))) # (!\Mux0~17_combout\ & (data(13))))) # (!data_index(0) & (((\Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(13),
	datab => data_index(0),
	datac => data(15),
	datad => \Mux0~17_combout\,
	combout => \Mux0~18_combout\);

-- Location: IOIBUF_X34_Y12_N15
\tx_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

-- Location: FF_X30_Y7_N15
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[7]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: IOIBUF_X34_Y12_N22
\tx_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: FF_X30_Y7_N21
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[4]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X30_Y7_N20
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (data_index(0) & (((data_index(1))))) # (!data_index(0) & ((data_index(1) & (data(6))) # (!data_index(1) & ((data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(6),
	datab => data_index(0),
	datac => data(4),
	datad => data_index(1),
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X30_Y7_N14
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (data_index(0) & ((\Mux0~12_combout\ & ((data(7)))) # (!\Mux0~12_combout\ & (data(5))))) # (!data_index(0) & (((\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(5),
	datab => data_index(0),
	datac => data(7),
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

-- Location: IOIBUF_X34_Y9_N15
\tx_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: FF_X30_Y7_N3
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[3]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: IOIBUF_X34_Y19_N15
\tx_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: FF_X30_Y7_N1
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_data[0]~input_o\,
	sload => VCC,
	ena => \data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X30_Y7_N0
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (data_index(1) & (((data_index(0))))) # (!data_index(1) & ((data_index(0) & (data(1))) # (!data_index(0) & ((data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data_index(1),
	datac => data(0),
	datad => data_index(0),
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X30_Y7_N2
\Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (data_index(1) & ((\Mux0~14_combout\ & ((data(3)))) # (!\Mux0~14_combout\ & (data(2))))) # (!data_index(1) & (((\Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datab => data_index(1),
	datac => data(3),
	datad => \Mux0~14_combout\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X29_Y7_N20
\Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (data_index(3) & (data_index(2))) # (!data_index(3) & ((data_index(2) & (\Mux0~13_combout\)) # (!data_index(2) & ((\Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(3),
	datab => data_index(2),
	datac => \Mux0~13_combout\,
	datad => \Mux0~15_combout\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X29_Y7_N18
\Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (data_index(3) & ((\Mux0~16_combout\ & ((\Mux0~18_combout\))) # (!\Mux0~16_combout\ & (\Mux0~11_combout\)))) # (!data_index(3) & (((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_index(3),
	datab => \Mux0~11_combout\,
	datac => \Mux0~18_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X29_Y7_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (data_index(4) & (\Mux0~9_combout\)) # (!data_index(4) & ((\Mux0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_index(4),
	datac => \Mux0~9_combout\,
	datad => \Mux0~19_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X29_Y7_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.tx_stop_bits~q\) # (((\state.tx_databits~q\ & \Selector0~0_combout\)) # (!\state.tx_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_stop_bits~q\,
	datab => \state.tx_databits~q\,
	datac => \state.tx_idle~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X29_Y7_N5
\tx_line~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_line~reg0_q\);

-- Location: IOIBUF_X3_Y24_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_tx_line <= \tx_line~output_o\;
END structure;


