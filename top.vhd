--------------------------------------------------------------------------------------
------ Company: Chalmers University Of Technology  
------ Engineer: Prathamesh Prabhakar Moralwar
------ 
------ Create Date: 03/04/2017 07:26:17 PM
------ Design Name: 
------ Module Name: Top Level
------ Project Name: 7 Segment Control (Clocking, I/O,and FPGA board verification)
------ Target Devices: Nexys4 DDR (xc7a100tcsg324-1)
------ Tool Versions: Vivado 2017.2
------ Description: Connecting all sub-blocks
------ Dependencies: None
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.test.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( addr : in STD_LOGIC_VECTOR (2 downto 0);
           data_in : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           control_out : out STD_LOGIC_VECTOR (7 downto 0);
           write: in std_logic;
           rst : in STD_LOGIC);
end top;

architecture Behavioral of top is
signal data_out2,data_in2 : data1_array;
signal data_out3: std_logic_vector (3 downto 0);
signal clk_enable: std_logic;

component data_array is 
         Port ( addr : in STD_LOGIC_VECTOR (2 downto 0);
           data_in : in STD_LOGIC_VECTOR (3 downto 0);
           write : in STD_LOGIC;
           rst: in std_logic; 
           clk : in STD_LOGIC;
           data_out : out data1_array);
end component data_array; 

component read_data is 

Port (     data_in : data1_array;
           rst: in std_logic; 
           clk_enable : in STD_LOGIC;
           clk : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (3 downto 0);
           control : out STD_LOGIC_VECTOR (7 downto 0));

end component read_data;

component counter is 

        Port ( clk : in STD_LOGIC;
               rst: in std_logic;
               clk_enable : out STD_LOGIC);
end component counter; 

begin

CO1: data_array

port map (addr => addr,
          data_in => data_in,
          rst => rst,
          write => write, 
          clk => clk,
          data_out => data_out2);
CO2: read_data
          port map ( data_in => data_out2,
                     rst => rst,
                     clk_enable => clk_enable,
                     clk => clk,
                     data_out => data_out3,
                     control=> control_out);
CO3:counter
port map (clk => clk,
rst => rst,
clk_enable => clk_enable);

data_out <= hex2seven (data_out3);

          
end Behavioral;
