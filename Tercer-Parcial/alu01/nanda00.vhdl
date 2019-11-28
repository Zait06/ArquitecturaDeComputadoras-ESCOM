library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nanda00 is
	port(
			clknaa,inFlagnaa:in std_logic;
			opcodenaa:in std_logic_vector(4 downto 0);
			indataAnaa,indataBnaa:in std_logic_vector(7 downto 0);
			outnaa:out std_logic_vector(7 downto 0);
			outFlagnaa:out std_logic
		);
end nanda00;

architecture nanda0 of nanda00 is
begin
	pnand:process(clknaa)
		variable aux:bit:='0';
	begin
		if(clknaa'event and clknaa='1') then
			if (opcodenaa="00011") then
				case inFlagnaa is
					when '1'=>
						if(aux='0') then
							aux:='1';
							outnaa<=indataAnaa nand indataBnaa;
							outFlagnaa<='1';
						end if;
					when '0'=>
						outFlagnaa<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outnaa<=(others=>'Z');
				outFlagnaa<='Z';
			end if;
		end if;
	end process;
end nanda0;