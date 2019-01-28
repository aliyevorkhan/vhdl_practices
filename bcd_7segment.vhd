library ieee;
use ieee.std_logic_1164.all;
 
entity bcd_7segment is
port ( bcdin : in std_logic_vector (3 downto 0);
seven_segment : out std_logic_vector (6 downto 0));
end bcd_7segment;
 
architecture behavioral of bcd_7segment is
 
begin
 
process(bcdin)
begin
 
case bcdin is
when "0000" =>
seven_segment <= "0000001"; ---0
when "0001" =>
seven_segment <= "1001111"; ---1
when "0010" =>
seven_segment <= "0010010"; ---2
when "0011" =>
seven_segment <= "0000110"; ---3
when "0100" =>
seven_segment <= "1001100"; ---4
when "0101" =>
seven_segment <= "0100100"; ---5
when "0110" =>
seven_segment <= "0100000"; ---6
when "0111" =>
seven_segment <= "0001111"; ---7
when "1000" =>
seven_segment <= "0000000"; ---8
when "1001" =>
seven_segment <= "0000100"; ---9
when others =>
seven_segment <= "1111111"; ---null
end case;
 
end process;
 
end behavioral;
