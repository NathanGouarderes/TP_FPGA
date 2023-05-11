library ieee;
use ieee.std_logic_1164.all;

entity flipflop_JKrs is
	port(
		J : in std_logic;
		K : in std_logic;
		CLK : in std_logic;
		SETn : in std_logic;
		RSTn : in std_logic;
		Q : out std_logic;
		Qn : out std_logic
	);
end flipflop_JKrs;

architecture behavioral of flipflop_JKrs is
	signal Qtemp : std_logic;
	signal Qntemp : std_logic;
begin
	Q <= Qtemp;
	Qn <= Qntemp;
	process(CLK, J, K,SETn, RSTn, Qtemp ,Qntemp)
	begin

		if (RSTn = '0') then
			Qtemp <= '0';
			Qntemp <= '1';
		
		elsif (SETn = '0') then
			Qtemp <= '1';
			Qntemp <= '0';
		elsif (CLK'event and CLK = '1') then
			
			if (J = '0' and K = '0') then
				Qtemp <= Qtemp;
				Qntemp <= Qntemp;
			end if;
			
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