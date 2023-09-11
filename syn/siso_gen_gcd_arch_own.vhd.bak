-------------------------------------------------------------------------------
-- File: siso_gen_gcd_arch.vhd
-- Description: siso_gen architecture for computing greatest common divider
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Jul 11 00:37:33 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Aug 25 21:23:33 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- this architecture needs arithmetic functions
library ieee;
use ieee.numeric_std.all;

architecture gcd of siso_gen is
  -- registers
  signal num1, num2, num3: unsigned(word_length-1 downto 0);
  signal odd, req_i: std_logic;
  -- wires
  signal num1_next, num2_next: unsigned(word_length-1 downto 0);
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
    variable t1, t2, sub_res: unsigned(word_length-1 downto 0);
    variable gt_flag: std_logic;
  begin
    if (num1 > num2)
    then
      t1 := num1;
      t2 := num2;
      gt_flag := '1';
      ready_next <= '0';
      req_i_next <= '0';
    elsif (num1 < num2)
    then
      t1 := num2;
      t2 := num1;
      gt_flag := '0';
      ready_next <= '0';
      req_i_next <= '0';
    else
      t1 := num2;
      t2 := num1;
      gt_flag := '0';
      ready_next <= '1';
      req_i_next <= '1';
    end if;

    sub_res := t1 - t2;
    num3 <= sub_res;
    if (gt_flag = '1')
    then
      num1_next <= sub_res;
      num2_next <= num2;
      num3 <= (others => '1');
    else
      num1_next <= num1;
      num2_next <= sub_res;
      num3 <= (others => '0');
    end if;
  end process next_val;

  -- output register can be any of num1 or num2
  data_out <= std_logic_vector(num1);

  -- req wires to req_i
  req <= req_i;
end gcd;
