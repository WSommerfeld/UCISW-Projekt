library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity licznik_tb is
end licznik_tb;

architecture Behavioral of licznik_tb is
    component licznik
        Port (
            correct : in STD_LOGIC;
            count : in STD_LOGIC;
            outcorrect : out STD_LOGIC_VECTOR(7 downto 0);
            outcount : out STD_LOGIC_VECTOR(7 downto 0);
            reset : in STD_LOGIC
        );
    end component;

    -- Sygnay testowe
    signal correct : STD_LOGIC := '0';
    signal count : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal outcorrect : STD_LOGIC_VECTOR(7 downto 0);
    signal outcount : STD_LOGIC_VECTOR(7 downto 0);

    -- Stae czasowe
    constant PERIOD : time := 10 ns;

begin
    -- Instancja testowanego komponentu
    uut: licznik port map(
        correct => correct,
        count => count,
        outcorrect => outcorrect,
        outcount => outcount,
        reset => reset
    );

    -- Proces generujcy sygna count
    count_process: process
    begin
        wait for PERIOD/2;
        count <= not count;
    end process;

    -- Proces testujcy
    stim_proc: process
    begin
        -- Inicjalizacja
        reset <= '1';
        correct <= '0';
        wait for PERIOD*2;
        
        -- Test 1: Reset i podstawowe zliczanie
        reset <= '0';
        wait until rising_edge(count);
        correct <= '1';  -- Zliczaj poprawne
        wait until rising_edge(count);
        correct <= '0';  -- Tylko oglne zliczanie
        wait until rising_edge(count);
        correct <= '1';  -- Znowu poprawne
        
        -- Test 2: Wiksza liczba cykli
        for i in 1 to 5 loop
            wait until rising_edge(count);
        end loop;
        
        -- Test 3: Reset w trakcie
        reset <= '1';
        wait for PERIOD;
        reset <= '0';
        
        -- Test 4: Kilka cykli po resecie
        correct <= '1';
        wait until rising_edge(count);
        wait until rising_edge(count);
        correct <= '0';
        wait until rising_edge(count);
        
        -- Koniec symulacji
        wait;
    end process;

end Behavioral;