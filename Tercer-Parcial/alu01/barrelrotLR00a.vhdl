library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity barrelRotLR00 is
	port(
			clkrlr,inFlagrlr:in std_logic;
			opcoderlr:in std_logic_vector(4 downto 0);
			indataArlr,indataBrlr:in std_logic_vector(7 downto 0);
			outrlr:out std_logic_vector(7 downto 0);
			outFlagrlr:out std_logic
		);
end barrelRotLR00;

architecture barrelRotLR0 of barrelRotLR00 is
	signal sshift:std_logic_vector(7 downto 0);
begin
	pxnr:process(clkrlr)
		variable aux:bit:='0';
	begin
		if(clkrlr'event and clkrlr='1') then
			if (opcoderlr="01101") then
				case inFlagrlr is
					when '1'=>
						if(aux='0') then
							sshift(0)<=sshift(7);
							sshift(7 downto 1)<=sshift(6 downto 0);
							outrlr<=sshift;
						end if;
					when '0'=>
						outFlagrlr<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outrlr<=(others=>'Z');
				outFlagrlr<='Z';
				sshift<=indataArlr;
			end if;
		end if;
	end process;
end barrelRotLR0;