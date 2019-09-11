library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageshiftrRL00.all;

entity topshiftrRL00 is
	port(
			clk0:inout std_logic;
			cdiv00:in std_logic_vector(4 downto 0);
			reset0:in std_logic;
			ins0:in std_logic_vector(7 downto 0);
			outs0:out std_logic_vector(7 downto 0)
		);
end topshiftrRL00;

architecture topshiftrRL0 of topshiftrRL00 is
begin
	SRL00:topdiv00 port map(oscout0=>clk0,cdiv0=>cdiv00);
	SRL01:shiftrRL00 port map(clks=>clk0,resets=>reset0,ins=>ins0,outs=>outs0);
end topshiftrRL0;