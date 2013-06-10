-- Code belongs to TI3 DT WS 11/12
-- Stimuli Generator for A2



library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    

-- sg ::= Stimuli Generator    
entity sg is
    port (
        data : out std_logic_vector( 11 downto 0);
        clk  : out std_logic;
        nres : out std_logic;
        nLd  : out std_logic;
        up   : out std_logic
    );--]port
end entity sg;



architecture beh of sg is
    
    constant quarterClockCycle   : time := 250 ns;
    constant halfClockCycle      : time := 2*quarterClockCycle;
    constant fullClockCycle      : time := 2*halfClockCycle;
    
    signal   simulationRunning_s : boolean := true;
    
begin
    
    
    
    clkGen:                                           -- CLocK GENerator
    process is
    begin
        clk <= '0';
        wait for fullClockCycle;
        while simulationRunning_s loop
            clk <= '1';
            wait for halfClockCycle;
            clk <= '0';
            wait for halfClockCycle;
        end loop;
        wait;
    end process clkGen;
    
    upGen:                                           -- CLocK GENerator
    process is
    begin
        up <= '0';
        wait for fullClockCycle;
        while simulationRunning_s loop
            up <= '1';
            wait for 2*halfClockCycle;
            up <= '0';
            wait for 2*halfClockCycle;
        end loop;
        wait;
    end process upGen;
    
    
    nLdGen:                                           -- RESet GENerator
    process is
    begin
        data <= "000000000000";
        nLd <= '1';
        wait for 5*quarterClockCycle;
        nLd <= '0';
        wait;
    end process nLdGen;
    
    
    resGen:                                           -- RESet GENerator
    process is
    begin
        nres <= '0';
        wait for 2*quarterClockCycle;
        nres <= '1';
        wait;
    end process resGen;
    
end architecture beh;