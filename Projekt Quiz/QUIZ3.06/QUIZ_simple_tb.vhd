library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity QUIZ_simple_tb is
end QUIZ_simple_tb;

architecture Behavioral of QUIZ_simple_tb is
    component QUIZ
        Port ( 
            NUMBER : in  STD_LOGIC_VECTOR (7 downto 0);
            ANSWER : in  STD_LOGIC_VECTOR (7 downto 0);
            SET : in  STD_LOGIC;
            CHECK : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            COUNT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
            CORRECT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
            CORRECT_OUT : out  STD_LOGIC;
            COUNT_OUT : out  STD_LOGIC;
            TEXT_OUTPUT : out  STD_LOGIC_VECTOR (815 downto 0)
        );
    end component;
    
    signal NUMBER : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal ANSWER : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal SET : STD_LOGIC := '0';
    signal CHECK : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';
    signal COUNT_IN : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal CORRECT_IN : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal CORRECT_OUT : STD_LOGIC;
    signal COUNT_OUT : STD_LOGIC;
    signal TEXT_OUTPUT : STD_LOGIC_VECTOR (815 downto 0);
    
begin
    uut: QUIZ 
    port map (
        NUMBER => NUMBER,
        ANSWER => ANSWER,
        SET => SET,
        CHECK => CHECK,
        RESET => RESET,
        COUNT_IN => COUNT_IN,
        CORRECT_IN => CORRECT_IN,
        CORRECT_OUT => CORRECT_OUT,
        COUNT_OUT => COUNT_OUT,
        TEXT_OUTPUT => TEXT_OUTPUT
    );
    
    process
    begin
        -- Reset
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';
        wait for 10 ns;
        
        -- Ustaw pytanie 1
        NUMBER <= "00000000";
        SET <= '1';
        wait for 10 ns;
        SET <= '0';
        wait for 10 ns;
        
        -- Odpowiedz '2' (ASCII 50)
        ANSWER <= "00110010";
        CHECK <= '1';
        wait for 10 ns;
        CHECK <= '0';
        wait for 10 ns;
        
        -- Ustaw pytanie 2
        NUMBER <= "00000001";
        SET <= '1';
        wait for 10 ns;
        SET <= '0';
        wait for 10 ns;
        
        -- Odpowiedz '4' (ASCII 52)
        ANSWER <= "00110011";
        CHECK <= '1';
        wait for 10 ns;
        CHECK <= '0';
        wait for 10 ns;
        
        wait;
    end process;

end Behavioral;
