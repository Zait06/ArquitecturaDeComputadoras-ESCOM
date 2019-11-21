library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagealu00 is
	component topdiv00 is
		port(
				cdiv0:in std_logic_vector(4 downto 0);
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

end packagealu00;