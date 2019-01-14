--demultiplexers 1:4
--input(s): a, b, c, d 2 bit
--selected input(s): s 2 bit
--output(s): f0, f1, f2, f3 (2 bit)

library ieee;
use ieee.std_logic_1164.all;

entity de_mux1_4 is 
  port( a, b, c, d : in std_logic_vector(1 downto 0);
        s : in std_logic_vector(1 downto 0);
        f0 : out std_logic_vector(1 downto 0);
        f1 : out std_logic_vector(1 downto 0);
        f2 : out std_logic_vector(1 downto 0);
        f3 : out std_logic_vector(1 downto 0) );
end de_mux1_4;

architecture behv of de_mux1_4 is
  begin 
      f0 <= a when s = "00" else "ZZ";
      f1 <= b when s = "01" else "ZZ";
      f2 <= c when s = "10" else "ZZ";
      f3 <= d when s = "11" else "ZZ";
  end  behv;







