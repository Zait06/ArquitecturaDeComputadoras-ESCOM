library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageram00.all;

entity topram00 is
	port(
			clk0:inout std_logic;
			cdiv00:in std_logic_vector(4 downto 0);
			inkey0:in std_logic_vector(3 downto 0);
			reset0,rw0:in std_logic;
			outcontR0,outcontW0:inout std_logic_vector(4 downto 0);
			outr0:inout std_logic_vector(3 downto 0);
			outword0:out std_logic_vector(6 downto 0);
			outtransist0:out std_logic_vector(3 downto 0);
			outFlag0:inout std_logic
		);
end topram00;

architecture topram0 of topram00 is
	signal swordCoder,swordRam: std_logic_vector(6 downto 0);
begin
	outtransist0<="0001";
	RA00:topdiv00 port map(oscout0=>clk0,cdiv0=>cdiv00);
	RA01:contring00 port map(clks=>clk0,resets=>reset0,outs=>outr0);
	RA02:coder00 port map(clkc=>clk0,resetc=>reset0,rwc=>rw0,inkeyc=>inkey0,incontc=>outr0,
						   contWc=>outcontW0,wordc=>swordCoder,outFlagc=>outFlag0);
	RA03:ram00 port map(clkmra=>clk0,resetmra=>reset0,rwmra=>rw0,inFlagmra=>outFlag0,
						 indirWmra=>outcontW0,indirRmra=>outcontR0,inwordmra=>swordCoder,
						 outwordmra=>swordRam);
	RA04:contRead00 port map(clkcR=>clk0,resetcR=>reset0,rwcR=>rw0,incontWcR=>outcontW0,outcontcR=>outcontR0);
	RA05:muxRam00 port map(resetm=>reset0,rwm=>rw0,inwordCm=>swordCoder,inwordRm=>swordRam,
							outwordm=>outword0);
end topram0;