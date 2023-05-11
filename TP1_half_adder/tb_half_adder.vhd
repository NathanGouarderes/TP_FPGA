library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_half_adder is
end tb_half_adder;

architecture tb of tb_half_adder is
    -- Déclaration des signaux de test
    signal A, B, S, C: std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
    UUT : entity work.half_adder port map (
        A => A,
        B => B,
        S => S,
        C => C
    );

    -- Description des stimuli
    -- A placer dans des *process*, car ce sont des instructions séquentielles
    -- (Plusieurs process concurrents peuvent être décrits)
    stimuli1 : process
        constant period: time := 20 ns;
        begin
            -- A B | S C
             -- ----|----
             -- 0 0 | 0 0
             -- 0 1 | 1 0
             -- 1 0 | 1 0
             -- 1 1 | 0 1
        A <= '0';
        B <= '0';
        wait for period; -- Délai avant le prochain stimulus
        assert ((S = '0') and (C = '0'))
        report "test failed for input combination 00" severity error;
        
        A <= '1';
        B <= '0';
        wait for period; -- Délai avant le prochain stimulus
        assert ((S = '1') and (C = '0'))
        report "test failed for input combination 10" severity error;
        
        A <= '0';
        B <= '1';
        wait for period; -- Délai avant le prochain stimulus
        assert ((S = '1') and (C = '0'))
        report "test failed for input combination 01" severity error;
        
        A <= '1';
        B <= '1';
        wait for period; -- Délai avant le prochain stimulus
        assert ((S = '0') and (C = '1'))
        report "test failed for input combination 11" severity error;

        wait; -- Wait indefinitely

    end process;
end tb ;