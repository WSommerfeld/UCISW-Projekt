----------------------------------------------------------------------------------
-- Testbench dla modułu QUIZ
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity QUIZ_tb is
end QUIZ_tb;

architecture Behavioral of QUIZ_tb is
    -- Deklaracja komponentu
    component QUIZ
        Port ( 
            NUMBER : in  STD_LOGIC_VECTOR (7 downto 0);
            ANSWER : in  STD_LOGIC_VECTOR (7 downto 0);  -- Zmienione z 16 na 8 bitów
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
    
    -- Sygnały testowe
    signal NUMBER : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal ANSWER : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');  -- Zmienione z 16 na 8 bitów
    signal SET : STD_LOGIC := '0';
    signal CHECK : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';
    signal COUNT_IN : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal CORRECT_IN : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    
    -- Wyjścia
    signal CORRECT_OUT : STD_LOGIC;
    signal COUNT_OUT : STD_LOGIC;
    signal TEXT_OUTPUT : STD_LOGIC_VECTOR (815 downto 0);
    
begin
    -- Instancja testowanego modułu
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
    
    -- Proces testujący
    stim_proc: process
        -- Funkcja pomocnicza do konwersji znaku na 8-bitowy wektor
        function char_to_slv(c : character) return std_logic_vector is
        begin
            return std_logic_vector(to_unsigned(character'pos(c), 8));
        end function;
        
        -- Funkcja do wyświetlania wyników testu
        procedure test_answer(
            question_num : integer;
            answer_char : character;
            expected_correct : boolean
        ) is
        begin
            -- Ustaw numer pytania
            NUMBER <= std_logic_vector(to_unsigned(question_num - 1, 8));
            SET <= '1';
            wait for 10 ns;
            SET <= '0';
            wait for 10 ns;
            
            -- Podaj odpowiedź w formacie ASCII
            ANSWER <= char_to_slv(answer_char);
            CHECK <= '1';
            wait for 10 ns;
            CHECK <= '0';
            wait for 10 ns;
            
            -- Sprawdź wyniki
            assert COUNT_OUT = '1' report "ERROR: COUNT_OUT should be '1' for question " & integer'image(question_num) severity error;
            
            if expected_correct then
                assert CORRECT_OUT = '1' report "ERROR: Answer '" & answer_char & "' should be CORRECT for question " & integer'image(question_num) severity error;
                report "✓ Question " & integer'image(question_num) & ": Answer '" & answer_char & "' is CORRECT";
            else
                assert CORRECT_OUT = '0' report "ERROR: Answer '" & answer_char & "' should be INCORRECT for question " & integer'image(question_num) severity error;
                report "✓ Question " & integer'image(question_num) & ": Answer '" & answer_char & "' is INCORRECT (as expected)";
            end if;
            
            wait for 50 ns;
        end procedure;
        
    begin
        report "=== Rozpoczęcie testów modułu QUIZ ===";
        
        -- Reset systemu
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';
        wait for 20 ns;
        
        report "Reset systemu zakończony";
        
        -- Test 1: Pytanie #1 - "Co jest stolicą Polski?" (poprawna odpowiedź: 2)
        report "--- Test 1: Pytanie #1 ---";
        test_answer(1, '2', true);   -- Poprawna odpowiedź
        test_answer(1, '1', false);  -- Niepoprawna odpowiedź
        test_answer(1, '3', false);  -- Niepoprawna odpowiedź
        
        -- Test 2: Pytanie #2 - "Która planeta jest najbliższa Słońcu?" (poprawna odpowiedź: 4)
        report "--- Test 2: Pytanie #2 ---";
        test_answer(2, '4', true);   -- Poprawna odpowiedź (Merkury)
        test_answer(2, '1', false);  -- Niepoprawna odpowiedź
        
        -- Test 3: Pytanie #3 - "Ile wynosi pierwiastek kwadratowy z 16?" (poprawna odpowiedź: 3)
        report "--- Test 3: Pytanie #3 ---";
        test_answer(3, '3', true);   -- Poprawna odpowiedź (4)
        test_answer(3, '2', false);  -- Niepoprawna odpowiedź
        
        -- Test 4: Pytanie #10 - "Kto wynalazł żarówkę?" (poprawna odpowiedź: 1)
        report "--- Test 4: Pytanie #10 ---";
        test_answer(10, '1', true);  -- Poprawna odpowiedź (Edison)
        test_answer(10, '2', false); -- Niepoprawna odpowiedź
        
        -- Test 5: Testowanie nieprawidłowych znaków
        report "--- Test 5: Nieprawidłowe znaki ---";
        NUMBER <= "00000000"; -- Pytanie #1
        SET <= '1';
        wait for 10 ns;
        SET <= '0';
        wait for 10 ns;
        
        -- Test z nieprawidłowym znakiem 'A'
        ANSWER <= char_to_slv('A');
        CHECK <= '1';
        wait for 10 ns;
        CHECK <= '0';
        wait for 10 ns;
        
        assert CORRECT_OUT = '0' report "ERROR: Answer 'A' should be INCORRECT" severity error;
        assert COUNT_OUT = '1' report "ERROR: COUNT_OUT should still be '1' for invalid answer" severity error;
        report "✓ Nieprawidłowy znak 'A' poprawnie odrzucony";
        
        wait for 50 ns;
        
        -- Test 6: Test graniczny - pytanie #15
        report "--- Test 6: Pytanie #15 (ostatnie) ---";
        test_answer(15, '3', true);  -- "Kto namalował 'Mona Lisę'?" - Da Vinci
        
        -- Test 7: Test z dużą liczbą NUMBER (sprawdzenie modulo)
        report "--- Test 7: Test modulo dla NUMBER ---";
        NUMBER <= "11110000"; -- 240 mod 15 + 1 = 1 (pierwsze pytanie)
        SET <= '1';
        wait for 10 ns;
        SET <= '0';
        wait for 10 ns;
        
        ANSWER <= char_to_slv('2');
        CHECK <= '1';
        wait for 10 ns;
        CHECK <= '0';
        wait for 10 ns;
        
        assert CORRECT_OUT = '1' report "ERROR: Modulo calculation failed" severity error;
        report "✓ Test modulo zakończony pomyślnie";
        
        wait for 100 ns;
        
        report "=== Wszystkie testy zakończone pomyślnie! ===";
        wait;
    end process;

end Behavioral;
