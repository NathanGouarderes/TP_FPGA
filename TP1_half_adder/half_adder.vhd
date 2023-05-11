library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity half_adder is
	port (
		a : in std_logic;
		b : in std_logic;
		s : out std_logic;
		c : out std_logic
	);
end half_adder;

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
-- A B | S C
-- 0 0 | 0 0
-- 0 1 | 1 0
-- 1 0 | 1 0
-- 1 1 | 0 1
architecture behavioral of half_adder is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
begin
    -- Ecrire ici les instructions cocurrentes décrivant le comportement de l'entity
	-- ex. X <= not(A);
	-- ex. S <= not(X);
	s <= a xor b;
	c <= a and b;
	
end behavioral;
