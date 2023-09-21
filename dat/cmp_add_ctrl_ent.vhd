-------------------------------------------------------------------------------
-- File: cmp_add_ctrl_ent.vhd
-- Description: Controller entity for compare-add data path
-- Author: Sabih Gerez, University of Twente
-- Creation date: Fri Aug 20 22:51:55 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;

entity cmp_add_ctrl is
  port (clk, reset: in std_logic;

        -- main outputs
        req, ready: out std_logic;

        -- status inputs from data path
        equal, greater: in std_logic;

        -- control outputs to data path

        -- adder left/right register control
        add_l_sel, add_r_sel, add_l_en, add_r_en, sub: out std_logic;

        -- comparator left/right register control
        cmp_l_sel, cmp_r_sel, cmp_l_en, cmp_r_en: out std_logic;

        -- memory control
        rd_addr, wr_addr: out std_logic_vector(1 downto 0);
        wr_sel_en: out std_logic_vector(1 downto 0));
end cmp_add_ctrl;
