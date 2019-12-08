----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:26 11/07/2016 
-- Design Name: 
-- Module Name:    BCDcounter - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use Ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDcounter is
port(

	  l:in std_logic_vector(3 downto 0);  --inputs
	  clk,sud,el,rst:in std_logic;		  --sud:select up'1'down'0'--Sync enable load--Sync reset
	  
-------------------------------------------------------------------------------------------------
	  
	  o:out std_logic_vector(3 downto 0); --outputs
	  ovfu,ovfd,err:out std_logic				     --Over flow[up/down],No BCD error
	  
	  );
	  
end BCDcounter;

architecture Behavioral of BCDcounter is
signal os:std_logic_vector(3 downto 0);
begin

		process(clk)
		
		begin
			if(clk'event and clk='1') then
			
				if rst='1' then
				os<="0000";
				elsif el='1' then 
						if l > 9								--"1010" | "1011" | "1100"												--"1101" | "1110" | "1111"
						then err <='1';
						else os <= l;
						err <= '0';
						end if;
				elsif sud='1' then
						os <= os+1;
						if os = "1001" then
						ovfu <= '1';
						os <= "0000";
						else ovfu <= '0';
						end if;
				elsif sud='0' then
						os <= os-1;
						if os = "0000" then
						ovfd <= '1';
						os <= "1001";
						else ovfd <= '0';
						end if;
				end if;
			end if;
			
		end process;
o <= os;
end Behavioral;

