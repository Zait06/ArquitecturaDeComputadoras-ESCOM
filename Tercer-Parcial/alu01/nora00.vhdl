library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nora00 is
	port(
			clknra,inFlagnra:in std_logic;
			opcodenra:in std_logic_vector(4 downto 0);
			indataAnra,indataBnra:in std_logic_vector(7 downto 0);
			outnra:out std_logic_vector(7 downto 0);
			outFlagnra:out std_logic
		);
end nora00;

architecture nora0 of nora00 is
begin
	pnr:process(clknra)
		variable aux:bit:='0';
	begin
		if(clknra'event and clknra='1') then
			if (opcodenra="00100") then
				case inFlagnra is
					when '1'=>
						if(aux='0') then
							aux:='1';
							outnra<=indataAnra nor indataBnra;
							outFlagnra<='1';
						end if;
					when '0'=>
						outFlagnra<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outnra<=(others=>'Z');
				outFlagnra<='Z';
			end if;
		end if;
	end process;
end nora0;