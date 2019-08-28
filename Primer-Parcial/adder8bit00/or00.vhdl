library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity or00 is
	port(
			Ao,Bo:in std_logic;
			Yo:out std_logic
		);
end or00;

architecture or0 of or00 is
begin
	Yo<=Ao or Bo;
end or0;