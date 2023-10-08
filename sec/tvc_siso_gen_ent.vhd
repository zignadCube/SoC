-------------------------------------------------------------------------------
-- File: tvc_siso_gen_ent.vhd
-- Description: test-vector controller (TVC) for SISO with generic
--              word length
-- Author: Sabih Gerez, University of Twente
-- Creation date: Wed Aug 11 00:24:38 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Aug 25 21:23:33 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- library and package declarations
library ieee, std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity tvc_siso_gen is
  generic (word_length: natural;
           half_clock_period: time := 100 ns;
           -- only used for file_io architecture
           in_file_name: string := "siso_gen.in";
           out_file_name: string := "siso_gen.out";
           -- only used for scan architecture
           scan_chain_length: integer := 0);
  -- note that the signals are the same as in the entity siso_gen 
  -- where inputs have become outputs and vice versa 
  port (data_in: out std_logic_vector(word_length-1 downto 0);
        clk: out std_logic;
        reset: out std_logic;

        req: in std_logic;
        data_out: in std_logic_vector(word_length-1 downto 0);
        ready: in std_logic;

        -- scan-chain interface
        scan_in, scan_shift: out std_logic;
        scan_out: in std_logic);
end tvc_siso_gen;
