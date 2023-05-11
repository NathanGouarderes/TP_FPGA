library ieee;
use ieee.std_logic_1164.all;

entity shift_register_piso8 is
port(
Pi : in std_logic_vector(7 downto 0);
Wn_S : in std_logic := '0';
CLK : in std_logic := '0';
SETn : in std_logic := '0';
RSTn : in std_logic := '0';
So : out std_logic
);
end shift_register_piso8;

architecture behavioral of shift_register_piso8 is
signal reg : std_logic_vector(7 downto 0);
begin

process(CLK, Pi, Wn_S, SETn, RSTn)
variable i : integer := 0;
begin

	if (RSTn = '0') then
		So <= '0';
		reg <= (others => '0');
	
	elsif (SETn = '0') then
		So <= '1';
		reg <= (others => '1');
	elsif (CLK'event and CLK = '1') then

		if (Wn_S = '1') then
			reg <= Pi;
			i := 1;
			reg <= '0' & reg(7 downto i);
			i := i + 1;
			So <= reg(0);
		else
			reg <= '0' & Pi(7 downto 1);
			So <= Pi(0);
		end if;

	end if;			
end process;

end behavioral;