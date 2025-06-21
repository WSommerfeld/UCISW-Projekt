library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ps2_keyboard is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        ps2_clk    : in  std_logic;
        ps2_data   : in  std_logic;
        set_rng      : out std_logic;
        reset_out     : out std_logic;
        set_q      : out std_logic;
		  answer : out std_logic_vector(7 downto 0);
		  check : out std_logic;
		  state_out : out std_logic_vector(3 downto 0)
    );
end ps2_keyboard;

architecture Behavioral of ps2_keyboard is
    signal buffer1     : std_logic_vector(10 downto 0) := (others => '0');
    signal bit_count  : integer range 0 to 10 := 0;
    signal last_clk   : std_logic := '1';
    signal received   : std_logic := '0';
    signal scancode   : std_logic_vector(7 downto 0) := (others => '0');
	 
	 signal state : integer range 0 to 5 :=0;
	 
	

begin

    process(clk)

    begin
        if rising_edge(clk) then
            if reset = '1' then
                bit_count <= 0;
                received <= '0';
            elsif last_clk = '1' and ps2_clk = '0' then  -- wykrycie zbocza opadajcego
                buffer1(bit_count) <= ps2_data;
                if bit_count = 10 then
                    scancode <= buffer1(8 downto 1); -- dane midzy start i parzystoci
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
	 	 variable answer_ASCII:integer:=0;
    begin
        if rising_edge(clk) then
            if received = '1' then
                -- Scancode'y 
                -- esc = 1b
                -- enter = 0d
                -- 1 = 31
					 -- 2 = 32
					 -- 3 = 33
					 -- 4 = 34
					 
                case state is
							--stan pocztkowy po uruchomieniu
                    when 0 => 
						  state_out<="1000";
						  
						  --escape - reset
						  if scancode = x"1b" then
						  reset_out<='1';
						  
						  
						  --enter - rozpoczecie gry
						  elsif scancode = x"0d" then
						  set_rng<='1';
						  
						  set_q <= '1';
						  
						  state<=1;			  
						  end if;
						  
						  --stan po zadaniu pytania
						  when 1 =>
						  
						  state_out<="0100";
						  
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
						  
						  --esc
						  elsif scancode = x"1b" then
						  reset_out<='1';
						  
						  end if;
						  state <= 2;
						  
						  
						  --stan po pierwszym podaniu odpowiedzi
						  when 2 =>
						  state_out<="0010";
						  
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
						  answer <= std_logic_vector(to_unsigned(answer_ASCII, 8));
						  check<='1';
						  state <=3;
					
						  
						  --esc
						  elsif scancode = x"1b" then
						  reset_out<='1';
						  
						  end if;
						  
						  -- checked
						  when 3 =>
						  state_out<="0001";
						  
						  if scancode = x"0d" then
						  state <=1;
						  
						  
						  --esc
						  elsif scancode = x"1b" then
						  reset_out<='1';

							end if;
						  

                    when others =>
							set_rng <= '0';
							reset_out <= '0';
							set_q <= '0';
							answer <= "00000000";
                end case;
            else
					set_rng <= '0';
					reset_out <= '0';
					set_q <= '0';
					answer <= "00000000";

            end if;
        end if;
		  
		  
		  
    end process;


end Behavioral;

