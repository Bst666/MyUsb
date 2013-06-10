
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity testbench is
end entity testbench;



architecture beh of testbench is
    
    signal txdat_s : std_logic_vector(11 downto 0);
    signal clk_s : std_logic;
    signal nres_s : std_logic;
 	 signal nLd_s	: std_logic;----wenn 0 -> valLd als startwert laden
	 signal up_s	: std_logic;----hochzählen
	 signal down_s	: std_logic;----runterzählen
    
    
    
    component signalgen 
    port (
        data : out std_logic_vector( 11 downto 0);
        clk  : out std_logic;
        nres : out std_logic;
        nLd  : out std_logic;
        up   : out std_logic;
        down : out std_logic
    );
   end component signalgen;
   for all : signalgen use entity work.signalgen( beh );----
    
    component DUT
                PORT(     
			did	: out std_logic_vector( 2 downto 0);----DUT-ID
			err	: out std_logic;----error
			cnt	: out std_logic_vector( 11 downto 0);----counter-ausgabe
			
			valLd	: in std_logic_vector( 11 downto 0);----init val
			nLd	: in std_logic;----wenn 0 -> valLd als startwert laden
			up	: in std_logic;----hochzählen
			down	: in std_logic;----runterzählen
			
			clk	: in std_logic;----clock
			nres	: in std_logic----wenn 0 -> reset
        );
    end component DUT;
	for all : DUT use entity work.DUT( version1 );----
   
    
begin
    
    sg_i : signalgen
       port map (
           data => txdat_s,----comp OUT auf Signal
           clk => clk_s,----comp OUT auf Signal
           nres => nres_s,----comp OUT auf Signal
           nLd => nLd_s,----comp OUT auf Signal
           up => up_s,----comp OUT auf Signal
  			  down => down_s
       );
        
    dut_i : DUT
       port map (
         valLd => txdat_s,----comp IN auf Signal
         clk => clk_s,----comp IN auf Signal
         nres => nres_s,----comp IN auf Signal
         nLd => nLd_s,
			up => up_s,
			down => down_s
        );
		
    
end architecture beh;

