----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:16 06/10/2025 
-- Design Name: 
-- Module Name:    toseven - Behavioral 
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

entity toseven is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           out1 : out  STD_LOGIC_VECTOR (7 downto 0));
end toseven;

architecture Behavioral of toseven is
begin

process(in1)
begin
out1<="00000000";
out1(0)<=in1(0);
out1(1)<=in1(1);
out1(2)<=in1(2);
out1(3)<=in1(3);


end process;




end Behavioral;

