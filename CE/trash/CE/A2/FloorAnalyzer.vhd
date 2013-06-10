library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity Analyzer is
  port( SR : in std_logic_vector(23 downto 0);
        Floor: out std_logic_vector(1 downto 0));
end entity Analyzer;

architecture Floor_Analyzer of Analyzer is
  
begin  

 akt_floor :process(SR)
 begin
        if(SR = x"FF0000") then
           floor <= "11" after 5 ns;
        elsif(SR>=x"00FF00") then
           floor <= "10" after 5 ns;
        elsif (SR >= x"0000FF") then
           floor <= "01" after 5 ns;
        else
           floor <= "00" after 5 ns;      
        end if;   
end process akt_floor;

end architecture Floor_Analyzer;



