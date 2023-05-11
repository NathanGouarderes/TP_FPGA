library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_full_adder is
end tb_full_adder;

architecture tb of tb_full_adder is
    signal a, b, cin, s, cout: std_logic;

-- Instance de l'additionneur complet
    component full_adder is
        port (
            a: in std_logic;
            b: in std_logic;
            cin: in std_logic;
            s: out std_logic;
            cout: out std_logic
        );
    end component;

begin
    -- Instanciation de l'additionneur complet
    UUT: full_adder port map (
        a => a,
        b => b,
        cin => cin,
        s => s,
        cout => cout
    );

    -- Processus de test
    stimulus_process: process
    begin
        -- Cas 1 : a = '0', b = '0', cin = '0'
        a <= '0'; b <= '0'; cin <= '0';
        wait for 10 ns;
        assert (s = '0' and cout = '0') report "Erreur: Cas 1" severity error;

        -- Cas 2 : a = '0', b = '0', cin = '1'
        a <= '0'; b <= '0'; cin <= '1';
        wait for 10 ns;
        assert (s = '1' and cout = '0') report "Erreur: Cas 2" severity error;

        -- Cas 3 : a = '0', b = '1', cin = '0'
        a <= '0'; b <= '1'; cin <= '0';
        wait for 10 ns;
        assert (s = '1' and cout = '0') report "Erreur: Cas 3" severity error;

        -- Cas 4 : a = '0', b = '1', cin = '1'
        a <= '0'; b <= '1'; cin <= '1';
        wait for 10 ns;
        assert (s = '0' and cout = '1') report "Erreur: Cas 4" severity error;

        -- Cas 5 : a = '1', b = '0', cin = '0'
        a <= '1'; b <= '0'; cin <= '0';
        wait for 10 ns;
        assert (s = '1' and cout = '0') report "Erreur: Cas 5" severity error;
        -- Cas 6 : a = '1', b = '0', cin = '1'
        a <= '1'; b <= '0'; cin <= '1';
        wait for 10 ns;
        assert (s = '0' and cout = '1') report "Erreur: Cas 6" severity error;

        -- Cas 7 : a = '1', b = '1', cin = '0'
        a <= '1'; b <= '1'; cin <= '0';
        wait for 10 ns;
        assert (s = '0' and cout = '1') report "Erreur: Cas 7" severity error;

        -- Cas 8 : a = '1', b = '1', cin = '1'
        a <= '1'; b <= '1'; cin <= '1';
        wait for 10 ns;
        assert (s = '1' and cout = '1') report "Erreur: Cas 8" severity error;

        -- Fin du processus de test
        wait;
    end process stimulus_process;

end architecture tb;