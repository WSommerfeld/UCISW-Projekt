library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity INPUT_SPLIT_tb is
end INPUT_SPLIT_tb;

architecture Behavioral of INPUT_SPLIT_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component INPUT_SPLIT
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        scancode   : in  std_logic_vector(7 downto 0);
        set_rng    : out std_logic:= '0';
        reset_out  : out std_logic:= '0';
        set_q      : out std_logic:= '0';
        answer     : out std_logic_vector(7 downto 0):= "00000000";
        check      : out std_logic:= '0';
        state_out  : out std_logic_vector(3 downto 0):="0000"
    );
    end component;

    -- Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal scancode : std_logic_vector(7 downto 0) := (others => '0');

    -- Outputs
    signal set_rng : std_logic;
    signal reset_out : std_logic;
    signal set_q : std_logic;
    signal answer : std_logic_vector(7 downto 0);
    signal check : std_logic;
    signal state_out : std_logic_vector(3 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: INPUT_SPLIT PORT MAP (
        clk => clk,
        reset => reset,
        scancode => scancode,
        set_rng => set_rng,
        reset_out => reset_out,
        set_q => set_q,
        answer => answer,
        check => check,
        state_out => state_out
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
        wait for clk_period*10;

        -- insert stimulus here 
        
        -- Test initial state (state 0)
        scancode <= x"0d"; -- Enter key to start game
        wait for clk_period*2;
        scancode <= x"00"; -- Clear scancode
        wait for clk_period*2;
        
        -- Test answer input (state 1)
        scancode <= x"31"; -- Key '1' 
        wait for clk_period*2;
        scancode <= x"00"; -- Clear scancode
        wait for clk_period*2;
        
        -- Test answer confirmation (state 2)
        scancode <= x"32"; -- Key '2'
        wait for clk_period*2;
        scancode <= x"0d"; -- Enter to confirm answer
        wait for clk_period*2;
        scancode <= x"00"; -- Clear scancode
        wait for clk_period*2;
        
        -- Test next question (state 3)
        scancode <= x"0d"; -- Enter for next question
        wait for clk_period*2;
        scancode <= x"00"; -- Clear scancode
        wait for clk_period*2;
        
        -- Test reset with ESC
        scancode <= x"1b"; -- ESC key
        wait for clk_period*2;
        scancode <= x"00"; -- Clear scancode
        wait for clk_period*10;

        wait;
    end process;

end Behavioral;
