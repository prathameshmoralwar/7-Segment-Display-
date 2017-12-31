
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package test is 

function hex2seven (HEX :std_logic_vector (3 downto 0)) return std_logic_vector;
type data1_array is array (7 downto 0) of std_logic_vector (3 downto 0);
end;


package body test is 

function hex2seven (HEX :std_logic_vector (3 downto 0)) return std_logic_vector is 
variable hex1 :std_logic_vector (7 downto 0);

begin

 case HEX is

when "0001" =>   hex1 := "11111001"; --1
when "0010" => 	 hex1 :=  "10100100"; --2
when "0011" =>   hex1 := "10110000"; --3
when "0100" => 	 hex1 :=  "10011001"; --4
when "0101" =>   hex1 := "10010010"; --5
when "0110" => 	 hex1 :=  "10000010"; --6
when "0111" =>   hex1 := "11111000"; --7
when "1000" => 	 hex1 :=  "10000000"; --8
when "1001" =>   hex1 := "10010000"; --9
when "1010" => 	 hex1 :=  "10001000"; --A
when "1011" =>   hex1 := "10000011"; --B
when "1100" => 	 hex1 :=  "11000110"; --C
when "1101" =>   hex1 := "10100001"; --D
when "1110" => 	 hex1 :=  "10000110"; --E
when "1111" =>   hex1 := "10001110"; --F
when others => 	 hex1 :=  "11000000"; --0

end case; 
 
return hex1;

end function;

end package body test; 


