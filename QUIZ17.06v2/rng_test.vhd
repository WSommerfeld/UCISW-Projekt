library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rng_test is
end rng_test;

architecture test of rng_test is
    signal set    : STD_LOGIC := '0';
    signal reset  : STD_LOGIC := '0';
    signal rand   : STD_LOGIC_VECTOR(7 downto 0);

    component GeneratorLiczbLosowych
        Port (
            set    : in  STD_LOGIC;
            reset  : in  STD_LOGIC;
            rand   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin
    UUT: GeneratorLiczbLosowych
        port map (
            set   => set,
            reset => reset,
            rand  => rand
        );

    stim_proc: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;

        for i in 1 to 18 loop
            set <= '1';
            wait for 10 ns;
            set <= '0';
            wait for 20 ns;
        end loop;

        wait;
    end process;

end test;
