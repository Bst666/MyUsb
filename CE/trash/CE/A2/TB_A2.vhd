
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity tb_all is
end tb_all;

architecture Simulate of tb_all is
  
component ElevatorTest is
  port(clk,clken,BE,B1,B2,UPE,UP1,DN1,DN2,MR : in std_logic;
       led_extern_out : out std_logic_vector(3 downto 0);
       led_intern_out : out std_logic_vector(2 downto 0);
		   led_door : out std_logic_vector(2 downto 0);
       anode : out std_logic_vector(3 downto 0);
       cathode : out std_logic_vector(7 downto 0); 
       d0_out,d23_out,s0,s1,clk_out,mr_out: out std_logic);
end component ElevatorTest;


signal clk_i,clken_i,BE_i,B1_i,B2_i,UPE_i,UP1_i,DN1_i,DN2_i,MR_i :  std_logic;
signal led_extern_out_i,anode_i : std_logic_vector(3 downto 0);
signal led_intern_out_i,led_door_i :  std_logic_vector(2 downto 0);
signal cathode_i :  std_logic_vector(7 downto 0);
signal d0_out_i,d23_out_i,clken_out_i,mr_out_i,s0_i,s1_i:  std_logic;

begin
  
clkp:process
begin
   clk_i<='1'; wait for 25 ns;
   clk_i<='0'; wait for 25 ns;
end process clkp;

clkenp:process
begin
   clken_i<='1'; wait for 50 ns;
   clken_i<='0'; wait for 50 ns;
end process clkenp;



ablauf:process
begin
   BE_i<='1';B1_i<='1';B2_i<='1';
   upe_i<='1'; up1_i<='1'; dn1_i<='1'; dn2_i<='1';
   mr_i<='1'; wait for 50 ns;
   mr_i<='0'; wait for 100 ns;
   mr_i<='1'; wait for 800 ns;
   b2_i<='0'; wait for 100 ns;
   b2_i<='1'; wait for 3000 ns;
   UPE_I<='0';wait for 100 ns;
   UPE_I<='1'; wait for 3000 ns;
end process ablauf;





dut:entity work.ElevatorTest(SimuEleTest)
 port map(clk=>clk_i,clken=>clken_i,BE=>BE_I,B1=>B1_I,B2=>B2_I,
          UPE=>UPE_I,UP1=>UP1_I,DN1=>Dn1_I,DN2=>dn2_i,MR=>MR_I,
          led_extern_out=>led_extern_out_i,anode=>anode_i,
          led_intern_out=>led_intern_out_i,led_door=>led_door_i,
          cathode=>cathode_i,d0_out=>d0_out_i,d23_out=>d23_out_i,
          s0=>s0_i,s1=>s1_i,clk_out=>clken_out_i,mr_out=>mr_out_i);

end architecture Simulate;  