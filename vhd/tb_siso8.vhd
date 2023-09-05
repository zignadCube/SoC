-------------------------------------------------------------------------------
-- File: tb_siso8.vhd
-- Description: testbench for the 8-bit siso
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Jun 27 14:42:42 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 2$
-- $Author: gerezsh$
-- $Date: Wed Aug 31 23:26:07 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- test-vector controller (TVC): tvc_siso8
--
-- 1. generates clock and reset signals for "design under verification" (DUV)
-- 2. reads inputs from file and send data to the DUV
-- 3. collects outputs from DUV and writes data to file
-------------------------------------------------------------------------------

-- library and package declarations
library ieee, std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity tvc_siso8 is
  -- note that the signals are the same as in the entity siso8 
  -- where inputs have become outputs and vice versa 
  port (data_in: out std_logic_vector(7 downto 0);
        clk: out std_logic;
        reset: out std_logic;

        req: in std_logic;
        data_out: in std_logic_vector(7 downto 0);
        ready: in std_logic);
end tvc_siso8;

architecture behavior of tvc_siso8 is
  -- internal clock and reset signals (these signals are necessary
  -- because VHDL does not allow that output signals are read in the
  -- entity that generates them)
  signal clk_i, rst_i: std_logic;

  -- input file
  file in_file: text open Read_mode is "siso8.in";
  -- output file
  file out_file: text open Write_mode is "siso8.out";

begin
  --  connect internal clock and reset to ports
  clk <= clk_i;
  reset <= rst_i;

  -- generate clock
  clock: process
    constant half_clock_period: time := 100 ns;
  begin
    clk_i <= '1';
    wait for half_clock_period;
    clk_i <= '0';
    wait for half_clock_period;
  end process clock;


  -- The hardware registers are clocked on the rising edge of the
  -- clock; the stimuli should be stable then and therefore change
  -- on the falling edge of the clock.
  
  -- Note that the first edge of the clock is a falling one.

  stimuli: process (clk_i)
    variable first: boolean := true;

    variable inline, outline: line;
    variable good: boolean;

    variable input, output: integer;

    variable time_out_counter: integer;

  begin
    if falling_edge(clk_i)
    then
      -- handle reset; reset signal is high during first clock cycle only
      if first 
      then
        first := false;
        rst_i <= '1';
        time_out_counter := 0;
      else
        rst_i <= '0';

        -- handle output
        if ready = '1'
        then
          output := to_integer(signed(data_out));
          write(outline, output);
          writeline(out_file, outline);
        end if; -- ready

        -- handle input signal, take it from file
        if req = '1'
        then
          assert not endfile(in_file)
            report "OK! Simulation stopped at end of input file." 
            severity failure;
          readline(in_file, inline);
          read(inline, input, good);
          assert good 
            report "Error during input file processing." severity failure;

          -- encode input as a 2's complement 8-bit signal
          data_in <= std_logic_vector(to_signed(input, 8));
          time_out_counter := 0;
        else
          time_out_counter := time_out_counter + 1;
          if (time_out_counter > 1000)
          then
            assert false
              report "Time out while waiting for req!" severity failure;
          end if;
        end if; -- req = '1'
      end if; -- first
    end if; -- falling_edge(clk_i)
  end process stimuli;
end behavior;

-------------------------------------------------------------------------------
-- tb_siso8: testbench, connecting TVC and DUV
--
-- Note: the testbench does not have any I/O signals!
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity tb_siso8 is 
end tb_siso8;

architecture structure of tb_siso8 is
  -- declare components to be instantiated
  component siso8 
    port (data_in: in std_logic_vector(7 downto 0);
          clk: in std_logic;
          reset: in std_logic;
  
          req: out std_logic;
          data_out: out std_logic_vector(7 downto 0);
          ready: out std_logic);
  end component;

  component tvc_siso8 
    port (data_in: out std_logic_vector(7 downto 0);
          clk: out std_logic;
          reset: out std_logic;
  
          req: in std_logic;
          data_out: in std_logic_vector(7 downto 0);
          ready: in std_logic);
  end component;

  -- declare local signals
  signal data_in, data_out: std_logic_vector(7 downto 0);
  signal clk, reset, req, ready: std_logic;
begin
  -- instantiate and interconnect components
  duv: siso8
    port map (data_in => data_in, clk => clk, reset => reset, 
              req => req, data_out => data_out, ready => ready);
  tvc: tvc_siso8
    port map (data_in => data_in, clk => clk, reset => reset, 
              req => req, data_out => data_out, ready => ready);
end structure;
