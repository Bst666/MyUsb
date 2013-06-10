library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity clk_div is
  generic(limit : Integer := 131072); 
  port ( 
    clk,mr   : in std_logic;
    clk_7seg	: out std_logic);
end clk_div; 


architecture clk_seg of clk_div is
signal counter :std_logic_vector(20 downto 0);
signal clk_new :std_logic;
begin
seg: process(clk,mr)
begin
      if(mr = '0') then
			counter <= (others => '0') after 5ns;
			clk_new <='0' after 5 ns;
      elsif(clk'event and clk = '1') then
         if(counter >= limit) then
            clk_new <= '1' after 5 ns;
            counter <= (others => '0') after 5 ns;
         else
            counter <= counter+1 after 5 ns;
            clk_new <= '0'after 5 ns;
         end if;
      end if;    
end process seg;
clk_7seg <= clk_new after 5 ns;

end clk_seg;
 
