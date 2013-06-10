LIBRARY ieee;
    USE ieee.std_logic_1164.all;
    
    ENTITY signalgen IS
        PORT(
        x: OUT std_logic_vector(3 downto 0)      
        );
END ENTITY signalgen;
        
ARCHITECTURE dosignal OF signalgen IS
   BEGIN
    sig:
    PROCESS
        BEGIN
        
           --combination 1
           x(0) <= '1';
           x(1) <= '0';
           x(2) <= '0';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 2
           x(0) <= '0';
           x(1) <= '1';
           x(2) <= '0';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 3
           x(0) <= '1';
           x(1) <= '1';
           x(2) <= '0';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 4
           x(0) <= '0';
           x(1) <= '0';
           x(2) <= '1';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 5
           x(0) <= '1';
           x(1) <= '0';
           x(2) <= '1';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 6
           x(0) <= '0';
           x(1) <= '1';
           x(2) <= '1';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 7
           x(0) <= '1';
           x(1) <= '1';
           x(2) <= '1';
           x(3) <= '0';
           wait for 100 ns;
           
           --combination 8
           x(0) <= '0';
           x(1) <= '0';
           x(2) <= '0';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 9
           x(0) <= '1';
           x(1) <= '0';
           x(2) <= '0';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 10
           x(0) <= '0';
           x(1) <= '1';
           x(2) <= '0';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 11
           x(0) <= '1';
           x(1) <= '1';
           x(2) <= '0';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 12
           x(0) <= '0';
           x(1) <= '0';
           x(2) <= '1';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 13
           x(0) <= '1';
           x(1) <= '0';
           x(2) <= '1';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 14
           x(0) <= '0';
           x(1) <= '1';
           x(2) <= '1';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 15
           x(0) <= '1';
           x(1) <= '1';
           x(2) <= '1';
           x(3) <= '1';
           wait for 100 ns;
           
           --combination 16
           x(0) <= '0';
           x(1) <= '0';
           x(2) <= '0';
           x(3) <= '0';
           wait for 100 ns;
           
           wait;
           
           
    END PROCESS sig;
        
END ARCHITECTURE dosignal;

          
