----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    13:01:55 01/15/2016 
-- Design Name: Homework #1
-- Module Name:    eq1 - Behavioral 
-- Project Name: Problem #1
-- Target Devices: Spartan3
-- Tool versions: 
-- Description: 
--
-- This is a HDL code for problem found at:
-- http://webpages.sdsmt.edu/~yazhao/EE342_files/HW1-2016.pdf
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eq1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
			  i2 : in  STD_LOGIC;
           eq : out  STD_LOGIC);
end eq1;

architecture Behavioral of eq1 is

signal p0: std_logic;

begin

p0 <= (not i2) and i1;
eq <= p0 or i0;

end Behavioral;

