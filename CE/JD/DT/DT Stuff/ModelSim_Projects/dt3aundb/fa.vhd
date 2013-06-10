-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;                   -- for arc3 only



entity fa is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        s  : out std_logic;
        co : out std_logic;
        x  : in  std_logic;
        y  : in  std_logic;
        ci : in  std_logic
    );
end entity fa;


architecture arc3 of fa is
begin
    
    logic:
    process ( x, y, ci ) is
        variable iv_v : std_logic_vector( 2 downto 0 );  -- INput Vector
        variable s_v  : std_logic;
        variable c_v  : std_logic;
    begin
        iv_v := x & y & ci;
        
        case iv_v is
            when "000" =>   c_v := '0';  s_v := '0';
            when "001" =>   c_v := '0';  s_v := '1';
            when "010" =>   c_v := '0';  s_v := '1';
            when "011" =>   c_v := '1';  s_v := '0';
            when "100" =>   c_v := '0';  s_v := '1';
            when "101" =>   c_v := '1';  s_v := '0';
            when "110" =>   c_v := '1';  s_v := '0';
            when others =>  c_v := '1';  s_v := '1';   -- including "111"
        end case;
        
        s   <=  s_v  after delayVisualization;
        co  <=  c_v  after delayVisualization;
    end process logic;
        
end architecture arc3;