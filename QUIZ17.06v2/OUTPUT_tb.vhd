library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OUTPUT_tb is
end OUTPUT_tb;

architecture Behavioral of OUTPUT_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component OUTPUT
    Port (
        STATE_IN : in  STD_LOGIC_VECTOR (3 downto 0);
        CLK : in STD_LOGIC;
        CORRECT_IN : in STD_LOGIC;
        CORRECT_SUM : in STD_LOGIC_VECTOR(7 DOWNTO 0);
        TEXT_OUTPUT : in  STD_LOGIC_VECTOR (815 downto 0);
        TEXT_FOR_DISPLAY : out STD_LOGIC_VECTOR (815 downto 0);
        READY : out STD_LOGIC
    );
    end component;

    -- Test signals
    signal STATE_IN : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal CLK : STD_LOGIC := '0';
    signal CORRECT_IN : STD_LOGIC := '0';
    signal CORRECT_SUM : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal TEXT_OUTPUT : STD_LOGIC_VECTOR (815 downto 0) := (others => '0');
    
    -- Output signals
    signal TEXT_FOR_DISPLAY : STD_LOGIC_VECTOR (815 downto 0);
    signal READY : STD_LOGIC;

    -- Clock period
    constant clk_period : time := 10 ns;
    
    -- Test text for display
    constant TEST_TEXT : STD_LOGIC_VECTOR(815 downto 0) := 
        "010010100110111101101110011001010010000001110000011100100111100101110100011000010110111001101001011001010010000001110100011001010111001101110100001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000000000000000000000000000";

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: OUTPUT PORT MAP (
        STATE_IN => STATE_IN,
        CLK => CLK,
        CORRECT_IN => CORRECT_IN,
        CORRECT_SUM => CORRECT_SUM,
        TEXT_OUTPUT => TEXT_OUTPUT,
        TEXT_FOR_DISPLAY => TEXT_FOR_DISPLAY,
        READY => READY
    );

    -- Clock process
    clk_process: process
    begin
        CLK <= '0';
        wait for clk_period/2;
        CLK <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial wait
        wait for 20 ns;
        
        -- Test 1: Initial state (1000) - Welcome message
        STATE_IN <= "1000";
        wait for clk_period * 2;
        assert READY = '0' report "READY should be 0 in initial state" severity error;
        
        -- Test 2: Question state (0100) - Display question
        STATE_IN <= "0100";
        TEXT_OUTPUT <= TEST_TEXT;
        wait for clk_period * 2;
        assert READY = '1' report "READY should be 1 in question state" severity error;
        assert TEXT_FOR_DISPLAY = TEST_TEXT report "TEXT_FOR_DISPLAY should match TEXT_OUTPUT" severity error;
        
        -- Test 3: Answer state (0010) - Show selected answer
        STATE_IN <= "0010";
        wait for clk_period * 2;
        assert READY = '1' report "READY should be 1 in answer state" severity error;
        
        -- Test 4: Result state (0001) with correct answer
        STATE_IN <= "0001";
        CORRECT_IN <= '1';
        wait for clk_period * 2;
        assert READY = '1' report "READY should be 1 in result state" severity error;
        
        -- Test 5: Result state (0001) with incorrect answer
        STATE_IN <= "0001";
        CORRECT_IN <= '0';
        wait for clk_period * 2;
        assert READY = '1' report "READY should be 1 in result state" severity error;
        
        -- Test 6: Run multiple clock cycles in question state to test counter
        STATE_IN <= "0100";
        TEXT_OUTPUT <= TEST_TEXT;
        for i in 0 to 15 loop
            wait for clk_period;
        end loop;
        
        -- Test 7: Test other states
        STATE_IN <= "1111"; -- Invalid state
        wait for clk_period * 2;
        assert READY = '0' report "READY should be 0 in invalid state" severity error;
        
        wait for 100 ns;
        
        report "OUTPUT testbench completed successfully";
        wait;
    end process;

end Behavioral;
