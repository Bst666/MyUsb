-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;



entity eq2 is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        o  : out std_logic;
        i1 : in  std_logic;
        i2 : in  std_logic
    );
end entity eq2;



architecture arc of eq2 is
begin
    
    logic:
    process ( i1, i2 ) is
        variable resu_v : std_logic;
    begin
        if i1=i2 then            -- ATTENTION! : i1,i2 are of type std_logic
            resu_v := '1';
        else
            resu_v := '0';
        end if;
        o  <=  resu_v  after delayVisualization;
    end process logic;
        
end architecture arc;
