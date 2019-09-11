library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
			incontc:in std_logic_vector(3 downto 0);
			outcoderc:inout std_logic_vector(6 downto 0)
		);
end coder00;

architecture coder0 of coder00 is
begin
	with incontc select outcoderc<=
		"0110111" when "1000",	-- H
		"1111110" when "0100",	-- O
		"0001110" when "0010",	-- L
		"1110111" when "0001",	-- A
		"0000000" when others;
end coder0;