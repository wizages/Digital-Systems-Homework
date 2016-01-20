--------------------------------------------------------------------------------
-- Company: N/A
-- Engineer:
--
-- Create Date:   08:49:10 01/16/2016
-- Design Name:   Homework #1
-- Module Name:   C:/HDL/Project2/testbench.vhd
-- Project Name:  Problem #2
-- Target Device:  Spartan3
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq2
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
USE ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq2
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         aeqb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal aeqb : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq2 PORT MAP (
          a => a,
          b => b,
          aeqb => aeqb
        );
   -- Clock process definition
 

   -- Stimulus process
   stim_proc: process
   begin
	A <= "00";
	B <= "00";
      -- hold reset state for 100 ns.
	for J in 0 to 3 loop	
		for I in 0 to 3 loop
		
			wait for 100 ns;
			
			A <= A + "01";
		end loop;
		B <= B + "01";
	end loop;
		
      -- insert stimulus here 

      wait;
   end process;

END;
