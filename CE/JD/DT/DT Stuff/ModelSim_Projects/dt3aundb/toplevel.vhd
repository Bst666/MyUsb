
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity toplevel is
end entity toplevel;



architecture beh of toplevel is
    
    signal txdat_s : std_logic_vector(11 downto 0);
    signal clk_s : std_logic;
    signal nres_s : std_logic;
 	 signal nLd_s	: std_logic;----wenn 0 -> valLd als startwert laden
	 signal up_s	: std_logic;----hochzählen
	 signal down_s	: std_logic;----runterzählen
    
    
    
    component sg 
    port (
        data : out std_logic_vector( 11 downto 0);
        clk  : out std_logic;
        nres : out std_logic;
        nLd  : out std_logic;
        up : out std_logic
    );
   end component sg;
   for all : sg use entity work.sg( beh );----
    
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
	for all : DUT use entity work.DUT( version2 );----
   
    
begin
    
    sg_i : sg
       port map (
           data => txdat_s,----comp OUT auf Signal
           clk => clk_s,----comp OUT auf Signal
           nres => nres_s,----comp OUT auf Signal
           nLd => nLd_s,----comp OUT auf Signal
           up => up_s----comp OUT auf Signal
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
		
    
    connect:
    PROCESS(txdat_s)
       BEGIN
        down_s <= '0';
        
    END PROCESS connect;
    
end architecture beh;
