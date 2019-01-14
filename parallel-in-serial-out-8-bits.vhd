--parallel input serial output 8 bits:
--input(s): a (8 bits), s, y
--output(s): f 8 bits
--signal(s): y8
library ieee;
use ieee.std_logic_1164.all;

entity PISO_8 is 
  generic (n : natural := 8);
  port( a : in std_logic_vector(n-1 downto 0);
        s, y : in std_logic;  
        f : out std_logic);
end PISO_8;

architecture behv of PISO_8 is
  signal y8 : std_logic_vector(n-1 downto 0);
begin 
  process(s, y)
    begin
        if( y = '1') then
          y8 <= a;
        elsif(s'event and s = '1') then
          y8(n-1 downto 1) <= y8(n-2 downto 0) & '0';
          y8(0) <= '0';
      end if;
    end process;
    f <= y8(n-1);
  end  behv;





