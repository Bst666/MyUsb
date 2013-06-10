
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity toplevel is
        PORT(     
           rxdat: OUT std_logic_vector(3 downto 0); 
           ok:    OUT std_logic
             
        );
end entity toplevel;



architecture beh of toplevel is
    
    signal txdat_s : std_logic_vector(3 downto 0);
    signal rxdat_s : std_logic_vector(3 downto 0);
    signal ok_s : std_logic;
    signal clk_s : std_logic;
    signal nres_s : std_logic;
    
    
    
    component sg 
    port (
        data : out std_logic_vector( 3 downto 0);
        clk  : out std_logic;
        nres : out std_logic
    );
   end component sg;
    
    component DUT
        PORT(
           txdat: IN std_logic_vector(3 downto 0);
           rxdat: OUT std_logic_vector(3 downto 0); 
           ok:    OUT std_logic;
           clk:   IN std_logic;
           nres:  IN std_logic    
        );
    end component DUT;
   
    
begin
    
    sg_i : sg
       port map (
           data => txdat_s,
           clk => clk_s,
           nres => nres_s
       );
        
    dut_i : DUT
       port map (
         txdat => txdat_s,
         clk => clk_s,
         nres => nres_s,
         ok => ok_s,
         rxdat => rxdat_s
         
        );
        
    connect:
    PROCESS(rxdat_s, ok_s)
       BEGIN
        rxdat <= rxdat_s;
        ok <= ok_s;
    END PROCESS connect;
    
end architecture beh;