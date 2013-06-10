
library ieee;
    use ieee.std_logic_1164.all;
   -- use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
    
entity tb_entzerrer is
end entity tb_entzerrer;

architecture Simulate of tb_entzerrer is
signal start_i,clk_i: std_logic;
signal value_i,result_i : std_logic_vector(9 downto 0);


component entzerrer is
    port(start,clk:in std_logic;
         value: in std_logic_vector(9 downto 0);
         result:out std_logic_vector(9 downto 0));
end component entzerrer;
  
begin
  
clk:process
begin
   clk_i<='1'; wait for 20 ns;
   clk_i<='0'; wait for 20 ns;  
end process clk;

ablauf:process
begin
 start_i<='0';value_i<="0000000000"; wait for 100 ns;
 value_i<="0111111111"; start_i<='1'; wait for 40 ns;
 start_i<='0'; wait for 4000 ns;
end process ablauf;
  
  
  
dut: entity work.entzerrer(squareroot)
    port map(start=>start_i,clk=>clk_i,value=>value_i,
             result=>result_i);  


end architecture simulate;  