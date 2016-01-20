----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    16:33:59 01/16/2016 
-- Design Name: 	 Homework #1
-- Module Name:    eq1 - Behavioral 
-- Project Name:   Problem #4
-- Target Devices: Spartan3
-- Tool versions: 
-- Description: 
--
-- A 2 to 4 bit decoder with an enable
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
    Port ( a : in  STD_LOGIC_VECTOR(1 downto 0);
           en : in  STD_LOGIC;
           f : out  STD_LOGIC_VECTOR(3 downto 0));
end eq1;

architecture Behavioral of eq1 is

signal f0, f1, f2, f3 : STD_LOGIC;
begin

f0 <= (not a(0)) and (not a(1));
f1 <= (not a(1)) and a(0);
f2 <= a(1) and (not a(0));
f3 <= a(0) and a(1);

f(0) <= f0 and en; 
f(1) <= f1 and en;
f(2) <= f2 and en;
f(3) <= f3 and en;

end Behavioral;

