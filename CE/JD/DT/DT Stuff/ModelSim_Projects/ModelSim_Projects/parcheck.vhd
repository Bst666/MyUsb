
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity parcheck is
        PORT(
           sigx:  IN std_logic_vector(4 downto 0);     
           ok:    OUT std_logic;
           rxdat: OUT std_logic_vector(3 downto 0)
        );
end entity parcheck;



architecture beh of parcheck is
    
    signal o : std_logic;
    
    
    component parity
        PORT(
        x1: IN std_logic;
        x2: IN std_logic;
        x3: IN std_logic;
        x4: IN std_logic;
        o1: OUT std_logic        
        );
    end component parity;
    for all : parity use entity work.parity( paritygen );
    
begin
    
    parity_i : parity
        port map (
            x1 => sigx(0),
            x2 => sigx(1),
            x3 => sigx(2),
            x4 => sigx(3),
            o1 => o
        );
        
    connect:
    PROCESS(sigx)
       BEGIN
        rxdat(0) <= sigx(0);
        rxdat(1) <= sigx(1);
        rxdat(2) <= sigx(2);
        rxdat(3) <= sigx(3);
        ok <= NOT(sigx(4) XOR o);
    END PROCESS connect;
    
end architecture beh;
