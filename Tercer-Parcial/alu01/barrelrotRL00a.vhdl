library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity barrelRotRL00 is
	port(
			clkrrl,inFlagrrl:in std_logic;
			opcoderrl:in std_logic_vector(4 downto 0);
			indataArrl,indataBrrl:in std_logic_vector(7 downto 0);
			outrrl:out std_logic_vector(7 downto 0);
			outFlagrrl:out std_logic
		);
end barrelRotRL00;

architecture barrelRotRL0 of barrelRotRL00 is
	signal sshift:std_logic_vector(7 downto 0);
begin
	pxnr:process(clkrrl)
		variable aux:bit:='0';
	begin
		if(clkrrl'event and clkrrl='1') then
			if (opcoderrl="01100") then
				case inFlagrrl is
					when '1'=>
						if(aux='0') then
							sshift(0)<=sshift(7);
							sshift(7 downto 1)<=sshift(6 downto 0);
							outrrl<=sshift;
						end if;
					when '0'=>
						outFlagrrl<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outrrl<=(others=>'Z');
				outFlagrrl<='Z';
				sshift<=indataArrl;
			end if;
		end if;
	end process;
end barrelRotRL0;