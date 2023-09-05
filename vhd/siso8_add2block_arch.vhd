-------------------------------------------------------------------------------
-- File: siso8_add2block_arch.vhd
-- Description: Architecture for siso8, ing last two input
-- Author: Zen and Ze
-- Creation date: September 4, 2023

library ieee;
use ieee.numeric_std.all;

architecture add2block of siso8 is
  -- registers
  signal num1, num2: unsigned(7 downto 0);
  signal odd, req_i: std_logic;
  -- wires
  signal num1_next, num2_next, sum: unsigned(7 downto 0);
  signal odd_next, req_i_next, ready_next: std_logic;
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
    req_i <= '1';
    if (reset = '1')
    then
      num1 <= (others => '0');
      num2 <= (others => '0');
      odd <= '0';
      req_i <= '1'; -- the system is ready to receive data after reset
      ready <= '0';
    elsif rising_edge(clk)
    then
      if ((req_i = '1') and (odd = '0'))
      then
        odd <= '1';
      elsif ((req_i = '1') and (odd = '1'))
      then
        odd <= '0';
      end if;
      num1 <= unsigned(data_in);
      num2 <= num2_next;
      req_i <= req_i_next;
      ready <= ready_next;
    end if; -- (reset = '1')
  end process seq; 

  -- combinational process
  next_val: process(num1, num2)
  begin
      sum <= num1 + num2;
      num2_next <= num1;
      req_i_next <= '1';
  if (odd = '1')
  then
      ready_next <= '1';
  else
  then
      ready_next <= '0';
  end if;
  end process next_val;

  -- output register can be any of num1 or num2
  data_out <= std_logic_vector(sum);

  -- req wires to req_i
  req <= req_i;
end add2block;
