
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;


entity Schieberegister is
   generic(N : natural :=24);
   port( CLK, S1,S0,D0,D23, MR,CLKEN: in std_logic;
         Q: out std_logic_vector(N - 1 downto 0)); 
end Schieberegister;



architecture Verhalten of Schieberegister is
  
Signal INTREG : std_logic_vector(N-1 downto 0);  
begin
  
  
P1: process(CLK, MR) -- Schieberegister
begin
     if MR='0' then 
        INTREG <= (others => '0') after 5 ns;
     elsif (CLK'event and CLK='1') then -- ansteigende Flanke
         if CLKEN = '1' then
             if S0 = '1' and S1 = '1' then
                  INTREG <= (others => '1') after 5 ns;
             elsif S0 = '1' then
                  INTREG <= INTREG( N - 2 downto 0) & D0 after 5 ns;
             elsif S1 = '1' then
                  INTREG <= D23 & INTREG(N-1 downto 1) after 5 ns;
             end if;
          end if;
     end if;
end process P1;

Q <= INTREG;

end architecture Verhalten;







