library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is
    signal A : std_logic_vector(2 downto 0);
    signal B : std_logic_vector(2 downto 0);
    signal C : std_logic_vector(2 downto 0);
begin
    dut : entity work.subtrator3bits
    port map (a, b, c);

    process
    begin
        a <= "000";
        b <= "010";
        wait for 10 ns;

        a <= "111";
        b <= "010";
        wait for 10 ns;

        a <= "101";
        b <= "011";
        wait for 10 ns;

        wait;
    end process;
end testbench;
