library ieee;
use ieee.std_logic_1164.all;

entity fa00 is port(
	Af: in std_logic;
	Bf: in std_logic;
	Cin: in std_logic;
	Sf: out std_logic;
	Cout: out std_logic);
end entity;

architecture fa0 of fa00 is
	signal Sint1,Cint1,Cint2: std_logic;
	component ha00 port(
		Ah: in std_logic;
		Bh: in std_logic;
		Sh: out std_logic;
		Ch: out std_logic);
	end component;
	component or00 port(
		Ao: in std_logic;
		Bo: in std_logic;
		Yo: out std_logic);
	end component;
begin
		FA00: ha00 port map(
			  Ah => Af,
			  Bh => Bf,
			  Sh => Sint1,
			  Ch => Cint1);
		FA01: ha00 port map(
			  Ah => Sint1,
			  Bh => Cin,
			  Sh => Sf,
			  Ch => Cint2);
		FA02: or00 port map(
			  Ao => Cint1,
			  Bo => Cint2,
			  Yo => Cout);
end architecture;

