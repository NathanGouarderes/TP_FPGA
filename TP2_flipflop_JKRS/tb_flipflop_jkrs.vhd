 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_flipflop_JKrs IS
 END ENTITY tb_flipflop_JKrs;
 
 ARCHITECTURE behavior OF tb_flipflop_JKrs IS
 	
	SIGNAL J : std_logic;
	SIGNAL K : std_logic;
	SIGNAL CLK : std_logic := '0';
	SIGNAL SETn : std_logic;
	SIGNAL RSTn : std_logic;
	SIGNAL Q : std_logic;
	SIGNAL Qn : std_logic;
	
BEGIN

	UUT : entity work.flipflop_JKrs PORT MAP(
		J => J,
      K => K,
		CLK => CLK,
		SETn => SETn,
		RSTn => RSTn,
		Q => Q,
		Qn => Qn
	);
    Clock : PROCESS
    BEGIN
        -- Entrée 0000
        CLK <= not(CLK);
		  
		  Wait for 1ns;
		  
    END PROCESS Clock;
	 
	 stimulusSynchrone : PROCESS
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

	 END PROCESS stimulusSynchrone;
	 
	 stimulusAsynchrone : PROCESS
	 BEGIN
			RSTn <= '0';
			wait for 4ns;
			
			RSTn <= '1';
			wait for 4ns;
			
			SETn <= '0';
			wait for 4ns;
			
	END PROCESS stimulusAsynchrone;

END ARCHITECTURE behavior;