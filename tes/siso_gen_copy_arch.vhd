-------------------------------------------------------------------------------
-- File: siso_gen_copy_arch.vhd
-- Description: Architecture for siso8 that simply copies its input to
--              its output
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Aug 22 18:46:51 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Aug 25 21:23:32 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


architecture copy of siso_gen is
begin
  -- the next process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
    if (reset = '1')
    then
      data_out <= (others => '0');
      ready <= '0';
    elsif rising_edge(clk)
    then
      data_out <= data_in;
      ready <= '1';
    end if;
  end process seq; 

  -- the system is intended to receive new data at each clock cycle 
  -- (after reset)
  req <= '1';
end copy;
