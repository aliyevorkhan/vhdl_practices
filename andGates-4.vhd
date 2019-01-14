--Generate 4 "and" gates
--Using FOR-GENERATE
--input(s): a, b : n-1 bits
--output(s): f n-1 bits

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and_4 is 
  generic(n :  natural := 4);
    port( a, b : in std_logic_vector(n-1 downto 0);
          f :    out std_logic_vector(n-1 downto 0) );
end and_4;

architecture behv of and_4 is
  begin 
      Gen_And_4:
        for i in 3 downto 0 generate
            f(i) <= a(i) and b(i) ;
      end generate;
  end  behv;
