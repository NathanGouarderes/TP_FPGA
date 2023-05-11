 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_priority_encoder4 IS
 END ENTITY tb_priority_encoder4;
 
 ARCHITECTURE behavior OF tb_priority_encoder4 IS
 	
	SIGNAL I : std_logic_vector(3 DOWNTO 0);
	SIGNAL O : std_logic_vector(2 DOWNTO 0);
	
BEGIN

	UUT : entity work.priority_encoder4 PORT MAP(
		din => I,
      enc => O
	);
	-- Stimulus process
    Stimulus : PROCESS
    BEGIN
        -- Entrée 0000
        I <= "0000";
		  ASSERT (O = "000") REPORT "Test failed for input 0000" SEVERITY ERROR;

        WAIT FOR 10 ns;
        
        -- Entrée 0001
        I <= "0001";
        WAIT FOR 10 ns;
        ASSERT (O = "001") REPORT "Test failed for input 0001" SEVERITY ERROR;
        
        -- Entrée 0010 ou "0011"
        I <= "0010";
        WAIT FOR 10 ns;
        ASSERT (O = "011") REPORT "Test failed for input 0010" SEVERITY ERROR;
		  
		  I <= "0011";
		   WAIT FOR 10 ns;
        ASSERT (O = "011") REPORT "Test failed for input 0010" SEVERITY ERROR;

        -- Entrée "0100" ou "0101" ou "0110" ou "0111"
        I <= "0100";
        WAIT FOR 10 ns;
        ASSERT (O = "101") REPORT "Test failed for input 0011" SEVERITY ERROR;
		  
		  I <= "0101";
		  WAIT FOR 10 ns;
        ASSERT (O = "101") REPORT "Test failed for input 0011" SEVERITY ERROR;
        
		  I <= "0110";
		  WAIT FOR 10 ns;
        ASSERT (O = "101") REPORT "Test failed for input 0011" SEVERITY ERROR;
        
		  I <= "0111";
		  WAIT FOR 10 ns;
        ASSERT (O = "101") REPORT "Test failed for input 0011" SEVERITY ERROR;
        
        
        -- Entrée "1000" ou "1001" ou "1010" ou "1011" ou "1100" oy "1101" ou "1110" ou "1111" 
        I <= "1000";
        WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1001";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1010";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1011";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1100";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1101";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1110";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;
		  
		  I <= "1111";
		  WAIT FOR 10 ns;
        ASSERT (O = "111") REPORT "Test failed for input 0100" SEVERITY ERROR;

        -- Autres tests à ajouter selon les besoins
        
        WAIT;
		  
    END PROCESS Stimulus;

END ARCHITECTURE behavior;