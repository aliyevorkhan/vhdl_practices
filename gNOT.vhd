--NOT gate:
--input(s): a
--output(s): f
library ieee;
use ieee.std_logic_1164.all;

entity gNOT is 
  port( a : in std_logic;
        f : out std_logic);
end gNOT;

architecture behv of gNOT is
  begin 
    f <= not(a);
  end  behv;