
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;



entity parcheck is
        PORT(
           sigin:  IN std_logic_vector(4 downto 0);     
           ok:    OUT std_logic;
           rxdat: OUT std_logic_vector(3 downto 0);
           clk: IN std_logic;
           nres: IN std_logic 
        );
end entity parcheck;



architecture beh of parcheck is
    
signal sigin_s: std_logic_vector(3 downto 0);
signal sigok_s: std_logic;
signal ok_s: std_logic;

begin

    input:
    PROCESS(clk)
       BEGIN
           
       if clk='1' and clk'event then
           if nres = '0' then  
               sigin_s<= (others => '0');
               sigok_s<= '0';
           else
             sigin_s <= sigin(3 downto 0);
             sigok_s <= sigin(4);
             
          end if;
       end if;

    END PROCESS input;  
    
    check_pb:
    PROCESS(sigin_s, sigok_s)
       variable sigin_v: std_logic_vector(3 downto 0);
       variable sigok_v: std_logic;
       variable result: std_logic;-- variable ok_v : std_logic;
       BEGIN

             sigin_v := sigin_s;
             sigok_v := sigok_s;
                                  --ok_v := ok_s;
             result := NOT( (((sigin_v(0) XOR sigin_v(1)) XOR sigin_v(2)) XOR sigin_v(3)) );  
             if result = sigok_v then
                ok_s <= '1';      --ok_v := '1';
             else
                ok_s <= '0';      --ok_v := '1';
             end if;
                                  --ok_s <= ok_v;

    END PROCESS check_pb;    
 
    
    output:
    PROCESS(clk)
       BEGIN
        if clk='1' and clk'event then
            if nres = '0' then  
               rxdat <= (others => '0');
               ok <= '0'; 					
            else
               rxdat <= sigin_s;
               ok <= ok_s;
            end if;
        end if;
    END PROCESS output;
    
end architecture beh;
