library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    


entity TB_fsm is 
end TB_fsm;


architecture SEQUENZ of TB_fsm is
  

component fms is
  port( timer_end,clk,mr : in std_logic;
        req  : in std_logic_vector(1 downto 0);
        up,down, timer_start,open_d,d0,d23,en :out std_logic);  
end component;



signal timer_end_i, clk_i, mr_i :std_logic;
signal req_i : std_logic_vector(1 downto 0);
signal up_i, down_i, timer_start_i, open_d_i, d0_i, d23_i, en_i :std_logic;

begin

clk:process
begin
   clk_i<='1'; wait for 25 ns;
   clk_i<='0'; wait for 25 ns;
end process clk;

ablauf:process
begin
   mr_i<='0';timer_end_i<='0';req_i<="00"; wait for 100 ns;
   mr_i<='1'; wait for 100 ns;
   req_i<="11"; wait for 100 ns;
   timer_end_i<='1'; wait for 50 ns;
   req_i<="01";wait for 50 ns;
   req_i<="11"; wait for 50 ns;
end process ablauf;

DUT: entity work.FSM_controller(Verhalten)
    port map (CLK=>CLK_I, MR=>MR_I,timer_end=>timer_end_i,
              req=>req_i,up=>up_i,down=>down_i,
              timer_start=>timer_start_i,open_d=>open_d_i,
              d0=>d0_i,d23=>d23_i,en=>en_i);
        

  
end architecture Sequenz;  