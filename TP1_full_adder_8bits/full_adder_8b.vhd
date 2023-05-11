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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"
-- CREATED		"Thu Apr 20 09:56:54 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder_8b IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(0 TO 7);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(0 TO 7)
	);
END full_adder_8b;

ARCHITECTURE bdf_type OF full_adder_8b IS 

COMPONENT full_adder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 s : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst10 : full_adder
PORT MAP(a => A(6),
		 b => B(6),
		 cin => SYNTHESIZED_WIRE_0,
		 s => S_ALTERA_SYNTHESIZED(6),
		 cout => SYNTHESIZED_WIRE_2);


b2v_inst11 : full_adder
PORT MAP(a => A(5),
		 b => B(5),
		 cin => SYNTHESIZED_WIRE_1,
		 s => S_ALTERA_SYNTHESIZED(5),
		 cout => SYNTHESIZED_WIRE_0);


b2v_inst12 : full_adder
PORT MAP(a => A(0),
		 b => B(0),
		 cin => Cin,
		 s => S_ALTERA_SYNTHESIZED(0),
		 cout => SYNTHESIZED_WIRE_4);


b2v_inst13 : full_adder
PORT MAP(a => A(7),
		 b => B(7),
		 cin => SYNTHESIZED_WIRE_2,
		 s => S_ALTERA_SYNTHESIZED(7),
		 cout => Cout);


b2v_inst6 : full_adder
PORT MAP(a => A(2),
		 b => B(2),
		 cin => SYNTHESIZED_WIRE_3,
		 s => S_ALTERA_SYNTHESIZED(2),
		 cout => SYNTHESIZED_WIRE_5);


b2v_inst7 : full_adder
PORT MAP(a => A(1),
		 b => B(1),
		 cin => SYNTHESIZED_WIRE_4,
		 s => S_ALTERA_SYNTHESIZED(1),
		 cout => SYNTHESIZED_WIRE_3);


b2v_inst8 : full_adder
PORT MAP(a => A(3),
		 b => B(3),
		 cin => SYNTHESIZED_WIRE_5,
		 s => S_ALTERA_SYNTHESIZED(3),
		 cout => SYNTHESIZED_WIRE_6);


b2v_inst9 : full_adder
PORT MAP(a => A(4),
		 b => B(4),
		 cin => SYNTHESIZED_WIRE_6,
		 s => S_ALTERA_SYNTHESIZED(4),
		 cout => SYNTHESIZED_WIRE_1);

S(0 TO 7) <= S_ALTERA_SYNTHESIZED(0 TO 7);

END bdf_type;