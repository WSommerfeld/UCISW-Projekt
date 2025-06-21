----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:34 06/17/2025 
-- Design Name: 
-- Module Name:    loop - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity looper is
    Port ( text : in  STD_LOGIC_VECTOR (815 downto 0);
				clk : in std_logic;
				asdf : in std_logic;
           ready : in  STD_LOGIC;
           char_in : out  STD_LOGIC_VECTOR (7 downto 0);
           char_we : out  STD_LOGIC);
end looper;


architecture Behavioral of looper is
    signal index : integer range 0 to 94 := 0;  -- licznik znaków
    signal sending : std_logic := '0';  -- czy trwa wysy³anie
begin
process(clk)
begin
    if rising_edge(clk) then
        if ready = '1' and sending = '0' then
            -- start transmisji, reset licznika
            index <= 0;
            sending <= '1';
            char_we <= '1';
            char_in <= text(815 downto 808); -- pierwszy znak
        elsif sending = '1' then
            if index < 94 then
                index <= index + 1;
                char_in <= text(815 - index*8 downto 808 - index*8);
                char_we <= '1';
            else
                -- koniec transmisji
                char_we <= '0';
                sending <= '0';
            end if;
        else
            char_we <= '0';
        end if;
    end if;
end process;
end Behavioral;


--architecture Behavioral of looper is

--begin

--process(ready)
--variable char : std_logic_vector(7 downto 0):="00000000";
--begin
--if rising_edge(ready) then

--for i in 0 to 94 loop
--char_we<='0';
--char:=text(815-i*8 downto 816-(i+1)*8);
--char_in<=char;
--char_we<='1';

--end loop;

--end if;

--end process;



--end Behavioral;

