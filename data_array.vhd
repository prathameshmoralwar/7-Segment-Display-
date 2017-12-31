--------------------------------------------------------------------------------------
------ Company: Chalmers University Of Technology  
------ Engineer: Prathamesh Prabhakar Moralwar
------ 
------ Create Date: 03/04/2017 07:26:17 PM
------ Design Name: 
------ Module Name: Data Array
------ Project Name: 7 Segment Control (Clocking, I/O,and FPGA board verification)
------ Target Devices: Nexys4 DDR (xc7a100tcsg324-1)
------ Tool Versions: Vivado 2017.2
------ Description: Data Array
------ Dependencies: None
------ 
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:


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
		when "001" =>   data_out (1) <= data_in; --2			    
		when "010" =>  data_out (2) <= 	data_in; --3
		when "011" =>   data_out (3) <=  data_in; --4
		when "100" =>  	data_out (4) <= data_in; --5
		when "101" =>   data_out (5) <=  data_in; --6
		when "110" =>   data_out (6) <= data_in; --7
		when "111" =>   data_out (7)<=   data_in;
		when others => data_out <= ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000"); 
		end case;
	end if;
end if;
end process;
end behavioral;
