--ALU : Arithmetic Logic Unit (n bits)
--input(s): a, b : n-1 bits, cmd 2 bits
--output(s): f n-1 bits

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is 
  generic(n :  natural := 4);
    port( a, b : in std_logic_vector(n-1 downto 0);
          cmd :  in std_logic_vector(1 downto 0); 
          f :    out std_logic_vector(n-1 downto 0) );
end alu;

architecture behv of alu is
  begin 
      with cmd select
        f <= a + b   when "00" ,
             a - b   when "01" ,
             a and b when "10" ,
             a or b  when "11" ,
             "ZZ"    when others;
  end  behv;






