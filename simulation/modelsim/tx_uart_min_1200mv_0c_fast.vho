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

-- DATE "11/02/2023 13:57:14"

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
	tx_datavalid : IN std_logic;
	tx_datain : IN std_logic_vector(31 DOWNTO 0);
	tx_active : OUT std_logic;
	tx_line : OUT std_logic
	);
END tx_uart;

-- Design Ports Information
-- tx_datain[8]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[9]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[10]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[12]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[13]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[14]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[15]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[16]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[17]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[18]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[19]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[20]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[21]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[22]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[23]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[24]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[25]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[26]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[27]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[28]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[29]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[30]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[31]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_active	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_line	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datavalid	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_datain[7]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_tx_datavalid : std_logic;
SIGNAL ww_tx_datain : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tx_active : std_logic;
SIGNAL ww_tx_line : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_count[1]~11_combout\ : std_logic;
SIGNAL \clk_count[7]~24_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \cuenta_tiempo~1_combout\ : std_logic;
SIGNAL \cuenta_tiempo~3_combout\ : std_logic;
SIGNAL \cuenta_tiempo~4_combout\ : std_logic;
SIGNAL \cuenta_tiempo~10_combout\ : std_logic;
SIGNAL \tx_datain[8]~input_o\ : std_logic;
SIGNAL \tx_datain[9]~input_o\ : std_logic;
SIGNAL \tx_datain[10]~input_o\ : std_logic;
SIGNAL \tx_datain[11]~input_o\ : std_logic;
SIGNAL \tx_datain[12]~input_o\ : std_logic;
SIGNAL \tx_datain[13]~input_o\ : std_logic;
SIGNAL \tx_datain[14]~input_o\ : std_logic;
SIGNAL \tx_datain[15]~input_o\ : std_logic;
SIGNAL \tx_datain[16]~input_o\ : std_logic;
SIGNAL \tx_datain[17]~input_o\ : std_logic;
SIGNAL \tx_datain[18]~input_o\ : std_logic;
SIGNAL \tx_datain[19]~input_o\ : std_logic;
SIGNAL \tx_datain[20]~input_o\ : std_logic;
SIGNAL \tx_datain[21]~input_o\ : std_logic;
SIGNAL \tx_datain[22]~input_o\ : std_logic;
SIGNAL \tx_datain[23]~input_o\ : std_logic;
SIGNAL \tx_datain[24]~input_o\ : std_logic;
SIGNAL \tx_datain[25]~input_o\ : std_logic;
SIGNAL \tx_datain[26]~input_o\ : std_logic;
SIGNAL \tx_datain[27]~input_o\ : std_logic;
SIGNAL \tx_datain[28]~input_o\ : std_logic;
SIGNAL \tx_datain[29]~input_o\ : std_logic;
SIGNAL \tx_datain[30]~input_o\ : std_logic;
SIGNAL \tx_datain[31]~input_o\ : std_logic;
SIGNAL \tx_active~output_o\ : std_logic;
SIGNAL \tx_line~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_count[0]~9_combout\ : std_logic;
SIGNAL \tx_datavalid~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \cuenta_tiempo~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \cuenta_tiempo~11_combout\ : std_logic;
SIGNAL \cuenta_tiempo~6_combout\ : std_logic;
SIGNAL \cuenta_tiempo~8_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \cuenta_tiempo~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \cuenta_tiempo~7_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \cuenta_tiempo~5_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \cuenta_tiempo~2_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.tx_idle~q\ : std_logic;
SIGNAL \clk_count[8]~21_combout\ : std_logic;
SIGNAL \clk_count[0]~10\ : std_logic;
SIGNAL \clk_count[1]~12\ : std_logic;
SIGNAL \clk_count[2]~14\ : std_logic;
SIGNAL \clk_count[3]~15_combout\ : std_logic;
SIGNAL \clk_count[3]~16\ : std_logic;
SIGNAL \clk_count[4]~17_combout\ : std_logic;
SIGNAL \clk_count[4]~18\ : std_logic;
SIGNAL \clk_count[5]~19_combout\ : std_logic;
SIGNAL \clk_count[5]~20\ : std_logic;
SIGNAL \clk_count[6]~23\ : std_logic;
SIGNAL \clk_count[7]~25\ : std_logic;
SIGNAL \clk_count[8]~26_combout\ : std_logic;
SIGNAL \clk_count[6]~22_combout\ : std_logic;
SIGNAL \clk_count[2]~13_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.tx_databits~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.tx_start~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.tx_delay~q\ : std_logic;
SIGNAL \tx_datain[2]~input_o\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \tx_datain[6]~input_o\ : std_logic;
SIGNAL \data[6]~feeder_combout\ : std_logic;
SIGNAL \tx_datain[7]~input_o\ : std_logic;
SIGNAL \data[7]~feeder_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \tx_datain[5]~input_o\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \tx_datain[4]~input_o\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \tx_datain[3]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \tx_datain[1]~input_o\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \tx_datain[0]~input_o\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \tx_line~reg0_q\ : std_logic;
SIGNAL tx_buffer : std_logic_vector(7 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL cuenta_tiempo : std_logic_vector(25 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_tx_datavalid <= tx_datavalid;
ww_tx_datain <= tx_datain;
tx_active <= ww_tx_active;
tx_line <= ww_tx_line;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: FF_X32_Y11_N23
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[7]~24_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: FF_X32_Y11_N11
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[1]~11_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X32_Y11_N10
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

-- Location: LCCOMB_X32_Y11_N22
\clk_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[7]~24_combout\ = (clk_count(7) & (!\clk_count[6]~23\)) # (!clk_count(7) & ((\clk_count[6]~23\) # (GND)))
-- \clk_count[7]~25\ = CARRY((!\clk_count[6]~23\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datad => VCC,
	cin => \clk_count[6]~23\,
	combout => \clk_count[7]~24_combout\,
	cout => \clk_count[7]~25\);

-- Location: LCCOMB_X31_Y11_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = cuenta_tiempo(0) $ (VCC)
-- \Add2~1\ = CARRY(cuenta_tiempo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X31_Y11_N22
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (cuenta_tiempo(8) & (\Add2~15\ $ (GND))) # (!cuenta_tiempo(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((cuenta_tiempo(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X31_Y11_N28
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (cuenta_tiempo(11) & (!\Add2~21\)) # (!cuenta_tiempo(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!cuenta_tiempo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X31_Y11_N30
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (cuenta_tiempo(12) & (\Add2~23\ $ (GND))) # (!cuenta_tiempo(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((cuenta_tiempo(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X31_Y10_N2
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (cuenta_tiempo(14) & (\Add2~27\ $ (GND))) # (!cuenta_tiempo(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((cuenta_tiempo(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X31_Y10_N10
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (cuenta_tiempo(18) & (\Add2~35\ $ (GND))) # (!cuenta_tiempo(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((cuenta_tiempo(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X31_Y10_N14
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (cuenta_tiempo(20) & (\Add2~39\ $ (GND))) # (!cuenta_tiempo(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((cuenta_tiempo(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X31_Y10_N16
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (cuenta_tiempo(21) & (!\Add2~41\)) # (!cuenta_tiempo(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!cuenta_tiempo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X31_Y10_N20
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (cuenta_tiempo(23) & (!\Add2~45\)) # (!cuenta_tiempo(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!cuenta_tiempo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X31_Y10_N22
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (cuenta_tiempo(24) & (\Add2~47\ $ (GND))) # (!cuenta_tiempo(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((cuenta_tiempo(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X31_Y10_N24
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = \Add2~49\ $ (cuenta_tiempo(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cuenta_tiempo(25),
	cin => \Add2~49\,
	combout => \Add2~50_combout\);

-- Location: FF_X33_Y11_N11
\cuenta_tiempo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(24));

-- Location: FF_X33_Y11_N19
\cuenta_tiempo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(21));

-- Location: FF_X33_Y11_N9
\cuenta_tiempo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(20));

-- Location: LCCOMB_X33_Y11_N2
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (cuenta_tiempo(24)) # ((cuenta_tiempo(22)) # ((cuenta_tiempo(20)) # (cuenta_tiempo(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(24),
	datab => cuenta_tiempo(22),
	datac => cuenta_tiempo(20),
	datad => cuenta_tiempo(21),
	combout => \output~0_combout\);

-- Location: FF_X31_Y11_N29
\cuenta_tiempo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(25));

-- Location: FF_X31_Y11_N23
\cuenta_tiempo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(8));

-- Location: LCCOMB_X32_Y11_N30
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (cuenta_tiempo(14)) # ((cuenta_tiempo(16)) # ((cuenta_tiempo(19)) # (cuenta_tiempo(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(14),
	datab => cuenta_tiempo(16),
	datac => cuenta_tiempo(19),
	datad => cuenta_tiempo(18),
	combout => \output~2_combout\);

-- Location: FF_X33_Y11_N23
\cuenta_tiempo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(12));

-- Location: LCCOMB_X32_Y11_N28
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (cuenta_tiempo(5)) # ((cuenta_tiempo(12)) # ((cuenta_tiempo(13)) # (cuenta_tiempo(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(5),
	datab => cuenta_tiempo(12),
	datac => cuenta_tiempo(13),
	datad => cuenta_tiempo(11),
	combout => \output~3_combout\);

-- Location: LCCOMB_X32_Y11_N6
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\output~2_combout\) # (\output~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \output~2_combout\,
	datad => \output~3_combout\,
	combout => \output~4_combout\);

-- Location: FF_X31_Y11_N7
\cuenta_tiempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(0));

-- Location: LCCOMB_X33_Y11_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (cuenta_tiempo(21) & (cuenta_tiempo(20) & (cuenta_tiempo(24) & cuenta_tiempo(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(21),
	datab => cuenta_tiempo(20),
	datac => cuenta_tiempo(24),
	datad => cuenta_tiempo(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X33_Y11_N10
\cuenta_tiempo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~1_combout\ = (!\Equal0~8_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add2~48_combout\,
	combout => \cuenta_tiempo~1_combout\);

-- Location: LCCOMB_X33_Y11_N18
\cuenta_tiempo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~3_combout\ = (!\Equal0~8_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add2~42_combout\,
	combout => \cuenta_tiempo~3_combout\);

-- Location: LCCOMB_X33_Y11_N8
\cuenta_tiempo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~4_combout\ = (!\Equal0~8_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add2~40_combout\,
	combout => \cuenta_tiempo~4_combout\);

-- Location: LCCOMB_X33_Y11_N22
\cuenta_tiempo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~10_combout\ = (!\Equal0~8_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add2~24_combout\,
	combout => \cuenta_tiempo~10_combout\);

-- Location: IOOBUF_X28_Y24_N23
\tx_active~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tx_active~output_o\);

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: LCCOMB_X32_Y11_N8
\clk_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[0]~9_combout\ = clk_count(0) $ (VCC)
-- \clk_count[0]~10\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \clk_count[0]~9_combout\,
	cout => \clk_count[0]~10\);

-- Location: IOIBUF_X34_Y12_N22
\tx_datavalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datavalid,
	o => \tx_datavalid~input_o\);

-- Location: LCCOMB_X31_Y11_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (cuenta_tiempo(1) & (!\Add2~1\)) # (!cuenta_tiempo(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!cuenta_tiempo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X31_Y11_N9
\cuenta_tiempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(1));

-- Location: LCCOMB_X31_Y11_N10
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (cuenta_tiempo(2) & (\Add2~3\ $ (GND))) # (!cuenta_tiempo(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((cuenta_tiempo(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X31_Y11_N12
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (cuenta_tiempo(3) & (!\Add2~5\)) # (!cuenta_tiempo(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!cuenta_tiempo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X31_Y11_N14
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (cuenta_tiempo(4) & (\Add2~7\ $ (GND))) # (!cuenta_tiempo(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((cuenta_tiempo(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X31_Y11_N15
\cuenta_tiempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(4));

-- Location: FF_X31_Y11_N11
\cuenta_tiempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(2));

-- Location: LCCOMB_X31_Y11_N0
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (cuenta_tiempo(3)) # ((cuenta_tiempo(1)) # ((cuenta_tiempo(4)) # (cuenta_tiempo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(3),
	datab => cuenta_tiempo(1),
	datac => cuenta_tiempo(4),
	datad => cuenta_tiempo(2),
	combout => \output~5_combout\);

-- Location: LCCOMB_X31_Y11_N2
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (cuenta_tiempo(0)) # ((\tx_datavalid~input_o\) # (\output~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(0),
	datab => \tx_datavalid~input_o\,
	datad => \output~5_combout\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X31_Y11_N16
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (cuenta_tiempo(5) & (!\Add2~9\)) # (!cuenta_tiempo(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!cuenta_tiempo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X31_Y11_N17
\cuenta_tiempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(5));

-- Location: LCCOMB_X31_Y11_N18
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (cuenta_tiempo(6) & (\Add2~11\ $ (GND))) # (!cuenta_tiempo(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((cuenta_tiempo(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X33_Y11_N0
\cuenta_tiempo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~0_combout\ = (!\Equal0~8_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add2~12_combout\,
	combout => \cuenta_tiempo~0_combout\);

-- Location: FF_X33_Y11_N1
\cuenta_tiempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(6));

-- Location: LCCOMB_X31_Y11_N20
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (cuenta_tiempo(7) & (!\Add2~13\)) # (!cuenta_tiempo(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!cuenta_tiempo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X31_Y11_N21
\cuenta_tiempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(7));

-- Location: LCCOMB_X31_Y11_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (cuenta_tiempo(9) & (!\Add2~17\)) # (!cuenta_tiempo(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!cuenta_tiempo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X31_Y11_N25
\cuenta_tiempo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(9));

-- Location: LCCOMB_X31_Y11_N26
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (cuenta_tiempo(10) & (\Add2~19\ $ (GND))) # (!cuenta_tiempo(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((cuenta_tiempo(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X31_Y11_N27
\cuenta_tiempo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(10));

-- Location: LCCOMB_X31_Y11_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cuenta_tiempo(8) & (!cuenta_tiempo(7) & (!cuenta_tiempo(10) & !cuenta_tiempo(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(8),
	datab => cuenta_tiempo(7),
	datac => cuenta_tiempo(10),
	datad => cuenta_tiempo(9),
	combout => \Equal0~1_combout\);

-- Location: FF_X31_Y11_N13
\cuenta_tiempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(3));

-- Location: LCCOMB_X30_Y11_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (cuenta_tiempo(1) & (cuenta_tiempo(3) & (cuenta_tiempo(4) & cuenta_tiempo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(1),
	datab => cuenta_tiempo(3),
	datac => cuenta_tiempo(4),
	datad => cuenta_tiempo(2),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X33_Y11_N24
\cuenta_tiempo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~11_combout\ = (\Add2~22_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datac => \Equal0~8_combout\,
	combout => \cuenta_tiempo~11_combout\);

-- Location: FF_X33_Y11_N25
\cuenta_tiempo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(11));

-- Location: LCCOMB_X32_Y10_N0
\cuenta_tiempo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~6_combout\ = (\Add2~36_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datad => \Equal0~8_combout\,
	combout => \cuenta_tiempo~6_combout\);

-- Location: FF_X32_Y10_N1
\cuenta_tiempo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(18));

-- Location: LCCOMB_X32_Y10_N20
\cuenta_tiempo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~8_combout\ = (\Add2~28_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \cuenta_tiempo~8_combout\);

-- Location: FF_X31_Y11_N3
\cuenta_tiempo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuenta_tiempo~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(14));

-- Location: LCCOMB_X33_Y11_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (cuenta_tiempo(19) & (cuenta_tiempo(18) & (cuenta_tiempo(16) & cuenta_tiempo(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(19),
	datab => cuenta_tiempo(18),
	datac => cuenta_tiempo(16),
	datad => cuenta_tiempo(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y10_N0
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (cuenta_tiempo(13) & (!\Add2~25\)) # (!cuenta_tiempo(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!cuenta_tiempo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X33_Y11_N12
\cuenta_tiempo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~9_combout\ = (!\Equal0~8_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add2~26_combout\,
	combout => \cuenta_tiempo~9_combout\);

-- Location: FF_X33_Y11_N13
\cuenta_tiempo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(13));

-- Location: LCCOMB_X33_Y11_N20
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (cuenta_tiempo(12) & cuenta_tiempo(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(12),
	datad => cuenta_tiempo(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X33_Y11_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cuenta_tiempo(5) & (cuenta_tiempo(11) & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(5),
	datab => cuenta_tiempo(11),
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X33_Y11_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & !cuenta_tiempo(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => cuenta_tiempo(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X33_Y11_N30
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (cuenta_tiempo(0) & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(0),
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X31_Y10_N4
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (cuenta_tiempo(15) & (!\Add2~29\)) # (!cuenta_tiempo(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!cuenta_tiempo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X31_Y10_N5
\cuenta_tiempo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(15));

-- Location: LCCOMB_X31_Y10_N6
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (cuenta_tiempo(16) & (\Add2~31\ $ (GND))) # (!cuenta_tiempo(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((cuenta_tiempo(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X33_Y11_N14
\cuenta_tiempo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~7_combout\ = (!\Equal0~8_combout\ & \Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add2~32_combout\,
	combout => \cuenta_tiempo~7_combout\);

-- Location: FF_X33_Y11_N15
\cuenta_tiempo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(16));

-- Location: LCCOMB_X31_Y10_N8
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (cuenta_tiempo(17) & (!\Add2~33\)) # (!cuenta_tiempo(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!cuenta_tiempo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X31_Y11_N31
\cuenta_tiempo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(17));

-- Location: LCCOMB_X31_Y10_N12
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (cuenta_tiempo(19) & (!\Add2~37\)) # (!cuenta_tiempo(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!cuenta_tiempo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X32_Y10_N22
\cuenta_tiempo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~5_combout\ = (!\Equal0~8_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add2~38_combout\,
	combout => \cuenta_tiempo~5_combout\);

-- Location: FF_X33_Y11_N21
\cuenta_tiempo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cuenta_tiempo~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(19));

-- Location: LCCOMB_X31_Y10_N18
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (cuenta_tiempo(22) & (\Add2~43\ $ (GND))) # (!cuenta_tiempo(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((cuenta_tiempo(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta_tiempo(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X33_Y11_N28
\cuenta_tiempo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta_tiempo~2_combout\ = (!\Equal0~8_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add2~44_combout\,
	combout => \cuenta_tiempo~2_combout\);

-- Location: FF_X33_Y11_N29
\cuenta_tiempo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta_tiempo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(22));

-- Location: FF_X31_Y11_N19
\cuenta_tiempo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_tiempo(23));

-- Location: LCCOMB_X32_Y11_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cuenta_tiempo(25) & (!cuenta_tiempo(17) & (!cuenta_tiempo(15) & !cuenta_tiempo(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta_tiempo(25),
	datab => cuenta_tiempo(17),
	datac => cuenta_tiempo(15),
	datad => cuenta_tiempo(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y11_N2
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\output~0_combout\) # ((cuenta_tiempo(6)) # ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~0_combout\,
	datab => cuenta_tiempo(6),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X32_Y11_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.tx_idle~q\) # ((!\output~4_combout\ & (!\output~6_combout\ & !\output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~4_combout\,
	datab => \output~6_combout\,
	datac => \state.tx_idle~q\,
	datad => \output~1_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X32_Y11_N5
\state.tx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_idle~q\);

-- Location: LCCOMB_X31_Y9_N10
\clk_count[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[8]~21_combout\ = (\state.tx_start~q\) # (((\state.tx_delay~q\ & \LessThan0~1_combout\)) # (!\state.tx_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_start~q\,
	datab => \state.tx_delay~q\,
	datac => \state.tx_idle~q\,
	datad => \LessThan0~1_combout\,
	combout => \clk_count[8]~21_combout\);

-- Location: FF_X32_Y11_N9
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[0]~9_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X32_Y11_N12
\clk_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[2]~13_combout\ = (clk_count(2) & (\clk_count[1]~12\ $ (GND))) # (!clk_count(2) & (!\clk_count[1]~12\ & VCC))
-- \clk_count[2]~14\ = CARRY((clk_count(2) & !\clk_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \clk_count[1]~12\,
	combout => \clk_count[2]~13_combout\,
	cout => \clk_count[2]~14\);

-- Location: LCCOMB_X32_Y11_N14
\clk_count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[3]~15_combout\ = (clk_count(3) & (!\clk_count[2]~14\)) # (!clk_count(3) & ((\clk_count[2]~14\) # (GND)))
-- \clk_count[3]~16\ = CARRY((!\clk_count[2]~14\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \clk_count[2]~14\,
	combout => \clk_count[3]~15_combout\,
	cout => \clk_count[3]~16\);

-- Location: FF_X32_Y11_N15
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[3]~15_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X32_Y11_N16
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

-- Location: FF_X32_Y11_N17
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[4]~17_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X32_Y11_N18
\clk_count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[5]~19_combout\ = (clk_count(5) & (!\clk_count[4]~18\)) # (!clk_count(5) & ((\clk_count[4]~18\) # (GND)))
-- \clk_count[5]~20\ = CARRY((!\clk_count[4]~18\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \clk_count[4]~18\,
	combout => \clk_count[5]~19_combout\,
	cout => \clk_count[5]~20\);

-- Location: FF_X32_Y11_N19
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[5]~19_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X32_Y11_N20
\clk_count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[6]~22_combout\ = (clk_count(6) & (\clk_count[5]~20\ $ (GND))) # (!clk_count(6) & (!\clk_count[5]~20\ & VCC))
-- \clk_count[6]~23\ = CARRY((clk_count(6) & !\clk_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datad => VCC,
	cin => \clk_count[5]~20\,
	combout => \clk_count[6]~22_combout\,
	cout => \clk_count[6]~23\);

-- Location: LCCOMB_X32_Y11_N24
\clk_count[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count[8]~26_combout\ = clk_count(8) $ (!\clk_count[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	cin => \clk_count[7]~25\,
	combout => \clk_count[8]~26_combout\);

-- Location: FF_X32_Y11_N25
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[8]~26_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: FF_X32_Y11_N21
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[6]~22_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: FF_X32_Y11_N13
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clk_count[2]~13_combout\,
	sclr => \clk_count[8]~21_combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X32_Y8_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (clk_count(5) & ((clk_count(2)) # ((clk_count(3)) # (clk_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datab => clk_count(2),
	datac => clk_count(3),
	datad => clk_count(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y8_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (clk_count(7) & (clk_count(8) & (clk_count(6) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(8),
	datac => clk_count(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y9_N14
\state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\state.tx_delay~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.tx_delay~q\,
	datad => \LessThan0~1_combout\,
	combout => \state~7_combout\);

-- Location: FF_X31_Y9_N15
\state.tx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_databits~q\);

-- Location: LCCOMB_X32_Y11_N26
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\output~4_combout\ & (!\output~6_combout\ & (!\state.tx_idle~q\ & !\output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~4_combout\,
	datab => \output~6_combout\,
	datac => \state.tx_idle~q\,
	datad => \output~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X32_Y11_N27
\state.tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_start~q\);

-- Location: LCCOMB_X31_Y9_N2
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.tx_databits~q\) # ((\state.tx_start~q\) # ((!\LessThan0~1_combout\ & \state.tx_delay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \state.tx_databits~q\,
	datac => \state.tx_delay~q\,
	datad => \state.tx_start~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X31_Y9_N3
\state.tx_delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.tx_delay~q\);

-- Location: IOIBUF_X34_Y12_N8
\tx_datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(2),
	o => \tx_datain[2]~input_o\);

-- Location: LCCOMB_X33_Y9_N20
\data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = \tx_datain[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[2]~input_o\,
	combout => \data[2]~feeder_combout\);

-- Location: FF_X33_Y9_N21
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: IOIBUF_X34_Y9_N15
\tx_datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(6),
	o => \tx_datain[6]~input_o\);

-- Location: LCCOMB_X33_Y9_N12
\data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[6]~feeder_combout\ = \tx_datain[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[6]~input_o\,
	combout => \data[6]~feeder_combout\);

-- Location: FF_X33_Y9_N13
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: IOIBUF_X34_Y9_N22
\tx_datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(7),
	o => \tx_datain[7]~input_o\);

-- Location: LCCOMB_X33_Y9_N10
\data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[7]~feeder_combout\ = \tx_datain[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[7]~input_o\,
	combout => \data[7]~feeder_combout\);

-- Location: FF_X33_Y9_N11
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X32_Y9_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.tx_databits~q\ & ((tx_buffer(0)))) # (!\state.tx_databits~q\ & (data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datac => data(7),
	datad => tx_buffer(0),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X31_Y9_N24
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\state.tx_databits~q\) # (\state.tx_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.tx_databits~q\,
	datad => \state.tx_start~q\,
	combout => \WideOr2~0_combout\);

-- Location: FF_X32_Y9_N23
\tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(7));

-- Location: LCCOMB_X32_Y9_N20
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.tx_databits~q\ & ((tx_buffer(7)))) # (!\state.tx_databits~q\ & (data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datab => data(6),
	datac => tx_buffer(7),
	combout => \Selector14~0_combout\);

-- Location: FF_X32_Y9_N21
\tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(6));

-- Location: IOIBUF_X34_Y9_N1
\tx_datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(5),
	o => \tx_datain[5]~input_o\);

-- Location: LCCOMB_X33_Y9_N18
\data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = \tx_datain[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[5]~input_o\,
	combout => \data[5]~feeder_combout\);

-- Location: FF_X33_Y9_N19
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X32_Y9_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.tx_databits~q\ & (tx_buffer(6))) # (!\state.tx_databits~q\ & ((data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datab => tx_buffer(6),
	datad => data(5),
	combout => \Selector15~0_combout\);

-- Location: FF_X32_Y9_N27
\tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(5));

-- Location: IOIBUF_X34_Y9_N8
\tx_datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(4),
	o => \tx_datain[4]~input_o\);

-- Location: LCCOMB_X33_Y9_N28
\data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = \tx_datain[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[4]~input_o\,
	combout => \data[4]~feeder_combout\);

-- Location: FF_X33_Y9_N29
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X32_Y9_N0
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.tx_databits~q\ & (tx_buffer(5))) # (!\state.tx_databits~q\ & ((data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datac => tx_buffer(5),
	datad => data(4),
	combout => \Selector16~0_combout\);

-- Location: FF_X32_Y9_N1
\tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(4));

-- Location: IOIBUF_X34_Y12_N1
\tx_datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(3),
	o => \tx_datain[3]~input_o\);

-- Location: FF_X33_Y9_N23
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \tx_datain[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X32_Y9_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.tx_databits~q\ & (tx_buffer(4))) # (!\state.tx_databits~q\ & ((data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datab => tx_buffer(4),
	datad => data(3),
	combout => \Selector17~0_combout\);

-- Location: FF_X32_Y9_N11
\tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(3));

-- Location: LCCOMB_X32_Y9_N4
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.tx_databits~q\ & ((tx_buffer(3)))) # (!\state.tx_databits~q\ & (data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datac => data(2),
	datad => tx_buffer(3),
	combout => \Selector18~0_combout\);

-- Location: FF_X32_Y9_N5
\tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(2));

-- Location: IOIBUF_X34_Y10_N8
\tx_datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(1),
	o => \tx_datain[1]~input_o\);

-- Location: LCCOMB_X33_Y9_N6
\data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = \tx_datain[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[1]~input_o\,
	combout => \data[1]~feeder_combout\);

-- Location: FF_X33_Y9_N7
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X32_Y9_N2
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.tx_databits~q\ & (tx_buffer(2))) # (!\state.tx_databits~q\ & ((data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datac => tx_buffer(2),
	datad => data(1),
	combout => \Selector19~0_combout\);

-- Location: FF_X32_Y9_N3
\tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(1));

-- Location: IOIBUF_X34_Y12_N15
\tx_datain[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(0),
	o => \tx_datain[0]~input_o\);

-- Location: LCCOMB_X33_Y9_N8
\data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = \tx_datain[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_datain[0]~input_o\,
	combout => \data[0]~feeder_combout\);

-- Location: FF_X33_Y9_N9
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X32_Y9_N12
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.tx_databits~q\ & (tx_buffer(1))) # (!\state.tx_databits~q\ & ((data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_databits~q\,
	datab => tx_buffer(1),
	datac => data(0),
	combout => \Selector20~0_combout\);

-- Location: FF_X32_Y9_N13
\tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(0));

-- Location: LCCOMB_X31_Y9_N0
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (tx_buffer(0) & \state.tx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(0),
	datac => \state.tx_databits~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X31_Y9_N16
\Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\) # ((\tx_line~reg0_q\ & ((\state.tx_delay~q\) # (!\state.tx_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.tx_idle~q\,
	datab => \state.tx_delay~q\,
	datac => \tx_line~reg0_q\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X31_Y9_N17
\tx_line~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_line~reg0_q\);

-- Location: IOIBUF_X34_Y3_N22
\tx_datain[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(8),
	o => \tx_datain[8]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\tx_datain[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(9),
	o => \tx_datain[9]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\tx_datain[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(10),
	o => \tx_datain[10]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\tx_datain[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(11),
	o => \tx_datain[11]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\tx_datain[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(12),
	o => \tx_datain[12]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\tx_datain[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(13),
	o => \tx_datain[13]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\tx_datain[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(14),
	o => \tx_datain[14]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\tx_datain[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(15),
	o => \tx_datain[15]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\tx_datain[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(16),
	o => \tx_datain[16]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\tx_datain[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(17),
	o => \tx_datain[17]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\tx_datain[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(18),
	o => \tx_datain[18]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\tx_datain[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(19),
	o => \tx_datain[19]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\tx_datain[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(20),
	o => \tx_datain[20]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\tx_datain[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(21),
	o => \tx_datain[21]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\tx_datain[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(22),
	o => \tx_datain[22]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\tx_datain[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(23),
	o => \tx_datain[23]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\tx_datain[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(24),
	o => \tx_datain[24]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\tx_datain[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(25),
	o => \tx_datain[25]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\tx_datain[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(26),
	o => \tx_datain[26]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\tx_datain[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(27),
	o => \tx_datain[27]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\tx_datain[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(28),
	o => \tx_datain[28]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\tx_datain[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(29),
	o => \tx_datain[29]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\tx_datain[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(30),
	o => \tx_datain[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\tx_datain[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_datain(31),
	o => \tx_datain[31]~input_o\);

ww_tx_active <= \tx_active~output_o\;

ww_tx_line <= \tx_line~output_o\;
END structure;


