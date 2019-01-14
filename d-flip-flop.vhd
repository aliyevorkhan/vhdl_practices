--D flip flop:
--input(s): d, s
--output(s): q, not_q
library ieee;
use ieee.std_logic_1164.all;

entity d_f_f is 
  port( d, s : in std_logic;
        q, not_q : out std_logic);
end d_f_f;

architecture behv of d_f_f is
begin 
  process(s)
    begin
      if s'event and s = '1' then
        q <= d;
        not_q <= not(d);
      end if;
    end process;
  end  behv;
