library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagealu00.all;

entity topalu00 is
	port(
			clk0:inout std_logic;
			cdiv00,opcode0:in std_logic_vector(4 downto 0);
			enab0:in std_logic;
			inDataA0,inDataB0:in std_logic_vector(7 downto 0);
			outAC0:out std_logic_vector(7 downto 0);
			outFlagAC0:inout std_logic
		);
end topalu00;

architecture topalu0 of topalu00 is
	signal soutop:std_logic_vector(7 downto 0);
	signal soutFlagop:std_logic;
begin
	AL00:topdiv00 port map(cdiv0=>cdiv00,oscout0=>clk0);
	
	AL01:anda00 port map(clkaa=>clk0,inFlagaa=>outFlagAC0,opcodeaa=>opcode0,
							indataAaa=>inDataA0,indataBaa=>inDataB0,
							outaa=>soutop,outFlagaa=>soutFlagop);
	
	AL02:ora00 port map(clkoa=>clk0,inFlagoa=>outFlagAC0,opcodeoa=>opcode0,
						inDataAoa=>inDataA0,inDataBoa=>inDataB0,
						outoa=>soutop,outFlagoa=>soutFlagop);
	
	AL03:aca00 port map(clkac=>clk0,enableac=>enab0,inFlagac=>soutFlagop,
						inac=>soutop,outac=>outAC0,outFlagac=>outFlagAC0);
end topalu0;