library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity ac8bit00 is
    port(
            clkac8,inFlagac8Inst:in std_logic;
            inac8:in std_logic_vector(7 downto 0);
            outFlagac8:out std_logic;
            outac8:out std_logic_vector(7 downto 0)
        );
end ac8bit00;

architecture ac8bit0 of ac8bit00 is
    variable aux:std_logic:='0';
begin
    pac8:process(clkac8)
    begin
        if (clkac8'event and clkac8='1') then
            case inFlagac8Inst is
                when '0'=>
                    outFlagac8<='0';
                    aux:='0';
                when '1'=>
                    case aux is
                        when '0'=>
                            aux:='1';
                            outac8<=inac8;
                            outFlagac8<='1';
                        when '1'=>
                            outFlagac8<='1';
                        when others=>null;
                    end case;
                when others=>null;
            end case;
        end if;
    end process;
end ac8bit0;