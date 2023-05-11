library ieee;
use ieee.std_logic_1164.all;


entity shift_register_siso8 is
	port(
		Si : in std_logic;
		CLK : in std_logic;
		SETn : in std_logic;
		RSTn : in std_logic;
		So : out std_logic
	);
end shift_register_siso8;

architecture behavioral of shift_register_siso8 is

begin

	process(CLK, Si, SETn, RSTn)
	begin

		if (RSTn = '0') then
			So <= '0';
		
		elsif (SETn = '0') then
			So <= '1';
		elsif (CLK'event and CLK = '1') then
			if (Si = '0') then
				So <= '0';
			end if;
			
			if (Si = '1') then
				So <= '1';
			end if;
				
		end if;			
end process;
end behavioral;