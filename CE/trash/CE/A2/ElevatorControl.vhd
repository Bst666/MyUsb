
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;


entity Elevator is
  port(clk,clken,BE,B1,B2,UPE,UP1,DN1,DN2,mr : in std_logic;
       led_extern_out : out std_logic_vector(3 downto 0);
       led_intern_out : out std_logic_vector(2 downto 0);
       anode : out std_logic_vector(1 downto 0);
       cathode : out std_logic_vector(7 downto 0); 
       d0,d23,s0,s1,clk_out,open_d,mr_out: out std_logic);
end entity Elevator;

architecture Simulator of elevator is

signal clk_i, clken_i,Be_i,B1_i,B2_i,mr_i :std_logic;
signal UPE_i,UP1_i,DN1_i,Dn2_i,d0_i,d23_i,s0_i:std_logic;
signal s1_i : std_logic;
signal taster_out : std_logic; -- Pulsshorting clken
signal analyzer_out :std_logic_vector(1 downto 0); -- 2 bit Floor_vector
signal REQ_I : std_logic_vector(1 downto 0); -- 2 bit Request vector
signal led_extern_out_i : std_logic_vector(3 downto 0);
signal led_intern_out_i : std_logic_vector(2 downto 0);
signal comparator_out : std_logic_vector(1 downto 0); -- output of req/floor compare
signal q_i : std_logic_vector(23 downto 0); -- state of Shiftregister
signal timer_start_i, timer_stop_i : std_logic;
signal clk_7seg_i : std_logic; -- clk for 7 seg display
signal anode_i : std_logic_vector(1 downto 0);
signal cathode_i : std_logic_vector(7 downto 0);
signal open_d_i,next_req : std_logic;

component taster is  
port(clk: in std_logic;
     button : in std_logic;
     clken: out std_logic);
end component taster;


component Request is
port(BE,B1,B2,MR,clk : in std_logic;
     UPE,UP1,DN1,DN2,EN: in std_logic;
     Floor: in std_logic_vector(1 downto 0);
     REQ: out std_logic_vector(1 downto 0);
     LED_ext:out std_logic_vector(3 downto 0); --(LED2down,LED1up,LED1down,LEDupE)
     LED_int:out std_logic_vector(2 downto 0)); --(CabinLed2,CabinLed1,CabinLed0)
end component Request;

component Analyzer is
  port( SR : in std_logic_vector(23 downto 0);
        Floor: out std_logic_vector(1 downto 0));
end component Analyzer;

component comparator is
  port(req,floor: in std_logic_vector(1 downto 0);
       compare  : out std_logic_vector(1 downto 0)); 
end component comparator;      

component Schieberegister is
   port( CLK, S1,S0,D0,D23, MR,CLKEN: in std_logic;
         Q: out std_logic_vector(23 downto 0)); 
end component Schieberegister;

component timer is
  port(start,clk: in std_logic;
       stop: out std_logic);
end component timer;

component clk_div is
  port (clk,mr   : in std_logic;
        clk_7seg	: out std_logic);
end component clk_div;


component FSM_Controller is
port( timer_end,clk,mr : in std_logic;
      req  : in std_logic_vector(1 downto 0);
      up,down, timer_start,open_d,d0,d23,en :out std_logic);
end component FSM_Controller;

component seg_display is
  port(Floor: in std_logic_vector(1 downto 0);
       clk,mr : in std_logic;
       Anode : out std_logic_vector(1 downto 0); -- an0,an1
       Cathode: out std_logic_vector(7 downto 0));
       -- ca,cb,cc,cd,ce,cf,cg,dp
end component seg_display;

begin      
       
PulsShorter:Taster port map(clk=>clk_i,button=>clken_i,clken=>taster_out);

Resolver:Request port map(BE=>be_i,B1=>b1_i,B2=>b2_i,upe=>upe_i,clk=>clk_I,
                 up1=>up1_i,DN1=>DN1_i,DN2=>DN2_i,en=>next_req,
                 Floor=>Analyzer_out, req=>req_i,mr=>mr_i,
                 led_ext=>led_extern_out_i,led_int=>led_intern_out_i);
                 
Floor:analyzer port map(sr=>q_i,floor=>analyzer_out);    

Req_Floor:comparator port map(req=>req_i,floor=>analyzer_out,compare=>comparator_out);             
  
Bit24:schieberegister port map(clk=>clk_i,s1=>s1_i,s0=>s0_i,d0=>d0_i,d23=>d23_i,
                         clken=>taster_out,mr=>mr_i,q=>q_i);
                         
Door:timer port map(start=>timer_start_i,clk=>clk_i,stop=>timer_stop_i);                         

Display:clk_div port map(clk=>clk_i,mr=>mr_i,clk_7seg=>clk_7seg_i);

Fl:seg_display port map (Floor=>analyzer_out,clk=>clk_7seg_i,mr=>mr_I,
                      anode=>anode_i,cathode=>cathode_i);
                      
Elevator:fsm_controller port map(timer_end=>timer_stop_i,clk=>clk_i,
                        mr=>mr_i,req=>comparator_out,up=>s0_i,
                        down=>s1_I,timer_start=>timer_start_i,
                        open_d=>open_d_i,d0=>d0_i,d23=>d23_i,en=> next_req);                      




clk_i<=clk after 5 ns;
mr_i<=mr after 5 ns;
be_i<=be after 5 ns;
b1_i<=b1 after 5 ns;
b2_i<=b2 after 5 ns;

upe_i<=upe after 5 ns;
up1_i<=up1 after 5 ns;
dn1_i<=dn1 after 5 ns;
dn2_i<=dn2 after 5 ns;
clken_i<=clken after 5 ns;

led_extern_out<=led_extern_out_i after 5 ns;
led_intern_out<=led_intern_out_i after 5 ns;
anode<=anode_i after 5 ns;
cathode<=cathode_i after 5 ns;
d0<=d0_i after 5 ns;
d23<=d23_i after 5 ns;
s0<=s0_i after 5 ns;
s1<=s1_i after 5 ns;
open_d<=open_d_i after 5 ns;
mr_out<=mr_i after 5 ns;
clk_out <= taster_out after 5 ns;

















end architecture Simulator;

