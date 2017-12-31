--------------------------------------------------------------------------------------
------ Company: Chalmers University Of Technology  
------ Engineer: Prathamesh Prabhakar Moralwar
------ 
------ Create Date: 03/04/2017 07:26:17 PM
------ Design Name: 
------ Module Name: Counter
------ Project Name: 7 Segment Control (Clocking, I/O,and FPGA board verification)
------ Target Devices: Nexys4 DDR (xc7a100tcsg324-1)
------ Tool Versions: Vivado 2017.2
------ Description: Clock Divider using Counter
------ Dependencies: None
------ 
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
Generic (N: integer := 100000);
Port ( clk : in STD_LOGIC;
              rst: in std_logic;
         clk_enable : out STD_LOGIC);
end counter;

architecture Behavioral of counter is

constant max_count : natural := 100000;

--signal Rst : std_logic;


------SIGNAL refclk              : std_logic;
begin

 process(clk, Rst)
       variable count : natural range 0 to max_count;
    begin
        if Rst = '1' then
            count := 0;
            clk_enable <= '1';
        elsif rising_edge(clk) then
            if count < max_count/2 then
               count := count + 1;
              clk_enable <= '1';
            elsif count < max_count then
               clk_enable <= '0';
                count := count + 1;
           else
                clk_enable <= '1';
                count := 0;
            end if;
       end if;
    end process compteur; 
end Behavioral;
