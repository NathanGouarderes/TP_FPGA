  LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_clock_divider IS
 END ENTITY tb_clock_divider;
 
 ARCHITECTURE behavior OF tb_clock_divider IS
     
   SIGNAL CLKin : std_logic := '0';
	SIGNAL RST : std_logic := '0';
	SIGNAL N : std_logic_vector(4 downto 0) := (others => '0');
	SIGNAL CLKout : std_logic:= '0';
    
BEGIN

    UUT : entity work.clock_divider PORT MAP(
        CLKin => CLKin,
		  RST => RST,
		  N => N,
		  CLKout => CLKout
    );
	 
    Clock : PROCESS
    BEGIN
        CLKin <= not(CLKin);
          
        Wait for 1ns;
          
    END PROCESS Clock;
	 
	 stimulusSynchrone : PROCESS
	 BEGIN
		
	 N <= "00000";
	 wait for 4ns;
	 
	
	 N <= "00001";
	 wait for 4ns;
	 
	 	
	 N <= "00010";
	 wait for 4ns;
	 
	 	
	 N <= "00011";
	 wait for 4ns;
	 
	 	
	 N <= "00100";
	 wait for 4ns;
	 
	 	
	 N <= "00101";
	 wait for 4ns;
	 
	 	
	 N <= "00110";
	 wait for 4ns;
	 
	 	
	 N <= "00111";
	 wait for 4ns;
	 
	 	
	 N <= "01000";
	 wait for 4ns;
	 
	 	
	 N <= "01001";
	 wait for 4ns;
	 
	 	
	 N <= "01010";
	 wait for 4ns;
	 
	 	
	 N <= "01011";
	 wait for 4ns;
	 
	 	
	 N <= "01100";
	 wait for 4ns;
	 
	 	
	 N <= "01101";
	 wait for 4ns;
	 
	 	
	 N <= "01110";
	 wait for 4ns;
	 
	 
		
	 N <= "01111";
	 wait for 4ns;
	 
	 	
	 N <= "10000";
	 wait for 4ns;
	 
	 	
	 N <= "10001";
	 wait for 4ns;
	 
	 	
	 N <= "10010";
	 wait for 4ns;
	 
	 	
	 N <= "10011";
	 wait for 4ns;
	 
	 	
	 N <= "10100";
	 wait for 4ns;
	 
	 
	 N <= "10101";
	 wait for 4ns;
	 
	 	
	 N <= "10110";
	 wait for 4ns;
	 
	 	
	 N <= "10111";
	 wait for 4ns;
	 
	 END PROCESS stimulusSynchrone;

     
     stimulusAsynchrone : PROCESS
     BEGIN
            RST <= '0';
            wait for 4ns;
            
    END PROCESS stimulusAsynchrone;

END ARCHITECTURE behavior;