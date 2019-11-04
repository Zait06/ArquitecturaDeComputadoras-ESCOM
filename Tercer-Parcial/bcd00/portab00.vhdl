library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

-- leerDato = portab00.vhdl

entity portab00 is
    port(
            clkLp,inFlagLp:in std_logic;
            codopLp:in std_logic_vector(3 downto 0);
            inPortALp:in std_logic_vector(7 downto 0);
            outFlagLp:out std_logic;
            outPortALp:out std_logic_vector(7 downto 0)
        );
end portab00;

architecture portab0 of portab00 is
begin
    pleer:process(clkLp)
    begin
        if (clkLp'event and clkLp='1') then
            if (codopLp="0001") then
                case inFlagLp is
                    when '0'=>
                        outFlagLp<='0';
                    when '1'=>
                        outPortALp<=inPortALp;
                        outFlagLp<='1';
                    when others=>null;
                end case;
            else
                outPortALp<=(others=>'Z');
                outFlagLp<='Z';
            end if;
        end if;
    end process;
end portab0;