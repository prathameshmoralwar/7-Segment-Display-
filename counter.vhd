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

------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 10/04/2017 07:26:17 PM
---- Design Name: 
---- Module Name: counter - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

------ Uncomment the following library declaration if using
------ arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

------ Uncomment the following library declaration if instantiating
------ any Xilinx leaf cells in this code.
------library UNISIM;
------use UNISIM.VComponents.all;

--entity counter is
--Generic (N: integer := 100000);
--    Port ( clk : in STD_LOGIC;
--    rst: in std_logic;
--           clk_enable : out STD_LOGIC);
--end counter;

--architecture Behavioral of counter is

----constant max_count : natural := 100000;

----signal Rst : std_logic;


----SIGNAL refclk              : std_logic;
--begin

-- process(clk, Rst)
--        variable count : integer range 0 to N;
--    begin
--        if Rst = '1' then
--            count := 0;
--            clk_enable <= '1';
			
--        elsif rising_edge(clk) then
--            if count = (N-1) then 
--                count := count + 1;
--              clk_enable <= '1';
--            else
--                clk_enable <= '0';
--                count := count+1;
--            end if;
--        end if;
--    end process compteur; 
--end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:55 12/07/2016 
-- Design Name: 
-- Module Name:    clock_1kHz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_arith.ALL;
--use IEEE.STD_LOGIC_unsigned.ALL;


---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity counter is
--    Port ( rst : in  STD_LOGIC;
--           clk : in  STD_LOGIC;
--           clk_enable : out  STD_LOGIC);
--end counter;

--architecture Behavioral of counter is
--signal compt: std_logic_vector (32 downto 0);

--begin

--clk_1kHz:process (rst,clk)

--begin

--	if rst = '1' then
--		compt <= (others => '0');
--	elsif clk'event and clk = '1' then
--		if compt = X"186A0" then
--			clk_enable <= '1';
--			compt <= (others => '0');
--		else 
--			compt <= compt +1;
--			clk_enable <= '0';
--		end if ;
--	end if ;
	
--end process;


--end Behavioral;











