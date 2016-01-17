--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:10 01/16/2016
-- Design Name:   
-- Module Name:   C:/HDL/project4/testbench.vhd
-- Project Name:  project4
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
         a : IN  std_logic_vector(1 downto 0);
         en : IN  std_logic;
         f : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal f : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eq1 PORT MAP (
          a => a,
          en => en,
          f => f
        );
 

   -- Stimulus process
   stim_proc: process
   begin
	a <= "00";
	en <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		en <= '1';
		for I in 0 to 3 loop
			wait for 100 ns;
			a <= a + "01";
		end loop;
		en <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
