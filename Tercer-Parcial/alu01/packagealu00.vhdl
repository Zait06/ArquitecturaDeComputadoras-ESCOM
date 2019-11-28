library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagealu00 is
	component topdiv00 is
		port(
				cdiv0:in std_logic_vector(3 downto 0);
				oscout0:inout std_logic
			);
	end component;
	
	component anda00 is
		port(
				clkaa,inFlagaa:in std_logic;
				opcodeaa:in std_logic_vector(4 downto 0);
				indataAaa:in std_logic_vector(7 downto 0);
				indataBaa:in std_logic_vector(7 downto 0);
				outaa:out std_logic_vector(7 downto 0);
				outFlagaa:out std_logic
			);
	end component;
	
	component ora00 is
		port(
				clkoa,inFlagoa:in std_logic;
				opcodeoa:in std_logic_vector(4 downto 0);
				inDataAoa:in std_logic_vector(7 downto 0);
				inDataBoa:in std_logic_vector(7 downto 0);
				outoa:out std_logic_vector(7 downto 0);
				outFlagoa:out std_logic
			);
	end component;
	
	component xora00 is
		port(
				clkxra,inFlagxra:in std_logic;
				opcodexra:in std_logic_vector(4 downto 0);
				inDataAxra:in std_logic_vector(7 downto 0);
				inDataBxra:in std_logic_vector(7 downto 0);
				outxra:out std_logic_vector(7 downto 0);
				outFlagxra:out std_logic
			);
	end component;
	
	component nanda00 is
		port(
				clknaa,inFlagnaa:in std_logic;
				opcodenaa:in std_logic_vector(4 downto 0);
				indataAnaa,indataBnaa:in std_logic_vector(7 downto 0);
				outnaa:out std_logic_vector(7 downto 0);
				outFlagnaa:out std_logic
			);
	end component;
	
	component nora00 is
		port(
				clknra,inFlagnra:in std_logic;
				opcodenra:in std_logic_vector(4 downto 0);
				indataAnra,indataBnra:in std_logic_vector(7 downto 0);
				outnra:out std_logic_vector(7 downto 0);
				outFlagnra:out std_logic
			);
	end component;
	
	component xnora00 is
		port(
				clkxnra,inFlagxnra:in std_logic;
				opcodexnra:in std_logic_vector(4 downto 0);
				indataAxnra,indataBxnra:in std_logic_vector(7 downto 0);
				outxnra:out std_logic_vector(7 downto 0);
				outFlagxnra:out std_logic
			);
	end component;
	
	component nota00 is
		port(
				clkna,inFlagna:in std_logic;
				opcodena:in std_logic_vector(4 downto 0);
				indataAna,indataBna:in std_logic_vector(7 downto 0);
				outna:out std_logic_vector(7 downto 0);
				outFlagna:out std_logic
			);
	end component;
	
	component barrelShifRL00 is
		port(
				clkrl,inFlagrl:in std_logic;
				opcoderl:in std_logic_vector(4 downto 0);
				indataArl,indataBrl:in std_logic_vector(7 downto 0);
				outrl:out std_logic_vector(7 downto 0);
				outFlagrl:out std_logic
			);
	end component;
	
	component barrelShifLR00 is
		port(
				clklr,inFlaglr:in std_logic;
				opcodelr:in std_logic_vector(4 downto 0);
				indataAlr,indataBlr:in std_logic_vector(7 downto 0);
				outlr:out std_logic_vector(7 downto 0);
				outFlaglr:out std_logic
			);
	end component;
	
	component barrelRotRL00 is
		port(
				clkrrl,inFlagrrl:in std_logic;
				opcoderrl:in std_logic_vector(4 downto 0);
				indataArrl,indataBrrl:in std_logic_vector(7 downto 0);
				outrrl:out std_logic_vector(7 downto 0);
				outFlagrrl:out std_logic
			);
	end component;
	
	component barrelRotLR00 is
		port(
				clkrlr,inFlagrlr:in std_logic;
				opcoderlr:in std_logic_vector(4 downto 0);
				indataArlr,indataBrlr:in std_logic_vector(7 downto 0);
				outrlr:out std_logic_vector(7 downto 0);
				outFlagrlr:out std_logic
			);
	end component;
	
	component aca00 is
		port(
			clkac: in std_logic;
			enableac: in std_logic;                                                                                                                                                                                                                                                                                             
			inac: in std_logic_vector(7 downto 0);
			inFlagac: in std_logic;
			outac: out std_logic_vector(7 downto 0);
			outFlagac: out std_logic
		);
	end component;
	
	component topadder8bit00 is
		port(
				Ai,Bi:	in std_logic_vector (7 downto 0);
				SL: 	in std_logic;
				So:		out std_logic_vector (7 downto 0);
				LED: 	out std_logic
			);
	end component;
	
	component adda00 is
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
	end component;
	
	component substa00 is
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
	end component;
	
	component multi00 is
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
	end component;
	
	component multiplicador00 is port(
		Am: in std_logic_vector(7 downto 0);
		Bm: in std_logic_vector(7 downto 0);
		Rm: out std_logic_vector(15 downto 0));
	end component;

end packagealu00;