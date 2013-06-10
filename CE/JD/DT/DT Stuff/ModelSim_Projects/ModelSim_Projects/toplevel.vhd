
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity toplevel is
        PORT(     
           ok_top:    OUT std_logic;
           rxdat_top: OUT std_logic_vector(3 downto 0)   
        );
end entity toplevel;



architecture beh of toplevel is
    
    signal sigx_s : std_logic_vector(4 downto 0);
    signal rxdat_s : std_logic_vector(3 downto 0);
    signal ok_s : std_logic;
    
    
    
    component sig2par
        PORT(
           sigx: OUT std_logic_vector(4 downto 0)        
        );
    end component sig2par;
    
    component parcheck
        PORT(
           sigx:  IN std_logic_vector(4 downto 0);     
           ok:    OUT std_logic;
           rxdat: OUT std_logic_vector(3 downto 0)        
        );
    end component parcheck;
   
    
begin
    
    s1 : sig2par
        port map (
            sigx => sigx_s
        );
        
    p1 : parcheck
       port map (
            sigx => sigx_s,
            rxdat => rxdat_s,
            ok => ok_s
        );
        
    connect:
    PROCESS(rxdat_s, ok_s)
       BEGIN
        rxdat_top <= rxdat_s;
        ok_top <= ok_s;
    END PROCESS connect;
    
end architecture beh;
