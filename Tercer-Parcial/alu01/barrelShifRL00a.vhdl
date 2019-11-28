library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity barrelShifRL00 is
	port(
			clkrl,inFlagrl:in std_logic;
			opcoderl:in std_logic_vector(4 downto 0);
			indataArl,indataBrl:in std_logic_vector(7 downto 0);
			outrl:out std_logic_vector(7 downto 0);
			outFlagrl:out std_logic
		);
end barrelShifRL00;

architecture barrelShifRL0 of barrelShifRL00 is
	signal sshift:std_logic_vector(7 downto 0);
begin
	pxnr:process(clkrl)
		variable aux:bit:='0';
	begin
		if(clkrl'event and clkrl='1') then
			if (opcoderl="01010") then
				case inFlagrl is
					when '1'=>
						if(aux='0') then
							aux:='1';
							sshift(0)<='0';
							sshift(7 downto 1)<=sshift(6 downto 0);
							outrl<=sshift;
						end if;
					when '0'=>
						outFlagrl<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outrl<=(others=>'Z');
				outFlagrl<='Z';
				sshift<=indataArl;
			end if;
		end if;
	end process;
end barrelShifRL0;