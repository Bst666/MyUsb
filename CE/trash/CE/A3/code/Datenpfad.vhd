library ieee;
    use ieee.std_logic_1164.all;
    --use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    use IEEE.numeric_std.all;
  
  
entity datenpfad is
  port(clk : in std_logic;
       start,stop: in std_logic; --puls short für start
       result_en: in std_logic;
       reg_en : in std_logic_vector(3 downto 0);
       -- r,d,n,t
       d : in std_logic_vector(9 downto 0);
       n: out std_logic_vector(4 downto 0);
       rnt_compare : out std_logic;
       result : out std_logic_vector(9 downto 0));
end entity;  


architecture Data of datenpfad is
signal d_i,d_i_plus : std_logic_vector(31 downto 0);
signal result_i,result_i_plus: std_logic_vector(15 downto 0);
signal n_i,n_plus : std_logic_vector(4 downto 0);
signal t,t_plus: std_logic_vector(31 downto 0); 
signal r,r_plus:std_logic_vector(31 downto 0); 
  
begin



result_reg:process(clk)
begin
  if clk'event and clk='1' then
     if reg_en(0)='1' then   
           result_i<=result_i_plus after 5 ns;
     end if;      
  end if;   
end process result_reg;

d_reg:process(clk)
begin
  if clk'event and clk='1' then
     if start='1' then
       d_i<="0000000000000000000000" & d after 5 ns;
     elsif reg_en(1)='1' then   
           d_i<=d_i_plus after 5 ns;
     end if;      
  end if;   
end process d_reg;

n_reg:process(clk)
begin
  if clk'event and clk='1' then
     if start='1' then
       n_i<="10000" after 5 ns;
     elsif reg_en(2)='1' then   
           n_i<=n_plus after 5 ns;
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

decrement:process(n_i)
begin
  n_plus<=n_i-1 after 5 ns;
end process decrement;

add:process(n_plus,result_i)
variable N_sh: std_logic_vector(31 downto 0);
variable result_sh: std_logic_vector(15 downto 0);
variable added : std_logic_vector(32 downto 0);
variable one : natural := 1;
variable res_uns :unsigned(15 downto 0);
begin
  res_uns:= unsigned(result_I);
  n_sh:= STD_LOGIC_VECTOR(unsigned'(SHIFT_LEFT(x"00000001", to_integer(unsigned(n_plus))))); 
  result_sh:= std_logic_vector(unsigned'(SHIFT_LEFT(res_uns,one)));
  added:= (n_sh(n_sh'left)&n_sh) + (result_sh(result_sh'left)&result_sh);
  t_plus<=added(31 downto 0) after 5 ns;  
end process add;

sub_add:process(n_i,t,result_i)
variable t_sh:unsigned(31 downto 0);
variable subbed :std_logic_vector(31 downto 0):=d_i;
variable added:std_logic_vector(16 downto 0);
variable result_sh: std_logic_vector(15 downto 0);
variable t_uns : unsigned(31 downto 0);
variable n_i_nat : natural;
begin
    n_i_nat:=to_integer(unsigned(N_I));
    t_uns :=unsigned(t);
    t_sh:=SHIFT_LEFT(t_uns, n_i_nat);
    result_sh:=STD_LOGIC_VECTOR(unsigned'(SHIFT_LEFT(x"0001", to_integer(unsigned(n_i)))));
    subbed:=subbed-std_logic_vector(t_sh);
    added:= (result_i(result_i'left)&result_i) + (result_sh(result_sh'left)&result_sh);
    
    d_i_plus<=subbed after 5 ns;
    result_i_plus<=added(15 downto 0) after 5 ns;
end process sub_add;

compare:process(r,n_i,t)
variable rn_sh : std_logic_vector(31 downto 0);
variable n_i_nat : natural;
variable r_uns:unsigned(31 downto 0);
begin
   n_i_nat := to_integer(unsigned(n_i));
   r_uns :=unsigned(r);
   rn_sh:=STD_LOGIC_VECTOR(unsigned'(SHIFT_Right(r_uns, n_i_nat)));
   if rn_sh >= t then 
      rnt_compare<='1' after 5 ns;
   else   
      rnt_compare<='0' after 5 ns;
   end if;   
end process compare;  


n<= n_i after 5 ns;

out_put:process(clk)
begin
  if clk'event and clk='1' then
     if result_en ='1' then
       result <= result_i(15 downto 6) after 5 ns;
     end if;  
  end if;   
end process out_put;


end architecture Data;  



