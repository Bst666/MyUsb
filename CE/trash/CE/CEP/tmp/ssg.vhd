library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; -- definiert die Typen signed u.  
                              --unsigned sowie verknüpfende Operatoren 
use IEEE.numeric_std.all;			  

use ieee.std_logic_unsigned.all;

entity ssg is
	port(	QINTERN : in bit_vector(23 downTO 0);				-- d0=LSB input bit for UP D23 = MSB input bit for DOWN /mr_n asynchron master reset
			CLK, RESET, CLK_EN : in bit;
			ANODE : out bit_vector(3 downTo 0);
			CATHODEN : out bit_vector(7 downTo 0)); -- CA,CB,CC,CD,CE,CF,CG,DP
			
			
end ssg;
		
architecture ssg_arch of ssg is
variable cnt : integer :=0;
begin

asads:process(CLK_EN, RESET)
begin
	if(RESET='0') then
	--
	elsif(CLK_EN='1' and CLK_EN'event) then
		ANODE(CNT)<='0';
		case QINTERN(3+(4*cnt) downto 0+(4*cnt)) is
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
		cnt=((cnt+1) mod 4);
	end if;


end ssg_arch;