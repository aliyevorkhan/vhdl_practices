--multiplexers 4:1:
--input(s): a, b, c, d
--selected input(s): s
--output(s): f

library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is 
  port( a, b, c, d : in std_logic_vector(3 downto 0);
        s : in std_logic_vector(1 downto 0);
        f : out std_logic_vector(3 downto 0) );
end mux4_1;

architecture behv of mux4_1 is
  begin 
      f <= a when s = "00" else
           b when s = "01" else
           c when s = "10" else
           d when s = "11" else
           "ZZZZ";          
  end  behv;






