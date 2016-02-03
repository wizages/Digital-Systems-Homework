----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    15:37:26 01/16/2016 
-- Design Name: 	 Homework #1
-- Module Name:    eq4 - Behavioral 
-- Project Name:   Problem #3
-- Target Devices: Spartan3
-- Tool versions: 
-- Description: 
--
-- A full 4-bit greater-than circuit 
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

entity eq4 is
    Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           b : in  STD_LOGIC_VECTOR(3 downto 0);
           aeqb : out  STD_LOGIC);
end eq4;

architecture Behavioral of eq4 is

signal e0, e1, e2:  std_logic;

begin

eq_bit0_unit: entity work.eq1(Behavioral) port map (a(1)=>a(1), a(0)=>a(0), b(1)=>b(1), b(0)=>b(0), aeqb=>e1);
eq_bit1_unit: entity work.eq1(Behavioral) port map (a(1)=>a(3), a(0)=>a(2), b(1)=>b(3), b(0)=>b(2), aeqb=>e0);
eq_bit2_unit: entity work.eq3(Behavioral) port map (a(1)=>a(3), a(0)=>a(2), b(1)=>b(3), b(0)=>b(2), aeqb=>e2);

aeqb <= e0 or (e1 and e2);

end Behavioral;

