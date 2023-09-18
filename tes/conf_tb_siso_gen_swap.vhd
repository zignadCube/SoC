-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_swap.vhd
-- Description  : siso_gen configuration for swap architecture
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 24, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep  1 17:00:21 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_swap of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 2);
      for structure
        for duv: siso_gen use entity work.siso_gen(swap);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 2,
                         in_file_name => "swap2.in",
                         out_file_name => "swap2.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_swap;
