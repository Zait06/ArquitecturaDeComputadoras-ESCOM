library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity mux00 is
	port(
			Am,Bm:in std_logic_vector (7 downto 0); --Cm
			S:in std_logic_vector (2 downto 0); --(1 downto 0);
			Ym:out std_logic_vector(7 downto 0)
		);
end mux00;

architecture mux0 of mux00 is
begin
	with S select
		Ym<=Am and BM when "001",
			Am or Bm when "011",
			Am xor Bm when "010",
			Am nand Bm when "110",
			Am nor Bm when "111",
			Am xnor Bm when "100",
			not (Am) when "101",
			--Cm when "10",
			"00000000" when others;

end mux0;