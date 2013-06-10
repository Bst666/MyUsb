
library ieee;
    use ieee.std_logic_1164.all;
   -- use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
    
entity tb_rampe is
end entity tb_rampe;


architecture simulate of tb_rampe is
  
signal start_i,clk_i: std_logic;
signal value_i : std_logic_vector(9 downto 0);

component counter is
    port(clk: in std_logic;
         start:out std_logic;
         value:out std_logic_vector(9 downto 0));
end component counter;  

begin
takt:process  
begin
   clk_i<='1'; wait for 20 ns;
   clk_i<='0'; wait for 20 ns;  
end process takt;   
  
  
dut: entity work.counter(count_values)
     port map(clk=>clk_i,start=>start_i,value=>value_i);
  
end architecture simulate;  
  