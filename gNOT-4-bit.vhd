--NOT gate 4 bit:
--input(s): A 4 bit
--output(s): F 4 bit
library ieee;
use ieee.std_logic_1164.all;

entity gNOT4BIT is 
  port( A : in std_logic_vector(3 downto 0);
        F : out std_logic_vector(3 downto 0) );
end gNOT4BIT;

architecture behv of gNOT4BIT is
  begin 
    F <= not(A);
  end  behv;