 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_shift_register_siso8 IS
 END ENTITY tb_shift_register_siso8;
 
 ARCHITECTURE behavior OF tb_shift_register_siso8 IS
 	
	SIGNAL Si : std_logic;
	SIGNAL CLK : std_logic := '0';
	SIGNAL SETn : std_logic;
	SIGNAL RSTn : std_logic;
	SIGNAL So : std_logic;
	
BEGIN

	UUT : entity work.shift_register_siso8 PORT MAP(
		Si => Si,
		CLK => CLK,
		SETn => SETn,
		RSTn => RSTn,
		So => So
	);
    Clock : PROCESS
    BEGIN
        CLK <= not(CLK);
		  
		  Wait for 1ns;
		  
    END PROCESS Clock;
	 
	 stimulusSynchrone : PROCESS
	 BEGIN
			Si <= '0';
			wait for 4ns;
			
			Si <= '1';
			wait for 4ns;

	 END PROCESS stimulusSynchrone;
	 
	 stimulusAsynchrone : PROCESS
	 BEGIN
			RSTn <= '0';
			wait for 4ns;
			
			RSTn <= '1';
			wait for 4ns;
			
			SETn <= '0';
			wait for 4ns;
			
			SETn <= '1';
			wait for 4ns;
			
	END PROCESS stimulusAsynchrone;

END ARCHITECTURE behavior;