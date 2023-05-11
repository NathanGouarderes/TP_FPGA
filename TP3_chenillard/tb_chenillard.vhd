  LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_chenillard IS
 END ENTITY tb_chenillard;
 
 ARCHITECTURE behavior OF tb_chenillard IS
     
   SIGNAL CLK : std_logic := '0';
	SIGNAL RST : std_logic := '0';
	SIGNAL CHEN : std_logic_vector(9 downto 0) := (others => '0');
    
BEGIN

    UUT : entity work.chenillard PORT MAP(
        CLK => CLK,
		  RST => RST,
		  CHEN => CHEN
    );
	 
    Clock : PROCESS
    BEGIN
        CLK <= not(CLK);
          
        Wait for 1ns;
          
    END PROCESS Clock;

     
     stimulusAsynchrone : PROCESS
     BEGIN
            RST <= '0';
            wait for 4ns;
				
				RST <= '1';
				wait;
            
    END PROCESS stimulusAsynchrone;

END ARCHITECTURE behavior;