----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    17:16:04 01/16/2016 
-- Design Name: 	 Homework #1
-- Module Name:    eq2 - Behavioral 
-- Project Name:   Problem #4
-- Target Devices: Spartan3
-- Tool versions: 
-- Description: 
--
-- A 3 to 8 bit decoder with an enable
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
    Port ( en : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR(2 downto 0);
           f : out  STD_LOGIC_VECTOR(7 downto 0));
end eq2;

architecture Behavioral of eq2 is

signal f1 : STD_LOGIC_VECTOR(3 downto 0);

begin

eq_bit0_unit: entity work.eq1(Behavioral) port map (en=>en, a(0)=>a(2), a(1)=>'0', f=>f1);
eq_bit1_unit: entity work.eq1(Behavioral) port map (en=>f1(1), a(0)=>a(0), a(1)=>a(1), f(3)=>f(7), f(2)=>f(6), f(1)=>f(5), f(0)=>f(4));
eq_bit2_unit: entity work.eq1(Behavioral) port map (en=>f1(0), a(0)=>a(0), a(1)=>a(1), f(3)=>f(3), f(2)=>f(2), f(1)=>f(1), f(0)=>f(0));

end Behavioral;

