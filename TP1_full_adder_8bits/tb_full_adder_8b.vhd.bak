library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_full_adder_8b is
end tb_full_adder_8b;

architecture TB of tb_full_adder_8b is
--signaux de tests
signal Cin : STD_LOGIC;
signal A :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal B :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal Cout : STD_LOGIC;
signal S :  STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

    UUT : entity work.full_adder_8b port map(
    Cin => Cin,
    A => A,
    B => B,
    Cout => Cout,
    S => S
    );

-- stimulus process
stimulus : process
begin
for i in 0 to 255 loop
  for j in 0 to 255 loop
    -- Si Cin = '0'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '0';
    wait for 10 ns;

    -- Si Cin = '1'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '1';
    wait for 10 ns;
  end loop;
end loop;

end process;

end TB;library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_full_adder_8b is
end tb_full_adder_8b;

architecture TB of tb_full_adder_8b is
--signaux de tests
signal Cin : STD_LOGIC;
signal A :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal B :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal Cout : STD_LOGIC;
signal S :  STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

    UUT : entity work.full_adder_8b port map(
    Cin => Cin,
    A => A,
    B => B,
    Cout => Cout,
    S => S
    );

-- stimulus process
stimulus : process
begin
for i in 0 to 255 loop
  for j in 0 to 255 loop
    -- Si Cin = '0'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '0';
    wait for 10 ns;

    -- Si Cin = '1'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '1';
    wait for 10 ns;
  end loop;
end loop;

end process;

end TB;