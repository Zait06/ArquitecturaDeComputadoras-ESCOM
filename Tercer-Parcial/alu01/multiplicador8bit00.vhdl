library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity multiplicador00 is port(
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
		A00: in std_logic;
		B00: in std_logic;
		C00: in std_logic;
		S00: out std_logic;
		C01: out std_logic);
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
				A00 => SAnd2(0),
				B00 => SAnd1(0),
				C00 => '0',
				S00 => Rm(1),
				C01 => Zignal1(0)
				);
		MA17: fa00 port map(
				A00 => SAnd2(1),
				B00 => SAnd1(1),
				C00 => Zignal1(0),
				S00 => Signal1(0),
				C01 => Zignal1(1)
				);
		MA18: fa00 port map(
				A00 => SAnd2(2),
				B00 => SAnd1(2),
				C00 => Zignal1(1),
				S00 => Signal1(1),
				C01 => Zignal1(2)
				);
		MA19: fa00 port map(
				A00 => SAnd2(3),
				B00 => SAnd1(3),
				C00 => Zignal1(2),
				S00 => Signal1(2),
				C01 => Zignal1(3)
				);
		MA20: fa00 port map(
				A00 => SAnd2(4),
				B00 => SAnd1(4),
				C00 => Zignal1(3),
				S00 => Signal1(3),
				C01 => Zignal1(4)
				);
		MA21: fa00 port map(
				A00 => SAnd2(5),
				B00 => SAnd1(5),
				C00 => Zignal1(4),
				S00 => Signal1(4),
				C01 => Zignal1(5)
				);
		MA22: fa00 port map(
				A00 => SAnd2(6),
				B00 => SAnd1(6),
				C00 => Zignal1(5),
				S00 => Signal1(5),
				C01 => Zignal1(6)
				);
		MA23: fa00 port map(
				A00 => SAnd2(7),
				B00 => '0',
				C00 => Zignal1(6),
				S00 => Signal1(6),
				C01 => ZignalOne
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
				A00 => SAnd3(0),
				B00 => Signal1(0),
				C00 => '0',
				S00 => Rm(2),
				C01 => Zignal2(0)
				);
		MA33: fa00 port map(
				A00 => SAnd3(1),
				B00 => Signal1(1),
				C00 => Zignal2(0),
				S00 => Signal2(0),
				C01 => Zignal2(1)
				);
		MA34: fa00 port map(
				A00 => SAnd3(2),
				B00 => Signal1(2),
				C00 => Zignal2(1),
				S00 => Signal2(1),
				C01 => Zignal2(2)
				);
		MA35: fa00 port map(
				A00 => SAnd3(3),
				B00 => Signal1(3),
				C00 => Zignal2(2),
				S00 => Signal2(2),
				C01 => Zignal2(3)
				);
		MA36: fa00 port map(
				A00 => SAnd3(4),
				B00 => Signal1(4),
				C00 => Zignal2(3),
				S00 => Signal2(3),
				C01 => Zignal2(4)
				);
		MA37: fa00 port map(
				A00 => SAnd3(5),
				B00 => Signal1(5),
				C00 => Zignal2(4),
				S00 => Signal2(4),
				C01 => Zignal2(5)
				);
		MA38: fa00 port map(
				A00 => SAnd3(6),
				B00 => Signal1(6),
				C00 => Zignal2(5),
				S00 => Signal2(5),
				C01 => Zignal2(6)
				);
		MA39: fa00 port map(
				A00 => SAnd3(7),
				B00 => ZignalOne,
				C00 => Zignal2(6),
				S00 => Signal2(6),
				C01 => ZignalTwo
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
				A00 => SAnd4(0),
				B00 => Signal2(0),
				C00 => '0',
				S00 => Rm(3),
				C01 => Zignal3(0)
				);
		MA49: fa00 port map(
				A00 => SAnd4(1),
				B00 => Signal2(1),
				C00 => Zignal3(0),
				S00 => Signal3(0),
				C01 => Zignal3(1)
				);
		MA50: fa00 port map(
				A00 => SAnd4(2),
				B00 => Signal2(2),
				C00 => Zignal3(1),
				S00 => Signal3(1),
				C01 => Zignal3(2)
				);
		MA51: fa00 port map(
				A00 => SAnd4(3),
				B00 => Signal2(3),
				C00 => Zignal3(2),
				S00 => Signal3(2),
				C01 => Zignal3(3)
				);
		MA52: fa00 port map(
				A00 => SAnd4(4),
				B00 => Signal2(4),
				C00 => Zignal3(3),
				S00 => Signal3(3),
				C01 => Zignal3(4)
				);
		MA53: fa00 port map(
				A00 => SAnd4(5),
				B00 => Signal2(5),
				C00 => Zignal3(4),
				S00 => Signal3(4),
				C01 => Zignal3(5)
				);
		MA54: fa00 port map(
				A00 => SAnd4(6),
				B00 => Signal2(6),
				C00 => Zignal3(5),
				S00 => Signal3(5),
				C01 => Zignal3(6)
				);
		MA55: fa00 port map(
				A00 => SAnd4(7),
				B00 => ZignalTwo,
				C00 => Zignal3(6),
				S00 => Signal3(6),
				C01 => ZignalThree
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
				A00 => SAnd5(0),
				B00 => Signal3(0),
				C00 => '0',
				S00 => Rm(4),
				C01 => Zignal4(0)
				);
		MA65: fa00 port map(
				A00 => SAnd5(1),
				B00 => Signal3(1),
				C00 => Zignal4(0),
				S00 => Signal4(0),
				C01 => Zignal4(1)
				);
		MA66: fa00 port map(
				A00 => SAnd5(2),
				B00 => Signal3(2),
				C00 => Zignal4(1),
				S00 => Signal4(1),
				C01 => Zignal4(2)
				);
		MA67: fa00 port map(
				A00 => SAnd5(3),
				B00 => Signal3(3),
				C00 => Zignal4(2),
				S00 => Signal4(2),
				C01 => Zignal4(3)
				);
		MA68: fa00 port map(
				A00 => SAnd5(4),
				B00 => Signal3(4),
				C00 => Zignal4(3),
				S00 => Signal4(3),
				C01 => Zignal4(4)
				);
		MA69: fa00 port map(
				A00 => SAnd5(5),
				B00 => Signal3(5),
				C00 => Zignal4(4),
				S00 => Signal4(4),
				C01 => Zignal4(5)
				);
		MA70: fa00 port map(
				A00 => SAnd5(6),
				B00 => Signal3(6),
				C00 => Zignal4(5),
				S00 => Signal4(5),
				C01 => Zignal4(6)
				);
		MA71: fa00 port map(
				A00 => SAnd5(7),
				B00 => ZignalThree,
				C00 => Zignal4(6),
				S00 => Signal4(6),
				C01 => ZignalFour
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
				A00 => SAnd6(0),
				B00 => Signal4(0),
				C00 => '0',
				S00 => Rm(5),
				C01 => Zignal5(0)
				);
		MA81: fa00 port map(
				A00 => SAnd6(1),
				B00 => Signal4(1),
				C00 => Zignal5(0),
				S00 => Signal5(0),
				C01 => Zignal5(1)
				);
		MA82: fa00 port map(
				A00 => SAnd6(2),
				B00 => Signal4(2),
				C00 => Zignal5(1),
				S00 => Signal5(1),
				C01 => Zignal5(2)
				);
		MA83: fa00 port map(
				A00 => SAnd6(3),
				B00 => Signal4(3),
				C00 => Zignal5(2),
				S00 => Signal5(2),
				C01 => Zignal5(3)
				);
		MA84: fa00 port map(
				A00 => SAnd6(4),
				B00 => Signal4(4),
				C00 => Zignal5(3),
				S00 => Signal5(3),
				C01 => Zignal5(4)
				);
		MA85: fa00 port map(
				A00 => SAnd6(5),
				B00 => Signal4(5),
				C00 => Zignal5(4),
				S00 => Signal5(4),
				C01 => Zignal5(5)
				);
		MA86: fa00 port map(
				A00 => SAnd6(6),
				B00 => Signal4(6),
				C00 => Zignal5(5),
				S00 => Signal5(5),
				C01 => Zignal5(6)
				);
		MA87: fa00 port map(
				A00 => SAnd6(7),
				B00 => ZignalFour,
				C00 => Zignal5(6),
				S00 => Signal5(6),
				C01 => ZignalFive
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
				A00 => SAnd7(0),
				B00 => Signal5(0),
				C00 => '0',
				S00 => Rm(6),
				C01 => Zignal6(0)
				);
		MA97: fa00 port map(
				A00 => SAnd7(1),
				B00 => Signal5(1),
				C00 => Zignal6(0),
				S00 => Signal6(0),
				C01 => Zignal6(1)
				);
		MA98: fa00 port map(
				A00 => SAnd7(2),
				B00 => Signal5(2),
				C00 => Zignal6(1),
				S00 => Signal6(1),
				C01 => Zignal6(2)
				);
		MA99: fa00 port map(
				A00 => SAnd7(3),
				B00 => Signal5(3),
				C00 => Zignal6(2),
				S00 => Signal6(2),
				C01 => Zignal6(3)
				);
		MA100: fa00 port map(
				A00 => SAnd7(4),
				B00 => Signal5(4),
				C00 => Zignal6(3),
				S00 => Signal6(3),
				C01 => Zignal6(4)
				);
		MA101: fa00 port map(
				A00 => SAnd7(5),
				B00 => Signal5(5),
				C00 => Zignal6(4),
				S00 => Signal6(4),
				C01 => Zignal6(5)
				);
		MA102: fa00 port map(
				A00 => SAnd7(6),
				B00 => Signal5(6),
				C00 => Zignal6(5),
				S00 => Signal6(5),
				C01 => Zignal6(6)
				);
		MA103: fa00 port map(
				A00 => SAnd7(7),
				B00 => ZignalFive,
				C00 => Zignal6(6),
				S00 => Signal6(6),
				C01 => ZignalSeven
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
				A00 => SAnd8(0),
				B00 => Signal6(0),
				C00 => '0',
				S00 => Rm(7),
				C01 => Zignal7(0)
				);
		MA113: fa00 port map(
				A00 => SAnd8(1),
				B00 => Signal6(1),
				C00 =>Zignal7(0),
				S00 => Rm(8),
				C01 => Zignal7(1)
				);
		MA114: fa00 port map(
				A00 => SAnd8(2),
				B00 => Signal6(2),
				C00 => Zignal7(1),
				S00 => Rm(9),
				C01 => Zignal7(2)
				);
		MA115: fa00 port map(
				A00 => SAnd8(3),
				B00 => Signal6(3),
				C00 => Zignal7(2),
				S00 => Rm(10),
				C01 => Zignal7(3)
				);
		MA116: fa00 port map(
				A00 => SAnd8(4),
				B00 => Signal6(4),
				C00 => Zignal7(3),
				S00 => Rm(11),
				C01 => Zignal7(4)
				);
		MA117: fa00 port map(
				A00 => SAnd8(5),
				B00 => Signal6(5),
				C00 => Zignal7(4),
				S00 => Rm(12),
				C01 => Zignal7(5)
				);
		MA118: fa00 port map(
				A00 => SAnd8(6),
				B00 => Signal6(6),
				C00 => Zignal7(5),
				S00 => Rm(13),
				C01 => Zignal7(6)
				);
		MA119: fa00 port map(
				A00 => SAnd8(7),
				B00 => ZignalSix,
				C00 => Zignal7(6),
				S00 => Rm(14),
				C01 => Rm(15)
				);
end architecture;
	