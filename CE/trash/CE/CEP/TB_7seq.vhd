entity TB_7seq is 
end TB_7seq;


architecture  SEQUENZ of TB_7seq  is
component  Segment_illu is
    port(
         clken :in bit ;
         MR : in bit;
         clk: in bit;
         INPUT : in Bit_vector(15 downto 0);
         ANODE : out Bit_vector(3 downto 0);
         CATHODE: out Bit_vector(7 downto 0));
end component;

signal CLK_I,MR_I,clken_I :bit;
signal INPUT_I:bit_vector(16-1 downto 0);
signal ANODE_I:Bit_vector(3 downto 0);
signal CATHODE_I:Bit_vector(7 downto 0);
begin 

CLOCK: process
   begin 
    CLK_I <= '0'; wait for 25 ns;
    CLK_I <= '1'; wait for 25 ns;
end process CLOCK;

ABLAUF: process
begin
INPUT_I <= "1111100001110011";
clken_i <= '1';
MR_I<='1';
wait for 100000 ns;
end process ABLAUF;

DUT: entity work.Segment_illu(Illustrade)
    port map (CLK=>CLK_I,clken => clken_I, MR=>MR_I,INPUT=>INPUT_I,ANODE=>ANODE_I,CATHODE=>CATHODE_I );
        
end SEQUENZ;
