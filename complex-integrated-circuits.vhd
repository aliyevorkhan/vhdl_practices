--complex integrated circuits:
--input(s): a, b, c
--output(s): f
--signal cable(s): k
--f = (a and b) or c
library ieee;
use ieee.std_logic_1164.all;

entity CIC is 
  port( a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        f : out std_logic);
end CIC;

architecture behv of CIC is
  signal k: std_logic;
  begin 
    k <= a and b;
    f <= k or c;
  end  behv;

