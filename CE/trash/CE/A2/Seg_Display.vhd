library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
entity seg_display is
  port(Floor: in std_logic_vector(1 downto 0);
       clk,mr : in std_logic;
       Anode : out std_logic_vector(1 downto 0); -- an0,an1
       Cathode: out std_logic_vector(7 downto 0));
       -- ca,cb,cc,cd,ce,cf,cg,dp
end entity seg_display;


architecture display_floor of seg_display is
signal cnt : bit;

begin
process(clk)
begin
     if( clk'event and clk='1') then
       if( cnt ='1') then
           anode<="10" after 5 ns;   
           cathode<="01100000" after 5 ns; -- E
       else
           anode <="01" after 5 ns;
           case floor is
                   when "00"=> cathode<="00000011" after 5 ns;
                   when "01"=> cathode<="10011111" after 5 ns;
                   when "10"=> cathode<="00100101" after 5 ns;
                   when "11"=> cathode<="00001101" after 5 ns;           
                   when others => NULL; 
                   end case;
       end if;
       cnt <= not cnt after 5 ns;
     end if; 
end process;
end architecture display_floor;       
