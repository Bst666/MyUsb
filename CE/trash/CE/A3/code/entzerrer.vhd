
library ieee;
    use ieee.std_logic_1164.all;
   -- use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
    
    
entity entzerrer is
    port(start,clk:in std_logic;
         value: in std_logic_vector(9 downto 0);
         result:out std_logic_vector(9 downto 0));
end entity entzerrer;
  
  
architecture squareroot of entzerrer is
type State is (Init,S0,S1,check,S2,Finished);
Signal Zustand,Folge_z : State;  

signal d_i,d_i_plus : std_logic_vector(31 downto 0);
signal result_i,result_i_plus: std_logic_vector(15 downto 0):=x"0000";
signal n,n_plus : std_logic_vector(4 downto 0);
signal t,t_plus: std_logic_vector(31 downto 0); 
signal stop,rnt_compare :std_logic;
signal reg_en : std_logic_vector(3 downto 0); -- t,n,d,r 
--signal add_input: std_logic_vector(15 downto 0);
signal init_values,add_controll : std_logic;
  
  
  
begin
-- Datenpfad
result_reg:process(clk)
begin
  if clk'event and clk='1' then
     if init_values ='1' then
           result_i<=x"0000" after 5 ns;
      elsif reg_en(0)='1' then  
           result_i<=result_i_plus after 5 ns;
      else     
           result_i<=result_i;
     end if;      
  end if;   
end process result_reg;

d_reg:process(clk)
begin
  if clk'event and clk='1' then
     if init_values='1' then
          d_i<="0000000000000000000000" & value after 5 ns;
     elsif reg_en(1)='1' then   
          d_i<=d_i_plus after 5 ns;
     else      
          d_i<=d_i;
     end if;      
  end if;   
end process d_reg;

n_reg:process(clk)
begin
  if clk'event and clk='1' then
     if init_values='1' then
       n<="10000" after 5 ns;
     elsif reg_en(2)='1' then   
           n<=n_plus after 5 ns;
     end if;      
  end if;   
end process n_reg;

t_reg:process(clk)
begin
  if clk'event and clk='1' then
     if reg_en(3)='1' then   
           t<=t_plus after 5 ns;
     end if;      
  end if;   
end process t_reg;
  
decrement:
 n_plus<=n-1 after 5 ns;


add:process(n,add_controll,result_i)
variable one : natural := 1;
variable N_sh: std_logic_vector(31 downto 0);
variable added : std_logic_vector(32 downto 0);
variable res_uns :unsigned(16 downto 0);
variable add_input:std_logic_vector(16 downto 0);
begin
	  res_uns:= unsigned('0'&result_I);
	  if add_controll='0' then
			add_input:= std_logic_vector(unsigned'(SHIFT_LEFT(res_uns,one)));--result_i*2
     else   
			add_input:= std_logic_vector(res_uns);
	  end if;
        n_sh:= STD_LOGIC_VECTOR(unsigned'(SHIFT_LEFT(x"00000001", to_integer(unsigned(n))))); --1<<n    
        added:= (add_input(add_input'left)&add_input) + (n_sh(n_sh'left)&n_sh); 
        

		  t_plus<=added(31 downto 0) after 5 ns;--t=q*2+(1<<n)

	     result_i_plus<=added(15 downto 0) after 5 ns;  --q=q+(1<<n)
 
     
end process add;

sub:process(n,t,result_i,d_i)
variable t_sh:unsigned(31 downto 0);
variable subbed :std_logic_vector(31 downto 0);
variable added:std_logic_vector(16 downto 0);
variable result_sh: std_logic_vector(15 downto 0);
variable t_uns : unsigned(31 downto 0);
variable n_nat : natural;
begin
    n_nat:=to_integer(unsigned(N));
    t_uns :=unsigned(t);
    t_sh:=SHIFT_LEFT(t_uns, n_nat);
    --result_sh:=STD_LOGIC_VECTOR(unsigned'(SHIFT_LEFT(x"0001", to_integer(unsigned(n)))));
    subbed:=d_i-std_logic_vector(t_sh);
    --added:= (result_i(result_i'left)&result_i) + (result_sh(result_sh'left)&result_sh);
    d_i_plus<=subbed after 5 ns;
    --result_i_plus<=added(15 downto 0) after 5 ns;
end process sub;

compare:process(d_i,n,t)
variable rn_sh : std_logic_vector(31 downto 0);
variable n_nat : natural;
variable r_uns:unsigned(31 downto 0);
begin
   n_nat := to_integer(unsigned(n));
   r_uns :=unsigned(d_i);
   rn_sh:=STD_LOGIC_VECTOR(unsigned'(SHIFT_Right(r_uns, n_nat)));
   if rn_sh >= t then 
      rnt_compare<='1' after 5 ns;
   else   
      rnt_compare<='0' after 5 ns;
   end if;   
end process compare;  

out_put:process(clk)
begin
  if clk'event and clk='1' then
     --if new_result='1' then
      -- result<=(others => '0') after 5 ns;
     if stop ='1' then
       result <= result_i(9 downto 0) after 5 ns;
     end if;  
  end if;   
end process out_put;


-- steuerpfad



process(clk)
begin
  if clk'event and clk='1' then
    Zustand<= folge_z after 5 ns;
  end if;      
end process;



fsm:process(Zustand)
begin
  stop<='0';
  init_values<='0';
  add_controll<='0';
  case Zustand is
  when INIT=> init_values<='1' after 5 ns;
              reg_en <="0000" after 5 ns;
  when S0=> reg_en<="0100" after 5 ns;
            add_controll<='0' after 5 ns;
  when check=> reg_en <="0000" after 5 ns;  
            add_controll<='1' after 5 ns;
  when S1=> reg_en<="1000" after 5 ns;
  when S2=> reg_en<="0011" after 5 ns;
            add_controll<='1' after 5 ns;
  when finished=> reg_en<="0000" after 5 ns;
                  stop <='1' after 5 ns; 
  when others=> null;  

end case;  
  
end process fsm;



transition:process(Zustand,start,rnt_compare,n)
begin
  
  case Zustand is
  when INIT=> if start ='1' then
                 folge_z <= S0 after 5 ns;
                 --new_result<='1' after 5 ns;
					  else 
							folge_Z <= INIT after 5 ns;
              end if;  
  when S0=>   folge_z<=S1 after 5 ns;
              --new_result<='0' after 5 ns; 
  when S1=>   folge_z<=check after 5 ns;   
  when check=> if rnt_compare='1' then
               folge_z<=S2 after 5 ns;
            elsif n ="00000" then
               folge_z<=finished after 5 ns; 
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
  



  
end architecture squareroot;     
