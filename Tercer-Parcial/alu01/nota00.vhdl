library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nota00 is
	port(
			clkna,inFlagna:in std_logic;
			opcodena:in std_logic_vector(4 downto 0);
			indataAna,indataBna:in std_logic_vector(7 downto 0);
			outna:out std_logic_vector(7 downto 0);
			outFlagna:out std_logic
		);
end nota00;

architecture nota0 of nota00 is
begin
	pn:process(clkna)
		variable aux:bit:='0';
	begin
		if(clkna'event and clkna='1') then
			if (opcodena="00110") then
				case inFlagna is
					when '1'=>
						if(aux='0') then
							aux:='1';
							outna<=not(indataAna);
							outFlagna<='1';
						end if;
					when '0'=>
						outFlagna<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outna<=(others=>'Z');
				outFlagna<='Z';
			end if;
		end if;
	end process;
end nota0;