library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity sust00 is
    port(
            clksu,inFlagsu:in std_logic;
            codopsu:in std_logic_vector(3 downto 0);
            inAC8bitsu:in std_logic_vector(7 downto 0);
            inAC12bitsu:in std_logic_vector(11 downto 0);
            outFlagsu,outFlagsuB:out std_logic;
            outAC12bitsu,outsust:out std_logic_vector(11 downto 0)
        );
end sust00;

architecture sust0 of sust00 is
begin
    psust:process(clksu)
    begin
        if (clksu'event and clksu='1') then
            if (codopsu="0010") then
                case inFlagsu is
                    when '0'=>
                        outFlagsu<='0';
                        outFlagsuB<='1';
                    when '1'=>
                        outAC12bitsu<=inAC12bitsu(11 downto 1)&inAC8bitsu(7);
                        outsust<=inAC12bitsu(11 downto 1)&inAC8bitsu(7);
                        outFlagsu<='1'; outFlagsuB<='1';
                    when others=>null;
                end case;
            else
                outAC12bitsu<=(others=>'Z');
                outsust<=(others=>'Z');
                outFlagsu<='Z';
                outFlagsuB<='Z';
            end if;
        end if;
    end process;
end sust0;