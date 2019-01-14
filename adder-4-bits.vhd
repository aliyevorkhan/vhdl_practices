--adder 4 bits
--input(s): a, b 4 bits
--sigal cable(s): temp_add 5 bits
--output(s): e, (t 4 bits)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder_4 is 
  generic(n : natural := 4);
  port( a : in std_logic_vector(n-1 downto 0);
        b : in std_logic_vector(n-1 downto 0); 
        e : out std_logic;
        t : out std_logic_vector(n-1 downto 0));
end adder_4;

architecture behv of adder_4 is
  signal temp_add : std_logic_vector(n downto 0);
  begin 
      temp_add <= ('0' & a) + ('0' & b);
      t <= temp_add(n-1 downto 0);
      e <= temp_add(n);
  end  behv;




