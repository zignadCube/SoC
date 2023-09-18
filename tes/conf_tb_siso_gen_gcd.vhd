-------------------------------------------------------------------------------
-- File: conf_tb_siso_gen_gcd.vhd
-- Description: siso_gen configuration for use of gcd architecture
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sun Jul 11 01:23:24 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Aug 25 21:23:33 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_gcd of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_gcd_scan_16_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 16,
                         in_file_name => "gcd16.in",
                         out_file_name => "gcd16.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd;
