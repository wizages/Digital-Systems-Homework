----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:16 01/27/2016 
-- Design Name: 
-- Module Name:    eq1 - Behavioral 
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

entity eq1 is
    Port ( C : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C1 : out  STD_LOGIC);
end eq1;

architecture Behavioral of eq1 is

signal s0,s1,s2,s3,c10,c11,c12 : STD_LOGIC;

begin

s0 <= ((not A) and (not B) and C);
s1 <= ((not A) and B and (not C));
s2 <= (A and B and C);
s3 <= (A and (not B) and (not C));

S <= s0 or s1 or s2 or s3;

c10 <= (C and B);
c11 <= (A and B);
c12 <= (C and A);

C1 <= c10 or c11 or c12;


end Behavioral;

