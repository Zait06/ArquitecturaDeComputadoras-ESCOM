library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity multiplicador00 is port(
------------Adder Bibliotecas------------------
	SL:in std_logic;
	So:out std_logic_vector(7 downto 0);
-------------------------------------------------
	Am: in std_logic_vector(7 downto 0);
	Bm: in std_logic_vector(7 downto 0);
	Rm: out std_logic_vector(15 downto 0));
end entity;

architecture multiplicador0 of multiplicador00 is
	signal SAnd1,Zignal1,Signal1,Zignal2,Signal2,Zignal3,Signal3,Zignal4,Signal4,Zignal5,Signal5,Zignal6,Signal6,Zignal7,Signal7: std_logic_vector(6 downto 0);
	signal SAnd2,SAnd3,SAnd4,SAnd5,SAnd6,SAnd7,SAnd8: std_logic_vector(7 downto 0);
	signal ZignalOne,ZignalTwo,ZignalThree,ZignalFour,ZignalFive,ZignalSix,ZignalSeven: std_logic;
	component and00 port(
		Aa: in std_logic;
		Ba: in std_logic;
		Ya: out std_logic);
	end component;
	component fa00 port(
		Af: in std_logic;
		Bf: in std_logic;
		Cin: in std_logic;
		Sf: out std_logic;
		Cout: out std_logic);
	end component;
begin
		MA00: and00 port map(
				Aa => Am(0),
				Ba => Bm(0),
				Ya => Rm(0)
				);
		MA01: and00 port map(
				Aa => Am(1),
				Ba => Bm(0),
				Ya => SAnd1(0)
				);
		MA02: and00 port map(
				Aa => Am(2),
				Ba => Bm(0),
				Ya => SAnd1(1)
				);
		MA03: and00 port map(
				Aa => Am(3),
				Ba => Bm(0),
				Ya => SAnd1(2)
				);
		MA04: and00 port map(
				Aa => Am(4),
				Ba => Bm(0),
				Ya => SAnd1(3)
				);
		MA05: and00 port map(
				Aa => Am(5),
				Ba => Bm(0),
				Ya => SAnd1(4)
				);
		MA06: and00 port map(
				Aa => Am(6),
				Ba => Bm(0),
				Ya => SAnd1(5)
				);
		MA07: and00 port map(
				Aa => Am(7),
				Ba => Bm(0),
				Ya => SAnd1(6)
				);
--AND 2 nivel				
		MA08: and00 port map(
				Aa => Am(0),
				Ba => Bm(1),
				Ya => SAnd2(0)
				);
		MA09: and00 port map(
				Aa => Am(1),
				Ba => Bm(1),
				Ya => SAnd2(1)
				);
		MA10: and00 port map(
				Aa => Am(2),
				Ba => Bm(1),
				Ya => SAnd2(2)
				);
		MA11: and00 port map(
				Aa => Am(3),
				Ba => Bm(1),
				Ya => SAnd2(3)
				);
		MA12: and00 port map(
				Aa => Am(4),
				Ba => Bm(1),
				Ya => SAnd2(4)
				);
		MA13: and00 port map(
				Aa => Am(5),
				Ba => Bm(1),
				Ya => SAnd2(5)
				);
		MA14: and00 port map(
				Aa => Am(6),
				Ba => Bm(1),
				Ya => SAnd2(6)
				);
		MA15: and00 port map(
				Aa => Am(7),
				Ba => Bm(1),
				Ya => SAnd2(7)
				);
--FA primer nivel				
		MA16: fa00 port map(
				Af => SAnd2(0),
				Bf => SAnd1(0),
				Cin => '0',
				Sf => Rm(1),
				Cout => Zignal1(0)
				);
		MA17: fa00 port map(
				Af => SAnd2(1),
				Bf => SAnd1(1),
				Cin => Zignal1(0),
				Sf => Signal1(0),
				Cout => Zignal1(1)
				);
		MA18: fa00 port map(
				Af => SAnd2(2),
				Bf => SAnd1(2),
				Cin => Zignal1(1),
				Sf => Signal1(1),
				Cout => Zignal1(2)
				);
		MA19: fa00 port map(
				Af => SAnd2(3),
				Bf => SAnd1(3),
				Cin => Zignal1(2),
				Sf => Signal1(2),
				Cout => Zignal1(3)
				);
		MA20: fa00 port map(
				Af => SAnd2(4),
				Bf => SAnd1(4),
				Cin => Zignal1(3),
				Sf => Signal1(3),
				Cout => Zignal1(4)
				);
		MA21: fa00 port map(
				Af => SAnd2(5),
				Bf => SAnd1(5),
				Cin => Zignal1(4),
				Sf => Signal1(4),
				Cout => Zignal1(5)
				);
		MA22: fa00 port map(
				Af => SAnd2(6),
				Bf => SAnd1(6),
				Cin => Zignal1(5),
				Sf => Signal1(5),
				Cout => Zignal1(6)
				);
		MA23: fa00 port map(
				Af => SAnd2(7),
				Bf => '0',
				Cin => Zignal1(6),
				Sf => Signal1(6),
				Cout => ZignalOne
				);
--AND 3 nivel
		MA24: and00 port map(
				Aa => Am(0),
				Ba => Bm(2),
				Ya => SAnd3(0)
				);
		MA25: and00 port map(
				Aa => Am(1),
				Ba => Bm(2),
				Ya => SAnd3(1)
				);
		MA26: and00 port map(
				Aa => Am(2),
				Ba => Bm(2),
				Ya => SAnd3(2)
				);
		MA27: and00 port map(
				Aa => Am(3),
				Ba => Bm(2),
				Ya => SAnd3(3)
				);
		MA28: and00 port map(
				Aa => Am(4),
				Ba => Bm(2),
				Ya => SAnd3(4)
				);
		MA29: and00 port map(
				Aa => Am(5),
				Ba => Bm(2),
				Ya => SAnd3(5)
				);
		MA30: and00 port map(
				Aa => Am(6),
				Ba => Bm(2),
				Ya => SAnd3(6)
				);
		MA31: and00 port map(
				Aa => Am(7),
				Ba => Bm(2),
				Ya => SAnd3(7)
				);
--FA 2 nivel
		
		MA32: fa00 port map(
				Af => SAnd3(0),
				Bf => Signal1(0),
				Cin => '0',
				Sf => Rm(2),
				Cout => Zignal2(0)
				);
		MA33: fa00 port map(
				Af => SAnd3(1),
				Bf => Signal1(1),
				Cin => Zignal2(0),
				Sf => Signal2(0),
				Cout => Zignal2(1)
				);
		MA34: fa00 port map(
				Af => SAnd3(2),
				Bf => Signal1(2),
				Cin => Zignal2(1),
				Sf => Signal2(1),
				Cout => Zignal2(2)
				);
		MA35: fa00 port map(
				Af => SAnd3(3),
				Bf => Signal1(3),
				Cin => Zignal2(2),
				Sf => Signal2(2),
				Cout => Zignal2(3)
				);
		MA36: fa00 port map(
				Af => SAnd3(4),
				Bf => Signal1(4),
				Cin => Zignal2(3),
				Sf => Signal2(3),
				Cout => Zignal2(4)
				);
		MA37: fa00 port map(
				Af => SAnd3(5),
				Bf => Signal1(5),
				Cin => Zignal2(4),
				Sf => Signal2(4),
				Cout => Zignal2(5)
				);
		MA38: fa00 port map(
				Af => SAnd3(6),
				Bf => Signal1(6),
				Cin => Zignal2(5),
				Sf => Signal2(5),
				Cout => Zignal2(6)
				);
		MA39: fa00 port map(
				Af => SAnd3(7),
				Bf => ZignalOne,
				Cin => Zignal2(6),
				Sf => Signal2(6),
				Cout => ZignalTwo
				);
--AND 4 nivel
		MA40: and00 port map(
				Aa => Am(0),
				Ba => Bm(3),
				Ya => SAnd4(0)
				);
		MA41: and00 port map(
				Aa => Am(1),
				Ba => Bm(3),
				Ya => SAnd4(1)
				);
		MA42: and00 port map(
				Aa => Am(2),
				Ba => Bm(3),
				Ya => SAnd4(2)
				);
		MA43: and00 port map(
				Aa => Am(3),
				Ba => Bm(3),
				Ya => SAnd4(3)
				);
		MA44: and00 port map(
				Aa => Am(4),
				Ba => Bm(3),
				Ya => SAnd4(4)
				);
		MA45: and00 port map(
				Aa => Am(5),
				Ba => Bm(3),
				Ya => SAnd4(5)
				);
		MA46: and00 port map(
				Aa => Am(6),
				Ba => Bm(3),
				Ya => SAnd4(6)
				);
		MA47: and00 port map(
				Aa => Am(7),
				Ba => Bm(3),
				Ya => SAnd4(7)
				);
--FA 3 nivel
		
		MA48: fa00 port map(
				Af => SAnd4(0),
				Bf => Signal2(0),
				Cin => '0',
				Sf => Rm(3),
				Cout => Zignal3(0)
				);
		MA49: fa00 port map(
				Af => SAnd4(1),
				Bf => Signal2(1),
				Cin => Zignal3(0),
				Sf => Signal3(0),
				Cout => Zignal3(1)
				);
		MA50: fa00 port map(
				Af => SAnd4(2),
				Bf => Signal2(2),
				Cin => Zignal3(1),
				Sf => Signal3(1),
				Cout => Zignal3(2)
				);
		MA51: fa00 port map(
				Af => SAnd4(3),
				Bf => Signal2(3),
				Cin => Zignal3(2),
				Sf => Signal3(2),
				Cout => Zignal3(3)
				);
		MA52: fa00 port map(
				Af => SAnd4(4),
				Bf => Signal2(4),
				Cin => Zignal3(3),
				Sf => Signal3(3),
				Cout => Zignal3(4)
				);
		MA53: fa00 port map(
				Af => SAnd4(5),
				Bf => Signal2(5),
				Cin => Zignal3(4),
				Sf => Signal3(4),
				Cout => Zignal3(5)
				);
		MA54: fa00 port map(
				Af => SAnd4(6),
				Bf => Signal2(6),
				Cin => Zignal3(5),
				Sf => Signal3(5),
				Cout => Zignal3(6)
				);
		MA55: fa00 port map(
				Af => SAnd4(7),
				Bf => ZignalTwo,
				Cin => Zignal3(6),
				Sf => Signal3(6),
				Cout => ZignalThree
				);
--AND 5 nivel
		MA56: and00 port map(
				Aa => Am(0),
				Ba => Bm(4),
				Ya => SAnd5(0)
				);
		MA57: and00 port map(
				Aa => Am(1),
				Ba => Bm(4),
				Ya => SAnd5(1)
				);
		MA58: and00 port map(
				Aa => Am(2),
				Ba => Bm(4),
				Ya => SAnd5(2)
				);
		MA59: and00 port map(
				Aa => Am(3),
				Ba => Bm(4),
				Ya => SAnd5(3)
				);
		MA60: and00 port map(
				Aa => Am(4),
				Ba => Bm(4),
				Ya => SAnd5(4)
				);
		MA61: and00 port map(
				Aa => Am(5),
				Ba => Bm(4),
				Ya => SAnd5(5)
				);
		MA62: and00 port map(
				Aa => Am(6),
				Ba => Bm(4),
				Ya => SAnd5(6)
				);
		MA63: and00 port map(
				Aa => Am(7),
				Ba => Bm(4),
				Ya => SAnd5(7)
				);
--FA 4 nivel
		
		MA64: fa00 port map(
				Af => SAnd5(0),
				Bf => Signal3(0),
				Cin => '0',
				Sf => Rm(4),
				Cout => Zignal4(0)
				);
		MA65: fa00 port map(
				Af => SAnd5(1),
				Bf => Signal3(1),
				Cin => Zignal4(0),
				Sf => Signal4(0),
				Cout => Zignal4(1)
				);
		MA66: fa00 port map(
				Af => SAnd5(2),
				Bf => Signal3(2),
				Cin => Zignal4(1),
				Sf => Signal4(1),
				Cout => Zignal4(2)
				);
		MA67: fa00 port map(
				Af => SAnd5(3),
				Bf => Signal3(3),
				Cin => Zignal4(2),
				Sf => Signal4(2),
				Cout => Zignal4(3)
				);
		MA68: fa00 port map(
				Af => SAnd5(4),
				Bf => Signal3(4),
				Cin => Zignal4(3),
				Sf => Signal4(3),
				Cout => Zignal4(4)
				);
		MA69: fa00 port map(
				Af => SAnd5(5),
				Bf => Signal3(5),
				Cin => Zignal4(4),
				Sf => Signal4(4),
				Cout => Zignal4(5)
				);
		MA70: fa00 port map(
				Af => SAnd5(6),
				Bf => Signal3(6),
				Cin => Zignal4(5),
				Sf => Signal4(5),
				Cout => Zignal4(6)
				);
		MA71: fa00 port map(
				Af => SAnd5(7),
				Bf => ZignalThree,
				Cin => Zignal4(6),
				Sf => Signal4(6),
				Cout => ZignalFour
				);
--AND 6 nivel
		MA72: and00 port map(
				Aa => Am(0),
				Ba => Bm(5),
				Ya => SAnd6(0)
				);
		MA73: and00 port map(
				Aa => Am(1),
				Ba => Bm(5),
				Ya => SAnd6(1)
				);
		MA74: and00 port map(
				Aa => Am(2),
				Ba => Bm(5),
				Ya => SAnd6(2)
				);
		MA75: and00 port map(
				Aa => Am(3),
				Ba => Bm(5),
				Ya => SAnd6(3)
				);
		MA76: and00 port map(
				Aa => Am(4),
				Ba => Bm(5),
				Ya => SAnd6(4)
				);
		MA77: and00 port map(
				Aa => Am(5),
				Ba => Bm(5),
				Ya => SAnd6(5)
				);
		MA78: and00 port map(
				Aa => Am(6),
				Ba => Bm(5),
				Ya => SAnd6(6)
				);
		MA79: and00 port map(
				Aa => Am(7),
				Ba => Bm(5),
				Ya => SAnd6(7)
				);
--FA 5 nivel
		
		MA80: fa00 port map(
				Af => SAnd6(0),
				Bf => Signal4(0),
				Cin => '0',
				Sf => Rm(5),
				Cout => Zignal5(0)
				);
		MA81: fa00 port map(
				Af => SAnd6(1),
				Bf => Signal4(1),
				Cin => Zignal5(0),
				Sf => Signal5(0),
				Cout => Zignal5(1)
				);
		MA82: fa00 port map(
				Af => SAnd6(2),
				Bf => Signal4(2),
				Cin => Zignal5(1),
				Sf => Signal5(1),
				Cout => Zignal5(2)
				);
		MA83: fa00 port map(
				Af => SAnd6(3),
				Bf => Signal4(3),
				Cin => Zignal5(2),
				Sf => Signal5(2),
				Cout => Zignal5(3)
				);
		MA84: fa00 port map(
				Af => SAnd6(4),
				Bf => Signal4(4),
				Cin => Zignal5(3),
				Sf => Signal5(3),
				Cout => Zignal5(4)
				);
		MA85: fa00 port map(
				Af => SAnd6(5),
				Bf => Signal4(5),
				Cin => Zignal5(4),
				Sf => Signal5(4),
				Cout => Zignal5(5)
				);
		MA86: fa00 port map(
				Af => SAnd6(6),
				Bf => Signal4(6),
				Cin => Zignal5(5),
				Sf => Signal5(5),
				Cout => Zignal5(6)
				);
		MA87: fa00 port map(
				Af => SAnd6(7),
				Bf => ZignalFour,
				Cin => Zignal5(6),
				Sf => Signal5(6),
				Cout => ZignalFive
				);
--AND 6 nivel
		MA88: and00 port map(
				Aa => Am(0),
				Ba => Bm(6),
				Ya => SAnd7(0)
				);
		MA89: and00 port map(
				Aa => Am(1),
				Ba => Bm(6),
				Ya => SAnd7(1)
				);
		MA90: and00 port map(
				Aa => Am(2),
				Ba => Bm(6),
				Ya => SAnd7(2)
				);
		MA91: and00 port map(
				Aa => Am(3),
				Ba => Bm(6),
				Ya => SAnd7(3)
				);
		MA92: and00 port map(
				Aa => Am(4),
				Ba => Bm(6),
				Ya => SAnd7(4)
				);
		MA93: and00 port map(
				Aa => Am(5),
				Ba => Bm(6),
				Ya => SAnd7(5)
				);
		MA94: and00 port map(
				Aa => Am(6),
				Ba => Bm(6),
				Ya => SAnd7(6)
				);
		MA95: and00 port map(
				Aa => Am(7),
				Ba => Bm(6),
				Ya => SAnd7(7)
				);
--FA 6 nivel
		
		MA96: fa00 port map(
				Af => SAnd7(0),
				Bf => Signal5(0),
				Cin => '0',
				Sf => Rm(6),
				Cout => Zignal6(0)
				);
		MA97: fa00 port map(
				Af => SAnd7(1),
				Bf => Signal5(1),
				Cin => Zignal6(0),
				Sf => Signal6(0),
				Cout => Zignal6(1)
				);
		MA98: fa00 port map(
				Af => SAnd7(2),
				Bf => Signal5(2),
				Cin => Zignal6(1),
				Sf => Signal6(1),
				Cout => Zignal6(2)
				);
		MA99: fa00 port map(
				Af => SAnd7(3),
				Bf => Signal5(3),
				Cin => Zignal6(2),
				Sf => Signal6(2),
				Cout => Zignal6(3)
				);
		MA100: fa00 port map(
				Af => SAnd7(4),
				Bf => Signal5(4),
				Cin => Zignal6(3),
				Sf => Signal6(3),
				Cout => Zignal6(4)
				);
		MA101: fa00 port map(
				Af => SAnd7(5),
				Bf => Signal5(5),
				Cin => Zignal6(4),
				Sf => Signal6(4),
				Cout => Zignal6(5)
				);
		MA102: fa00 port map(
				Af => SAnd7(6),
				Bf => Signal5(6),
				Cin => Zignal6(5),
				Sf => Signal6(5),
				Cout => Zignal6(6)
				);
		MA103: fa00 port map(
				Af => SAnd7(7),
				Bf => ZignalFive,
				Cin => Zignal6(6),
				Sf => Signal6(6),
				Cout => ZignalSeven
				);

--AND 7 nivel
		MA104: and00 port map(
				Aa => Am(0),
				Ba => Bm(7),
				Ya => SAnd8(0)
				);
		MA105: and00 port map(
				Aa => Am(1),
				Ba => Bm(7),
				Ya => SAnd8(1)
				);
		MA106: and00 port map(
				Aa => Am(2),
				Ba => Bm(7),
				Ya => SAnd8(2)
				);
		MA107: and00 port map(
				Aa => Am(3),
				Ba => Bm(7),
				Ya => SAnd8(3)
				);
		MA108: and00 port map(
				Aa => Am(4),
				Ba => Bm(7),
				Ya => SAnd8(4)
				);
		MA109: and00 port map(
				Aa => Am(5),
				Ba => Bm(7),
				Ya => SAnd8(5)
				);
		MA110: and00 port map(
				Aa => Am(6),
				Ba => Bm(7),
				Ya => SAnd8(6)
				);
		MA111: and00 port map(
				Aa => Am(7),
				Ba => Bm(7),
				Ya => SAnd8(7)
				);
--FA 7 nivel
		
		MA112: fa00 port map(
				Af => SAnd8(0),
				Bf => Signal6(0),
				Cin => '0',
				Sf => Rm(7),
				Cout => Zignal7(0)
				);
		MA113: fa00 port map(
				Af => SAnd8(1),
				Bf => Signal6(1),
				Cin =>Zignal7(0),
				Sf => Rm(8),
				Cout => Zignal7(1)
				);
		MA114: fa00 port map(
				Af => SAnd8(2),
				Bf => Signal6(2),
				Cin => Zignal7(1),
				Sf => Rm(9),
				Cout => Zignal7(2)
				);
		MA115: fa00 port map(
				Af => SAnd8(3),
				Bf => Signal6(3),
				Cin => Zignal7(2),
				Sf => Rm(10),
				Cout => Zignal7(3)
				);
		MA116: fa00 port map(
				Af => SAnd8(4),
				Bf => Signal6(4),
				Cin => Zignal7(3),
				Sf => Rm(11),
				Cout => Zignal7(4)
				);
		MA117: fa00 port map(
				Af => SAnd8(5),
				Bf => Signal6(5),
				Cin => Zignal7(4),
				Sf => Rm(12),
				Cout => Zignal7(5)
				);
		MA118: fa00 port map(
				Af => SAnd8(6),
				Bf => Signal6(6),
				Cin => Zignal7(5),
				Sf => Rm(13),
				Cout => Zignal7(6)
				);
		MA119: fa00 port map(
				Af => SAnd8(7),
				Bf => ZignalSix,
				Cin => Zignal7(6),
				Sf => Rm(14),
				Cout => Rm(15)
				);
				
---------------- Sumador con Lib --------------
	opera:process(SL)
		begin
			if(SL='1') then
				So<=Am-Bm;
			else
				So<=Am+Bm;
			end if;
		end process;
-------------------------------------------------------
end architecture;
	