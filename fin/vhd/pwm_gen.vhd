library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pwm_generator is
	generic(input_bits : integer := 4);
	port(
		clk: in std_logic;
		reset_i : in std_logic;
		duty_cycle_input: in std_logic_vector(input_bits-1 downto 0);
		pwm_output: out std_logic
		);
end pwm_generator;


architecture behavioural of pwm_generator is
	signal counter: unsigned(input_bits-1 downto 0);
	signal counter_overflow: std_logic;
	
	signal duty_cycle_register: unsigned(input_bits-1 downto 0);
	constant counter_max: unsigned(input_bits-1 downto 0) := (others => '1');
	
	signal output: std_logic;
begin
	compare_and_output_proc: process(clk, reset_i)
	begin
		if reset_i = '0'
		then
			output <= '0';
		elsif rising_edge(clk)
		then
			if counter > duty_cycle_register then
				output <= '1';
			else
				output <= '0';  -- assign logic low when condition is false
			end if;
		end if;
	end process compare_and_output_proc;
	
	
	count_proc: process(clk, reset_i)
	begin
	if reset_i = '0'
		then
			counter <= (others => '0');
			counter_overflow <= '1';
		elsif rising_edge(clk)
		then
			if counter = counter_max
			then
				counter <= (others => '0');
				counter_overflow <= '1';
			else
				counter <= counter + 1;
			end if;
		end if;
	end process count_proc;
	
	duty_cycle_proc: process(clk, reset_i)
	begin
	if reset_i = '0'
		then
			duty_cycle_register <= (others => '0');
		elsif rising_edge(clk)
		then
			if counter_overflow = '1'
			then
				duty_cycle_register <= unsigned(duty_cycle_input);
			end if;
		end if;
	end process duty_cycle_proc;
	
	pwm_output <= output;
end behavioural;
