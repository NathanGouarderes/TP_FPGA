 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_shift_register_piso8 IS
 END ENTITY tb_shift_register_piso8;
 
 ARCHITECTURE behavior OF tb_shift_register_piso8 IS
     
    SIGNAL Pi : std_logic_vector(7 downto 0);
	 SIGNAL Wn_s : std_logic;
    SIGNAL CLK : std_logic := '0';
    SIGNAL SETn : std_logic;
    SIGNAL RSTn : std_logic;
    SIGNAL So : std_logic;
    
BEGIN

    UUT : entity work.shift_register_piso8 PORT MAP(
        Pi => Pi,
		  Wn_S => Wn_S,
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
				Wn_S <= '1';
            Pi <= "10100101";
            wait for 4ns;
            
				
				Pi <= "01010010";
            wait for 4ns;
            
				
				Pi <= "00101001";
            wait for 4ns;
            
				
				Pi <= "00010100";
            wait for 4ns;
            
				
				Pi <= "00001010";
            wait for 4ns;
            
				
				Pi <= "00000101";
            wait for 4ns;
            
				
				Pi <= "00000010";
            wait for 4ns;
            
				
				Pi <= "00000001";
            wait for 4ns;
            
				
				Wn_s <= '0';
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