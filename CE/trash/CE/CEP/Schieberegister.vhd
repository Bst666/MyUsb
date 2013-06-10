library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    
    
entity Schieberegister is
   generic(N : natural :=24;
           limit : Integer := 131072);
   port( CLK, S1,S0,D0,D23, MR,CLKIN: in std_logic;
         Q: out std_logic_vector(N - 1 downto 0);
         LED : out std_logic_vector(5 downto 0);
         ANODE : out std_logic_vector(3 downto 0);
			CLKENIN_OUT,S0_OUT,S1_OUT,D0_OUT,D23_OUT ,MR_OUT: out std_logic;
         CATHODE: out std_logic_vector(7 downto 0)
			); 
end Schieberegister;

architecture VERHALTEN of Schieberegister is

   
  
   signal INTREG: std_logic_vector(N-1 downto 0);
   signal counter :std_logic_vector(17 downto 0);
   signal CLKEN :std_logic;
   signal CLKENIN :std_logic;
   signal cnt :std_logic_vector(1 downto 0);
   signal CLKENIN_OLD :std_logic;
   
   
   begin
      P1: process(CLK, MR) -- Schieberegister
         begin
            if MR='0' 
               then INTREG <= (others => '0') after 5 ns;
            elsif (CLK='1' and CLK'event) 
               then -- ansteigende Flanke
               if CLKENIN = '1'
               then
                  if S0 = '1' and S1 = '1' 
                  then
                     INTREG <= (others => '1') after 5 ns;
                  elsif S0 = '1' 
                  then
                     INTREG <= INTREG( N - 2 downto 0) & D0 after 5 ns;
                  
                  elsif S1='1' 
                  then
                     INTREG <= D23 & INTREG(N-1 downto 1) after 5 ns;
                  end if;
              end if;
            end if;
         end process P1;
      
      
      P2: process(MR,INTREG) -- Freigabe des Ausgangssignals
      begin
         if MR = '0' then
            Q <= (others=>'0') after 5 ns;
         else   
            Q <= INTREG after 5 ns;
         end if;
			
			CLKENIN_OUT <= CLKENIN after 5 ns;
			S0_OUT <= S0 after 5 ns;
			S1_OUT <= S1 after 5 ns;
			D0_OUT <= D0 after 5 ns;
			D23_OUT <= D23 after 5 ns;
			MR_OUT <= MR after 5 ns;
			led(0) <= INTREG(0) and INTREG(1) and INTREG(2)and INTREG(3) after 5 ns;
         led(1) <= INTREG(4) and INTREG(5) and INTREG(6)and INTREG(7) after 5 ns;
         led(2) <= INTREG(8) and INTREG(9) and INTREG(10)and INTREG(11) after 5 ns;
         led(3) <= INTREG(12) and INTREG(13) and INTREG(14)and INTREG(15) after 5 ns;
         led(4) <= INTREG(16) and INTREG(17) and INTREG(18)and INTREG(19) after 5 ns;
         led(5) <= INTREG(20) and INTREG(21) and INTREG(22)and INTREG(23) after 5 ns;
      end process P2;

   seg: process(CLK,MR)
   begin
         if(MR = '0') then
			   counter <= (others => '0') after 5 ns;
			   CLKEN <= '0' after 5 ns;
         elsif(CLK'event and CLK = '1') then
            if(counter >= limit) then
               CLKEN <= '1' after 5 ns;
               counter <= (others => '0') after 5 ns;
            else
               counter <= counter+1 after 5 ns;
               CLKEN <= '0'after 5 ns;
            end if;
         end if;    
   end process seg;
   
   
   P3: process(clken, MR) -- Schieberegister
     variable value: std_logic_vector(3 downto 0);
     begin
        if MR='0' then 
           CATHODE <= (others => '1') after 5 ns;
           cnt <=(others => '0') after 5 ns;
           value := "0000" ;
           ANODE <= (others => '1') after 5 ns;
        elsif clken='1' and clken'event then -- ansteigende Flanke
           case cnt is
               when "00" => value := INTREG(3 downto 0); 
                           ANODE(0)<= '0' after 5 ns;
									ANODE(1)<= '1' after 5 ns;
									ANODE(2)<= '1' after 5 ns;
									ANODE(3)<= '1' after 5 ns;
               when "01" => value := INTREG(7 downto 4);
                           ANODE(1)<= '0' after 5 ns;
									ANODE(0)<= '1' after 5 ns;
									ANODE(2)<= '1' after 5 ns;
									ANODE(3)<= '1' after 5 ns;
               when "10" => value := INTREG(11 downto 8);
                           ANODE(2)<= '0' after 5 ns;
									ANODE(0)<= '1' after 5 ns;
									ANODE(1)<= '1' after 5 ns;
									ANODE(3)<= '1' after 5 ns;
               when "11" => value := INTREG(15 downto 12);
                           ANODE(3)<= '0' after 5 ns;
									ANODE(0)<= '1' after 5 ns;
									ANODE(1)<= '1' after 5 ns;
									ANODE(2)<= '1' after 5 ns;
               when others => null;
          end case;
          
          
          if(cnt = "11")then
              cnt <= "00" after 5 ns;
          else
             cnt <= cnt+1 after 5 ns;
          end if;
          case value is
              
             when "0000"=> Cathode <= "00000011" after 5 ns;
			    when "0001"=> Cathode <= "10011111" after 5 ns;
			    when "0010"=> Cathode <= "00101001" after 5 ns;
		       when "0011"=> Cathode <= "00001101" after 5 ns;
		       when "0100"=> Cathode <= "10001101" after 5 ns;
			    when "0101"=> Cathode <= "01001001" after 5 ns;
			    when "0110"=> Cathode <= "01000001" after 5 ns;
			    when "0111"=> Cathode <= "00011111" after 5 ns;
			    when "1000"=> Cathode <= "00000001" after 5 ns;
			    when "1001"=> Cathode <= "00001001" after 5 ns;
			    when "1010"=> Cathode <= "00010001" after 5 ns;
			    when "1011"=> Cathode <= "11000001" after 5 ns;  --b
			    when "1100"=> Cathode <= "01100011" after 5 ns;
			    when "1101"=> Cathode <= "10000101" after 5 ns;
			    when "1110"=> Cathode <= "01100001" after 5 ns;
			    when "1111"=> Cathode <= "01110001" after 5 ns;
			    when others => null;
			 end case;  
		end if;
	end process;
	
	P4: process(clk)

	   begin
	       if clk = '1' and CLK'event then 
               CLKENIN <= (not CLKENIN_OLD) and CLKIN after 5 ns;
				CLKENIN_OLD <= CLKIN after 5 ns;
          end if;
            
   end process;
   
   
end VERHALTEN;




