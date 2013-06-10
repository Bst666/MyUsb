-- Code belongs to TI3 DT WS 11/12
-- Stimuli Generator for A2



library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    

-- sg ::= Stimuli Generator    
entity signalgen is
    port (
        data : out std_logic_vector( 11 downto 0);
        clk  : out std_logic;
        nres : out std_logic;
        nLd  : out std_logic;
        up   : out std_logic;
        down : out std_logic
    );--]port
end entity signalgen;



architecture beh of signalgen is
    
    
begin
    
    
    
    clkGen:                                           -- CLocK GENerator
    process is
    begin
        clk <= '0';
        wait for 100 ns;
        while true loop
            clk <= '1';
            wait for 50 ns;
            clk <= '0';
            wait for 50 ns;
        end loop;
        wait;
    end process clkGen;
    
    upGen:                                           -- CLocK GENerator
    process is
    begin
        up <= '0';
        down <= '0';
        wait for 200 ns;
        while true loop
            up <= '1';
            wait for 100 ns;
            up <= '0';
            wait for 100 ns;
        end loop;
        wait;
    end process upGen;
    
    
    nLdGen:                                           -- RESet GENerator
    process is
    begin
        data <= "000011000000";
        nLd <= '0';
        wait for 200 ns;
        nLd <= '1';
        wait;
    end process nLdGen;
    
    
    resGen:                                           -- RESet GENerator
    process is
    begin
        nres <= '1';
        wait for 1000 ns;
        nres <= '0';
        wait for 200 ns;
        nres <= '1';
        wait;
    end process resGen;
    
end architecture beh;
