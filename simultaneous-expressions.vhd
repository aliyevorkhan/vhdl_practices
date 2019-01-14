--integrated circuits 4 inputs:
--input(s): a, b, c, d
--output(s): f
--signal cable(s): k1, k2
--f = ((a nand b) or c) or d)
library ieee;
use ieee.std_logic_1164.all;

entity SEC is 
  port( a, b, c, d : in std_logic;
        f : out std_logic);
end SEC;

architecture behv of SEC is
  signal k1, k2: std_logic;
  begin 
    f <= k1 or k2;
    k2 <= c or d;
    k1 <= a nand b;   
  end  behv;



