library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  
entity Steuerpfad is
  port(clk,start : in std_logic;
       rnt_compare: in std_logic;
       n     : in std_logic_vector( 4 downto 0);
       --en_work : out std_logic_vector(2 downto 0);
       stop : out std_logic;
       -- maybe start_calc, ready out
       en_reg:out std_logic_vector(3 downto 0));
       -- result,d,n,t
end entity;  


architecture Control of Steuerpfad is
type State is (Init,S0,S1,check,S2,Finished);
Signal Zustand,Folge_z : State;  
  
begin

process(clk)
begin
  if clk'event and clk='1' then
    Zustand<= folge_z after 5 ns;
  end if;      
end process;



fsm:process(Zustand)
begin
  stop<='0';
  case Zustand is
  when INIT=> en_reg <="0000" after 5 ns;
  when S0=> en_reg<="0010" after 5 ns;
  when S1=> en_reg<="0001" after 5 ns;
  when check=>en_reg<="0000" after 5 ns; 
  when S2=> en_reg<="1100" after 5 ns;
  when finished=> en_reg<="0000" after 5 ns;
                  stop <='1' after 5 ns; 
  when others=> null;  

end case;  
  
end process fsm;



transition:process(Zustand,start,rnt_compare,n)
begin
  case Zustand is
  when INIT=> if start ='1' then
                 folge_z <= S0 after 5 ns;
              end if;  
  when S0=>   folge_z<=S1 after 5 ns;
  when S1=>   folge_z <=check after 5 ns; 
  when check=> if rnt_compare='1' then
                  folge_z<=S2 after 5 ns;
               elsif n ="00000" then
                  folge_z<=INIT after 5 ns; 
               else     
                  folge_z<=S0  after 5 ns;
               end if;     
  when S2=> if n ="00000" then
               folge_z<=Finished after 5 ns; 
            else     
               folge_z<=S0  after 5 ns;
            end if; 
  when Finished=> folge_z <= init after 5 ns;             
  when others=> null;  
end case;  
end process transition;
  





end architecture Control;  
