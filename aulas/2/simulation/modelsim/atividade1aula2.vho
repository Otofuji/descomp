-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/22/2022 15:20:07"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	atividade1aula2 IS
    PORT (
	Endereco : IN std_logic_vector(2 DOWNTO 0);
	Dado : OUT std_logic_vector(7 DOWNTO 0)
	);
END atividade1aula2;

-- Design Ports Information
-- Dado[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF atividade1aula2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \memROM~0_combout\ : std_logic;
SIGNAL \memROM~1_combout\ : std_logic;
SIGNAL \memROM~2_combout\ : std_logic;
SIGNAL \memROM~3_combout\ : std_logic;
SIGNAL \memROM~4_combout\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
Dado <= ww_Dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;

-- Location: IOOBUF_X54_Y19_N5
\Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Dado(0));

-- Location: IOOBUF_X54_Y18_N62
\Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Dado(1));

-- Location: IOOBUF_X54_Y17_N56
\Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado(2));

-- Location: IOOBUF_X54_Y20_N5
\Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_Dado(3));

-- Location: IOOBUF_X54_Y19_N56
\Dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_Dado(4));

-- Location: IOOBUF_X46_Y45_N76
\Dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dado(5));

-- Location: IOOBUF_X54_Y20_N56
\Dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Endereco[2]~input_o\,
	devoe => ww_devoe,
	o => ww_Dado(6));

-- Location: IOOBUF_X0_Y21_N5
\Dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dado(7));

-- Location: IOIBUF_X54_Y19_N38
\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

-- Location: IOIBUF_X54_Y19_N21
\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

-- Location: IOIBUF_X54_Y20_N21
\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

-- Location: LABCELL_X53_Y19_N0
\memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~0_combout\ = ( \Endereco[1]~input_o\ & ( \Endereco[2]~input_o\ & ( !\Endereco[0]~input_o\ ) ) ) # ( \Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ ) ) # ( !\Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( !\Endereco[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~0_combout\);

-- Location: LABCELL_X53_Y19_N9
\memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~1_combout\ = ( \Endereco[1]~input_o\ & ( \Endereco[2]~input_o\ ) ) # ( \Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( \Endereco[0]~input_o\ ) ) ) # ( !\Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( \Endereco[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~1_combout\);

-- Location: LABCELL_X53_Y19_N42
\memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~2_combout\ = ( !\Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( !\Endereco[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~2_combout\);

-- Location: LABCELL_X53_Y19_N51
\memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~3_combout\ = ( \Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( !\Endereco[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~3_combout\);

-- Location: LABCELL_X53_Y19_N24
\memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~4_combout\ = ( \Endereco[1]~input_o\ & ( \Endereco[2]~input_o\ ) ) # ( !\Endereco[1]~input_o\ & ( \Endereco[2]~input_o\ & ( \Endereco[0]~input_o\ ) ) ) # ( !\Endereco[1]~input_o\ & ( !\Endereco[2]~input_o\ & ( \Endereco[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~4_combout\);

-- Location: LABCELL_X32_Y41_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


