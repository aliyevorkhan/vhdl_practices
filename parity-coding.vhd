--demultiplexers 1:4
--input(s): a 8 bit
--signal cable(s): p
--output(s): cp, tp

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity parity is 
  port( a : in std_logic_vector(7 downto 0);
        cp: out std_logic;
        tp : out std_logic);
end parity;

architecture behv of parity is
  signal p : std_logic := '0';
  begin 
      p <= A(0) xor A(1) xor A(2)
           xor A(3) xor A(4) xor 
           A(5) xor A(6) xor A(7);
      cp <= '0' when p = '0' else '1';
      tp <= '1' when p = '0' else '0';
  end  behv;








