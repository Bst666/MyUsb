library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
    
entity tb_handshake is
end entity tb_handshake;    


architecture SEQUENZ of tb_handshake is

component mp3_entzerrer is
   port(req,rw,clk : in std_logic;
		  value :inout std_logic_vector(9 downto 0);
		  ack,result : out std_logic); 
end component mp3_entzerrer;

  

signal req_i,rw_i,clk_i,ack_i,result_i :std_logic;
signal value_i:std_logic_vector(9 downto 0);


begin
    
clk:process
begin
   clk_i<='1'; wait for 25 ns;
   clk_i<='0'; wait for 25 ns;
end process clk;    

todo:process
begin
   req_i<= '1'; rw_i <= '0'; value_i<="0010000000"; wait for 500 ns;
   req_i<= '0'; rw_i <='1'; wait for 5000 ns; 
   req_i<='1'; wait for 500 ns;
   req_i<='0';wait for 5000 ns;    
end process todo;    
    
    
    
DUT: entity work.mp3_entzerrer(wurzeln)
   port map(req=>req_i,rw=>rw_i,clk=>clk_i,ack=>ack_i,
            result=>result_i,value=> value_i);    
    
end architecture Sequenz;    
    