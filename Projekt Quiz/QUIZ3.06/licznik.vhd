library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Changed to NUMERIC_STD for proper arithmetic

entity licznik is
    Port ( correct : in  STD_LOGIC;
           count : in  STD_LOGIC;

           outcorrect : out  STD_LOGIC_VECTOR (7 downto 0);
           outcount : out  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC);
end licznik;

architecture Behavioral of licznik is
    signal correct_cnt : unsigned(7 downto 0) := (others => '0');
    signal count_cnt : unsigned(7 downto 0) := (others => '0');
begin
    process(count, reset)
    begin
        if reset = '1' then
            -- Asynchroniczny reset
            correct_cnt <= (others => '0');
            count_cnt <= (others => '0');
        elsif rising_edge(count) then
            -- Licznik poprawnych odpowiedzi
            if correct = '1' then
                correct_cnt <= correct_cnt + 1;
            end if;
            
            -- Licznik wszystkich odpowiedzi

                count_cnt <= count_cnt + 1;

        end if;
    end process;

    -- Przypisanie wyj (konwersja na std_logic_vector)
    outcorrect <= std_logic_vector(correct_cnt);
    outcount <= std_logic_vector(count_cnt);
end Behavioral;
