----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:08 06/10/2025 
-- Design Name: 
-- Module Name:    keyboard_tester - Behavioral 
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

entity keyboard_tester is
    Port ( state : in std_logic_vector(3 downto 0);
           s0 : out  STD_LOGIC;
           s1 : out  STD_LOGIC;
           s2 : out  STD_LOGIC;
           s3 : out  STD_LOGIC);
end keyboard_tester;

architecture Behavioral of keyboard_tester is

begin

process(state)
begin
case state is
when "1000" =>
s0<='1';
s1<='0';
s2<='0';
s3<='0';

when "0100" =>
s0<='0';
s1<='1';
s2<='0';
s3<='0';

when "0010" =>
s0<='0';
s1<='0';
s2<='1';
s3<='0';


when "0001" =>
s0<='0';
s1<='0';
s2<='0';
s3<='1';

when others=>

s0<='0';
s1<='0';
s2<='0';
s3<='0';


end case;

end process;


end Behavioral;

