
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
    
entity tb_rampe_input is
end entity tb_rampe_input;


architecture simulate of tb_rampe_input is
  
signal start_i,clk_i: std_logic;
signal value_i,result_i : std_logic_vector(9 downto 0);


component entzerrer is
    port(start,clk:in std_logic;
         value: in std_logic_vector(9 downto 0);
         result:out std_logic_vector(9 downto 0));
end component entzerrer;  

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
  

dut_ent: entity work.entzerrer(squareroot)
    port map(clk=>clk_i,start=>start_i,value=>value_i,
             result=>result_i);
      
dut_cnt: entity work.counter(count_values)
    port map(clk=>clk_i,start=>start_i,value=>value_i);      
      
end architecture simulate; 
