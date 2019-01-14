--Generate 8 "xor" gates
--Using FOR-GENERATE
--parity-coding
--signal cable(s): k (n bits)
--input(s): a : n-1 bits
--output(s): cp, tp

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity parity_gen_for_8 is 
  generic(n :  natural := 8);
    port( a : in std_logic_vector(n-1 downto 0);
          cp, tp :    out std_logic );
end parity_gen_for_8;

architecture behv of parity_gen_for_8 is
  signal k : std_logic_vector(n downto 0) := "000000000";
  begin 
      Gen_xor_8:
        for i in 0 to n-1 generate
            k(i+1) <= k(i) xor a(i) ;
      end generate;
    cp <= '0' when k(n) = '0' else '1';
    tp <= '0' when k(n) = '0' else '0';
  end  behv;

