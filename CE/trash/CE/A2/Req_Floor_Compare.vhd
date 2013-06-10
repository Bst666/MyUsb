library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;



entity comparator is
  port(req,floor: in std_logic_vector(1 downto 0);
       compare  : out std_logic_vector(1 downto 0)); 
end entity comparator;      

architecture Request_Floor of comparator is

begin  


comp_Floor :process( req,floor)
begin
    -- if clk'event and clk='1' then
        if(req < floor) then
            compare <= "01" after 5 ns;   
        elsif(req > floor) then
            compare <= "10" after 5 ns;   
        elsif(req = floor) then
            compare <= "11" after 5 ns;
        else
            compare <= "00" after 5 ns;  
        end if;
    -- end if;
end process comp_Floor; 

end architecture Request_Floor;
