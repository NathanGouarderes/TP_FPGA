library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity clock_divider is
    port (
        CLKin : in std_logic;
        RST : in std_logic;
        N : in std_logic_vector(4 downto 0);
        CLKout : out std_logic
    );
end clock_divider;

architecture behavioral of clock_divider is
    signal reg : std_logic_vector(23 downto 0) := (others => '0');
begin
    process(CLKin, RST, N)
    begin
		if(RST = '0') then
		  CLKout <= '0';
		elsif CLKin = '1' and rising_edge(CLKin) then
            reg <= reg + '1';
     if to_integer(unsigned(N)) > 23 then
						CLKout <= reg(23);
            else
                CLKout <= reg(to_integer(unsigned(N)));
            end if;
        end if;
    end process;
end architecture;