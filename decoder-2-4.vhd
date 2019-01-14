--decoder 2:4
--input(s): a 2 bits
--output(s): s 4 bits

library ieee;
use ieee.std_logic_1164.all;

entity decoder_2_4 is 
  port( a : in std_logic_vector(1 downto 0);
        s : out std_logic_vector(3 downto 0));
end decoder_2_4;

architecture behv of decoder_2_4 is
  begin 
    s <= "0001" when  a = "00" else
         "0010" when  a = "01" else
         "0100" when  a = "10" else
         "1000" when  a = "11" else
         "ZZZZ";
  end  behv;



