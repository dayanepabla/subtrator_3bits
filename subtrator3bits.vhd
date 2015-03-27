library ieee;
use ieee.std_logic_1164.all;

entity subtrator3bits is
    port (
        X : in std_logic_vector(2 downto 0);
        Y : in std_logic_vector(2 downto 0);
        Z : out std_logic_vector(2 downto 0)
        );
end subtrator3bits;

architecture subtrator3bits of subtrator3bits  is
    signal vai_um : std_logic_vector(2 downto 0);
    signal Y_invertido : std_logic_vector(2 downto 0);
begin
    Y_invertido <= not Y;

    S0 : entity work.somador1bit
    port map (
        A => X(0),
        B => Y_invertido(0),
        Ci => '1',
        S => Z(0),
        Co => vai_um(0)
        );

    S1 : entity work.somador1bit
    port map (
        A => X(1),
        B => Y_invertido(1),
        Ci => vai_um(0),
        S => Z(1),
        Co => vai_um(1)
        );

    S2 : entity work.somador1bit
    port map (
        A => X(2),
        B => Y_invertido(2),
        Ci => vai_um(1),
        S => Z(2),
        Co => vai_um(2)
        );
end subtrator3bits;
