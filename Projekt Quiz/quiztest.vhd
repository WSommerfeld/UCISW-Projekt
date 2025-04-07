----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:48 04/07/2025 
-- Design Name: 
-- Module Name:    quiztest
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Testbench for GeneratorLiczbLosowych
-- 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity quiztest is
end quiztest;

architecture behavior of quiztest is

    -- Component declaration of the GeneratorLiczbLosowych
    component GeneratorLiczbLosowych is
        Port (
            set    : in  STD_LOGIC;
            reset  : in  STD_LOGIC;
            rand   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    -- Signals to connect to the DUT (Device Under Test)
    signal set    : STD_LOGIC := '0';
    signal reset  : STD_LOGIC := '0';
    signal rand   : STD_LOGIC_VECTOR(7 downto 0);

begin

    -- Instantiate the GeneratorLiczbLosowych component
    uut: GeneratorLiczbLosowych
        Port map (
            set    => set,
            reset  => reset,
            rand   => rand
        );

    -- Test procedure
    stim_proc: process
    begin
        -- Test 1: Reset the module and check the output
        reset <= '1';
        set <= '0';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;
        
        -- Test 2: Set the module and check the output
        set <= '1';
        wait for 10 ns;
        set <= '0';
        wait for 10 ns;

        -- Test 3: Apply multiple set signals to check for randomness
        set <= '1';
        wait for 10 ns;
        set <= '0';
        wait for 10 ns;
        set <= '1';
        wait for 10 ns;
        set <= '0';
        wait for 10 ns;
        
        -- Test 4: Reset again and check the output
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end behavior;
