library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity compadd00 is
    port(
            clkca,inFlagca:in std_logic;
            codopca:in std_logic_vector(3 downto 0);
            inBuf12ca:in std_logic_vector(11 downto 0);
            outFlagca:out std_logic;
            outBuf12ca:out std_logic_vector(11 downto 0)
        );
end compadd00;

architecture compadd0 of compadd00 is
    signal snibb00,snibb01,snibb02:std_logic_vector(3 downto 0);
begin
    pcompadd:process(clkca)
        variable aux:bit:='0';
    begin
        if (clkca'event and clkca='1') then
            if (codopca="0011") then
                case inFlagca is
                    when '0'=>
                        case aux is
                            when '0'=>
                                aux:='1';
                                outBuf12ca<=snibb02&snibb01&snibb00;
                                outFlagca<='1';
                            when '1'=>
                                outFlagca<='0';
                            when others=>null;
                        end case;
                    when '1'=>
                            outFlagca<='0';
                            if (inBuf12ca(3 downto 0)>"0100") then
                                snibb00<=inBuf12ca(3 downto 0)+3;
                            else
                                snibb00<=inBuf12ca(3 downto 0);
                            end if;
                            if (inBuf12ca(4 downto 4)>"0100") then
                                snibb01<=inBuf12ca(3 downto 0)+3;
                            else
                                snibb01<=inBuf12ca(3 downto 0);
                            end if;
                            if (inBuf12ca(11 downto 8)>"0100") then
                                snibb02<=inBuf12ca(3 downto 0)+3;
                            else
                                snibb02<=inBuf12ca(3 downto 0);
                            end if;
                    when others=>null;
                end case;
            else
                outBuf12ca<=(others=>'Z');
                outFlagca<='Z';
                aux:='0';
            end if;
        end if;
    end process;
end compadd0;