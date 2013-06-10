-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;                   -- for arc3 only



entity nand2 is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        o  : out std_logic;
        i1 : in  std_logic;
        i2 : in  std_logic
    );
end entity nand2;



architecture arc of nand2 is
begin
    
    logic:
    process ( i1, i2 ) is
    begin
        o  <=  i1 nand i2  after delayVisualization;
    end process logic;
        
end architecture arc;
