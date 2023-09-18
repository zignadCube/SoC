-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_swap_post.vhd
-- Description  : siso_gen post-synthesis conf. for swap design
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 27, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Sep 12 15:18:48 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_swap_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 2);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_swap_scan_2_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 2,
                         in_file_name => "swap2.in",
                         out_file_name => "swap2.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_swap_post;
