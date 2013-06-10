
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;


entity ElevatorTest is
  generic(N : natural :=24;
          limit_door :Integer := 4;
          limit : Integer := 131072);
  port(clk,clken,BE,B1,B2,UPE,UP1,DN1,DN2,MR : in std_logic;
       led_extern_out : out std_logic_vector(3 downto 0);
       led_intern_out : out std_logic_vector(2 downto 0);
		   led_door : out std_logic_vector(2 downto 0);
       anode : out std_logic_vector(3 downto 0);
       cathode : out std_logic_vector(7 downto 0); 
       d0_out,d23_out,S0,S1,clk_out,mr_out: out std_logic);
end entity ElevatorTest;



architecture SimuEleTest of ElevatorTest is
-- Signale von Schieberegister A1  
   signal INTREG: std_logic_vector(N-1 downto 0);
   signal counter :std_logic_vector(17 downto 0);
   signal CLKNEW :std_logic;
   signal CLKENIN :std_logic;
   signal cnt_seg:std_logic_vector(1 downto 0);
   signal CLKENIN_OLD :std_logic;
  -- signal Q : std_logic_vector(N-1 downto 0);
   signal Up,down,d0,d23 : std_logic;
-- Signale von FSM_CONTROLL
type Zustaende is(INIT,Idle,GoingUp,DoorOpen,GoingDn,Reset);
Signal Zustand, folge_zustand : Zustaende;
signal door_i : std_logic_vector (2 downto 0);
signal en,timer_start,timer_end : std_logic;
-- Signale von RequestResolv
signal intern :std_logic_vector(2 downto 0):=(others=>'0');
signal extern :std_logic_vector(3 downto 0):=(others=>'0');
signal req,folge_req: std_logic_vector(1 downto 0):=(others=>'0');
signal intern_old :std_logic_vector(2 downto 0):=(others=>'0');
signal extern_old : std_logic_vector(3 downto 0):=(others=>'0');
-- Signale von FloorAnalyzer  
signal floor_old,Floor : std_logic_vector(1 downto 0);
-- Signale von Timer
signal cnt : std_logic_vector(2 downto 0);
-- Signal von Comparator
signal compare : std_logic_vector(1 downto 0);
  
begin
-- schieberegister A1
  
   
   
SR: process(CLK, MR) -- Schieberegister
begin
     if MR='0' then 
        INTREG <= (others => '0') after 5 ns;
     elsif (CLK='1' and CLK'event) then -- ansteigende Flanke
        if CLKENIN = '1' then
			
            if UP = '1' and down = '1' then
               INTREG <= (others => '1') after 5 ns;
			   --left
            elsif up = '1' then
               INTREG <= INTREG( N - 2 downto 0) & D0 after 5 ns;
            elsif down='1' then
               INTREG <= D23 & INTREG(N-1 downto 1) after 5 ns;
            end if;
        end if;
     end if;
end process SR;
      
      
--Q<=INTREG after 5 ns;
CLK_OUT <= CLKENIN after 5 ns;
S0 <= up after 5 ns;
S1 <= down after 5 ns;
D0_OUT <= D0 after 5 ns;
D23_OUT <= D23 after 5 ns;
MR_OUT <= MR after 5 ns;
--led(0) <= INTREG(0) and INTREG(1) and INTREG(2)and INTREG(3) after 5 ns;
--led(1) <= INTREG(4) and INTREG(5) and INTREG(6)and INTREG(7) after 5 ns;
--led(2) <= INTREG(8) and INTREG(9) and INTREG(10)and INTREG(11) after 5 ns;
--led(3) <= INTREG(12) and INTREG(13) and INTREG(14)and INTREG(15) after 5 ns;
--led(4) <= INTREG(16) and INTREG(17) and INTREG(18)and INTREG(19) after 5 ns;
--led(5) <= INTREG(20) and INTREG(21) and INTREG(22)and INTREG(23) after 5 ns;

fdiv: process(CLK,MR)
begin
     if(MR = '0') then
			 counter <= (others => '0') after 5 ns;
			 CLKNEW <= '0' after 5 ns;
     elsif(CLK'event and CLK = '1') then
       if(counter >= limit) then
          CLKNEW <= '1' after 5 ns;
          counter <= (others => '0') after 5 ns;
       else
          counter <= counter+1 after 5 ns;
          CLKNEW <= '0'after 5 ns;
       end if;
     end if;    
end process fdiv;
   
   
SegDisplay: process(clk, MR) -- Schieberegister
variable value: std_logic_vector(3 downto 0);
begin
     if MR='0' then 
       CATHODE <= (others => '1') after 5 ns;
       cnt_seg <=(others => '0') after 5 ns;
       value := "0000" ;
       ANODE <= (others => '1') after 5 ns;
     elsif clk='1' and clk'event then -- ansteigende Flanke
	    if clknew = '1' then
       case cnt_seg is
       when "00" => Value:="1010"; 
                    ANODE(0)<= '0' after 5 ns;
							    	  ANODE(1)<= '1' after 5 ns;
								     ANODE(2)<= '1' after 5 ns;
									  ANODE(3)<= '1' after 5 ns;
									  
									  --ek: floor hat die werte 1 bis 3 und nicht 0 - 2;
       when "01" => value:="00"&floor;
                    ANODE(0)<= '1' after 5 ns;
									  ANODE(1)<= '0' after 5 ns;
									  ANODE(2)<= '1' after 5 ns;
									  ANODE(3)<= '1' after 5 ns;
       when "10" => value:="1111";
                    ANODE(0)<= '1' after 5 ns;
									  ANODE(1)<= '1' after 5 ns;
									  ANODE(2)<= '0' after 5 ns;
									  ANODE(3)<= '1' after 5 ns;
       when "11" => value:="1010";
                    ANODE(0)<= '1' after 5 ns;
									  ANODE(1)<= '1' after 5 ns;
									  ANODE(2)<= '1' after 5 ns;
									  ANODE(3)<= '0' after 5 ns;
       when others => null;
       end case;
          
          
       if(cnt_seg = "11")then
            cnt_seg <= "00" after 5 ns;
       else
            cnt_seg <= cnt_seg+1 after 5 ns;
       end if;
       case value is
              
          when "0000"=> Cathode <= "00000011" after 5 ns; -- "0" (anzeige) in anode 1 cnt = 01 und in den unteren drei F‰llen auch
			    when "0001"=> Cathode <= "10011111" after 5 ns; --1 (anzeige) in anode 1
			    when "0010"=> Cathode <= "00100101" after 5 ns; -- 2 in anode 1
		      when "0011"=> Cathode <= "00001101" after 5 ns; -- 3 anode 1
		      when "1010"=> Cathode <= "11111111" after 5 ns;  -- nichts in Anode 0 und anode 3   cnt = 00 oder 11
			    when "1111"=> Cathode <= "01100000" after 5 ns; --E in anode 2 cnt = 10
			    when others => null;
			 end case;
		 end if;	
		end if;
end process SegDisplay;

-- Taster
Taster: process(clk)
 begin
      if clk = '1' and CLK'event then
		-- ek: altes clken negiert, anschlieﬂend 
         CLKENIN <= (not CLKENIN_OLD) and CLKEN after 5 ns;
				 CLKENIN_OLD <= CLKEN after 5 ns;
       end if;
end process taster;
  
-- FSM
FSM_Z: process (Zustand)
begin
       
case Zustand is
            when Idle => D23  <= '0' after 5 ns;
                         D0 <='0' after 5 ns;
                         EN <= '1' after 5 ns;
                         up <= '0' after 5 ns;
                         down <= '0' after 5 ns;
                         timer_start<='0' after 5 ns;
                         --open_d<='0' after 5 ns;
                			 led_door<="000" after 5 ns; 
            when GoingUp => D23<= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '1' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            --open_d<='0' after 5 ns;
									 led_door<="000" after 5 ns;					
            when DoorOpen => D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='1' after 5 ns;
                            --open_d<='1' after 5 ns; 
                            led_door<=door_i after 5 ns;
									 
            when GoingDn => D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '1' after 5 ns;
                            timer_start<='0' after 5 ns;
                            --open_d<='0' after 5 ns;
								    led_door<="000" after 5 ns;
                
            when Reset=>    D23  <= '0' after 5 ns;
                            D0 <='0' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '0' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            --open_d<='0' after 5 ns;
							       led_door<="000" after 5 ns;
                           
                            
            when INIT=>     D23  <= '0' after 5 ns;
                            D0 <='1' after 5 ns;
                            EN <= '0' after 5 ns;
                            up <= '1' after 5 ns;
                            down <= '0' after 5 ns;
                            timer_start<='0' after 5 ns;
                            --open_d<='0' after 5 ns;
									 led_door<="000" after 5 ns;
                            
   
     end case;
end process FSM_Z;
   

transition:process(req,floor,Zustand,timer_end,compare)
begin
    case Zustand is
    when idle=> if compare="01" then
                   folge_zustand<=GoingDn after 5 ns;
                elsif compare="10" then
                    folge_zustand<=GoingUp after 5 ns;
                elsif compare="11" then
                    folge_zustand <=DoorOpen after 5 ns;
                else
                    folge_zustand <= idle after 5 ns;
                end if;    
    when reset=> folge_zustand <= Init after 5 ns;
    when init => if Floor="01" then 
                    folge_zustand <= Idle after 5 ns;
                 else 
                    folge_zustand <= init after 5 ns; 
                 end if;   
    when DoorOpen => if timer_end ='1' then
                        folge_zustand <= idle after 5 ns;
                     else
                        folge_zustand <=DoorOpen after 5 ns;
                     end if;                               
    when others=> if compare="11" then
                      folge_zustand <= DoorOpen after 5 ns;
                  else
                      folge_zustand <= Zustand after 5 ns;
                  end if;
     end case;                                     
end process transition;  

process(clk,mr)
begin
    if mr='0' then
      Zustand<= reset after 5 ns;
    elsif clk'event and clk='1' then	
    		Zustand<=folge_zustand after 5 ns;
    end if;
end process;

door_led:process(floor)
begin	
	case floor is
	when "01" => door_i<="001" after 5 ns;
	when "10" => door_i<="010" after 5 ns;
	when "11" => door_i<="100" after 5 ns;
	when others => door_i<="000" after 5 ns;
	end case;
end process door_led;  
    
-- Request

intern(0)<= not BE or intern_old(0) after 5 ns;
intern(1)<= not B1 or intern_old(1) after 5 ns;
intern(2)<= not B2 or intern_old(2) after 5 ns;

extern(0)<= not UPE or extern_old(0) after 5 ns;
extern(1)<= not UP1 or extern_old(1) after 5 ns;
extern(2)<= not dn1 or extern_old(2) after 5 ns;
extern(3)<= not dn2 or extern_old(3) after 5 ns;

LED_intern_out(0)<= not BE or intern_old(0) after 5 ns;
LED_intern_out(1)<= not B1 or intern_old(1) after 5 ns;
LED_intern_out(2)<= not B2 or intern_old(2) after 5 ns;

LED_extern_out(0)<= not UPE or extern_old(0) after 5 ns;
LED_extern_out(1)<= not UP1 or extern_old(1) after 5 ns;
LED_extern_out(2)<= not dn1 or extern_old(2) after 5 ns;
LED_extern_out(3)<= not dn2 or extern_old(3) after 5 ns;


f_req: process(clk,mr)
begin
     if MR='0' then
        folge_req<= (others=>'0') after 5 ns;          
        extern_old<= (others=>'0') after 5 ns;
        intern_old<= (others=>'0') after 5 ns; 
     elsif clk'event and clk='1' then
           
               case Floor is
                   when "11"=>  if req = "11" then
											intern_old(0)<= intern(0) after 5 ns;
											intern_old(1)<= intern(1) after 5 ns;
											intern_old(2)<='0' after 5 ns;
											extern_old(0)<=extern(0) after 5 ns;
											extern_old(1)<=extern(1) after 5 ns;
											extern_old(2)<=extern(2) after 5 ns;
											extern_old(3)<='0' after 5 ns;
										  else
												intern_old<= intern;
												extern_old<=extern;
										  end if;
										  
										  if en='1' then
											if intern(1)='1' then
                                      folge_req <="10" after 5 ns;
											elsif extern(2)='1' then
                                      folge_req <="10" after 5 ns;
											elsif intern(0)='1' then
												  folge_req <="01" after 5 ns;
											elsif extern(0)='1' then 
                                      folge_req <="01" after 5 ns;
											elsif extern(1)='1' then
										        folge_req<="10" after 5 ns;
											else	
                                      folge_req<="00" after 5 ns;
											end if;
      								  end if;
                                
                   when "10"=>  if req = "10" then
											 intern_old(0)<= intern(0) after 5 ns;
											 intern_old(1) <='0' after 5 ns;
											 intern_old(2)<= intern(2) after 5 ns;
											 extern_old(0)<=extern(0) after 5 ns;
											 extern_old(1) <='0' after 5 ns;
											 extern_old(2) <='0' after 5 ns;
											 extern_old(3)<=extern(3) after 5 ns;
										   else        
													intern_old<= intern;
													extern_old<=extern;
											end if;
										  
                                if en='1' then
											if intern(2)='1' then
													folge_req <="11" after 5 ns;
											elsif intern(0)='1' then
													folge_req <="01" after 5 ns;
											elsif extern(3)='1' then
													folge_req <="11" after 5 ns;
											elsif extern(0)='1' then   
													folge_req <="01" after 5 ns; 
											else
													folge_req<="00" after 5 ns;
											end if;
										 
										  end if; 
										  
                   when "01"=>  if req = "01" then
											intern_old(0)<='0' after 5 ns;
											intern_old(1)<= intern(1) after 5 ns;
											intern_old(2)<= intern(2) after 5 ns;
											extern_old(0) <='0' after 5 ns;
											extern_old(1)<=extern(1) after 5 ns;
											extern_old(2)<=extern(2) after 5 ns;
											extern_old(3)<=extern(3) after 5 ns;
                                else        
													intern_old<= intern;
													extern_old<=extern;
										  end if;
										  
										  if en='1' then
											if intern(1)='1' then
													folge_req <="10" after 5 ns;
											elsif extern(1)='1' then
													folge_req <="10" after 5 ns;
											elsif intern(2) ='1' then
													folge_req <="11" after 5 ns;
											elsif extern(3) ='1' then
													folge_req <="11" after 5 ns;
											elsif extern(2)='1' then	
													folge_req <="10" after 5 ns;
											else
													folge_req<="00" after 5 ns;
											end if;
										  
										  end if;
                   when others=>NULL;
              end case;
      end if;
end process f_req;

Req<=folge_req after 5 ns;                       
    
-- FloorAnalyzer
akt_floor :process(clk,mr)
 begin
      if mr='0' then
			 floor_old<="00" after 5 ns;	
		elsif clk'event and clk='1' then
        if(intreg = x"FF0000") then
           floor_old <= "11" after 5 ns;
        elsif(intreg=x"00FF00") then
           floor_old <= "10" after 5 ns;
        elsif (intreg = x"0000FF") then
           floor_old <= "01" after 5 ns;
        else
           floor_old <= floor_old after 5 ns;      
        end if;   
		end if;
end process akt_floor;

floor<=floor_old after 5 ns;    

--Timer(door)
process(clk)
begin
  if( clk'EVENT and clk='1') then
    if timer_start='1' then
      if clkenin='1' then
        if(cnt >= limit_door) then
          timer_end<='1' after 5 ns;
          cnt<="000" after 5 ns;
        else   
          cnt<=cnt+1 after 5 ns;
        end if;
      end if;
    else
       timer_end<='0' after 5 ns;  
       cnt<="000" after 5 ns;   
    end if;
  end if;
end process;

--comparator
comp_Floor :process( req,floor)
begin
        if req="00" then
          compare<="00" after 5 ns;
        else  
           if(req < floor) then
              compare <= "01" after 5 ns;   
           elsif(req > floor) then
              compare <= "10" after 5 ns;   
           else
              compare<= "11" after 5 ns;
           end if;
         end if;  
end process comp_Floor;     
    
    
end architecture SimuEleTest;