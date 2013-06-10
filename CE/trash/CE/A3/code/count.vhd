
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity counter is
  generic( max : integer:=4882);
    port(clk: in std_logic;
         start:out std_logic;
         value:out std_logic_vector(9 downto 0));
end entity counter;
    
architecture count_values of counter is
 signal clk_en : std_logic;
 signal value_i:std_logic_vector(9 downto 0):="0111111111";     
 signal cnt : std_logic_vector(12 downto 0):=(others=>'0');     
begin
        
clk_div:process(clk)        
begin
  if clk'event and clk='1' then
    if cnt=max then
      clk_en<='1' after 5 ns;
      cnt<=(others=>'0') after 5 ns;
    else
      clk_en<='0' after 5 ns;
      cnt<=cnt+1 after 5 ns;
    end if;
   -- if cnt ="000000000000" then
     -- clk_en<='1' after 5 ns;
    --else 
     -- clk_en<='0' after 5 ns;
    --end if;  
  end if;
end process clk_div;

output:process(clk)
begin
  if clk'event and clk='1' then
    if clk_en='1' then
      if value_i = "0000000000" then
        value_i<="0111111111" after 5 ns;
      else  
        value_i<= value_i-1 after 5 ns;
      end if;
      start<='1' after 5 ns;
    else
      start<='0' after 5 ns;  
    end if;
  end if;
end process output;
        
value<= '0'&value_i(8 downto 0) after 5 ns;
        
        
end architecture count_values;
    
