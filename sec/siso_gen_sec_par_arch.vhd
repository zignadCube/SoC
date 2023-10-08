-------------------------------------------------------------------------------
-- File: siso_gen_sec_par_arch.vhd
-- Description: Second-order IIR filter implementation for siso_gen
--              (parallel implemetation)
-- Author: Sabih Gerez, University of Twente
-- Creation date: Thu Sep  2 23:37:27 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 29 10:56:30 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- this architecture needs arithmetic functions
library ieee;
use ieee.numeric_std.all;

architecture sec_par of siso_gen is
  -- type declarations
  type memory is array (0 to 4) of signed(word_length-1 downto 0);
  
  -- function declaration: multiply 2 signed numbers with two bits
  -- left of binary point and return a number with the same properties
  function mult (a, b: signed(word_length-1 downto 0)) return signed is
    variable temp: signed(2*word_length-1 downto 0);
  begin
    temp := a * b;
    -- throw away 2 MSBs and reduce to 'word_length'
    return temp(2*word_length-3 downto word_length-2);
  end mult;

  -- signal declarations
  -- counter used for loading coefficients
  signal coeff_counter: unsigned(2 downto 0);
  -- coefficient memory: 
  -- b0 @ address 0, b1 @ address 1, b2 @ address 2
  -- a1 @ address 3, a2 @ address 4
  signal coeff_memory: memory;
  -- delay elements 
  signal z1, z2 : signed(word_length-1 downto 0);
  -- multiplier results and filter output
  signal m1, m2, m3, m4, m5, y: signed(word_length-1 downto 0);
  -- adder results
  signal z1_next, z2_next, z2_temp: signed(word_length-1 downto 0);
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
    variable counter: integer range 0 to 4;
  begin
    if reset = '1'
    then
      for counter in 0 to 4 loop
        coeff_memory(counter) <= (others => '0');
      end loop;
      coeff_counter <= (others => '0');

      z1 <= (others => '0');
      z2 <= (others => '0');

      data_out <= (others => '0');
      ready <= '0';
    elsif rising_edge(clk)
    then
      -- count until 5 and then stop
      if coeff_counter < 5
      then
        coeff_counter <= coeff_counter + 1;
        -- note that coeff_coutner has not yet been incremented below!
        coeff_memory(to_integer(coeff_counter)) <= signed(data_in);
      end if;

      -- input stream becomes data after reading 5 coefficients and
      -- output becomes valid
      if coeff_counter = 5
      then
        z1 <= z1_next;
        z2 <= z2_next;
        data_out <= std_logic_vector(y);
        ready <= '1';
      end if;
    end if; -- reset = '1' / rising_edge(clk)
  end process seq;

  -- all combinational logic can be written as concurrent assignments
  -- (no process necessary); note that the arithmetic is also active
  -- while loading coefficients; however, the results are not stored.

  req <= '1'; -- the system is ready to receive data in all cycles after reset

  -- multiplications
  m1 <= mult(coeff_memory(0), signed(data_in));
  m2 <= mult(coeff_memory(1), signed(data_in));
  m4 <= mult(coeff_memory(2), signed(data_in));
  m3 <= mult(coeff_memory(3), y);
  m5 <= mult(coeff_memory(4), y);

  -- additions
  z1_next <= m4 + m5;
  z2_temp <= z1 + m2;
  z2_next <= z2_temp + m3;
  y <= z2 + m1;
end sec_par;
