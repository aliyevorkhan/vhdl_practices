--multiplexers 2:1:
--input(s): a, b
--selected input(s) : s
--output(s): f

library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is 
  port( a, b : in std_logic;
        s : in std_logic;
        f : out std_logic);
end mux2_1;

architecture behv of mux2_1 is
  begin 
    f <= a when s = '0' else
         b when s = '1' else
         'Z';  
  end  behv;




