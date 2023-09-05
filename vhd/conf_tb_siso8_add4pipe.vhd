-------------------------------------------------------------------------------
-- File: conf_tb_siso8_copy.vhd
-- Description: configuration for siso8 testbench with "copy" DUV
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Jun 27 16:48:29 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Tue Aug  9 23:52:11 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

configuration conf_tb_siso8_add4pipe of tb_siso8 is
  for structure
    for duv: siso8 use entity work.siso8(add4pipe);
    end for;
    for tvc: tvc_siso8 use entity work.tvc_siso8(behavior);
    end for;
  end for;
end conf_tb_siso8_add4pipe;
