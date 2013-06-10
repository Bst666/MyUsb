
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    
    
entity Request is
port(BE,B1,B2,MR,clk : in std_logic;
     UPE,UP1,DN1,DN2,EN: in std_logic;
     Floor: in std_logic_vector(1 downto 0);
     REQ: out std_logic_vector(1 downto 0);
     LED_ext:out std_logic_vector(3 downto 0); --(LED2down,LED1up,LED1down,LEDupE)
     LED_int:out std_logic_vector(2 downto 0)); --(CabinLed2,CabinLed1,CabinLed0)
end entity Request;            
    
    
architecture Resolver of Request is
signal intern :std_logic_vector(2 downto 0):=(others=>'0');
signal extern :std_logic_vector(3 downto 0):=(others=>'0');
signal folge_req: std_logic_vector(1 downto 0):=(others=>'0');
signal intern_old :std_logic_vector(2 downto 0):=(others=>'0');
signal extern_old : std_logic_vector(3 downto 0):=(others=>'0');

begin

intern(0)<= not BE or intern_old(0) after 5 ns;
intern(1)<= not B1 or intern_old(1) after 5 ns;
intern(2)<= not B2 or intern_old(2) after 5 ns;

extern(0)<= not UPE or extern_old(0) after 5 ns;
extern(1)<= not UP1 or extern_old(1) after 5 ns;
extern(2)<= not dn1 or extern_old(2) after 5 ns;
extern(3)<= not dn2 or extern_old(3) after 5 ns;

LED_int(0)<= not BE or intern_old(0) after 5 ns;
LED_int(1)<= not B1 or intern_old(1) after 5 ns;
LED_int(2)<= not B2 or intern_old(2) after 5 ns;

LED_ext(0)<= not UPE or extern_old(0) after 5 ns;
LED_ext(1)<= not UP1 or extern_old(1) after 5 ns;
LED_ext(2)<= not dn1 or extern_old(2) after 5 ns;
LED_ext(3)<= not dn2 or extern_old(3) after 5 ns;


f_req: process(clk,mr)
begin
     if MR='0' then
        folge_req<= (others=>'0') after 5 ns;          
        extern_old<= (others=>'0') after 5 ns;
        intern_old<= (others=>'0') after 5 ns; 
     elsif clk'event and clk='1' then
           if en='1' then
               case Floor is
                   when "11"=>  intern_old(0)<= intern(0) after 5 ns;
                                intern_old(1)<= intern(1) after 5 ns;
                                intern_old(2)<='0' after 5 ns;
                                extern_old(0)<=extern(0) after 5 ns;
                                extern_old(1)<=extern(1) after 5 ns;
                                extern_old(2)<=extern(2) after 5 ns;
                                extern_old(3)<='0' after 5 ns;
                                if intern(1)='1' then
                                      folge_req <="10" after 5 ns;
                                elsif extern(2)='1' then
                                      folge_req <="10" after 5 ns;
                                elsif intern(0)='1' then
                                    folge_req <="01" after 5 ns;
                                elsif extern(0)='1' then 
                                     folge_req <="01" after 5 ns;
                                end if;
                                
                   when "10"=>  intern_old(0)<= intern(0) after 5 ns;
                                intern_old(1) <='0' after 5 ns;
                                intern_old(2)<= intern(2) after 5 ns;
                                extern_old(0)<=extern(0) after 5 ns;
                                extern_old(1) <='0' after 5 ns;
                                extern_old(2) <='0' after 5 ns;
                                extern_old(3)<=extern(3) after 5 ns;
                                if intern(2)='1' then
                                    folge_req <="11" after 5 ns;
                                elsif intern(0)='1' then
                                      folge_req <="01" after 5 ns;
                                elsif extern(3)='1' then
                                      folge_req <="11" after 5 ns;
                                elsif extern(0)='1' then   
                                      folge_req <="01" after 5 ns; 
                                end if;
                   when "01"=>  intern_old(0)<='0' after 5 ns;
                                intern_old(1)<= intern(1) after 5 ns;
                                intern_old(2)<= intern(2) after 5 ns;
                                extern_old(0) <='0' after 5 ns;
                                extern_old(1)<=extern(1) after 5 ns;
                                extern_old(2)<=extern(2) after 5 ns;
                                extern_old(3)<=extern(3) after 5 ns;
                                if intern(1)='1' then
                                    folge_req <="10" after 5 ns;
                                elsif extern(1)='1' then
                                    folge_req <="10" after 5 ns;
                                elsif intern(2) ='1' then
                                    folge_req <="11" after 5 ns;
                                elsif extern(3) ='1' then
                                    folge_req <="11" after 5 ns;
                                end if;
                   when others=>NULL;
              end case;
          else        
            intern_old<= intern;
            extern_old<=extern;
          end if;
      end if;
end process f_req;

Req<=folge_req after 5 ns;                       





end architecture Resolver;    




    
    