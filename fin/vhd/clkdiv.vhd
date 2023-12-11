-------------------------------------------------------------------------------
-- File         : clkdiv.vhd
-- Description  : clock divider for fpga_audio project
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 2, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- clkdiv: divide main clock by various factors
--
-- the divided outputs are supposed to act as enable signals, not as
-- clocks
--
-- notation convention: 
-- - suffix _c in a signal name indicates that the signal should be used 
--   as a clock in this block
-- - suffix _n indicates a signal that is "active low".
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clkdiv is
  port (clk50m_c: in  std_logic; -- 50 MHz input clock
        reset_n:  in  std_logic;
        clk12m5:  out std_logic; -- 12.5 MHz main clock for CODEC
        clk6m25:  out std_logic; -- 6.25 MHz sigma-delta sample clock
        clk48k8:  out std_logic  -- 48.8 kHz audio sample clock
       ); 
end clkdiv;

architecture rtl of clkdiv is
  -- 48.8 kHz is 50 kHz divided by 1024, requiring a 10-bit counter
  signal counter: unsigned(9 downto 0);
begin
  seq: process(clk50m_c, reset_n)
  begin
    if reset_n = '0'
    then
       counter <= (others => '0');
       clk12m5 <= '0';
       clk6m25 <= '0';
       clk48k8 <= '0';
    elsif rising_edge(clk50m_c)
    then
       counter <= counter + 1;
       -- divide by 4
       if counter(1 downto 0) = "00"
       then
          clk12m5 <= '1';
       else
          clk12m5 <= '0';
       end if;
       -- divide by 8
       if counter(2 downto 0) = "000"
       then
          clk6m25 <= '1';
       else
          clk6m25 <= '0';
       end if;
       -- divide by 1024
       if counter = 0
       then
          clk48k8 <= '1';
       else
          clk48k8 <= '0';
       end if;
    end if;
  end process seq;
end rtl;
