library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
			clkc,resetc,rwc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: inout std_logic_vector(3 downto 0);
			contWc: inout std_logic_vector(4 downto 0);	-- Contador de lectura
			wordc: out std_logic_vector(6 downto 0);
			outFlagc:out std_logic
		);
end coder00;

architecture coder0 of coder00 is
	signal scontrolcoder:std_logic_vector(1 downto 0);
begin
	scontrolcoder<=(resetc)&(rwc);
	pcoder: process(clkc)
	variable aux1:bit:='0';
	variable aux2:bit:='0';
	variable aux3:bit:='0';
	variable aux4:bit:='0';
	begin
		if (clkc'event and clkc='1') then
			case scontrolcoder is
				when "00"=>
					wordc<=(others=>'0');
					contWc<=(others=>'0');
					outFlagc<='0';
					aux1:='0';
					aux2:='0';
					aux3:='0';
					aux4:='0';
				when "10"=>
					case incontc is
----------------------------------------------------------------------------------------------------------------------
						when "1000"=>
							case inkeyc is
								when "0000"=>
									aux1:='0';
									outFlagc<='0';
									contWc<=contWc;
								when "1000"=>
									if (aux1='0') then
										aux1:='1';
										wordc<="0110000";	-- 1
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0100"=>
									if (aux1='0') then
										aux1:='1';
										wordc<="1101101";	-- 2
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0010"=>
									if (aux1='0') then
										aux1:='1';
										wordc<="1111001";	-- 3
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0001"=>
									if (aux1='0') then
										aux1:='1';
										wordc<="1110111";	-- A
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when others=>null;
							end case;
----------------------------------------------------------------------------------------------------------------------
						when "0100"=>
							case inkeyc is
								when "0000"=>
									aux2:='0';
									outFlagc<='0';
									contWc<=contWc;
								when "1000"=>
									if (aux2='0') then
										aux2:='1';
										wordc<="0110011";	-- 4
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0100"=>
									if (aux2='0') then
										aux2:='1';
										wordc<="1011011";	-- 5
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0010"=>
									if (aux2='0') then
										aux2:='1';
										wordc<="1011111";	-- 6
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0001"=>
									if (aux2='0') then
										aux2:='1';
										wordc<="0011111";	-- b
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when others=>null;
							end case;
----------------------------------------------------------------------------------------------------------------------
						when "0010"=>
							case inkeyc is
								when "0000"=>
									aux3:='0';
									outFlagc<='0';
									contWc<=contWc;
								when "1000"=>
									if (aux3='0') then
										aux3:='1';
										wordc<="1110000";	-- 7
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0100"=>
									if (aux3='0') then
										aux3:='1';
										wordc<="1111111";	-- 8
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0010"=>
									if (aux3='0') then
										aux3:='1';
										wordc<="1111011";	-- 9
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0001"=>
									if (aux3='0') then
										aux3:='1';
										wordc<="1001110";	-- C
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when others=>null;
							end case;
----------------------------------------------------------------------------------------------------------------------
						when "0001"=>
							case inkeyc is
								when "0000"=>
									aux4:='0';
									outFlagc<='0';
									contWc<=contWc;
								when "1000"=>
									if (aux4='0') then
										aux4:='1';
										wordc<="1100011";	-- *
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0100"=>
									if (aux4='0') then
										aux4:='1';
										wordc<="1111110";	-- 0
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0010"=>
									if (aux4='0') then
										aux4:='1';
										wordc<="0011101";	-- #
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when "0001"=>
									if (aux4='0') then
										aux4:='1';
										wordc<="0111101";	-- d
										contWc<=contWc+'1';
										outFlagc<='1';
									else
										contWc<=contWc;
										outFlagc<='0';
									end if;
								when others=>null;
							end case;
----------------------------------------------------------------------------------------------------------------------
						when others=>null;
					end case;
				when others=>null;
			end case;
		end if;
	end process pcoder;
end coder0;