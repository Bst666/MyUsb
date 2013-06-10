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
        data : out std_logic_vector( 3 downto 0);
        clk  : out std_logic;
        nres : out std_logic
    );--]port
end entity sg;



architecture beh of sg is
    
    constant quarterClockCycle   : time := 250 ns;
    constant halfClockCycle      : time := 2*quarterClockCycle;
    constant fullClockCycle      : time := 2*halfClockCycle;
    
    signal   simulationRunning_s : boolean := true;
    
begin
    
    sg:                                               -- Stimuli Generator
    process is
    begin
        simulationRunning_s <= true;
        
        wait for halfClockCycle;                      -- setup time
        data <= "0000";                               -- reset value
        wait for halfClockCycle;                      -- synchronous reset gone (see "resGen")
        wait for quarterClockCycle;                   -- "align" after rising clock edge 
        
        for i in 0 to 15 loop
            data <= conv_std_logic_vector( i, 4 );--conv_std_logic_vector
            wait for fullClockCycle;
        end loop;
        
        -- sg soll stoppen, sobald alle testmuster abgearbeitet
        wait for 10*fullClockCycle;                   -- noch 10 Takte warten
        simulationRunning_s <= false;                 -- Stoppen
        wait;
    end process sg;
    
    
    
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
    
    
    
    resGen:                                           -- RESet GENerator
    process is
    begin
        nres <= '0';
        wait for 5*quarterClockCycle;
        nres <= '1';
        wait;
    end process resGen;
    
end architecture beh;