library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shift8bit00 is
    port(
            clkms8,inFlagms8:in std_logic;
            codopms8:in std_logic_vector(3 downto 0);
            inACms8:in std_logic_vector(7 downto 0);
            outFlagms8:out std_logic;
            outACms8:out std_logic_vector(7 downto 0)
        );
end shift8bit00;

architecture shift8bit0 of shift8bit00 is
begin
    pshift:process(clkms8)
        variable aux:std_logic:='0';
    begin
        if (clkms8'event and clkms8='1') then
            if (codopms8="0100") then
                case inFlagms8 is
                    when '0'=>
                        outFlagms8<='0';
                    when '1'=>
                        case aux is
                            when '0'=>
                                aux:='1'; outFlagms8<='1';
                                outACms8(0)<='0';
                                outACms8(7 downto 1)<=inACms8(6 downto 0);
                            when '1'=>
                                outFlagms8<='0';
                            when others=>null;
                        end case;
                    when others=>null;
                end case;
            else
                outACms8<=(others=>'Z');
                outFlagms8<='Z';
                aux:='0';
            end if;
        end if;
    end process;
end shift8bit0;