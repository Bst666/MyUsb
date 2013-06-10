-- Code belongs to TI3 DT
-- History:
--  111005: 1st version for TI3 DT SS11  by Michael Schaefers 



library work;
    use work.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;                   -- for arc4&5



entity ha is
    generic (
        delayVisualization : time := 1 ns              -- visualization of just some HW delay
    );
    port (
        c : out std_logic;
        s : out std_logic;
        x : in  std_logic;
        y : in  std_logic
    );
end entity ha;



architecture structure of ha is
    
    component and2
        port(
            o  : out std_logic;
            i1 : in  std_logic;
            i2 : in  std_logic
        );--]port
    end component and2;
    for all : and2 use entity work.and2( arc );
    
    component xor2
        port(
            o  : out std_logic;
            i1 : in  std_logic;
            i2 : in  std_logic
        );--]port
    end component xor2;
    for all : xor2 use entity work.xor2( structure2 );
    
begin
    
    and2_i : and2
        port map (
            o  => c,
            i1 => x,
            i2 => y
        )--]port
    ;--]and2_i
    
    xor2_i : xor2
        port map (
            o  => s,
            i1 => x,
            i2 => y
        )--]port
    ;--]xor2_i    
    
end architecture structure;




architecture arc1 of ha is
begin
    
    logic:
    process ( x, y ) is
    begin
        s  <=  x xor y  after delayVisualization;
        c  <=  x and y  after delayVisualization;
    end process logic;
        
end architecture arc1;




architecture arc2 of ha is
begin
    
    logic:
    process ( x, y ) is
        variable x_v : std_logic;
        variable y_v : std_logic;
        variable s_v : std_logic;
        variable c_v : std_logic;
    begin
        x_v := x;
        y_v := y;
        
        s_v := x_v xor y_v;
        c_v := x_v and y_v;
        
        s  <=  s_v  after delayVisualization;
        c  <=  c_v  after delayVisualization;
    end process logic;
        
end architecture arc2;




architecture arc3 of ha is
begin
    
    logic:
    process ( x, y ) is
        variable iv_v : std_logic_vector( 1 downto 0 );  -- Input Vector
        variable s_v  : std_logic;
        variable c_v  : std_logic;
    begin
        iv_v := x & y;
        
        case iv_v is
            when "00" =>   c_v :='0';  s_v :='0';
            when "01" =>   c_v :='0';  s_v :='1';
            when "10" =>   c_v :='0';  s_v :='1';
            when others => c_v :='1';  s_v :='0';   -- including "11"
        end case;
        
        s  <=  s_v  after delayVisualization;
        c  <=  c_v  after delayVisualization;
    end process logic;

end architecture arc3;




architecture arc4 of ha is
begin
    
    logic:
    process ( x, y ) is
        type  truth_table_t  is  array( natural range <> ) of std_logic_vector( 1 downto 0 );
        constant truth_table : truth_table_t( 0 to 3 ) := (
        --+-------------------+------|
        --|    c    s         : name |
        --|    1    0         : pos  |
        --+----v----v---------+------|
            ( '0', '0' ),  -- | 00   |
            ( '0', '1' ),  -- | 01   |
            ( '0', '1' ),  -- | 10   |
            ( '1', '0' )   -- | 11   |
        --+----^----^---------+------|
        --|    1    0         : pos  |
        --|    c    s         : name |
        --+-------------------+------|
        );
        variable iv_v : std_logic_vector( 1 downto 0 );  -- Input Vector
        variable s_v  : std_logic;
        variable c_v  : std_logic;
    begin
        iv_v := x & y;
        
        c_v := truth_table( conv_integer( iv_v ) )(1);
        s_v := truth_table( conv_integer( iv_v ) )(0);
        
        s  <=  s_v  after delayVisualization;
        c  <=  c_v  after delayVisualization;
    end process logic;
    
end architecture arc4;




architecture arc5 of ha is
begin
    
    logic:
    process ( x, y ) is
        type  truth_table_t  is  array( natural range <> ) of std_logic_vector( 1 downto 0 );
        constant truth_table : truth_table_t( 0 to 3 ) := (
        --+------------+----|
        --|  /----c    |    |
        --|  |/---s    |    |
        --+--vv--------+----|
            "00",   -- | 00 |
            "01",   -- | 01 |
            "01",   -- | 10 |
            "10"    -- | 11 |
        --+--^^--------+----|
        --|  |\---s    |    |
        --|  \----c    |    |
        --+------------+----|
        );
        variable iv_v : std_logic_vector( 1 downto 0 );  -- Input Vector
        variable ov_v : std_logic_vector( 1 downto 0 );  -- Output Vector
    begin
        iv_v := x & y;
        
        ov_v := truth_table( conv_integer( iv_v ) );
        
        c  <=  ov_v(1)  after delayVisualization;
        s  <=  ov_v(0)  after delayVisualization;
    end process logic;
    
end architecture arc5;
