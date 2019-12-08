--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:57:32 11/07/2016
-- Design Name:   
-- Module Name:   F:/project/BCDcounter/bcdtest.vhd
-- Project Name:  BCDcounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDcounter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;
 
ENTITY bcdtest IS
END bcdtest;
 
ARCHITECTURE behavior OF bcdtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDcounter
    PORT(
         l : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         sud : IN  std_logic;
         el : IN  std_logic;
         rst : IN  std_logic;
         o : OUT  std_logic_vector(3 downto 0);
         ovfu : OUT  std_logic;
         ovfd : OUT  std_logic;
         err : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal l : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal sud : std_logic := '0';
   signal el : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal o : std_logic_vector(3 downto 0);
   signal ovfu : std_logic;
   signal ovfd : std_logic;
   signal err : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDcounter PORT MAP (
          l => l,
          clk => clk,
          sud => sud,
          el => el,
          rst => rst,
          o => o,
          ovfu => ovfu,
          ovfd => ovfd,
          err => err
        );

        clk<=not(clk) after 15 ns;
		  l<= "1100" after 100 ns, "0010" after 200 ns;
		  sud <= '1' after 30 ns,'0' after 300 ns;
		  el <= '1' after 10 ns,'0' after 120 ns, '1' after 210 ns, '0' after 250 ns;
		  rst <='1' after 400 ns,'0' after 430 ns;
		  
		  

END;
