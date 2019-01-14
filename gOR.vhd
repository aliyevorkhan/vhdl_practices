--OR gate:
--input(s): a, b
--output(s): f
library ieee;
use ieee.std_logic_1164.all;

entity gOR is 
  port( a : in std_logic;
        b : in std_logic;
        f : out std_logic);
end gOR;

architecture behv of gOR is
  begin 
    f <= a or b;
  end  behv;