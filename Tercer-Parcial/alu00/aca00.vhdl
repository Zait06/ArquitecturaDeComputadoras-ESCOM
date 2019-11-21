library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;


entity aca00 is
port(
    clkac: in std_logic;
    enableac: in std_logic;                                                                                                                                                                                                                                                                                             
    inac: in std_logic_vector(7 downto 0);
    inFlagac: in std_logic;
    outac: out std_logic_vector(7 downto 0);
    outFlagac: out std_logic
);
end aca00;

architecture aca0 of aca00 is
signal scontrolac: std_logic_vector(1 downto 0);
begin
scontrolac <= (enableac) & (inFlagac);
    pac: process (clkac)
    begin
    if (clkac'event and clkac='1') then
        case scontrolac is
            when "00" => 
                outac<=(others=>'0');
                outFlagac<='0';
            when "10" =>
                outFlagac<='1';
            when "11" =>
                outac<=inac;
                outFlagac<='1';
            when others => null;
        end case; 
    end if;
   end process;

end aca0;