library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JK is
	port(
		J : in std_logic;
		K : in std_logic;
		CLK : in std_logic;
		Q : out std_logic;
		Qn : out std_logic
	);
end flipflop_JK;

architecture behavioral of flipflop_JK is
	signal Qtemp : std_logic;
	signal Qntemp : std_logic;
begin
	Q <= Qtemp;
	Qn <= Qntemp;
	process(CLK, J, K, Qtemp ,Qntemp)
	begin      
		if (CLK'event and CLK = '1') then
			
			if (J = '0' and K = '1') then
				Qtemp <= '0';
				Qntemp <= '1';
			end if;
			
			if (J = '1' and K = '0') then
				Qtemp <= '1';
				Qntemp <= '0';
			end if;
			
			if (J = '1' and K = '1') then
				Qtemp <= not(Qtemp);
				Qntemp <= not(Qntemp);
				
			end if;
		end if;			
end process;
end behavioral;