library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageword00.all;

entity topword00 is
	port(
			clk0:inout std_logic;
			reset0:in std_logic;
			cdiv00:in std_logic_vector(4 downto 0);
			outtransist0:inout std_logic_vector(3 downto 0);
			outcoder0:inout std_logic_vector(6 downto 0)
		);
end topword00;

architecture topword0 of topword00 is
	signal c:std_logic;
begin
	W00:topdiv00 port map(oscout0=>clk0,cdiv0=>cdiv00);
	W01:contring00 port map(resets=>reset0,clks=>clk0,outs=>outtransist0);
	W02:coder00 port map(incontc=>outtransist0,outcoderc=>outcoder0);
end topword0;