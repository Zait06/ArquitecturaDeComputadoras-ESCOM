library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity mux00 is
port( 
	selmux: in std_logic_vector ( 3 downto 0 );
	inBCDU: in std_logic_vector ( 6 downto 0 );
	inBCDD: in std_logic_vector ( 6 downto 0 );
	inBCDC: in std_logic_vector ( 6 downto 0 );
	outBCDmux: out std_logic_vector ( 6 downto 0 ) );
end mux00;

architecture mux0 of mux00 is
begin
  with selmux select
    outBCDmux <= inBCDU when "0001",
	             inBCDD when "0010",
				 inBCDC when "0100",
				 "0000001" when "1000",
				 "1111111" when others;
end mux0;