--comparator n bits
--input(s): a, c : n-1 bits
--output(s): s(mall), e(qual), b(ig)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comp_n is 
  generic(n : natural := 4);
  port( a : in std_logic_vector(n-1 downto 0);
        c : in std_logic_vector(n-1 downto 0); 
        s, e, b : out std_logic);
end comp_n;

architecture behv of comp_n is
  begin 
      s <= '1' when a > c else '0';
      e <= '1' when a = c else '0';
      b<= '1' when a < c else '0';
      
  end  behv;





