--Counter 8 bits
--input(s): s, r
--output(s): f 8 bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity gOR is 
  generic (n : natural := 8);
  port( s, r : in std_logic;
        f : out std_logic_vector(n-1 downto 0));
end gOR;

architecture behv of gOR is
  begin 
    p_counter : process (s)
    variable v_count
    f <= a or b;
  end  behv;
