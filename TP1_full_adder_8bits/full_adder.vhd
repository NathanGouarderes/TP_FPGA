library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Observations
-- Le montage permet une implémentation modulaire et facilement extensible.
-- On peut faire des addionneurs plus grands.
-- Je pense que subdiviser en élément simple nous permet de les réutiliser pour des montages plus complexes
-- Peut etre qu'on gagne gagne du temps, et c'est plus simple pour vérifier en cas d'erreur ou de doute


-- Aditionneur complet

entity full_adder is
    port (
        a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        s : out std_logic;
        cout : out std_logic
    );
end full_adder;


architecture behavioral of full_adder is
    signal s1, c1, c2: std_logic;
begin
    -- Premier demi-aditionneur
    half_adder1: entity work.half_adder port map (
            a => a,
            b => b,
            s => s1,
            c => c1
        );

-- Va faire la somme des LSB et la retenue         
         
    -- Deuxième demi-aditionneur
    half_adder2: entity work.half_adder port map (
            a => s1,
            b => cin,
            s => s,   -- la somme a + b + cin
            c => c2
        );
   
-- Va faire la somme des MSB
    
    -- Pour la retenue à la sortie de l'aditionneur complet
    cout <= c1 or c2;
end architecture behavioral;