-------------------------------------------------------------------------------
-- File         : tvc_fpga_audio_example_arch.vhd
-- Description  : example content for TVC of FPGA-audio system
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 2, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;

architecture example of tvc_fpga_audio is
  -- 50 MHz -> 20 ns period -> 10 ns half period
  constant half_clock_period: time := 10 ns;

  signal clk_i, rst_n_i: std_logic;
  signal clock_counter: unsigned(6 downto 0);
begin
  -- generate clock
  clock: process
    -- half_clock_period is now a generic
    -- constant half_clock_period: time := 100 ns;
  begin
    clk_i <= '1';
    wait for half_clock_period;
    clk_i <= '0';
    wait for half_clock_period;
  end process clock;

  stimuli: process (clk_i)
    variable first: boolean := true;
  begin
    if falling_edge(clk_i)
    then
      -- handle reset; reset signal is low during first clock cycle only
      if first 
      then
	first := false;
	rst_n_i <= '0';
        clock_counter <= (others => '0');
      else
        clock_counter <= clock_counter + 1;
	rst_n_i <= '1';
      end if;
    end if;
  end process stimuli;

  -- wire to I/O
  CLOCK_50 <= clk_i;
  KEY(0)   <= rst_n_i;

  -- in current setup the CODEC is used in master mode, so the clocks
  -- should come from the TVC
  AUD_BCLK    <= clock_counter(1);
  AUD_DACLRCK <= clock_counter(6);

  FPGA_I2C_SDAT <= 'Z';

  -- "drive" GPIO with tristate 
  GPIO <= (others => 'Z');
end example;
