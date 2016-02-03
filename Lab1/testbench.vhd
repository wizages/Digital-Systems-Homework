--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:48:09 01/27/2016
-- Design Name:   
-- Module Name:   C:/HDL/Lab1/testbench.vhd
-- Project Name:  Lab1
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
USE ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq1
    PORT(
         C : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         S : OUT  std_logic;
         C1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq1 PORT MAP (
          C => C,
          A => A,
          B => B,
          S => S,
          C1 => C1
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		for K in 0 to 1 loop
			for J in 0 to 1 loop
				for I in 0 to 1 loop
					wait for 100 ns;
					b <= (not b);
				end loop;
				a <= (not a);
			end loop;
			c <= (not c);
		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
