library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; -- definiert die Typen signed u.  
                              --unsigned sowie verknüpfende Operatoren 
							  

use ieee.std_logic_unsigned.all;

entity Shift24 is
	port(	d0, d23, clk, mr_n, s0, s1, CLK_EN_IN: in bit;				-- d0=LSB input bit for UP D23 = MSB input bit for DOWN /mr_n asynchron master reset
			--QOUT: out BIT_VECTOR(3 downto 0)); 
			l1, l2, l3, l4, l5, l6 : out bit;
			QOUT: out BIT_VECTOR(23 downto 0)); 
end shift24;
		
architecture shift of Shift24 is

--component Freq_divider
--  port( CLK,CLR_N,CLK_INH : in std_logic
 -- );
--end component;
signal sh : bit_vector (23 downto 0) := "000000000000000000000000";
signal error, CLK_EN : STD_LOGIC :='0';
signal CNT, CNT_OLD : STD_LOGIC_VECTOR(18 downTo 0) :="0000000000000000000";
--signal l1, l2, l3, l4, l5, l6 : STD_LOGIC :='0';
signal internOut : STD_LOGIC_VECTOR(23 downTo 0) :="000000000000000000000000";

begin
	
	frequenzteiler: process(clk)
	begin
		if (CNT(17)='1') then
			CLK_EN<='1';
			CNT<=(others => '0');
		else
			CLK_EN<='0';
			CNT<=CNT+1;
		end if;
	end process frequenzteiler;
	
	clock:process(clk, mr_n)
	begin
		if (mr_n = '0') then
		--alle LEDs aus QOUT <= "0000" after 10 ns?
		elsif (clk'event and clk = '1' ) then
			if(CLK_EN_IN='1' and CLK_EN_IN'event) then
				error <= '0';
				if (s0 = '1' and s1 = '0') then			--LSB to MSB falschrum?
					sh <= (d0 & sh(23 downto 1));
					--QOUT <= sh;
				elsif (s0 = '0' and s1 = '1') then		--MSB to LSB
					sh <= (sh(22 downto 0) & d23);
					--sh <= (d23 & sh(22 downto 0));
					--QOUT <= sh;
				elsif (s0 = '1' and s1 = '1') then
					error <= '1';
				end if;
			end if;
		--	if(QOUT != (23 downto 0 => '1' )) then

		--		QOUT <= sh_plus;
		--		sh <= sh_plus;
		--	end if;
		end if;
	end process;
	
	--QOUT <= '0' when oder_vector = X"0000" else '1';
	
	QOUT <= (others => '1') when error = '1' else sh;
	internOut<=(others => '1') when error = '1' else TO_STDLOGICVECTOR(sh);
--	if (error = '1') then
--		QOUT <= (others => '1');
--		error <= '0';
--	else
--		QOUT <= sh;
--	end if;



	leds:process(internOut)
	begin
--		case internOut is
--			when "1111--------------------" => l1 <= '1';
--			when "----1111----------------" => l2 <= '1';
--			when "--------1111------------" => l3 <= '1';
--			when "------------1111--------" => l4 <= '1';
--			when "----------------1111----" => l5 <= '1';
--			when "--------------------1111" => l6 <= '1';
--			when others => null;
--			end case;
		--if(sh(0)='1' and sh(1)='1' and sh(2)='1' and sh(3)='1') then
		if(internOut(23 downto 20))="1111" then
			l6<='1';
		else
			l6<='0';
		end if;
		if(internOut(19 downto 16))="1111" then
			l5<='1';
		else
			l5<='0';
		end if;
		if(internOut(15 downto 12))="1111" then
			l4<='1';
		else
			l4<='0';
		end if;
		if(internOut(11 downto 8))="1111" then
			l3<='1';
		else
			l3<='0';
		end if;
		if(internOut(7 downto 4))="1111" then
			l2<='1';
		else
			l2<='0';
		end if;
		if(internOut(3 downto 0))="1111" then
			l1<='1';
		else
			l1<='0';
		end if;
	end process;
end shift;
		
		
			
			
