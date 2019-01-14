--Register 8 bits:
--input(s): d (8 bits), s
--output(s): f 8 bits
library ieee;
use ieee.std_logic_1164.all;

entity register_8 is 
  generic (n : natural := 8);
  port( d : in std_logic_vector(n-1 downto 0);
        s : in std_logic;  
        f : out std_logic_vector(n-1 downto 0));
end register_8;

architecture behv of register_8 is
begin 
  process(s)
    begin
      if s'event and s = '1' then
        f <= d;
      end if;
    end process;
  end  behv;


