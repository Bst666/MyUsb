library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
Entity FSM_Controller is
port( timer_end,clk,mr : in std_logic;
      req  : in std_logic_vector(1 downto 0);
      up,down, timer_start,open_d,d0,d23,en :out std_logic);
end FSM_Controller;


architecture Verhalten of FSM_Controller is

type Zustaende is(INIT,Idle,GoingUp,DoorOpen,GoingDn,Reset);
Signal Zustand, folge_zustand : Zustaende;
signal init_cnt : std_logic_vector (2 downto 0);

begin

FSM_Z: process (Zustand)
   begin
       
case Zustand is
            when Idle => D23  <= '0' after 5 ns;
                         D0 <='0' after 5 ns;
                         EN <= '1' after 5 ns;
                         up <= '0' after 5 ns;
                         down <= '0' after 5 ns;
                         timer_start<='0' after 5 ns;
                         open_d<='0' after 5 ns;
            when GoingUp => D23<= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '1' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            open_d<='0' after 5 ns;                      
            when DoorOpen => D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='1' after 5 ns;
                            open_d<='1' after 5 ns; 
                                          
            when GoingDn => D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '1' after 5 ns;
                            timer_start<='0' after 5 ns;
                            open_d<='0' after 5 ns;
                
            when Reset=>    D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            open_d<='0' after 5 ns;
                           
                            
            when INIT=>     D23  <= '0' after 5 ns;
                            D0 <='1' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '1' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            open_d<='0' after 5 ns;
                            
   
     end case;
end process FSM_Z;
   

transition:process(req,timer_end,mr,init_cnt)
begin
  if mr='0' then
    folge_zustand <= reset after 5 ns;
  else
    case Zustand is
    when idle=> if req="01" then
                   folge_zustand<=GoingUp after 5 ns;
                elsif req="10" then
                    folge_zustand<=GoingDn after 5 ns;
                elsif req="11" then
                    folge_zustand <=DoorOpen after 5 ns;
                else
                    folge_zustand <= idle after 5 ns;
                end if;    
    when reset=> folge_zustand <= Init after 5 ns;
    when init => if init_cnt ="111" then 
                    folge_zustand <= Idle after 5 ns;
                 else 
                    folge_zustand <= init after 5 ns; 
                 end if;   
    when DoorOpen => if timer_end ='1' then
                        folge_zustand <= idle after 5 ns;
                     else
                        folge_zustand <=DoorOpen after 5 ns;
                     end if;                               
    when others=> if req ="11" then
                      folge_zustand <= DoorOpen after 5 ns;
                  else
                      folge_zustand <= Zustand after 5 ns;
                  end if;
     end case;
  end if;                                     
end process transition;  

process(clk,mr)
begin
    if mr='0' then
        Zustand<= reset after 5 ns;
    else
        Zustand<=folge_zustand after 5 ns;
    end if;
end process;

process(clk,mr)
begin
   if mr='0' then
       init_cnt<= "000" after 5ns;
   else
      if Zustand<=Init then
         init_cnt<=init_cnt+1 after 5 ns;
      else
         init_cnt<="000" after 5 ns;
      end if;
   end if;         
end process;    


end architecture Verhalten;
