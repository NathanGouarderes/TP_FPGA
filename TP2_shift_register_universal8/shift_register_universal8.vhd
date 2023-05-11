library ieee;
use ieee.std_logic_1164.all;

entity shift_register_universal8 is
port(
	SSR : in std_logic := '0';
	SSL : in std_logic := '0';
	Pi : in std_logic_vector(7 downto 0);
	SEL : in std_logic_vector(2 downto 0);
	CLK : in std_logic := '0';
	SETn : in std_logic := '0';
	RSTn : in std_logic := '0';
	SOR : out std_logic := '0';
	SOL : out std_logic := '0';
	Qo : out std_logic_vector(7 downto 0)
);
end shift_register_universal8;

architecture behavioral of shift_register_universal8 is
	signal reg : std_logic_vector(7 downto 0);
begin

process(CLK, Pi, SSR, SSL, SEL, SETn, RSTn)
	variable i : integer := 0;
begin
	Qo <= reg;
	
	if (RSTn = '0') then
		Qo <= "00000000";
		reg <= (others => '0');
	
	elsif (SETn = '0') then
		Qo <= "11111111";
		reg <= (others => '1');
	elsif (CLK'event and CLK = '1') then
		if (SEL(1 downto 0) = "11") then
			reg <= Pi;
		elsif (SEL(2 downto 0) = "001") then
			reg <= SSR & reg(7 downto 1); -- shift right
			SOR <= reg(0);
		elsif (SEL(2 downto 0) = "010") then
			reg <= reg(6 downto 0) & SSL;-- sifht left
			SOL <= reg(7);
		elsif (SEL(2 downto 0) = "101") then
			reg <= reg(0) & reg(7 downto 1); --Rotation à droite
		elsif (SEL(2 downto 0) = "110") then
			reg <= reg(6 downto 0) & reg(7); --Rotation à gauche
		end if;
	end if;			
end process;

end behavioral;