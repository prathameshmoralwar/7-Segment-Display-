--------------------------------------------------------------------------------------
------ Company: 
------ Engineer: 
------ 
------ Create Date: 10/04/2017 07:26:17 PM
------ Design Name: 
------ Module Name: counter - Behavioral
------ Project Name: 
------ Target Devices: 
------ Tool Versions: 
------ Description: 
------ 
------ Dependencies: 
------ 
------ Revision:
------ Revision 0.01 - File Created
------ Additional Comments:
------ 
--------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

------ Uncomment the following library declaration if using
------ arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

------ Uncomment the following library declaration if instantiating
------ any Xilinx leaf cells in this code.
------library UNISIM;
------use UNISIM.VComponents.all;

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











