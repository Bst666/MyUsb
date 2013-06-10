
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;



entity taster is  
port(clk: in std_logic;
     button : in std_logic;
     clken: out std_logic);
end entity taster;


architecture Pulsshorter of taster is
signal Button_old : std_logic;
--Buttons(BE,B1,B2,UPE,UP1,DN1,DN2,EN);
begin        

process(clk)
begin
	   if (CLK'EVENT and CLK='1' )then 
          CLKEN <= (not Button_old) and Button after 5 ns;
				  Button_OLD <= Button after 5 ns;
     end if;
end process;


end architecture Pulsshorter;