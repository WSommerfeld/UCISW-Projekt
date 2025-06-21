library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity INPUT_SPLIT is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
		  scancode   : in std_logic_vector(7 downto 0);
		  
        set_rng      : out std_logic;
        reset_out     : out std_logic;
        set_q      : out std_logic;
		  answer : out std_logic_vector(7 downto 0);
		  check : out std_logic;
		  state_out : out std_logic_vector(3 downto 0)
    );
end INPUT_SPLIT;

architecture Behavioral of INPUT_SPLIT is


	 
	 signal state : integer range 0 to 5 :=0;
	 signal temp_state : std_logic_vector(3 downto 0):="0000";
	 signal temp_reset: std_logic:='0';
	 signal temp_rng : std_logic:='0';
	 signal temp_q : std_logic:='0';
	 signal temp_check : std_logic:='0';
	 signal temp_answer : std_logic_vector(7 downto 0):="00000000";
	 
	

begin

    process(clk,  reset)
	 	 variable answer_ASCII:integer:=0;
		 
    begin
	 
			if reset = '1' then
        temp_state <= "0000";
        temp_reset <= '1';
        temp_rng <= '0';
        temp_q <= '0';
        temp_check <= '0';
        temp_answer <= (others => '0');
        state <= 0;
			
        elsif rising_edge(clk) then
        temp_reset <= '0';
        temp_rng <= '0';
        temp_q <= '0';
        temp_check <= '0';
        temp_state <= "0000";
			

					 
                case state is
							--stan pocztkowy po uruchomieniu
                    when 0 => 
						  temp_state<="1000";
						  
						  --escape - reset
						  if scancode = x"1b" then
						  temp_reset<='1';
						  
						  
						  --enter - rozpoczecie gry
						  elsif scancode = x"0d" then
						  temp_rng<='1';
						  
						  temp_q <= '1';
						  
						  state<=1;			  
						  end if;
						  
						  --stan po zadaniu pytania
						  when 1 =>
						  
						  temp_state<="0100";
						  
						  --1
						  if scancode = x"31" then
						  answer_ASCII:=49;
						  state <= 2;
						  
						  --2
						  elsif scancode = x"32" then
						  answer_ASCII:=50;
						  state <= 2;
						  
						  --3
						  elsif scancode = x"33" then
						  answer_ASCII:=51;
						  state <= 2;
						  
						  --4
						  elsif scancode = x"34" then
						  answer_ASCII:=52;
						  state <= 2;
						  
						  --esc
						  elsif scancode = x"1b" then
						  temp_reset<='1';
						  state <= 0;
						  
						  end if;
						  
						  
						  
						  --stan po pierwszym podaniu odpowiedzi
						  when 2 =>
						  temp_state<="0010";
						  
						  --1
						  if scancode = x"31" then
						  answer_ASCII:=49;
						  
						  --2
						  elsif scancode = x"32" then
						  answer_ASCII:=50;
						  
						  --3
						  elsif scancode = x"33" then
						  answer_ASCII:=51;
						  
						  --4
						  elsif scancode = x"34" then
						  answer_ASCII:=52;
						  
						  --enter
						  elsif scancode = x"0d" then
						  temp_answer <= std_logic_vector(to_unsigned(answer_ASCII, 8));
						  temp_check<='1';
						  state <=3;
					
						  
						  --esc
						  elsif scancode = x"1b" then
						  temp_reset<='1';
						  state<=0;
						  
						  end if;
						  
						  -- checked
						  when 3 =>
						  temp_state<="0001";
						  
						  if scancode = x"0d" then
						  state <=1;
						  temp_q<='1';
						  
						  
						  --esc
						  elsif scancode = x"1b" then
						  temp_reset<='1';
						  state<=0;

							end if;
						  

                    when others =>
							temp_state<="0000";
                end case;
           
            end if;

		  
		  
	
    end process;
			state_out<=temp_state; 
			reset_out<=temp_reset;
			set_rng<=temp_rng;
			set_q<=temp_q;
			check<=temp_check;
			answer<=temp_answer;

end Behavioral;

