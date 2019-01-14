--encoder 4:2
--input(s): a 4 bits
--output(s): s 2 bits

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity encoder_4_2 is 
  port( a : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(1 downto 0));
end encoder_4_2;

architecture behv of encoder_4_2 is
  begin 
    s <= "00" when  a = "0001" else
         "01" when  a = "0010" else
         "10" when  a = "0100" else
         "11" when  a = "1000" else
         "ZZ";
  end  behv;


