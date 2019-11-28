library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagealu00.all;

entity topalu00 is
	port(
			clk0:inout std_logic;
			cdiv00:in std_logic_vector(3 downto 0);
			opcode0:in std_logic_vector(4 downto 0);
			enab0:in std_logic;
			inDataA0,inDataB0:in std_logic_vector(7 downto 0);
			outAC0:out std_logic_vector(7 downto 0);
			outMul0:out std_logic_vector(15 downto 0);
			outFlagAC0:inout std_logic
		);
end topalu00;

architecture topalu0 of topalu00 is
	signal soutop,sDatoA,sDatoB,sRadd:std_logic_vector(7 downto 0);
	signal soutmp,sRmul:std_logic_vector(15 downto 0);
	signal soutFlagop,sRLEDadd:std_logic;
	signal sbit,soutLED:std_logic;
begin
	AL00:topdiv00 port map(cdiv0=>cdiv00,oscout0=>clk0);
	
	AL01:anda00 port map(clkaa=>clk0,inFlagaa=>outFlagAC0,opcodeaa=>opcode0,
							indataAaa=>inDataA0,indataBaa=>inDataB0,
							outaa=>soutop,outFlagaa=>soutFlagop);
	
	AL02:ora00 port map(clkoa=>clk0,inFlagoa=>outFlagAC0,opcodeoa=>opcode0,
						inDataAoa=>inDataA0,inDataBoa=>inDataB0,
						outoa=>soutop,outFlagoa=>soutFlagop);
						
	AL03:xora00 port map(clkxra=>clk0,inFlagxra=>outFlagAC0,opcodexra=>opcode0,
							inDataAxra=>inDataA0,inDataBxra=>inDataB0,
							outxra=>soutop,outFlagxra=>soutFlagop);
							
	AL04:nanda00 port map(clknaa=>clk0,inFlagnaa=>outFlagAC0,opcodenaa=>opcode0,
							indataAnaa=>inDataA0,indataBnaa=>inDataB0,
							outnaa=>soutop,outFlagnaa=>soutFlagop);
							
	AL05:nora00 port map(clknra=>clk0,inFlagnra=>outFlagAC0,opcodenra=>opcode0,
							indataAnra=>inDataA0,indataBnra=>inDataB0,
							outnra=>soutop,outFlagnra=>soutFlagop);
							
	AL06:xnora00 port map(clkxnra=>clk0,inFlagxnra=>outFlagAC0,opcodexnra=>opcode0,
							indataAxnra=>inDataA0,indataBxnra=>inDataB0,
							outxnra=>soutop,outFlagxnra=>soutFlagop);
							
	AL07:nota00 port map(clkna=>clk0,inFlagna=>outFlagAC0,opcodena=>opcode0,
							indataAna=>inDataA0,indataBna=>inDataB0,
							outna=>soutop,outFlagna=>soutFlagop);
	
	AL08: adda00 port map(clkadd => clk0,
						opcodeadd => opcode0,
						inopAadd => inDataA0,
						inopBadd => inDataB0,
						inFlagadd => outFlagAC0,
						Radd => sRadd,
						RLEDadd => sRLEDadd,
						datoAadd => sDatoA,
						datoBadd => sDatoB,
						bitOPadd => sbit,
						outadd => soutop,
						outLEDadd => soutLED,
						outFlagadd => soutFlagop);
						
	AL09: substa00 port map(clksub => clk0,
						  opcodesub => opcode0,
						  inopAsub => inDataA0,
						  inopBsub => inDataB0,
						  inFlagsub => outFlagAC0,
						  Rsub => sRadd,
						  RLEDsub => sRLEDadd,
						  datoAsub => sDatoA,
						  datoBsub => sDatoB,
						  bitOPsub => sbit,
						  outsub => soutop,
						  outLEDsub => soutLED,
						  outFlagsub => soutFlagop);
						  
	AL10:topadder8bit00 port map(Ai=>sDatoA,Bi=>sDatoB,
									SL=>sbit,So=>sRadd,LED=>sRLEDadd);
							
	AL11:barrelShifRL00 port map(clkrl=>clk0,inFlagrl=>outFlagAC0,opcoderl=>opcode0,
									indataArl=>inDataA0,indataBrl=>inDataB0,
									outrl=>soutop,outFlagrl=>soutFlagop);
									
	AL12:barrelShifLR00 port map(clklr=>clk0,inFlaglr=>outFlagAC0,opcodelr=>opcode0,
									indataAlr=>inDataA0,indataBlr=>inDataB0,
									outlr=>soutop,outFlaglr=>soutFlagop);
									
	AL13:barrelRotRL00 port map(clkrrl=>clk0,inFlagrrl=>outFlagAC0,opcoderrl=>opcode0,
								indataArrl=>inDataA0,indataBrrl=>inDataB0,
								outrrl=>soutop,outFlagrrl=>soutFlagop);
								
	AL14:barrelRotLR00 port map(clkrlr=>clk0,inFlagrlr=>outFlagAC0,opcoderlr=>opcode0,
								indataArlr=>inDataA0,indataBrlr=>inDataB0,
								outrlr=>soutop,outFlagrlr=>soutFlagop);
	
	AL15:multi00 port map(clkm=>clk0,ene=>enab0,
							opcodem=>opcode0,
							inopAm=>inDataA0,
							inopBm=>inDataB0,
							inFlagm=>outFlagAC0,
							Rm=>sRmul,
							RLEDm=>sRLEDadd,
							datoAm=>sDatoA,
							datoBm=>sDatoB,
							outm=>outMul0,
							outLEDm=>soutLED,
							outFlagm=>soutFlagop);
							
	AL16:multiplicador00 port map(Am=>sDatoA,Bm=>sDatoB,Rm=>sRmul);
	
	AL20:aca00 port map(clkac=>clk0,enableac=>enab0,inFlagac=>soutFlagop,
						inac=>soutop,outac=>outAC0,outFlagac=>outFlagAC0);
end topalu0;