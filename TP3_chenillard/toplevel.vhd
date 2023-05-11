library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chenillard is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        CHEN : out std_logic_vector(9 downto 0)
    );
end chenillard;

architecture behavioral of chenillard is
    signal reg : std_logic_vector(9 downto 0);
    signal counter : unsigned(3 downto 0) := (others => '0');
    constant MAX_COUNTER : unsigned(3 downto 0) := to_unsigned(9, counter'length);
begin
    process(CLK, RST)
    begin
        if RST = '0' then
            CHEN <= "0000001111";
				counter <= (others => '0');
				reg <= "0000001111";

        elsif rising_edge(CLK) then
            if counter = MAX_COUNTER then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;

            reg <= reg(8 downto 0) & reg(9);

            case counter is
                when "0000" =>
                    CHEN <= "0000001111";
                when "0001" =>
                    CHEN <= "0000011110";
                when "0010" =>
                    CHEN <= "0000111100";
                when "0011" =>
                    CHEN <= "0001111000";
                when "0100" =>
                    CHEN <= "0011110000";
                when "0101" =>
                    CHEN <= "0111100000";
                when "0110" =>
                    CHEN <= "1111000000";
                when "0111" =>
                    CHEN <= "1110000001";
                when "1000" =>
                    CHEN <= "1100000011";
                when "1001" =>
                    CHEN <= "1000000111";
                when others =>
                    CHEN <= "0000001111";
            end case;
        end if;
    end process;
end architecture;
