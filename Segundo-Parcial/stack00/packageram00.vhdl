library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packageram00 is

	component topdiv00
		port(
			cdiv0:in std_logic_vector(4 downto 0);
			oscout0:inout std_logic
		);
	end component;
	
	component contring00
		port(
			clks: in std_logic;
			resets: in std_logic;
			outs: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component coder00
		port(
			clkc,resetc,rwc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: inout std_logic_vector(3 downto 0);
			contWc: inout std_logic_vector(4 downto 0);	-- Contador de lectura
			wordc: out std_logic_vector(6 downto 0);
			outFlagc:out std_logic
		);
	end component;
	
	component ram00
		port(
			clkmra,resetmra,rwmra,inFlagmra:in std_logic;
			indirWmra: in std_logic_vector(4 downto 0);
			indirRmra: in std_logic_vector(4 downto 0);
			inwordmra: in std_logic_vector(6 downto 0);
			outwordmra: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component contRead00
		port(
			clkcR,resetcR,rwcR:in std_logic;
			incontWcR: in std_logic_vector(4 downto 0);
			outcontcR: inout std_logic_vector(4 downto 0)
		);
	end component;
	
	component muxRam00
		port(
			resetm,rwm:in std_logic;
			inwordCm,inwordRm: in std_logic_vector(6 downto 0);
			outwordm: out std_logic_vector(6 downto 0)
		);
	end component;
	
end packageram00;