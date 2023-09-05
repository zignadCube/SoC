-------------------------------------------------------------------------------
-- File: conf_tb_siso8_gcd.vhd
-- Description: siso8 configuration for use of gcd architecture
-- Author: Sabih Gerez, University of Twente
-- Creation date: August 21, 2022 (new version management)
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Aug 21 23:57:46 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso8_gcd of tb_siso8 is
  for structure
    for duv: siso8 use entity work.siso8(gcd);
    end for;
    for tvc: tvc_siso8 use entity work.tvc_siso8(behavior);
    end for;
  end for;
end conf_tb_siso8_gcd;
