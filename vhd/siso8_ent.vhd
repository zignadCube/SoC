-------------------------------------------------------------------------------
-- File: siso8_ent.vhd
-- Description: 8-bit serial-in serial-out device, entity declaration
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Jun 27 12:45:43 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Tue Aug  9 23:52:11 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;

entity siso8 is
  port (data_in: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        reset: in std_logic;

        req: out std_logic;
        data_out: out std_logic_vector(7 downto 0);
        ready: out std_logic);
end siso8;
