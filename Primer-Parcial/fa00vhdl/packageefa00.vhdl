library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageefa00 is

	component ha00
		port (
			A0:in std_logic;
			B0:in std_logic;
			S0:out std_logic;
			C0:out std_logic
			);
	end component;
	
	component or00
		port (
			Aa: in std_logic;
			Ba: in std_logic;
			Ya: out std_logic );
	end component;

end packageefa00;