library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity substa00 is
  port(
       clksub: in std_logic;
	   opcodesub: in std_logic_vector(4 downto 0);
	   inopAsub: in std_logic_vector(7 downto 0);
	   inopBsub: in std_logic_vector(7 downto 0);
	   inFlagsub: in std_logic;
	   Rsub: in std_logic_vector(7 downto 0);
	   RLEDsub: in std_logic;
	   datoAsub: out std_logic_vector(7 downto 0);
	   datoBsub: out std_logic_vector(7 downto 0);
	   bitOPsub: out std_logic;
	   outsub: out std_logic_vector(7 downto 0);
	   outLEDsub: out std_logic;
       outFlagsub: out std_logic);
end substa00;

architecture substa0 of substa00 is
begin
  psub: process(clksub)
  variable aux: bit:='0';
  begin
    if (clksub'event and clksub = '1') then
	  if (opcodesub = "01000") then
	    case inFlagsub is
		  when '1' =>
		    case aux is
			  when '0' =>
			    datoAsub <= inopAsub;
				datoBsub <= inopBsub;
				bitOPsub <= '1';
				outsub <= Rsub;
				outLEDsub <= RLEDsub;
				outFlagsub <= '1';
			  when '1' =>
			    outFlagsub <= '0';
			  when others => null;
			end case;
		  when '0' =>
		    outFlagsub <= '0';
		  when others => null;
		end case;
	  else
	    aux:='0';
		outsub <= (others => 'Z');
		outFlagsub <= 'Z';
		datoAsub <=(others => 'Z');
		datoBsub <=(others => 'Z');
		outLEDsub <= 'Z';
		bitOPsub <= 'Z';
	  end if;
	end if;
  end process psub;
end substa0;