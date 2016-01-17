----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:32 01/16/2016 
-- Design Name: 
-- Module Name:    eq2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           eq : out  STD_LOGIC);
end eq2;

architecture Behavioral of eq2 is

signal p0, p1 : STD_LOGIC;

begin

p0 <= (not i0) and (not i1);
p1 <= i0 and i1;
eq <= p0 or p1;

end Behavioral;

