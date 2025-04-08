----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:40 04/08/2025 
-- Design Name: 
-- Module Name:    MainQuiz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MainQuiz is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        Set: in  STD_LOGIC; 
        Answer      : in  STD_LOGIC_VECTOR (15 downto 0);
        Number      : out STD_LOGIC_VECTOR (7 downto 0);
        CountIN     : in  STD_LOGIC_VECTOR (7 downto 0);
        CorrectIN   : in  STD_LOGIC_VECTOR (7 downto 0);
        CountOUT    : out STD_LOGIC;
        CorrectOUT  : out STD_LOGIC;
        TextOUT     : out STD_LOGIC_VECTOR (7 downto 0)
    );
end MainQuiz;

architecture Behavioral of MainQuiz is
    type question_record is record
        text    : string(1 to 100); -- Fixed length 100
        correct : integer range 1 to 4;
    end record;

    type question_array is array (1 to 15) of question_record;
    constant questions : question_array := (
        ("1. Co jest stolic Polski? 1) Krakow 2) Warszawa 3) Gdansk 4) Poznan                                 ", 2),
        ("2. Ktora planeta jest najblizsza Sloncu? 1) Wenus 2) Ziemia 3) Mars 4) Merkury                      ", 4),
        ("3. Ile wynosi pierwiastek kwadratowy z 16? 1) 2 2) 3 3) 4 4) 5                                      ", 3),
        ("4. Kto napisal 'Pana Tadeusza'? 1) Mickiewicz 2) Sienkiewicz 3) Prus 4) Norwid                      ", 1),
        ("5. Jakie jest najwieksze zwierze na swiecie? 1) Slon 2) Wieloryb 3) Rekin 4) Pletwal blekitny       ", 4),
        ("6. Ile kontynentow jest na swiecie? 1) 5 2) 6 3) 7 4) 8                                             ", 3),
        ("7. Ktory pierwiastek chemiczny ma symbol O? 1) Wodor 2) Tlen 3) Azot 4) Hel                         ", 2),
        ("8. W ktorym roku wybuchla II wojna swiatowa? 1) 1938 2) 1939 3) 1940 4) 1941                        ", 2),
        ("9. Jak nazywa sie najwyzszy szczyt swiata? 1) K2 2) Mont Blanc 3) Mount Everest 4) Kilimandzaro     ", 3),
        ("10. Kto wynalazl zarowke? 1) Edison 2) Tesla 3) Bell 4) Newton                                      ", 1),
        ("11. Ile minut ma godzina? 1) 50 2) 60 3) 70 4) 80                                                   ", 2),
        ("12. Jak nazywa sie najwiekszy ocean na Ziemi? 1) Atlantycki 2) Indyjski 3) Spokojny 4) Arktyczny    ", 3),
        ("13. Ktore panstwo ma ksztalt buta? 1) Hiszpania 2) Wlochy 3) Grecja 4) Portugalia                   ", 2),
        ("14. Ile jest planet w Ukladzie Slonecznym? 1) 7 2) 8 3) 9 4) 10                                     ", 2),
        ("15. Kto namalowal 'Mona Lise'? 1) Van Gogh 2) Picasso 3) Da Vinci 4) Monet                          ", 3)
    );

    signal current_question : integer range 1 to 15 := 1;
    signal char_index       : integer range 0 to 100 := 0;
    signal display_text     : string(1 to 100);
    signal answer_byte      : STD_LOGIC_VECTOR (7 downto 0); -- Intermediate signal
begin

    answer_byte <= Answer(7 downto 0); -- Slice once

    process(clk, reset)
    begin
        if reset = '1' then
            current_question <= 1;
            char_index <= 0;
            CountOUT <= '0';
            CorrectOUT <= '0';
        elsif rising_edge(clk) then
            CountOUT <= '0';
            CorrectOUT <= '0';

            -- Transition to next question
            if Set = '1' and current_question < 15 then
                current_question <= current_question + 1;
                char_index <= 0;
                CountOUT <= '1';
            end if;

            -- Check answer
            if answer_byte = x"31" or answer_byte = x"32" or 
               answer_byte = x"33" or answer_byte = x"34" then
                if (answer_byte = x"31" and questions(current_question).correct = 1) or
                   (answer_byte = x"32" and questions(current_question).correct = 2) or
                   (answer_byte = x"33" and questions(current_question).correct = 3) or
                   (answer_byte = x"34" and questions(current_question).correct = 4) then
                    CorrectOUT <= '1';
                end if;
            end if;

            -- Send text character by character
            if char_index < 100 then
                TextOUT <= std_logic_vector(to_unsigned(character'pos(display_text(char_index + 1)), 8));
                char_index <= char_index + 1;
            end if;
        end if;
    end process;

    display_text <= questions(current_question).text;
    Number <= std_logic_vector(to_unsigned(current_question, 8));

end Behavioral;