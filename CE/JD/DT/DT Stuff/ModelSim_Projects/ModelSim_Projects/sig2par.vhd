
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity sig2par is
        PORT(
        sigx: OUT std_logic_vector(4 downto 0)      
        );
end entity sig2par;



architecture beh of sig2par is
    
    signal x1_s : std_logic;
    signal x2_s : std_logic;
    signal x3_s : std_logic;
    signal x4_s : std_logic;
    signal o : std_logic;
    
    
    component signalgen
       PORT(
        x: OUT std_logic_vector(3 downto 0)        
        );
    end component signalgen
    ;
    for all : signalgen use entity work.signalgen( dosignal );
    
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
    
    sig_i : signalgen
        port map (
            x(0) => x1_s,
            x(1) => x2_s,
            x(2) => x3_s,
            x(3) => x4_s
        );
    
    parity_i : parity
        port map (
            x1 => x1_s,
            x2 => x2_s,
            x3 => x3_s,
            x4 => x4_s,
            o1 => o
        );
        
    connect:
    PROCESS(x1_s,x2_s,x3_s,x4_s,o)
       BEGIN
        sigx(0) <= x1_s;
        sigx(1) <= x2_s;
        sigx(2) <= x3_s;
        sigx(3) <= x4_s;
        sigx(4) <= o;
    END PROCESS connect;
    
end architecture beh;
