library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ps2_keyboard is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        ps2_clk    : in  std_logic;
        ps2_data   : in  std_logic;
        key_z      : out std_logic;
        key_x      : out std_logic;
        key_c      : out std_logic
    );
end ps2_keyboard;

architecture Behavioral of ps2_keyboard1 is
    signal buffer1     : std_logic_vector(10 downto 0) := (others => '0');
    signal bit_count  : integer range 0 to 10 := 0;
    signal last_clk   : std_logic := '1';
    signal received   : std_logic := '0';
    signal scancode   : std_logic_vector(7 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                bit_count <= 0;
                received <= '0';
            elsif last_clk = '1' and ps2_clk = '0' then  -- wykrycie zbocza opadającego
                buffer1(bit_count) <= ps2_data;
                if bit_count = 10 then
                    scancode <= buffer1(8 downto 1); -- dane między start i parzystością
                    received <= '1';
                    bit_count <= 0;
                else
                    bit_count <= bit_count + 1;
                    received <= '0';
                end if;
            end if;
            last_clk <= ps2_clk;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if received = '1' then
                -- Scancode'y przycisków:
                -- Z = 1A
                -- X = 22
                -- C = 21
                case scancode is
                    when x"1A" => key_z <= '1';
                    when x"22" => key_x <= '1';
                    when x"21" => key_c <= '1';
                    when others =>
                        key_z <= '0';
                        key_x <= '0';
                        key_c <= '0';
                end case;
            else
                key_z <= '0';
                key_x <= '0';
                key_c <= '0';
            end if;
        end if;
    end process;

end Behavioral;

