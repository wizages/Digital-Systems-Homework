----------------------------------------------------------------------------------
-- Company: N/A
-- Engineer: 
-- 
-- Create Date:    14:55:05 01/16/2016 
-- Design Name: 	 Homework #1
-- Module Name:    eq1 - Behavioral 
-- Project Name:   Problem #3
-- Target Devices: Spartan3
-- Tool versions: 
-- Description: 
--
-- A 2-bit greater than circuit
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
           b : in  STD_LOGIC_VECTOR(1 downto 0);
           aeqb : out  STD_LOGIC);
end eq1;

architecture Behavioral of eq1 is

signal p0, p1, p2: std_logic;

begin

p0 <= ((not b(1)) and a(1)); 

p1 <= ((not b(0)) and (not b(1)) and a(0));

p2 <= (a(0) and a(1) and (not b(0)));


aeqb <= p0 or p1 or p2;


end Behavioral;

