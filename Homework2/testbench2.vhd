LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY testbench2 IS
END testbench2;
 
ARCHITECTURE behavior OF testbench2 IS 
	--Replace eq2 with eq1 to test the select statement
    COMPONENT eq2
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         en : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';
   signal Y : std_logic_vector(2 downto 0);
 
BEGIN
	--Replace eq2 with eq1 to test the select statement
   uut: eq2 PORT MAP (
          I => I,
          en => en,
          Y => Y
        );
   stim_proc: process
   begin		
		en <='0';
		I <= "00000001";
      wait for 100 ns;
		en <='1';
		for j in 1 to 7 loop
			wait for 100 ns;
			I(j) <= '1';
			I(j-1) <= '0';
		end loop;
      wait;
   end process;
END;