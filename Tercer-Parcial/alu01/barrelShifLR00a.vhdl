library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity barrelShifLR00 is
	port(
			clklr,inFlaglr:in std_logic;
			opcodelr:in std_logic_vector(4 downto 0);
			indataAlr,indataBlr:in std_logic_vector(7 downto 0);
			outlr:out std_logic_vector(7 downto 0);
			outFlaglr:out std_logic
		);
end barrelShifLR00;

architecture barrelShifLR0 of barrelShifLR00 is
	signal sshift:std_logic_vector(7 downto 0);
begin
	pxnr:process(clklr)
		variable aux:bit:='0';
	begin
		if(clklr'event and clklr='1') then
			if (opcodelr="01011") then
				case inFlaglr is
					when '1'=>
						if(aux='0') then
							aux:='1';
							sshift(7)<='0';
							sshift(6 downto 0)<=sshift(7 downto 1);
							outlr<=sshift;
						end if;
					when '0'=>
						outFlaglr<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outlr<=(others=>'Z');
				outFlaglr<='Z';
				sshift<=indataAlr;
			end if;
		end if;
	end process;
end barrelShifLR0;