library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity leeInst00 is
    port(
            inFlagInstrom:in std_logic;
            inPCrom:in std_logic_vector(3 downto 0);
            outFlagrom:out std_logic;
            outcode:out std_logic_vector(3 downto 0)
        );
end leeInst00;

architecture leeInst0 of leeInst00 is
    type arrayrom is array(0 to 16) of std_logic_vector(3 downto 0);
    constant memrom:arrayrom:=(
                                "0000", -- init
                                "0001", -- portab00
                                "0010", -- sust00
                                "0011", -- compadd00
                                "0100", -- shift8bit00
                                "0101", -- shift12bit00
                                "0110", -- gotoOrEnd
                                others=>"0000"
                            );
begin
    plee:process(inFlagInstrom)
    begin
        case inFlagInstrom is
            when '0'=>
                outFlagrom<='0';
            when '1'=>
                outcode<=memrom(conv_integer(inPCrom));
                outFlagrom<='1';
            when others=>null;
        end case;
    end process;
end leeInst0;