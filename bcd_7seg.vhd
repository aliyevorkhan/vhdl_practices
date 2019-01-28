library ieee;
use ieee.std_logic_1164.all;
 
entity bcd_7seg is
port ( b0,b1,b2,b3 : in std_logic;
a,b,c,d,e,f,g : out std_logic);
end bcd_7seg;
 
architecture behavioral of bcd_7seg is
 
begin
 
a <= b0 or b2 or (b1 and b3) or (not b1 and not b3);
b <= (not b1) or (not b2 and not b3) or (b2 and b3);
c <= b1 or not b2 or b3;
d <= (not b1 and not b3) or (b2 and not b3) or (b1 and not b2 and b3) or (not b1 and b2) or b0;
e <= (not b1 and not b3) or (b2 and not b3);
f <= b0 or (not b2 and not b3) or (b1 and not b2) or (b1 and not b3);
g <= b0 or (b1 and not b2) or ( not b1 and b2) or (b2 and not b3);
 
end behavioral;
