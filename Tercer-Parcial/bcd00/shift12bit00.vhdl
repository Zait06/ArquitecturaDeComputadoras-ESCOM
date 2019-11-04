library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shift12bit00 is
    port(
            clkms12,inFlagms12:in std_logic;
            codopms12:in std_logic_vector(3 downto 0);
            inACms12:in std_logic_vector(11 downto 0);
            outFlagms12:out std_logic;
            outACms12:out std_logic_vector(11 downto 0)
        );
end shift12bit00;

architecture shift12bit0 of shift12bit00 is
begin
    pshift:process(clkms12)
        variable aux:bit:='0';
    begin
        if (clkms12'event and clkms12='1') then
            if (codopms12="0101") then
                case inFlagms12 is
                    when '0'=>
                        outFlagms12<='0';
                    when '1'=>
                        case aux is
                            when '0'=>
                                aux:='1'; outFlagms12<='1';
                                outACms12(0)<='0';
                                outACms12(11 downto 1)<=inACms12(10 downto 0);
                            when '1'=>
                                outFlagms12<='0';
                            when others=>null;
                        end case;
                    when others=>null;
                end case;
            else
                outACms12<=(others=>'Z');
                outFlagms12<='Z';
                aux:='0';
            end if;
        end if;
    end process;
end shift12bit0;