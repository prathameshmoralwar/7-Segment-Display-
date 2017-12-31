--------------------------------------------------------------------------------------
------ Company: Chalmers University Of Technology  
------ Engineer: Prathamesh Prabhakar Moralwar
------ 
------ Create Date: 03/04/2017 07:26:17 PM
------ Design Name: 
------ Module Name: Readout Block
------ Project Name: 7 Segment Control (Clocking, I/O,and FPGA board verification)
------ Target Devices: Nexys4 DDR (xc7a100tcsg324-1)
------ Tool Versions: Vivado 2017.2
------ Description: Readout Block
------ Dependencies: None
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:



LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.test.all;

ENTITY read_data IS
      PORT(rst:in STD_LOGIC;
           clk :in std_logic;
           clk_enable:IN STD_LOGIC;
           data_in : in data1_array;
           control : out std_logic_vector (7 downto 0);
           data_out : out std_logic_vector(3 downto 0));
END read_data;

architecture arch_readout of read_data is
signal control_sig : std_logic_vector (7 downto 0);
  
begin
  
process (clk, rst)

begin
	
	if rst='1' then
		control_sig <= "11111110";
		data_out <= (others => '0');
	elsif clk'event and clk = '1' then
		if clk_enable = '1' then
			case control_sig is
				when "11111110" =>
					control_sig <= "11111101";
					data_out<= data_in(1);
				when "11111101" =>
					control_sig <= "11111011";
					data_out<= data_in(2);
				when "11111011" =>
					control_sig <= "11110111";
					data_out<= data_in(3);
				when "11110111" =>
					control_sig <= "11101111";
					data_out<= data_in(4);
				when "11101111" =>
					control_sig <= "11011111";
					data_out<= data_in(5);
				when "11011111" =>
					control_sig <= "10111111";
					data_out<= data_in(6);
				when "10111111" =>
					control_sig <= "01111111";
					data_out<= data_in(7);
				when "01111111" =>
					control_sig <= "11111110";
					data_out<= data_in(0);
				when others =>
				  control_sig <= "11111110";
				  data_out<= data_in(0);
				end case;

			end if;
		end if;
end process;

control <= control_sig;
end;
