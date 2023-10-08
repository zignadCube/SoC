-------------------------------------------------------------------------------
-- File: conf_tb_siso_sec_par.vhd
-- Description: siso_gen configuration for parallel second-order filter
-- Author: Sabih Gerez, University of Twente
-- Creation date: Fri Sep  3 00:54:32 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 29 10:56:30 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

configuration conf_tb_siso_gen_sec_par of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 10);
      for structure
        for duv: siso_gen use entity work.siso_gen(sec_par);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 10,
                         in_file_name => "sec.in",
                         out_file_name => "sec.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_sec_par;
