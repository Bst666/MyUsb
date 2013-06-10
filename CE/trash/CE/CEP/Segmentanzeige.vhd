library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity Segment_illu is
    port(
         clken :in bit ;
         MR : in bit;
         clk: in bit;
         INPUT : in std_logic_vector(15 downto 0);
         ANODE : out std_logic_vector(3 downto 0);
         CATHODE: out std_logic_vector(7 downto 0));
end Segment_illu;


architecture Illustrade of Segment_illu is
signal cnt :std_logic_vector(1 downto 0);
begin
     
     P1: process(clk, MR) -- Schieberegister
     variable value: bit_vector(3 downto 0);
     begin
        ANODE <= (others => '1') after 10 ns;
        if MR='0' then 
           CATHODE <= (others => '1') after 10 ns;
           cnt <=(others => '0') after 10 ns;
           value := "0000" ;
        elsif clk='1' and clk'event then -- ansteigende Flanke
           case cnt is
               when "00" => value := input(3 downto 0); 
                           ANODE(0)<= '0' after 10 ns;
               when "01" => value := input(7 downto 4);
                           ANODE(1)<= '0' after 10 ns;
               when "10" => value := input(11 downto 8);
                           ANODE(2)<= '0' after 10 ns;
               when "11" => value := input(15 downto 12);
                           ANODE(3)<= '0' after 10 ns;
               when others => null;
          end case;
          
          
          if(cnt = "11")then
              cnt <= "00";
          else
             cnt <= cnt+1;
          end if;
          case value is
              
             when "0000"=> Cathode <= "00000011";
			    when "0001"=> Cathode <= "10011111";
			    when "0010"=> Cathode <= "00101001";
		       when "0011"=> Cathode <= "00001101";
		       when "0100"=> Cathode <= "10001101";
			    when "0101"=> Cathode <= "01001001";
			    when "0110"=> Cathode <= "01000001";
			    when "0111"=> Cathode <= "00011111";
			    when "1000"=> Cathode <= "00000001";
			    when "1001"=> Cathode <= "00001001";
			    when "1010"=> Cathode <= "00010001";
			    when "1011"=> Cathode <= "11000001";  --b
			    when "1100"=> Cathode <= "01100011";
			    when "1101"=> Cathode <= "10000101";
			    when "1110"=> Cathode <= "01100001";
			    when "1111"=> Cathode <= "01110001";
			    when others => null;
			 end case;  
		end if;
	end process;
end Illustrade;
