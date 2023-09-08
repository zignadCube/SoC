-------------------------------------------------------------------------------
-- File: siso8_add2block_arch.vhd
-- Description: Architecture for siso8, adding last two input
-- Author: Zen and Ze
-- Creation date: September 4, 2023

library ieee;
use ieee.numeric_std.all;

architecture add2block of siso8 is
  -- registers
  signal num1, num2: unsigned(7 downto 0);
  signal odd: std_logic;
  -- wires
  signal num1_next, num2_next: unsigned(7 downto 0);
  signal sum: unsigned(7 downto 0); -- sum is simply the output from the adder and does not need to be stored in a register
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
    if (reset = '1')
    then
      num1 <= (others => '0');
      num2 <= (others => '0');
      odd <= '0';
    elsif rising_edge(clk)
    then
      if (odd = '0')
      then
        odd <= '1';
      else
        odd <= '0';
      end if;
      num1 <= unsigned(data_in);
      num2 <= num2_next;
    end if;
  end process seq; 

  -- combinational process
  next_val: process(num1, num2)
  begin
    sum <= num1 + num2;
    num2_next <= num1;
  end process next_val;

  data_out <= std_logic_vector(sum);
  req <= '1'; -- The system is always ready to receive data
  ready <= not odd;
end add2block;
