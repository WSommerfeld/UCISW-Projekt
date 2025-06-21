----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:52 06/03/2025 
-- Design Name: 
-- Module Name:    QUIZ - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--if error check -use_new_parser yes

entity QUIZ is
    Port ( NUMBER : in  STD_LOGIC_VECTOR (7 downto 0);
           ANSWER : in  STD_LOGIC_VECTOR (7 downto 0);
           SET : in  STD_LOGIC;
           CHECK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           COUNT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           CORRECT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           CORRECT_OUT : out  STD_LOGIC;
           COUNT_OUT : out  STD_LOGIC;
           TEXT_OUTPUT : out  STD_LOGIC_VECTOR (815 downto 0));
end QUIZ;

architecture Behavioral of QUIZ is


  -- dane pyta?
    type question_record is record
        text    : string(1 to 100); -- ustalona d?ugo?? pytania
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
	signal selected_question_text : STD_LOGIC_VECTOR(815 downto 0) := (others => '0');
	signal current_question_index : integer range 1 to 15 := 1;
	signal correct_flag : STD_LOGIC := '0';
	signal count_flag : STD_LOGIC := '0';

begin   


 -- Proces ustawiania pytania po rising_edge na SET
    question_select_process: process(SET, RESET)
        variable question_index : integer range 1 to 15;
    begin
        if RESET = '1' then
            selected_question_text <= (others => '0');
            current_question_index <= 1;
        elsif rising_edge(SET) then
            -- Konwersja NUMBER na indeks pytania (1-15)
            question_index := (to_integer(unsigned(NUMBER)) mod 15) + 1; --czy NUMBER poza list¹?
            current_question_index <= question_index;
            
            -- Konwersja tekstu pytania na STD_LOGIC_VECTOR (816 bitów dla 100 znaków po 8 bitów)
            for i in 1 to 100 loop
                selected_question_text((815 - (i - 1) * 8) downto (815 - i * 8 + 1)) <= 
                    std_logic_vector(to_unsigned(character'pos(questions(question_index).text(i)), 8));
            end loop;
        end if;
    end process; 


	 -- Proces sprawdzania odpowiedzi po rising_edge na CHECK
    answer_check_process: process(CHECK, RESET)
        variable is_correct : boolean := false;
		   variable answer_value : integer;
			variable user_answer_num : integer range 0 to 4;
			
    begin
        if RESET = '1' then
				CORRECT_OUT<='0';
				COUNT_OUT <= '0';
        elsif rising_edge(CHECK) then
            -- Zawsze zwiêksz licznik pytañ (generuje impuls)
            COUNT_OUT <= '1';
            
            --konwersja z ascii na int
				answer_value := to_integer(unsigned(ANSWER));
				--ascii na odp
				case answer_value is
					when 49 => user_answer_num := 1;
					when 50 => user_answer_num := 2;
					when 51 => user_answer_num := 3;
					when 52 => user_answer_num := 4;
					when others => user_answer_num := 0; --error
					
				end case;
				
				
				if user_answer_num = questions(current_question_index).correct  then
					is_correct := true;
					CORRECT_OUT <= '1';
				else
					is_correct := false;
					CORRECT_OUT <= '0';
				end if;
				
					
				
		end if;
				
		end process;

TEXT_OUTPUT <= selected_question_text;

end Behavioral;

