
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;



entity timer is
  generic(limit: integer:=4);
  port(start,clk: in std_logic;
       stop: out std_logic);
end entity timer;

architecture count of timer is
signal cnt : std_logic_vector(2 downto 0);
-- signal clken: std_logic;
-- signal start_old: std_logic;
-- signal timer: std_logic;
begin

process(clk)
begin
  if( clk'EVENT and clk='1') then
    if start='1' then
      if(cnt >= limit) then
         stop<='1';
         cnt<="000";
      else   
         cnt<=cnt+1 after 5 ns;
      end if;   
    end if;
  end if;
end process;


end architecture count;
      



