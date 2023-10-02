-------------------------------------------------------------------------------
-- File         : siso_gen_ent.vhd
-- Description  : generic serial-in serial-out device, entity declaration
--                version for VLSI System Design
-- Author       : Sabih Gerez, University of Twente
-- Creation date: June 12, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep 16 23:56:43 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;

entity siso_gen is
  generic (word_length: integer := 16);
  port (data_in: in std_logic_vector(word_length-1 downto 0);
        clk: in std_logic;
        reset: in std_logic;

        req: out std_logic;
        data_out: out std_logic_vector(word_length-1 downto 0);
        ready: out std_logic
        -- ;
        -- scan-chain interface
        -- not used to overcome issues with clock gating
        -- scan_in, scan_shift: in std_logic;
        -- scan_out: out std_logic
        );
end siso_gen;
