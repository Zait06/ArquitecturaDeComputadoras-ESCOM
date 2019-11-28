library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity multi00 is
  port(
       clkm,ene: in std_logic;
	   opcodem: in std_logic_vector(4 downto 0);
	   inopAm: in std_logic_vector(7 downto 0);
	   inopBm: in std_logic_vector(7 downto 0);
	   inFlagm: in std_logic;
	   Rm: in std_logic_vector(15 downto 0);
	   RLEDm: in std_logic;
	   datoAm: out std_logic_vector(7 downto 0);
	   datoBm: out std_logic_vector(7 downto 0);
	   outm: out std_logic_vector(15 downto 0);
	   outLEDm: out std_logic;
       outFlagm: out std_logic);
end multi00;

architecture multi0 of multi00 is
begin
  pmul: process(clkm)
  variable aux: bit:='0';
  begin
    if (clkm'event and clkm = '1') then
	  if (opcodem = "01001") then
	    case inFlagm is
		  when '1' =>
		    case aux is
			  when '0' =>
				if(ene='1') then
					datoAm <= inopAm;
					datoBm <= inopBm;
					outm <= Rm;
					outLEDm <= RLEDm;
					outFlagm <= '1';
				end if;
			  when '1' =>
			    outFlagm <= '0';
			  when others => null;
			end case;
		  when '0' =>
		    outFlagm <= '0';
		  when others => null;
		end case;
	  else
	    aux:='0';
		outm <= (others => 'Z');
		outFlagm <= 'Z';
		datoAm <=(others => 'Z');
		datoBm <=(others => 'Z');
		outLEDm <= 'Z';
	  end if;
	end if;
  end process;
end architecture;