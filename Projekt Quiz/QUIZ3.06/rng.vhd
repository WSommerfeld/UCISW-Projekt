library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GeneratorLiczbLosowych is
    Port (
        set    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        rand   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end GeneratorLiczbLosowych;

architecture Behavioral of GeneratorLiczbLosowych is
    signal lfsr_reg : STD_LOGIC_VECTOR(7 downto 0) := "01010101";  -- Rejestr LFSR
    signal questions : STD_LOGIC_VECTOR(14 downto 0) := (others => '0');

    -- Sygnal indeksu aktualnie wylosowanego pytania (0-14)
    signal current_index : integer range 0 to 14 := 0;
begin
    process(set, reset)
        variable index : integer range 0 to 14;
        variable temp_lfsr : STD_LOGIC_VECTOR(7 downto 0);
        variable attempts : integer := 0;
    begin
        if reset = '1' then
            lfsr_reg <= "01010101";
            questions <= (others => '0');
        elsif rising_edge(set) then
            temp_lfsr := lfsr_reg;
            attempts := 0;

            -- Maksymalnie 16 prb, by unikn nieskoczonej ptli
            while attempts < 16 loop
                -- Nowy krok LFSR
                temp_lfsr := temp_lfsr(6 downto 0) & (temp_lfsr(7) xor temp_lfsr(5) xor temp_lfsr(4) xor temp_lfsr(3));
                index := to_integer(unsigned(temp_lfsr)) mod 15;

                -- Sprawd, czy pytanie nie byo uyte
                if questions(index) = '0' then
                    lfsr_reg <= temp_lfsr;
                    questions(index) <= '1';
                    current_index <= index;
                    exit;
                end if;

                attempts := attempts + 1;
            end loop;
        end if;
    end process;

    rand <= std_logic_vector(to_unsigned(current_index, 8));  -- indeks pytania jako wyjcie
end Behavioral;