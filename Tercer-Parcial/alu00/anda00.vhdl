library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity anda00 is
	port(
			clkaa,inFlagaa:in std_logic;
			opcodeaa:in std_logic_vector(4 downto 0);
			indataAaa:in std_logic_vector(7 downto 0);
			indataBaa:in std_logic_vector(7 downto 0);
			outaa:out std_logic_vector(7 downto 0);
			outFlagaa:out std_logic
		);
end anda00;

architecture anda0 of anda00 is
begin
	pand:process(clkaa)
		variable aux:bit:='0';
	begin
		if(clkaa'event and clkaa='1') then
			if (opcodeaa="00000") then
				case inFlagaa is
					when '1'=>
						if(aux='0') then
							aux:='1';
							outaa<=indataAaa and indataBaa;
							outFlagaa<='1';
						end if;
					when '0'=>
						outFlagaa<='0';
					when others=>null;
				end case;
			else
				aux:='0';
				outaa<=(others=>'Z');
				outFlagaa<='Z';
			end if;
		end if;
	end process;
end anda0;