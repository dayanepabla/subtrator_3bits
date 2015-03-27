library ieee;
use ieee.std_logic_1164.all;

entity somador1bit is
    port (
        A : in std_logic;
        B : in std_logic;
        Ci : in std_logic;
        S : out std_logic;
        Co : out std_logic
        );
end somador1bit;

architecture somador1bit of somador1bit is
begin
    S <= ((not A) and ((not B and Ci) or (B and not Ci))) or (A and ((not B and not Ci) or (B and Ci)));
    Co <= (A and (Ci or B)) or (B and Ci);
end somador1bit;
