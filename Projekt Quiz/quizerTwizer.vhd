--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:16:46 04/08/2025
-- Design Name:   
-- Module Name:   /home/vincent/Marcininator/quizerTwizer.vhd
-- Project Name:  Marcininator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MainQuiz
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY quizerTwizer IS
END quizerTwizer;
 
ARCHITECTURE behavior OF quizerTwizer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MainQuiz
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Set : IN  std_logic;
         Answer : IN  std_logic_vector(15 downto 0);
         Number : OUT  std_logic_vector(7 downto 0);
         CountIN : IN  std_logic_vector(7 downto 0);
         CorrectIN : IN  std_logic_vector(7 downto 0);
         CountOUT : OUT  std_logic;
         CorrectOUT : OUT  std_logic;
         TextOUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Set : std_logic := '0';
   signal Answer : std_logic_vector(15 downto 0) := (others => '0');
   signal CountIN : std_logic_vector(7 downto 0) := (others => '0');
   signal CorrectIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Number : std_logic_vector(7 downto 0);
   signal CountOUT : std_logic;
   signal CorrectOUT : std_logic;
   signal TextOUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MainQuiz PORT MAP (
          clk => clk,
          reset => reset,
          Set => Set,
          Answer => Answer,
          Number => Number,
          CountIN => CountIN,
          CorrectIN => CorrectIN,
          CountOUT => CountOUT,
          CorrectOUT => CorrectOUT,
          TextOUT => TextOUT
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      reset <= '1';
      wait for clk_period * 2;
      reset <= '0';

      wait for clk_period * 10;
      Answer <= x"0031"; -- "1"
      wait for clk_period * 5;
      Set <= '1';
      wait for clk_period;
      Set <= '0';

      wait for clk_period * 10;
      Answer <= x"0032"; -- "2"
      wait for clk_period * 5;
      Set <= '1';
      wait for clk_period;
      Set <= '0';

      wait for clk_period * 10;

      wait;
   end process;

END;
