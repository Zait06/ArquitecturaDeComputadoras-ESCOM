library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity adda00 is
  port(
       clkadd: in std_logic;
	   opcodeadd: in std_logic_vector(4 downto 0);
	   inopAadd: in std_logic_vector(7 downto 0);
	   inopBadd: in std_logic_vector(7 downto 0);
	   inFlagadd: in std_logic;
	   Radd: in std_logic_vector(7 downto 0);
	   RLEDadd: in std_logic;
	   datoAadd: out std_logic_vector(7 downto 0);
	   datoBadd: out std_logic_vector(7 downto 0);
	   bitOPadd: out std_logic;
	   outadd: out std_logic_vector(7 downto 0);
	   outLEDadd: out std_logic;
       outFlagadd: out std_logic);
end adda00;

architecture adda0 of adda00 is
begin
  padd: process(clkadd)
  variable aux: bit:='0';
  begin
    if (clkadd'event and clkadd = '1') then
	  if (opcodeadd = "00111") then
	    case inFlagadd is
		  when '1' =>
		    case aux is
			  when '0' =>
			    datoAadd <= inopAadd;
				datoBadd <= inopBadd;
				bitOPadd <= '0';
				outadd <= Radd;
				outLEDadd <= RLEDadd;
				outFlagadd <= '1';
			  when '1' =>
			    outFlagadd <= '0';
			  when others => null;
			end case;
		  when '0' =>
		    outFlagadd <= '0';
		  when others => null;
		end case;
	  else
	    aux:='0';
		outadd <= (others => 'Z');
		outFlagadd <= 'Z';
		datoAadd <=(others => 'Z');
		datoBadd <=(others => 'Z');
		outLEDadd <= 'Z';
		bitOPadd <= 'Z';
	  end if;
	end if;
  end process padd;
end adda0;