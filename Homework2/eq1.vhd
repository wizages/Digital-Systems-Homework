library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eq1 is
    Port ( I : in  STD_LOGIC_VECTOR(7 downto 0);
			  en : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(2 downto 0));
end eq1;

architecture Behavioral of eq1 is

signal y0 : STD_LOGIC_VECTOR(2 downto 0);

begin
with I select
y0 <= "111" when "10000000",
	   "110" when "01000000",
	   "101" when "00100000",
	   "100" when "00010000",
	   "011" when "00001000",
	   "010" when "00000100",
	   "001" when "00000010",
	   "000" when others;
with en select
Y <=    y0 when '1',
     "000" when others;

end Behavioral;