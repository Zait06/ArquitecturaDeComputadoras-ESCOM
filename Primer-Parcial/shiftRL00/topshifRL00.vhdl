library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageshiftRL00.all;

entity topshiftRL00 is
	port(
			clk0:inout std_logic;
			cdiv00:in std_logic_vector(4 downto 0);
			reset0:in std_logic;
			ins0:in std_logic_vector(7 downto 0);
			outs0:out std_logic_vector(7 downto 0)
		);
end topshiftRL00;

architecture topshiftRL0 of topshiftRL00 is
begin
	SRL00:topdiv00 port map(oscout0=>clk0,cdiv0=>cdiv00);
	SRL01:shiftRL00 port map(clks=>clk0,resets=>reset0,ins=>ins0,outs=>outs0);
end topshiftRL0;