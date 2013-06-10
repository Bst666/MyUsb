-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;                   -- for arc7



entity xor2 is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        o  : out std_logic;
        i1 : in  std_logic;
        i2 : in  std_logic
    );
end entity xor2;




-- 1st alternative
architecture structure1 of xor2 is
    
    signal tmp0_s : std_logic;
    signal tmp1_s : std_logic;
    signal tmp2_s : std_logic;
    
    component nand2
        port(
            o  : out std_logic;
            i1 : in  std_logic;
            i2 : in  std_logic
        );--]port
    end component nand2;
    for all : nand2 use entity work.nand2( arc );
    
begin
    
    nand2_i0 : nand2
        port map (
            o  => tmp0_s,
            i1 => i1,
            i2 => i2
        )--]port
    ;--]nand2_i0
    
    nand2_i1 : nand2
        port map (
            o  => tmp1_s,
            i1 => i1,
            i2 => tmp0_s
        )--]port
    ;--]nand2_i1
    
    nand2_i2 : nand2
        port map (
            o  => tmp2_s,
            i1 => tmp0_s,
            i2 => i2
        )--]port
    ;--]nand2_i2
    
    nand2_i3 : nand2
        port map (
            o  => o,
            i1 => tmp1_s,
            i2 => tmp2_s
        )--]port
    ;--]nand2_i3
    
end architecture structure1;




-- 2nd alternative
architecture structure2 of xor2 is
    
    signal ni1_s  : std_logic;
    signal ni2_s  : std_logic;
    signal tmp1_s : std_logic;
    signal tmp2_s : std_logic;
    
    component inv
        port(
            o : out std_logic;
            i : in  std_logic
        );--]port
    end component inv;
    for all : inv use entity work.inv( arc );
    
    component and2
        port(
            o  : out std_logic;
            i1 : in  std_logic;
            i2 : in  std_logic
        );--]port
    end component and2;
    for all : and2 use entity work.and2( arc );
    
    component or2
        port(
            o  : out std_logic;
            i1 : in  std_logic;
            i2 : in  std_logic
        );--]port
    end component or2;
    for all : or2 use entity work.or2( arc );
    
begin
    
    inv_i1 : inv
        port map (
            o => ni1_s,
            i => i1
        )--]port
    ;--]inv_i1
    
    inv_i2 : inv
        port map (
            o => ni2_s,
            i => i2
        )--]port
    ;--]inv_i2
    
    and2_i1 : and2
        port map (
            o  => tmp1_s,
            i1 => i1,
            i2 => ni2_s
        )--]port
    ;--]and2_i1
    
    and2_i2 : and2
        port map (
            o  => tmp2_s,
            i1 => ni1_s,
            i2 => i2
        )--]port
    ;--]and2_i2
    
    or2_i : or2
        port map (
            o  => o,
            i1 => tmp1_s,
            i2 => tmp2_s
        )--]port
    ;--]nand2_i3
    
end architecture structure2;




-- 3rd alternative
architecture arc1 of xor2 is
begin
    
    o  <=  i1 xor i2  after delayVisualization;
        
end architecture arc1;




-- 4th alternative
architecture arc2 of xor2 is
begin
    
    logic:
    process ( i1, i2 ) is
    begin
        o  <=  i1 xor i2  after delayVisualization;
    end process logic;
        
end architecture arc2;




-- 5th alternative
architecture arc3 of xor2 is
begin
    
    logic:
    process ( i1, i2 ) is
        variable i1_v   : std_logic;
        variable i2_v   : std_logic;
        variable resu_v : std_logic;                       -- RESUlt
    begin
        i1_v := i1;
        i2_v := i2;
        
        resu_v := i1_v xor i2_v;
        
        o  <=  resu_v  after delayVisualization;
    end process logic;
        
end architecture arc3;




-- 6th alternative
architecture arc4 of xor2 is
begin
    
    logic:
    process ( i1, i2 ) is
        variable i1_v   : std_logic;
        variable i2_v   : std_logic;
        variable resu_v : std_logic;                       -- RESUlt
    begin
        i1_v := i1;
        i2_v := i2;
        
        resu_v := (i1_v and not i2_v)  or  (i2_v and not i1_v);
        
        o  <=  resu_v  after delayVisualization;
    end process logic;
        
end architecture arc4;




-- 7th alternative
architecture arc5 of xor2 is
begin
    
    logic:
    process ( i1, i2 ) is
        variable iv_v   : std_logic_vector( 1 downto 0 );  -- Input Vector
        variable resu_v : std_logic;                       -- RESUlt
    begin
        iv_v := i1 & i2;
        
        case iv_v is
            when "00" =>   resu_v := '0';
            when "01" =>   resu_v := '1';
            when "10" =>   resu_v := '1';
            when others => resu_v := '0';  -- including "11"
        end case;
        
        o  <=  resu_v  after delayVisualization;
    end process logic;
        
end architecture arc5;



-- 8th alternative
architecture arc6 of xor2 is
begin
    
    logic:
    process ( i1, i2 ) is
        type  truth_table_t  is  array( natural range <> ) of std_logic; 
        constant truth_table : truth_table_t( 0 to 3 ) := (
            '0',  -- 00
            '1',  -- 01                     
            '1',  -- 10
            '0'   -- 11
        );
        variable iv_v   : std_logic_vector( 1 downto 0 );  -- INput Vector
        variable resu_v : std_logic;                       -- RESUlt
    begin
        iv_v := i1 & i2;
        
        resu_v := truth_table( conv_integer( iv_v ) );
        
        o  <=  resu_v  after delayVisualization;
    end process logic;
        
end architecture arc6;
