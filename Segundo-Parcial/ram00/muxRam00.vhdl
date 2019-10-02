library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity muxRam00 is
	port(
			resetm,rwm:in std_logic;
			inwordCm,inwordRm: in std_logic_vector(6 downto 0);
			outwordm: out std_logic_vector(6 downto 0)
		);
end muxram00;

architecture muxRam0 of muxRam00 is
	signal scontrolm:std_logic_vector(1 downto 0);
begin
	scontrolm<=(resetm)&(rwm);
	with scontrolm select
		outwordm<=inwordCm when "10",
				  inwordRm when "11",
				  "0000000" when others;
end muxRam0;