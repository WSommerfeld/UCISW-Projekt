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
    
begin
    process(set, reset)
        variable index : integer range 0 to 15;
    begin
        if reset = '1' then
            lfsr_reg <= "01010101";  -- Warto pocztkowa
            questions <= (others => '0');
        elsif rising_edge(set) then
            -- Implementacja LFSR (Linear Feedback Shift Register)
            lfsr_reg <= lfsr_reg(6 downto 0) & (lfsr_reg(7) xor lfsr_reg(5) xor lfsr_reg(4) xor lfsr_reg(3));
            
            -- Konwersja na indeks (0-14)
            index := to_integer(unsigned(lfsr_reg)) mod 15;
            questions(index) <= '1';
        end if;
    end process;
    
    rand <= lfsr_reg;
end Behavioral;