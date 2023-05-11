library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Compte rendu
-- Pour faire un aditionneur complet il faut utiliser deux demis aditionneurs 
-- Le montage est aisément manipulable
-- On peut faire des addionneurs plus grands
-- Un peu comme les composants en react, ça permet de réutiliser des "modules ?" simple et qu'on connaît pour faire des choses plus complexes
-- Le code est plus clair et compréhensible.


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

-- DESCRIPTION COMPORTEMENTALE DE L'ENTITY
-- A B D | S C
-- 0 0 0 | 0 0
-- 0 0 1 | 1 0
-- 0 1 0 | 1 0
-- 1 0 0 | 1 0
-- 1 0 1 | 0 1
-- 1 1 0 | 0 1
-- 1 1 1 | 1 1 


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

-- Va faire la somme des bits de poids faible et de la retenue         
         
    -- Deuxième demi-aditionneur
    half_adder2: entity work.half_adder port map (
            a => s1,
            b => cin,
            s => s,   -- somme des entrées
            c => c2
        );
   
-- Va faire la somme des bits de poids forts
    
    -- Retenue à la sortie de l'aditionneur complet
    cout <= c1 or c2;
end architecture behavioral;