--integrated circuits 4 inputs:
--input(s): a, b, c, d
--output(s): f
--signal cable(s): k1, k2
--f = (a or b)(c nor d)
library ieee;
use ieee.std_logic_1164.all;

entity IC4 is 
  port( a, b, c, d : in std_logic;
        f : out std_logic);
end IC4;

architecture behv of IC4 is
  signal k1, k2: std_logic;
  begin 
    k1 <= a or b;
    k2 <= c nor d;
    f <= k1 and k2;
  end  behv;


