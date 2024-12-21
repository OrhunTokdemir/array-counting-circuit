-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Web Edition"

-- DATE "12/19/2024 22:36:37"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	Counter_Project IS
    PORT (
	clk : IN std_logic;
	f0 : OUT std_logic;
	f1 : OUT std_logic;
	f2 : OUT std_logic
	);
END Counter_Project;

ARCHITECTURE structure OF Counter_Project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_f0 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \x1~1DUPLICATE_combout\ : std_logic;
SIGNAL \x1~DUPLICATE_regout\ : std_logic;
SIGNAL \X0~1_combout\ : std_logic;
SIGNAL \X0~regout\ : std_logic;
SIGNAL \A1~2_combout\ : std_logic;
SIGNAL \A1~regout\ : std_logic;
SIGNAL \X0~1DUPLICATE_combout\ : std_logic;
SIGNAL \X0~DUPLICATE_regout\ : std_logic;
SIGNAL \x1~1_combout\ : std_logic;
SIGNAL \x1~regout\ : std_logic;
SIGNAL \A0~2DUPLICATE_combout\ : std_logic;
SIGNAL \A0~DUPLICATE_regout\ : std_logic;
SIGNAL \A2~1_combout\ : std_logic;
SIGNAL \A2~regout\ : std_logic;
SIGNAL \A0~2_combout\ : std_logic;
SIGNAL \A0~regout\ : std_logic;
SIGNAL \A2~1DUPLICATE_combout\ : std_logic;
SIGNAL \A2~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_A0~regout\ : std_logic;
SIGNAL \ALT_INV_A1~regout\ : std_logic;
SIGNAL \ALT_INV_A2~regout\ : std_logic;
SIGNAL \ALT_INV_x1~regout\ : std_logic;
SIGNAL \ALT_INV_X0~regout\ : std_logic;
SIGNAL \ALT_INV_A0~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_A2~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_x1~DUPLICATE_regout\ : std_logic;
SIGNAL \ALT_INV_X0~DUPLICATE_regout\ : std_logic;

BEGIN

ww_clk <= clk;
f0 <= ww_f0;
f1 <= ww_f1;
f2 <= ww_f2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_A0~regout\ <= NOT \A0~regout\;
\ALT_INV_A1~regout\ <= NOT \A1~regout\;
\ALT_INV_A2~regout\ <= NOT \A2~regout\;
\ALT_INV_x1~regout\ <= NOT \x1~regout\;
\ALT_INV_X0~regout\ <= NOT \X0~regout\;
\ALT_INV_A0~DUPLICATE_regout\ <= NOT \A0~DUPLICATE_regout\;
\ALT_INV_A2~DUPLICATE_regout\ <= NOT \A2~DUPLICATE_regout\;
\ALT_INV_x1~DUPLICATE_regout\ <= NOT \x1~DUPLICATE_regout\;
\ALT_INV_X0~DUPLICATE_regout\ <= NOT \X0~DUPLICATE_regout\;

\clk~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\x1~1DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \x1~1DUPLICATE_combout\ = !\x1~DUPLICATE_regout\ & \A1~regout\ & ( !\A2~regout\ & \X0~DUPLICATE_regout\ & \A0~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_X0~DUPLICATE_regout\,
	datad => \ALT_INV_A0~DUPLICATE_regout\,
	datae => \ALT_INV_x1~DUPLICATE_regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \x1~1DUPLICATE_combout\);

\x1~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \x1~1DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x1~DUPLICATE_regout\);

\X0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \X0~1_combout\ = !\X0~regout\ & \A1~regout\ & ( !\A2~regout\ & \A0~regout\ & !\x1~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_A0~regout\,
	datad => \ALT_INV_x1~regout\,
	datae => \ALT_INV_X0~regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \X0~1_combout\);

X0 : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \X0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \X0~regout\);

\A1~2\ : stratixii_lcell_comb
-- Equation(s):
-- \A1~2_combout\ = \A1~regout\ & \X0~regout\ # !\A1~regout\ & \X0~regout\ & ( \A2~regout\ & \A0~DUPLICATE_regout\ ) # \A1~regout\ & !\X0~regout\ & ( !\x1~DUPLICATE_regout\ # !\A0~DUPLICATE_regout\ # \A2~regout\ ) # !\A1~regout\ & !\X0~regout\ & ( 
-- \A2~regout\ & \A0~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111001100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_x1~DUPLICATE_regout\,
	datad => \ALT_INV_A0~DUPLICATE_regout\,
	datae => \ALT_INV_A1~regout\,
	dataf => \ALT_INV_X0~regout\,
	combout => \A1~2_combout\);

A1 : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A1~regout\);

\X0~1DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \X0~1DUPLICATE_combout\ = !\X0~DUPLICATE_regout\ & \A1~regout\ & ( !\A2~regout\ & !\x1~regout\ & \A0~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_x1~regout\,
	datad => \ALT_INV_A0~regout\,
	datae => \ALT_INV_X0~DUPLICATE_regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \X0~1DUPLICATE_combout\);

\X0~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \X0~1DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \X0~DUPLICATE_regout\);

\x1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \x1~1_combout\ = !\x1~regout\ & \A1~regout\ & ( !\A2~regout\ & \A0~DUPLICATE_regout\ & \X0~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_A0~DUPLICATE_regout\,
	datad => \ALT_INV_X0~DUPLICATE_regout\,
	datae => \ALT_INV_x1~regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \x1~1_combout\);

x1 : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \x1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x1~regout\);

\A0~2DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \A0~2DUPLICATE_combout\ = \A0~DUPLICATE_regout\ & \A1~regout\ & ( !\x1~regout\ # \X0~DUPLICATE_regout\ # \A2~regout\ ) # !\A0~DUPLICATE_regout\ & \A1~regout\ # \A0~DUPLICATE_regout\ & !\A1~regout\ & ( !\A2~regout\ ) # !\A0~DUPLICATE_regout\ & !\A1~regout\ 
-- & ( !\A2~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_x1~regout\,
	datad => \ALT_INV_X0~DUPLICATE_regout\,
	datae => \ALT_INV_A0~DUPLICATE_regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \A0~2DUPLICATE_combout\);

\A0~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A0~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0~DUPLICATE_regout\);

\A2~1\ : stratixii_lcell_comb
-- Equation(s):
-- \A2~1_combout\ = !\A2~regout\ & \A1~regout\ & ( \A0~DUPLICATE_regout\ & \x1~DUPLICATE_regout\ & !\X0~regout\ ) # !\A2~regout\ & !\A1~regout\ & ( \A0~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A0~DUPLICATE_regout\,
	datac => \ALT_INV_x1~DUPLICATE_regout\,
	datad => \ALT_INV_X0~regout\,
	datae => \ALT_INV_A2~regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \A2~1_combout\);

A2 : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A2~regout\);

\A0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \A0~2_combout\ = \A0~regout\ & \A1~regout\ & ( !\x1~regout\ # \X0~DUPLICATE_regout\ # \A2~regout\ ) # !\A0~regout\ & \A1~regout\ # \A0~regout\ & !\A1~regout\ & ( !\A2~regout\ ) # !\A0~regout\ & !\A1~regout\ & ( !\A2~regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A2~regout\,
	datac => \ALT_INV_X0~DUPLICATE_regout\,
	datad => \ALT_INV_x1~regout\,
	datae => \ALT_INV_A0~regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \A0~2_combout\);

A0 : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A0~regout\);

\A2~1DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \A2~1DUPLICATE_combout\ = !\A2~DUPLICATE_regout\ & \A1~regout\ & ( \A0~DUPLICATE_regout\ & !\X0~regout\ & \x1~DUPLICATE_regout\ ) # !\A2~DUPLICATE_regout\ & !\A1~regout\ & ( \A0~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A0~DUPLICATE_regout\,
	datac => \ALT_INV_X0~regout\,
	datad => \ALT_INV_x1~DUPLICATE_regout\,
	datae => \ALT_INV_A2~DUPLICATE_regout\,
	dataf => \ALT_INV_A1~regout\,
	combout => \A2~1DUPLICATE_combout\);

\A2~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A2~1DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A2~DUPLICATE_regout\);

\f0~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \A0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f0);

\f1~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \A1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f1);

\f2~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
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
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \A2~DUPLICATE_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f2);
END structure;


