library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity ora00 is
	port(
			clkoa,inFlagoa:in std_logic;
			opcodeoa:in std_logic_vector(4 downto 0);
			inDataAoa:in std_logic_vector(7 downto 0);
			inDataBoa:in std_logic_vector(7 downto 0);
			outoa:out std_logic_vector(7 downto 0);
			outFlagoa:out std_logic
		);
end ora00;

architecture ora0 of ora00 is
begin
	por:process(clkoa)
		variable aux:bit:='0';
	begin
		if(clkoa'event and clkoa='1') then
			if (opcodeoa="00001") then
				case inFlagoa is
					when '1'=>
						if (aux='0') then
							aux:='1';
							outoa<=inDataAoa or inDataBoa;
							outFlagoa<='1';
						end if;
					when '0'=>
						outFlagoa<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outoa<=(others=>'Z');
				outFlagoa<='Z';
			end if;
		end if;
	end process;
end ora0;