-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/20/2023 10:49:54"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder8bits IS
    PORT (
	Cout : OUT std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(0 TO 7)
	);
END full_adder8bits;

-- Design Ports Information
-- Cout	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(0 TO 7);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst7|cout~combout\ : std_logic;
SIGNAL \inst8|cout~combout\ : std_logic;
SIGNAL \inst11|cout~combout\ : std_logic;
SIGNAL \inst13|cout~combout\ : std_logic;
SIGNAL \inst12|half_adder2|s~combout\ : std_logic;
SIGNAL \inst7|half_adder2|s~combout\ : std_logic;
SIGNAL \inst6|half_adder2|s~combout\ : std_logic;
SIGNAL \inst8|half_adder2|s~combout\ : std_logic;
SIGNAL \inst9|half_adder1|s~combout\ : std_logic;
SIGNAL \inst9|half_adder2|s~combout\ : std_logic;
SIGNAL \inst11|half_adder2|s~combout\ : std_logic;
SIGNAL \inst10|half_adder1|s~combout\ : std_logic;
SIGNAL \inst10|half_adder2|s~combout\ : std_logic;
SIGNAL \inst13|half_adder2|s~combout\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \inst10|half_adder1|ALT_INV_s~combout\ : std_logic;
SIGNAL \inst9|half_adder1|ALT_INV_s~combout\ : std_logic;
SIGNAL \inst11|ALT_INV_cout~combout\ : std_logic;
SIGNAL \inst8|ALT_INV_cout~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_cout~combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\inst10|half_adder1|ALT_INV_s~combout\ <= NOT \inst10|half_adder1|s~combout\;
\inst9|half_adder1|ALT_INV_s~combout\ <= NOT \inst9|half_adder1|s~combout\;
\inst11|ALT_INV_cout~combout\ <= NOT \inst11|cout~combout\;
\inst8|ALT_INV_cout~combout\ <= NOT \inst8|cout~combout\;
\inst7|ALT_INV_cout~combout\ <= NOT \inst7|cout~combout\;

-- Location: IOOBUF_X42_Y0_N53
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|cout~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X40_Y0_N93
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X44_Y0_N36
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X40_Y0_N42
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X40_Y0_N59
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X40_Y0_N76
\S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(4));

-- Location: IOOBUF_X42_Y0_N19
\S[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(5));

-- Location: IOOBUF_X44_Y0_N19
\S[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(6));

-- Location: IOOBUF_X42_Y0_N36
\S[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|half_adder2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(7));

-- Location: IOIBUF_X38_Y0_N18
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N58
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N92
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N75
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N41
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X38_Y2_N48
\inst7|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|cout~combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( ((\Cin~input_o\) # (\A[1]~input_o\)) # (\A[0]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( ((\A[0]~input_o\ & \Cin~input_o\)) # (\A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\B[1]~input_o\ & ( (\A[1]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (\A[1]~input_o\ & \Cin~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst7|cout~combout\);

-- Location: LABCELL_X38_Y2_N33
\inst8|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|cout~combout\ = ( \B[3]~input_o\ & ( \inst7|cout~combout\ & ( ((\A[2]~input_o\) # (\A[3]~input_o\)) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \inst7|cout~combout\ & ( (\A[3]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) ) ) ) # ( 
-- \B[3]~input_o\ & ( !\inst7|cout~combout\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\A[3]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\inst7|cout~combout\ & ( (\B[2]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001101110011011100010011000100110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \inst7|ALT_INV_cout~combout\,
	combout => \inst8|cout~combout\);

-- Location: LABCELL_X38_Y2_N12
\inst11|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|cout~combout\ = ( \inst8|cout~combout\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\A[4]~input_o\) # (\B[4]~input_o\)))) # (\B[5]~input_o\ & (((\A[4]~input_o\) # (\A[5]~input_o\)) # (\B[4]~input_o\))) ) ) # ( !\inst8|cout~combout\ & ( 
-- (!\B[5]~input_o\ & (\B[4]~input_o\ & (\A[5]~input_o\ & \A[4]~input_o\))) # (\B[5]~input_o\ & (((\B[4]~input_o\ & \A[4]~input_o\)) # (\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \inst8|ALT_INV_cout~combout\,
	combout => \inst11|cout~combout\);

-- Location: LABCELL_X38_Y2_N54
\inst13|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|cout~combout\ = ( \inst11|cout~combout\ & ( (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))) # (\A[7]~input_o\ & (((\B[7]~input_o\) # (\A[6]~input_o\)) # (\B[6]~input_o\))) ) ) # ( !\inst11|cout~combout\ & ( 
-- (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\))) # (\A[7]~input_o\ & (((\B[6]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \inst11|ALT_INV_cout~combout\,
	combout => \inst13|cout~combout\);

-- Location: LABCELL_X38_Y2_N0
\inst12|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|half_adder2|s~combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \inst12|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N45
\inst7|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|half_adder2|s~combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\A[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\Cin~input_o\ & \A[0]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\ & !\A[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\Cin~input_o\) # (!\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010010110101111000011110000101001011010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \inst7|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N27
\inst6|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|half_adder2|s~combout\ = ( \B[2]~input_o\ & ( !\inst7|cout~combout\ $ (\A[2]~input_o\) ) ) # ( !\B[2]~input_o\ & ( !\inst7|cout~combout\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_cout~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \inst6|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N24
\inst8|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|half_adder2|s~combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\inst7|cout~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)) # (\inst7|cout~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ 
-- (((!\inst7|cout~combout\ & ((!\A[2]~input_o\) # (!\B[2]~input_o\))) # (\inst7|cout~combout\ & (!\A[2]~input_o\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_cout~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \inst8|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N18
\inst9|half_adder1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|half_adder1|s~combout\ = !\B[4]~input_o\ $ (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \inst9|half_adder1|s~combout\);

-- Location: LABCELL_X38_Y2_N36
\inst9|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|half_adder2|s~combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( !\inst9|half_adder1|s~combout\ $ (((!\A[2]~input_o\ & (!\inst7|cout~combout\ & !\A[3]~input_o\)))) ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( !\inst9|half_adder1|s~combout\ $ 
-- (((!\A[3]~input_o\) # ((!\A[2]~input_o\ & !\inst7|cout~combout\)))) ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( !\inst9|half_adder1|s~combout\ $ (((!\A[3]~input_o\ & ((!\A[2]~input_o\) # (!\inst7|cout~combout\))))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\B[2]~input_o\ & ( !\inst9|half_adder1|s~combout\ $ (((!\A[2]~input_o\) # ((!\inst7|cout~combout\) # (!\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101101010101001010101011010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|half_adder1|ALT_INV_s~combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \inst7|ALT_INV_cout~combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \inst9|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N21
\inst11|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|half_adder2|s~combout\ = ( \inst8|cout~combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) # ( !\inst8|cout~combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (((\B[4]~input_o\ & \A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \inst8|ALT_INV_cout~combout\,
	combout => \inst11|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N15
\inst10|half_adder1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|half_adder1|s~combout\ = ( \B[6]~input_o\ & ( !\A[6]~input_o\ ) ) # ( !\B[6]~input_o\ & ( \A[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \inst10|half_adder1|s~combout\);

-- Location: LABCELL_X38_Y2_N6
\inst10|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|half_adder2|s~combout\ = ( \B[5]~input_o\ & ( \B[4]~input_o\ & ( !\inst10|half_adder1|s~combout\ $ (((!\A[5]~input_o\ & (!\A[4]~input_o\ & !\inst8|cout~combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( \B[4]~input_o\ & ( !\inst10|half_adder1|s~combout\ $ 
-- (((!\A[5]~input_o\) # ((!\A[4]~input_o\ & !\inst8|cout~combout\)))) ) ) ) # ( \B[5]~input_o\ & ( !\B[4]~input_o\ & ( !\inst10|half_adder1|s~combout\ $ (((!\A[5]~input_o\ & ((!\A[4]~input_o\) # (!\inst8|cout~combout\))))) ) ) ) # ( !\B[5]~input_o\ & ( 
-- !\B[4]~input_o\ & ( !\inst10|half_adder1|s~combout\ $ (((!\A[5]~input_o\) # ((!\A[4]~input_o\) # (!\inst8|cout~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110010101111010100000010101111010100111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \inst8|ALT_INV_cout~combout\,
	datad => \inst10|half_adder1|ALT_INV_s~combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \inst10|half_adder2|s~combout\);

-- Location: LABCELL_X38_Y2_N57
\inst13|half_adder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|half_adder2|s~combout\ = ( \inst11|cout~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\A[6]~input_o\) # (\B[6]~input_o\)))) ) ) # ( !\inst11|cout~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\ $ (((\B[6]~input_o\ & \A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \inst11|ALT_INV_cout~combout\,
	combout => \inst13|half_adder2|s~combout\);

-- Location: LABCELL_X51_Y26_N0
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


