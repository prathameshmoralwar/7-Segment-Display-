library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.test.all; 

entity data_array is
    Port ( addr : in STD_LOGIC_VECTOR (2 downto 0);
           data_in : in STD_LOGIC_VECTOR (3 downto 0);
           write : in STD_LOGIC;
           rst : in std_logic;
           clk : in STD_LOGIC;
           data_out : out data1_array);
end data_array;

architecture Behavioral of data_array is

begin

process (clk)

begin

if rising_edge (clk) then
    if (rst= '1') then
    data_out <= ((others=> (others=>'0')));
    
    elsif (write= '1') then


	case addr is  
		
		when "000" =>  data_out (0) <=	data_in; --1
--			           data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (3)<= "0000";
--					   data_out (4) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (7) <= "0000";

		when "001" =>   data_out (1) <= data_in; --2
--					    data_out (0) <= "0000";
--						data_out (2)<= "0000";
--						data_out (3) <= "0000";
--						data_out (4) <= "0000";
--						data_out (5) <= "0000";
--						data_out (6) <= "0000";
--						data_out (7) <= "0000";
		
		
		when "010" =>  data_out (2) <= 	data_in; --3
--					   data_out (1) <= "0000";
--		               data_out (0)<= "0000";
--		               data_out (3) <= "0000";
--					   data_out (4) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (7) <= "0000";
		
		
		when "011" =>   data_out (3) <=  	data_in; --4
--		               data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (0) <= "0000";
--					   data_out (4) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (7) <= "0000";
		
		
		when "100" =>  	data_out (4) <= 	data_in; --5
--					   data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (3) <= "0000";
--					   data_out (0) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (7) <= "0000";
		
		when "101" =>   data_out (5) <=  	data_in; --6
--		               data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (3) <= "0000";
--					   data_out (4) <= "0000";
--					   data_out (0) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (7) <= "0000";
		
		when "110" =>   data_out (6) <= 	data_in; --7
--		               data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (3) <= "0000";
--					   data_out (4) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (0) <= "0000";
--					   data_out (7) <= "0000";
		
		
		when "111" =>   data_out (7)<=   data_in;
--					   data_out (1) <= "0000";
--		               data_out (2)<= "0000";
--		               data_out (3) <= "0000";
--					   data_out (4) <= "0000";
--					   data_out (5) <= "0000";
--					   data_out (6) <= "0000";
--					   data_out (0) <= "0000";
		
		when others => data_out <= ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000"); 
		end case;
	
	--se 
	--ta_out <= ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000"); 
	end if;
--else 

--data_out <= ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000"); 

end if;

end process;

end behavioral;


	
