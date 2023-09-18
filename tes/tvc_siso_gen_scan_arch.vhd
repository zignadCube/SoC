-------------------------------------------------------------------------------
-- File         : tvc_siso_gen_scan_arch.vhd
-- Description  : Architecture for tvc_siso_gen meant for scan-chain 
--                verification
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 18, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep  1 16:28:13 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- 1. generates clock and reset signals for "design under verification" (DUV)
-- 2. puts DUV in scan-shift mode and sends an 'X' followed by '1's
--    into the scan chain
-------------------------------------------------------------------------------

architecture scan of tvc_siso_gen is
  -- internal clock and reset signals (these signals are necessary
  -- because VHDL does not allow that output signals are read in the
  -- entity that generates them)
  signal clk_i, rst_i: std_logic;

begin
  --  connect internal clock and reset to ports
  clk <= clk_i;
  reset <= rst_i;

  -- generate clock
  clock: process
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
    variable shift_counter: integer := 0;

  begin
    if falling_edge(clk_i)
    then
      -- handle reset; reset signal is high during first clock cycle only
      if (shift_counter = 0) 
      then
        rst_i <= '1';
      elsif (shift_counter = 1)
      then
        rst_i <= '0';
        scan_shift <= '1';
        scan_in <= 'X';
      elsif (shift_counter = 2)
      then
        scan_in <= '1';
      elsif (shift_counter > scan_chain_length + 5)
      then
        assert false
          report "OK! Intentional termination of simulation!" severity failure;
      end if; -- (shift_counter = 0)

      shift_counter := shift_counter + 1;
    end if; -- falling_edge(clk_i)
  end process stimuli;

  -- drive data_in with X
  data_in <= (others => 'X');
end scan;
