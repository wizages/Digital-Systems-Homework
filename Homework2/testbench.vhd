--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:38:58 02/01/2016
-- Design Name:   
-- Module Name:   C:/HDL/Homework2/testbench.vhd
-- Project Name:  Homework2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq1
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
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq1
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         en : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq1 PORT MAP (
          I => I,
          en => en,
          Y => Y
        );
 
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		en <='0';
		I <= "00000001";
      wait for 100 ns;
		en <='1';
		for j in 1 to 7 loop
			wait for 100 ns;
			I(j) <= '1';
			I(j-1) <= '0';
		end loop;
			
		
      -- insert stimulus here 

      wait;
   end process;

END;
