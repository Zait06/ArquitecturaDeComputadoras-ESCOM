library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity uc00 is
    port(
			RSuc,ENuc,inFlagIteruc:in std_logic;
			inFlagAC12uc,inFlagAC8uc:in std_logic;
			inFlagCodeuc,inFlagIterBuc:in std_logic;
			F1F2F3uc:out std_logic_vector(2 downto 0)
        );
end uc00;

architecture uc0 of uc00 is
	signal scontroluc:std_logic_vector(6 downto 0);
begin
	scontroluc<=RSuc&ENuc&inFlagIteruc&inFlagAC12uc&inFlagAC8uc&inFlagCodeuc&inFlagIterBuc;
	with scontroluc select
		F1F2F3uc<="000" when "0000000",
					"000" when "0100000",
					"001" when "1100001", -- PC coloca su bandera en 1
					"010" when "1101101", -- PC se incrementa y coloca su bandera en 1
					"011" when "1101001", -- PC se incrementa y coloca su bandera en 1
					"100" when "1100101", -- PC se incrementa y coloca su bandera en 1
					"101" when "1101011",
					"110" when "1001001", -- Se detiene y coloca su bandera en 0
					"110" when "1000101",
					"110" when "1001101",
					"110" when "1001111",
					"110" when "1011111",
					"111" when "1111011",
					"000" when others;
end uc0;