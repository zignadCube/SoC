-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_gcd_scan.vhd
-- Description  : siso_gen testbench-configuration to verify scan path
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 18, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep  1 16:28:13 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_gcd_scan of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_gcd_scan_16_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(scan)
            generic map (word_length => 16,
                         scan_chain_length => 35);
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd_scan;
