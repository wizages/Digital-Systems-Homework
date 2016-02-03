library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eq2 is
    Port ( I : in  STD_LOGIC_VECTOR(7 downto 0);
			  en : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(2 downto 0));
end eq2;

architecture Behavioral of eq2 is

begin
	process(en, I)
	begin
		if (en='0') then
			Y <= "000";
		elsif (I(7)='1') then
			Y <= "111";
		elsif (I(6)='1') then
			Y <= "110";
		elsif (I(5)='1') then
			Y <= "101";
		elsif (I(4)='1') then
			Y <= "100";
		elsif (I(3)='1') then
			Y <= "011";
		elsif (I(2)='1') then
			Y <= "010";
		elsif (I(1)='1') then
			Y <= "001";
		elsif (I(0)='1') then
			Y <= "000";
		else
			Y <= "000";
		end if;
	end process;
end Behavioral;