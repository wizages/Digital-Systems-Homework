----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    08:40:36 01/16/2016 
-- Design Name:    Homework #2
-- Module Name:    eq2 - Behavioral 
-- Project Name:   Problem #2
-- Target Devices:  Spartan3
-- Tool versions: 
-- Description: 
--
-- Implements a 2-bit equality comparator
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

entity eq2 is
    Port ( a : in  STD_LOGIC_VECTOR(1 downto 0);
           b : in  STD_LOGIC_VECTOR(1 downto 0);
           aeqb : out  STD_LOGIC);
end eq2;

architecture Behavioral of eq2 is

signal e0, e1: std_logic;

begin

eq_bit0_unit: entity work.eq1(Behavioral) port map (i0=>a(0), i1=>b(0), eq=>e0);
eq_bit1_unit: entity work.eq1(Behavioral) port map (i0=>a(1), i1=>b(1), eq=>e1);
aeqb <= e0 and e1;

end Behavioral;

