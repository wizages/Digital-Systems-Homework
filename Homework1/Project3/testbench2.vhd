--------------------------------------------------------------------------------
-- Company: N/A
-- Engineer:
--
-- Create Date:   15:45:50 01/16/2016
-- Design Name:   Homework #1
-- Module Name:   C:/HDL/Project3/testbench2.vhd
-- Project Name:  Problem 3
-- Target Device: Spartan3
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eq4
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
 
ENTITY testbench2 IS
END testbench2;
 
ARCHITECTURE behavior OF testbench2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eq4
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         aeqb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal aeqb : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq4 PORT MAP (
          a => a,
          b => b,
          aeqb => aeqb
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin	
	a <= "0000";
	b <= "0000";
      -- hold reset state for 100 ns.
		for J in 0 to 15 loop
			for I in 0 to 15 loop
				wait for 100 ns;
				b <= b + "0001";
			end loop;
			a <= a + "0001";
		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
