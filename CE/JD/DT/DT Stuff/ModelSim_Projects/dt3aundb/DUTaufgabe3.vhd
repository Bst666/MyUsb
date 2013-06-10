
library work;
    use work.all;
    
library ieee;
    use ieee.std_logic_1164.all;
    use std.standard.integer;
    use ieee.std_logic_unsigned.all;



entity dut is
        PORT(     
			did	: out std_logic_vector( 2 downto 0);----DUT-ID
			err	: out std_logic;----error
			cnt	: out std_logic_vector( 11 downto 0);----counter-ausgabe
			
			valLd	: in std_logic_vector( 11 downto 0);----init val
			nLd	: in std_logic;----wenn 0 -> valLd als startwert laden
			up	: in std_logic;----hochzählen
			down	: in std_logic;----runterzählen
			
			clk	: in std_logic;----clock
			nres	: in std_logic----wenn 0 -> reset
        );
end entity dut;


architecture version1 of dut is
   signal	valLd_s	: std_logic_vector( 11 downto 0);
	signal	nLd_s	: std_logic;
	signal	up_s	: std_logic;
	signal	down_s	: std_logic;
			
	----Ausgabesignale
	signal 	did_s	: std_logic_vector( 2 downto 0);
	signal	err_s	: std_logic;
	signal	cnt_s	: std_logic_vector( 11 downto 0); 
begin
   SaveInput:----Eingaberegister
	process( clk ) is
	begin
	if clk='1' and clk'event then
		if nres='0' then----Bei Reset alle Eingabesignale auf 0 setzen
			valLd_s	<=	(others => '0');
			nLd_s	<=	'1';
			up_s	<=	'0';
			down_s	<=	'0';
		else----Sonst Eingabesignale speichern
			valLd_s	<=	valLd after 5 ns;
			nLd_s	<=	nLd after 5 ns;
			up_s	<=	up after 5 ns;
			down_s	<=	down after 5 ns;	
			     
		end if;
	end if;
	end process SaveInput;
	
	
	getErgebnis:
	process( up_s, down_s, nLd_s, nres ) is
	    variable err_v : std_logic;
	    begin
	        
          if nLd_s='0' then
		        cnt_s<=valLd_s after 5 ns;
	       else
	          err_v := err_s;
	          if (up_s XOR down_s)= '1' then 
	             if up_s='1' then
	                 
	                 if(cnt_s = "111111111111") then
                        err_v := '1';
                    end if;
	                 cnt_s <= cnt_s + 1 ;
	                 
	             elsif down_s='1' then
	                 
	                 if(cnt_s = "000000000000") then
                        err_v := '1';
                    end if;
	                 cnt_s <= cnt_s - 1 ;
	             end if;
	          end if;
	             if(nres = '0') then
	                cnt_s <= "000000000000";
	                err_s <='0';
	             else
	                err_s<=err_v;
	             end if;
	       end if;
	        
	end process getErgebnis;
	
	
	WriteOutput:----Ausgaberegister
	process( clk ) is
	begin
	if clk='1' and clk'event then
		if nres='0' then----Bei Reset alle Ausgänge auf 0 setzen
			did	<=	(others => '0') after 5 ns;
			err <=	'0' after 5 ns;
			cnt	<=	(others => '0') after 5 ns;
		else----Sonst Ausgabesignale an Ausgänge schicken
			did_s <= "001";----Richtige Stelle hier? 
			did	<=	did_s after 5 ns;
			err <=	err_s after 5 ns;
			cnt	<=	cnt_s after 5 ns;
		end if;
	end if;
	end process WriteOutput;
	
end architecture version1;


architecture version2 of dut is
    ----Eingabesignale	
	signal	valLd_s	: std_logic_vector( 11 downto 0);
	signal	nLd_s	: std_logic;
	signal	up_s	: std_logic;
	signal	down_s	: std_logic;
			
	----Ausgabesignale
	signal 	did_s	: std_logic_vector( 2 downto 0);
	signal	err_s	: std_logic;
	signal	cnt_s	: std_logic_vector( 11 downto 0);
  
begin

	SaveInput:----Eingaberegister
	process( clk ) is
	begin
	if clk='1' and clk'event then
		if nres='0' then----Bei Reset alle Eingabesignale auf 0 setzen
			valLd_s	<=	(others => '0');
			nLd_s	<=	'1';
			up_s	<=	'0';
			down_s	<=	'0';
		else----Sonst Eingabesignale speichern
			valLd_s	<=	valLd after 5 ns;
			nLd_s	<=	nLd after 5 ns;
			up_s	<=	up after 5 ns;
			down_s	<=	down after 5 ns;	
			     
		end if;
	end if;
	end process SaveInput;

	
	getErgebnis:
	process( up_s, down_s, nLd_s, nres ) is
	variable cnt_v	: std_logic_vector( 11 downto 0);
	variable err_v	: std_logic;
	variable i		: integer;
	variable mark	: integer;
	variable v1 : std_logic;
	variable v2 : std_logic;
	begin
	    
       if nLd_s='0' then
		        cnt_s<=valLd_s after 5 ns;
	    else
	    err_v	:=	err_s;
	    if (up_s XOR down_s)= '1' then 
	       if up_s='1' then
	           v1:= '0';
	           v2:= '1';
	       elsif down_s='1' then
	           v1:='1';
	           v2:='0';
	       end if;
	       -----------------
	       cnt_v	:= cnt_s;
		    
		    mark	:= 0;
		    i	  	:= 0;
	      	WHILE (i<12) LOOP
		       IF cnt_v(i)=v1 THEN
			       cnt_v(i) := v2;
			       mark := i-1;
			       i := 12;
			   
			    ELSE i := i+1;
		       END IF;	
         END LOOP;
	   
	      IF (i > 12) THEN
		      err_v := '1';
	      END IF;
	   
	      WHILE (mark >= 0) LOOP
		      cnt_v(mark) := v1; 
		      mark := mark-1;
	      END LOOP;

	      end if;
	      		 if(nres = '0') then 
		         cnt_s <= "000000000000";
		         err_s <= '0';
		      else
	            cnt_s	<=	cnt_v after 5 ns;
		         err_s	<=	err_v after 5 ns;
		      end if;
	    end if;
    
	  
	end process getErgebnis;
	
	
	WriteOutput:----Ausgaberegister
	process( clk ) is
	begin
	if clk='1' and clk'event then
		if nres='0' then----Bei Reset alle Ausgänge auf 0 setzen
			did	<=	(others => '0') after 5 ns;
			err <=	'0' after 5 ns;
			cnt	<=	(others => '0') after 5 ns;
		else----Sonst Ausgabesignale an Ausgänge schicken
			did_s <= "010";----Richtige Stelle hier? 
			did	<=	did_s after 5 ns;
			err <=	err_s after 5 ns;
			cnt	<=	cnt_s after 5 ns;
		end if;
	end if;
	end process WriteOutput;

end architecture version2;


architecture version3 of dut is
   signal	valLd_s	: std_logic_vector( 11 downto 0);
	signal	nLd_s	: std_logic;
	signal	up_s	: std_logic;
	signal	down_s	: std_logic;
	
	signal y : std_logic_vector( 11 downto 0);
	signal carry : std_logic_vector( 12 downto 0);
	signal lastCo : std_logic;
	signal erg_s : std_logic_vector( 11 downto 0);
	
	
			
	----Ausgabesignale
	signal 	did_s	: std_logic_vector( 2 downto 0);
	signal	err_s	: std_logic;
	signal	cnt_s	: std_logic_vector( 11 downto 0); 
	
	
	component fa is
    port (
        s  : out std_logic;
        co : out std_logic;
        x  : in  std_logic;
        y  : in  std_logic;
        ci : in  std_logic
    );
   end component fa;
   for all : fa use entity work.fa( arc3 );----
   	
begin
  
         
        L0:
        FOR N IN 0 TO 11 GENERATE
            fa_i : fa PORT MAP ( x => cnt_s(N) , y => y(N) , ci=> carry(N), s => erg_s(N), co => carry(N+1));
        END GENERATE L0;
        lastCo <= carry(12);
         

   
   getErgebnis:
   process( up_s, down_s, nLd_s, nres) is
       variable err_v : std_logic;
   begin
       
       if nLd_s='0' then
		    cnt_s<=valLd_s after 5 ns;
	    else
	    
	       err_v := err_s;	    	       
          if up_s='1' and up_s'event then
           
              if(cnt_s = "111111111111") then
                  err_v := '1';
              end if;
              
              y <= "000000000001";
              carry(0) <= '0'; 
              
          elsif down_s='1' and down_s'event then
              
              if(cnt_s = "000000000000") then
                  err_v := '1';
              end if;
           
              y <= "111111111110";
              carry(0) <= '1'; 
           
          end if;
          
          if(nres = '0') then
             err_s <= '0';
             cnt_s <= "000000000000";
          else 
             err_s <= err_v;
             cnt_s <= erg_s;
          end if;
       end if;
       

   end process getErgebnis;   
   
   WriteOutput:----Ausgaberegister
	process( clk ) is
	begin
	if clk='1' and clk'event then
		if nres='0' then----Bei Reset alle Ausgänge auf 0 setzen
		 --Eingänge
		   valLd_s	<=	(others => '0') after 5 ns;
         nLd_s	<=	'1' after 5 ns;
         up_s	<=	'0' after 5 ns;
         down_s	<=	'0' after 5 ns;
       --Ausgänge
			did	<=	(others => '0') after 5 ns;
			cnt	<=	(others => '0') after 5 ns;
		else----Sonst Ausgabesignale an Ausgänge schicken
		 --Eingänge
		   valLd_s	<=	valLd after 5 ns;
         nLd_s	<=	nLd after 5 ns;
         up_s	<=	up after 5 ns;
         down_s	<=	down after 5 ns;
       --Ausgänge
			did_s <= "100";
			did	<=	did_s after 5 ns;
			err <=	err_s after 5 ns;
			cnt	<=	cnt_s after 5 ns;
		end if;
	end if;
	end process WriteOutput;
   
   
end architecture version3;
