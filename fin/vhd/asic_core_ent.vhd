-------------------------------------------------------------------------------
-- File         : asic_core_ent.vhd
-- Description  : Entity declaration for ASIC core, fpga_audio project
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 3, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity asic_core is
  port(clk50m_c:   in std_logic;
       reset_n:    in std_logic;
       sigdel_out: in std_logic; -- output of sigma-delta analog
       clk6m25:    in std_logic; -- sample strobe for sigdel_out
       clk48k8:    in std_logic; -- enable
       audio48k8:  out std_logic_vector(31 downto 0) -- 2's complement
      );
end asic_core;
