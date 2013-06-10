library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    


entity tb_elevator is 
end tb_elevator;


architecture SEQUENZ of tb_elevator is
  

component Elevator is
  port(clk,clken,BE,B1,B2,UPE,UP1,DN1,DN2,mr : in std_logic;
       led_extern_out : out std_logic_vector(3 downto 0);
       led_intern_out : out std_logic_vector(2 downto 0);
       anode : out std_logic_vector(1 downto 0);
       cathode : out std_logic_vector(7 downto 0); 
       d0,d23,s0,s1,clk_out,open_d,mr_out: out std_logic);
end component;


signal clk_I,clken_I,BE_I,B1_I,B2_I,UPE_I,UP1_I,DN1_I,DN2_I,mr_I :std_logic;
signal led_extern_out_I : std_logic_vector(3 downto 0);
signal led_intern_out_I : std_logic_vector(2 downto 0);
signal anode_I : std_logic_vector(1 downto 0);
signal cathode_I : std_logic_vector(7 downto 0);
signal d0_I,d23_I,s0_I,s1_I,clk_out_I,open_d_I,mr_out_I : std_logic;

begin

clk:process
begin
   clk_i<='1'; wait for 25 ns;
   clk_i<='0'; wait for 25 ns;  
end process clk;

ablauf:process
begin
    clken_I<='1';
    mr_i <= '1';BE_I<='1';B1_I<='1';B2_I<='1';UPE_I<='1';
    UP1_I<='1';DN1_I<='1';DN2_I<='1';mr_I<='1';  wait for 50 ns;
    
    mr_i <= '0'; wait for 50 ns;
    mr_i <= '1'; wait for 800 ns;--initphase
    UP1_I<= '1'; wait for 80 ns;
    UP1_I<= '0'; wait for 100 ns;
    B2_I <= '0'; wait for 80 ns;
    B2_I <= '1'; wait for 1200 ns;
   
 
end process ablauf;

DUT: entity work.Elevator(Simulator)
  port map(clk=>clk_i,clken=>clken_I,BE=>BE_I,B1=>B1_I,B2=>B2_I,UPE=>UPE_I,UP1=>UP1_I,DN1=>DN1_I,DN2=>DN2_I,MR=>mr_I,
           led_extern_out=>led_extern_out_I,led_intern_out=>led_intern_out_I,anode=>anode_I,cathode=>cathode_I,
           d0=>d0_I,d23=>d23_I,s0=>s0_I,s1=>s1_I,clk_out=>clk_out_I,open_d=>open_d_I,mr_out=>mr_out_I);
end architecture Sequenz;  