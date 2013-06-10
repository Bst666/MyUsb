-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;



entity inv is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        o : out std_logic;
        i : in  std_logic
    );
end entity inv;



architecture arc of inv is
begin
    
    logic:
    process ( i ) is
    begin
        o  <=  not i  after delayVisualization;
    end process logic;
        
end architecture arc;
