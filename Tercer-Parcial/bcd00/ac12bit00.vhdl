library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity ac12bit00 is
    port(
            clkac12,inFlagac12Inst:in std_logic;
            inac12:in std_logic_vector(11 downto 0);
            outFlagac12:out std_logic;
            outac12:out std_logic_vector(11 downto 0)
        );
end ac12bit00;

architecture ac12bit0 of ac12bit00 is
    variable aux:std_logic:='0';
begin
    pac12:process(clkac12)
    begin
        if (clkac12'event and clkac12='1') then
            case inFlagac12Inst is
                when '0'=>
                    outFlagac12<='0';
                    aux:='0';
                when '1'=>
                    case aux is
                        when '0'=>
                            aux:='1';
                            outac12<=inac12;
                            outFlagac12<='1';
                        when '1'=>
                            outFlagac12<='1';
                        when others=>null;
                    end case;
                when others=>null;
            end case;
        end if;
    end process;
end ac12bit0;