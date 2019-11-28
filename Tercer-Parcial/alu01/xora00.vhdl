library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xora00 is
	port(
			clkxra,inFlagxra:in std_logic;
			opcodexra:in std_logic_vector(4 downto 0);
			inDataAxra:in std_logic_vector(7 downto 0);
			inDataBxra:in std_logic_vector(7 downto 0);
			outxra:out std_logic_vector(7 downto 0);
			outFlagxra:out std_logic
		);
end xora00;

architecture xora0 of xora00 is
begin
	pxor:process(clkxra)
		variable aux:bit:='0';
	begin
		if(clkxra'event and clkxra='1') then
			if (opcodexra="00010") then
				case inFlagxra is
					when '1'=>
						if (aux='0') then
							aux:='1';
							outxra<=inDataAxra xor inDataBxra;
							outFlagxra<='1';
						end if;
					when '0'=>
						outFlagxra<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outxra<=(others=>'Z');
				outFlagxra<='Z';
			end if;
		end if;
	end process;
end xora0;