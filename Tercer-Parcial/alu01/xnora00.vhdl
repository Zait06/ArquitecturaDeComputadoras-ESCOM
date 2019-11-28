library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xnora00 is
	port(
			clkxnra,inFlagxnra:in std_logic;
			opcodexnra:in std_logic_vector(4 downto 0);
			indataAxnra,indataBxnra:in std_logic_vector(7 downto 0);
			outxnra:out std_logic_vector(7 downto 0);
			outFlagxnra:out std_logic
		);
end xnora00;

architecture xnora0 of xnora00 is
begin
	pxnr:process(clkxnra)
		variable aux:bit:='0';
	begin
		if(clkxnra'event and clkxnra='1') then
			if (opcodexnra="00101") then
				case inFlagxnra is
					when '1'=>
						if(aux='0') then
							aux:='1';
							outxnra<=indataAxnra nor indataBxnra;
							outFlagxnra<='1';
						end if;
					when '0'=>
						outFlagxnra<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outxnra<=(others=>'Z');
				outFlagxnra<='Z';
			end if;
		end if;
	end process;
end xnora0;