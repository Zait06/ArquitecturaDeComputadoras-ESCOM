library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity ram00 is
	port(
			clkmra,resetmra,rwmra,inFlagmra:in std_logic;
			indirWmra: in std_logic_vector(4 downto 0);
			indirRmra: in std_logic_vector(4 downto 0);
			inwordmra: in std_logic_vector(6 downto 0);
			outwordmra: out std_logic_vector(6 downto 0)
		);
end ram00;

architecture ram0 of ram00 is
	type arrayram is array(0 to 63) of std_logic_vector(6 downto 0);
	signal swordram: arrayram;
	signal scontrol: std_logic_vector(1 downto 0);
begin
	scontrol<=(resetmra)&(rwmra);
	pram:process(clkmra)
	begin
		if (clkmra'event and clkmra='1') then
			case scontrol is
				when "10"=>
					if (inFlagmra='1') then
						swordram(conv_integer(indirWmra))<=inwordmra;
					end if;
				when "11"=>
					outwordmra<=swordram(conv_integer(indirRmra));
				when others=>null;
			end case;
		end if;
	end process pram;
end ram0;