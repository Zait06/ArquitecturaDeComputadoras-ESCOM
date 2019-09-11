library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shiftrRL00 is
	port(
			resets,clks:in std_logic;
			outs:out std_logic_vector(7 downto 0);
			ins:in std_logic_vector(7 downto 0)
		);
end shiftrRL00;

architecture shiftrRL0 of shiftrRL00 is
	signal sshift:std_logic_vector(7 downto 0);
begin
	pshiftrRL:process(clks)
	begin
		if(clks'event and clks='1')then
			case resets is
				when '0'=>
					outs<=(others=>'0');
					sshift<=ins;
				when '1'=>
					sshift(0)<=sshift(7);
					sshift(7 downto 1)<=sshift(6 downto 0);
					outs<=sshift;
				when others=>null;
			end case;
		end if;
	end process pshiftrRL;
end shiftrRL0;