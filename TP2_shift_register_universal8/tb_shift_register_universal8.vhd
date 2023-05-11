  LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 
 ENTITY tb_shift_register_universal8 IS
 END ENTITY tb_shift_register_universal8;
 
 ARCHITECTURE behavior OF tb_shift_register_universal8 IS
     
   SIGNAL SSR : std_logic := '0';
	SIGNAL SSL : std_logic := '0';
	SIGNAL Pi : std_logic_vector(7 downto 0);
	SIGNAL SEL : std_logic_vector(2 downto 0);
	SIGNAL CLK : std_logic := '0';
	SIGNAL SETn : std_logic := '0';
	SIGNAL RSTn : std_logic := '0';
	SIGNAL SOR : std_logic := '0';
	SIGNAL SOL : std_logic := '0';
	SIGNAL Qo : std_logic_vector(7 downto 0);
    
BEGIN

    UUT : entity work.shift_register_universal8 PORT MAP(
        Pi => Pi,
		  SSL => SSL,
		  SSR => SSR,
		  SEL => SEL,
        CLK => CLK,
        SETn => SETn,
        RSTn => RSTn,
		  SOR => SOR,
		  SOL => SOL,
        Qo => Qo
    );
    Clock : PROCESS
    BEGIN
        CLK <= not(CLK);
          
          Wait for 1ns;
          
    END PROCESS Clock;
     
     stimulusSynchrone : PROCESS
     BEGIN
				SEL <= "000";
            Pi <= "11110000"; -- On ne fait rien
            wait for 4ns;
				
				SEL <= "100";
            Pi <= "11110000"; -- On ne fait rien
            wait for 4ns;
            
				SEL <= "011";
            Pi <= "11110000"; -- Reg prend Pi mais on ne fait rien dans le testbench
            wait for 4ns;	
	
				SEL <= "111";
            Pi <= "11110000"; -- Reg prend Pi mais on ne fait rien dans le testbench
            wait for 4ns;
				
				SEL <= "001";
            Pi <= "01110000"; -- shift right
            wait for 4ns;
				
				SEL <= "010";
            Pi <= "11100000"; -- shift left
            wait for 4ns;
				
				SEL <= "110";
            Pi <= "01111000"; -- Rotation à droite
            wait for 4ns;
				
				SEL <= "110";
            Pi <= "01110001"; -- Rotation à gauche
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