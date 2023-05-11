-- A B C D | S1 S2 S3
-- 0 0 0 0 | 0  0  0
-- 0 0 0 1 | 0  0  1
-- 0 0 1 X | 0  1  1
-- 0 1 X X | 1  0  1
-- 1 X X X | 1  1  1

library ieee;
use ieee.std_logic_1164.all;

entity priority_encoder4 is
	port(
		din : in std_logic_vector(3 downto 0);
		enc : out std_logic_vector(2 downto 0)
	);
end priority_encoder4;

architecture behavioral of priority_encoder4 is
begin
	process(din)
	begin
		
            
		if (din(3 downto 0) = "0000") then
			enc <= "000";
		end if;		
		
		if (din(3 downto 1) = "001") then
			enc <= "001";
		end if;
		
		if (din(3 downto 2) = "01") then
			enc <= "101";
		end if;
		
		if (din(3) = '1') then
			enc <= "111";
		end if;

end process;
end behavioral;