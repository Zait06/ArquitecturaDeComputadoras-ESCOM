library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity init00 is
	port(
			clkinit,inFlaginit:in std_logic;
			opcodeinit:in std_logic_vector(3 downto 0);
			outFlag8init,outFlag12init:out std_logic;
			outAC8init: out std_logic_vector(7 downto 0);
			outAC12init: out std_logic_vector(11 downto 0)
		);
end init00;

architecture init0 of init00 is
begin
	pinit:process(clkinit)
		variable aux0,aux1:bit:='0';
	begin
		if (clkinit'event and clkinit='1') then
			if (opcodeinit="0000") then
				case inFlaginit is
					when '1'=>
------------------------ aux1 ---------------------------------------
						case aux1 is
							when '1'=>
								outFlag8init<='0';
								outFlag12init<='0';
							when '0'=>
								aux1:='1';
								outFlag8init<='1';
								outFlag12init<='1';
								outAC8init<="11000011";
								outAC12init<=not("000011110000");
							when others=>null;
						end case;
					when '0'=>
------------------------ aux0 -----------------------------------------
						case aux0 is
							when '1'=>
								outFlag8init<='0';
								outFlag12init<='0';
							when '0'=>
								aux0:='1';
								outFlag8init<='1';
								outFlag12init<='1';
								outAC8init<="11000011";
								outAC12init<=not("000011110000");
							when others=>null;
						end case;
					when others=>null;
				end case;
			else
				outAC8init<=(others=>'Z');
				outAC12init<=(others=>'Z');
				outFlag8init<='Z';
				outFlag12init<='Z';
				aux0:='0'; aux1:='0';
			end if;
		end if;
	end process;
end init0;