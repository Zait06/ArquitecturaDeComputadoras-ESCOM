library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity adder8bitLib00 is
	port(
			Ai,Bi:in std_logic_vector(7 downto 0);
			SL:in std_logic;
			So:out std_logic_vector(7 downto 0)
		);
end adder8bitLib00;

architecture adder8bitLibt0 of adder8bitLib00 is
begin
	opera:process(SL)
	begin
		if(SL='1') then
			So<=Ai-Bi;
		else
			So<=Ai+Bi;
		end if;
	end process;
end adder8bitLibt0;