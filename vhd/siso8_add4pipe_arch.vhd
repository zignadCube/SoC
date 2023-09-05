-------------------------------------------------------------------------------
-- File: siso8_add2block_arch.vhd
-- Description: Architecture for siso8, ing last two input
-- Author: Zen and Ze
-- Creation date: September 4, 2023

library ieee;
use ieee.numeric_std.all;

architecture add4pipe of siso8 is
  -- registers
  signal num1, num2, num3, num4: unsigned(7 downto 0);
  signal odd, req_i: std_logic;
  -- wires
  signal num1_next, num2_next, num3_next, num4_next, sum: unsigned(7 downto 0);
  signal odd_next, req_i_next, ready_next: std_logic;
  signal time_counter: integer;
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
    req_i <= '1';
    if (reset = '1')
    then
      num1 <= (others => '0');
      num2 <= (others => '0');
      num3 <= (others => '0');
      num4 <= (others => '0');
      odd <= '0';
      req_i <= '1'; -- the system is ready to receive data after reset
      ready <= '0';
      time_counter <= 0; 
    elsif rising_edge(clk)
    then
      if (time_counter < 3)
      then
        time_counter <= time_counter + 1;
      else
        ready <= '1';
      end if;
      num1 <= unsigned(data_in);
      num2 <= num2_next;
      num3 <= num3_next;
      num4 <= num4_next;

      req_i <= req_i_next;
      --ready <= ready_next;
    end if; -- (reset = '1')
  end process seq; 

  -- combinational process
  next_val: process(num1, num2)
  begin
      sum <= num1 + num2 + num3 + num4;
      num2_next <= num1;

num3_next <= num2;
num4_next <= num3;
      req_i_next <= '1';

  end process next_val;

  -- output register can be any of num1 or num2
  data_out <= std_logic_vector(sum);

  -- req wires to req_i
  req <= req_i;
end add4pipe;
