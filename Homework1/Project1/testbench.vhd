--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:05:00 01/15/2016
-- Design Name:   
-- Module Name:   C:/HDL/Project1/testbench.vhd
-- Project Name:  Project1
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
         i0 : IN  std_logic;
         i1 : IN  std_logic;
			i2 : IN  STD_LOGIC;
         eq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
	signal i2 : std_logic := '0';

 	--Outputs
   signal eq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq1 PORT MAP (
          i0 => i0,
          i1 => i1,
			 i2 => i2,
          eq => eq
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		
		i0 <= not i0;
		
      wait for 100 ns;
		
		i0 <= not i0;
		i1 <= not i1;
		
		wait for 100 ns;
		
		i0 <= not i0;
		
		wait for 100 ns;
		
		i0 <= not i0;
		i1 <= not i1;
		i2 <= not i2;
		
		wait for 100 ns;
		
		i0 <= not i0;
		
		wait for 100 ns;
		
		i0 <= not i0;
		i1 <= not i1;
		
		wait for 100 ns;
		
		i0 <= not i0;
		
		wait;
   end process;

END;
