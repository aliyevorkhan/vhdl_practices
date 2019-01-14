--serial input parallel output 8 bits:
--input(s): a, s
--output(s): f 8 bits
--signal(s): y8
library ieee;
use ieee.std_logic_1164.all;

entity SIPO_8 is 
  generic (n : natural := 8);
  port( a, s: in std_logic;  
        f : out std_logic_vector(n-1 downto 0));
end SIPO_8;

architecture behv of SIPO_8 is
  signal y8 : std_logic_vector(n-1 downto 0) := "ZZZZZZZZ";
begin 
  process(s)
    begin
        if(s'event and s = '1') then
          y8(n-1 downto 1) <= y8(n-2 downto 0);
          y8(0) <= a;
          f <= y8;
      end if;
    end process;
  end  behv;