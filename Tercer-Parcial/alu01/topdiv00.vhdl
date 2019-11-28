library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagediv00.all;

entity topdiv00 is
	port(
			cdiv0:in std_logic_vector(3 downto 0);
			oscout0:inout std_logic
		);
end topdiv00;

architecture topdiv0 of topdiv00 is
	signal sclk:std_logic;
begin
	d00:osc00 port map(osc_int=>sclk);
	d01:div00 port map(clkdiv=>sclk,cdiv=>cdiv0,oscout=>oscout0);
end topdiv0;