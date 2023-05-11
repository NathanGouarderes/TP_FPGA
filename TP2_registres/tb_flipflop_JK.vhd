 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_flipflop_JK IS
 END ENTITY tb_flipflop_JK;
 
 ARCHITECTURE behavior OF tb_flipflop_JK IS
 	
	SIGNAL J : std_logic;
	SIGNAL K : std_logic;
	SIGNAL CLK : std_logic :='0';
	SIGNAL Q : std_logic;
	SIGNAL Qn : std_logic;
	
BEGIN

	UUT : entity work.flipflop_JK PORT MAP(
		J => J,
      K => K,
		CLK => CLK,
		Q => Q,
		Qn => Qn
	);
    Clock : PROCESS
    BEGIN
        -- Entrée 0000
        CLK <= not(CLK);
		  
		  Wait for 1ns;
		  
    END PROCESS Clock;
	 
	 stimulus : PROCESS
	 BEGIN
			J <= '0';
			K <= '0';
			wait for 4ns;
			
			J <= '1';
			wait for 4ns;
			
			K <= '1';
			wait for 4ns;
			
			J <= '0';
			wait for 4ns;

	 END PROCESS stimulus;

END ARCHITECTURE behavior;