-------------------------------------------------------------------------------
-- File: siso8_gcd_arch.vhd
-- Description: Architecture for siso8, computing greatest common divider
-- Author: Sabih Gerez, University of Twente
-- Creation date: August 21, 2022 (new version management)
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Aug 21 23:57:46 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- this architecture needs arithmetic functions
library ieee;
use ieee.numeric_std.all;

architecture gcd of siso8 is
  -- registers
  signal num1, num2: unsigned(7 downto 0);
  signal odd, req_i: std_logic;
  -- wires
  signal num1_next, num2_next: unsigned(7 downto 0);
  signal odd_next, req_i_next, ready_next: std_logic;
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
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
        num1 <= unsigned(data_in);
        odd <= '1';
        ready <= '0';
      elsif ((req_i = '1') and (odd = '1'))
      then
        num2 <= unsigned(data_in);
        odd <= '0';
        req_i <= '0';
        ready <= '0';
      else
        num1 <= num1_next;
        num2 <= num2_next;
        req_i <= req_i_next;
        ready <= ready_next;
      end if; -- ((req_i = '1') and (odd = '0'))
    end if; -- (reset = '1')
  end process seq; 

  -- combinational process
  next_val: process(num1, num2)
  begin
    if (num1 > num2)
    then
      num1_next <= num1 - num2;
      num2_next <= num2;
      ready_next <= '0';
      req_i_next <= '0';
    elsif  (num1 < num2)
    then
      num1_next <= num1;
      num2_next <= num2 - num1;
      ready_next <= '0';
      req_i_next <= '0';
    else
      num1_next <= num1;
      num2_next <= num2;
      ready_next <= '1';
      req_i_next <= '1';
    end if;
  end process next_val;

  -- output register can be any of num1 or num2
  data_out <= std_logic_vector(num1);

  -- req wires to req_i
  req <= req_i;
end gcd;
