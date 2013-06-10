library IEEE;
  use IEEE.std_logic_1164.all;
  
entity mp3_entzerrer is
	port(req,rw,clk,al_reset : in std_logic;
		  value :inout std_logic_vector(9 downto 0);
		  ack,result,RDY_FPGA : out std_logic;
		  ack_test,result_test,req_test,rw_test:out std_logic;
		  state_out_test : out std_logic_vector(7 downto 0));
end entity mp3_entzerrer;	

architecture wurzeln of mp3_entzerrer is
signal req_sync,rw_sync:std_logic;
signal req_safety,rw_safety : std_logic;
signal value_sync_in,value_sync_out, result_i : std_logic_vector(9 downto 0);
signal result_i_test:std_logic;


signal ack_i,start_i,ready_i : std_logic;
signal reset_result,result_ce :std_logic;
signal triout: std_logic;

type state is (idle,read1,read2,read3,write1,write2,write3,write4);
signal Zustand,folge_z : state;

--component aus A3 einfügen ggf zusätzliche internen Signale deklarieren
--todo entzerrer um done signal erweitern -- noch ungetestet
component entzerrer is
    port(start,clk:in std_logic;
         value: in std_logic_vector(9 downto 0);
		   finish:out std_logic;
         result:out std_logic_vector(9 downto 0));
end component entzerrer;


begin

sync_input:process(clk)
begin
  if clk'event and clk='1' then
    req_sync<=req after 5 ns;
	 rw_sync<=rw after 5 ns;
	 value_sync_in<= value after 5 ns;	
  end if;      
end process sync_input;

safety_input:process(clk)
begin
  if clk'event and clk='1' then
    req_safety<=req_sync after 5 ns;
	 rw_safety<=rw_sync after 5 ns;
  end if;      
end process safety_input;

process(clk,al_reset)
begin
	if al_reset='1' then
      Zustand<=idle after 5 ns;
   elsif clk'event and clk='1' then	
		Zustand <= folge_z after 5 ns;
	end if;	
end process;

hs_output:process(clk)
begin
	if clk'event and clk='1' then
		if reset_result='1' then
			result_i_test<='0' after 5 ns;
		elsif result_ce='1' then
			result_i_test<='1' after 5 ns;
		end if;	
		ack<=ack_i after 5 ns;
	end if;	
end process hs_output;

result<=result_i_test;

value_output:process(clk)
begin
   if clk'event and clk='1' then
			value_sync_out <= result_i;
   end if; 
end process value_output;

process(value_sync_out,triout)
begin
		if triout='1' then
          value<=value_sync_out after 5 ns;
      else
          value<=(others=>'Z') after 5 ns;  
      end if;     
end process;		

test_out:
ack_test<=ack_i;
rw_test<=rw_safety;
req_test<=req_safety;
result_test<=result_i_test;



transition:process(Zustand,req_safety,rw_safety,ready_i)
begin
	case Zustand is
	when idle => if req_safety = '1' then
				         	if rw_safety = '1' then
					          	folge_z <= read1 after 5 ns;
					        else
						         folge_z <= write1 after 5 ns;
					        end if;
				       else
					       	folge_z <= idle after 5 ns;
				       end if;
	when read1 => folge_z <= read2 after 5 ns;
	when read2=> if req_safety='0' then
					         folge_z<=read3 after 5 ns;
				       else
			           		folge_z<=read2 after 5 ns;
			        	 end if;
	when read3=> folge_z <= idle after 5 ns; 
	when write1=> if req_safety = '0' then
					         folge_z<=write2 after 5 ns;
				        else
				          	folge_z<=write1 after 5 ns;
				        end if;
	when write2=> folge_z <= write3 after 5 ns;
	when write3=> if ready_i = '1' then
			            	folge_z <= write4 after 5 ns;
				        else
				           folge_z <= write3 after 5 ns;
				        end if;
	when write4=> folge_z<= idle after 5 ns;
	when others=>null;
	end case;				
end process transition;	


--toDO ASN;
--check triout
asn: process(Zustand)
begin
	state_out_test<=(others=>'0');
	case Zustand is
	when idle=>ack_i<= '0' after 5 ns;
			   start_i<='0' after 5 ns;
			   result_ce<='0' after 5 ns;
			   triout<= '0' after 5 ns;
			   reset_result <='0' after 5 ns;
				state_out_test(0)<='1';
	when read1=>ack_i<= '0' after 5 ns;
			   start_i<='0' after 5 ns;
			   result_ce<='0' after 5 ns;
			   triout<= '1' after 5 ns;
			   reset_result<='0' after 5 ns;
				state_out_test(1)<='1';
	when read2=>ack_i<= '1' after 5 ns;
			   start_i<='0' after 5 ns;
			   result_ce<='0' after 5 ns;
			   triout<= '1' after 5 ns;
			   reset_result<='0' after 5 ns;
				state_out_test(2)<='1';
	when read3=>ack_i<= '0' after 5 ns;
			   start_i<='0' after 5 ns;
			   result_ce<='0' after 5 ns;
			   triout<= '0' after 5 ns;
			   reset_result<='1' after 5 ns;
				state_out_test(3)<='1';
	when write1=> ack_i<= '1' after 5 ns;
			      start_i<='0' after 5 ns;
				   result_ce<='0' after 5 ns;
			      triout<= '0' after 5 ns;
			      reset_result<='0' after 5 ns;
					state_out_test(4)<='1';
	when write2=> ack_i<= '1' after 5 ns;
			      start_i<='1' after 5 ns;
			      result_ce<='0' after 5 ns;
			      triout<= '0' after 5 ns;
			      reset_result<='0' after 5 ns;
					state_out_test(5)<='1';
	when write3=>ack_i<= '0' after 5 ns;
			     start_i<='0' after 5 ns;
			     result_ce<='0' after 5 ns;
			     triout<= '0' after 5 ns;
				  reset_result<='0' after 5 ns;
				  state_out_test(6)<='1';
	when write4=>ack_i<= '0' after 5 ns;
			     start_i<='0' after 5 ns;
			     result_ce<='1' after 5 ns;
			     triout<= '0' after 5 ns;
				  reset_result <='0' after 5 ns;
				  state_out_test(7)<='1';
	end case;
end process asn;

RDY_FPGA<='1' after 5 ns;


dut: entity work.entzerrer(squareroot)
    port map(start=>start_i,clk=>clk,value=>value_sync_in,
             finish=>ready_i,result=>result_i);  



end architecture wurzeln;
  
  