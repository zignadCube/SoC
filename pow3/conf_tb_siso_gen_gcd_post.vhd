-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_gcd_post.vhd
-- Description  : post-synth. siso_gen configugrations on behalf of
--                power simulations
-- Author       : Sabih Gerez, University of Twente
-- Creation date: June 26, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep 16 23:56:43 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_gcd_post_small of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_gcd_16_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length       => 16,
                         half_clock_period => 2.5 ns,
                         in_file_name      => "gcd16_small.in",
                         out_file_name     => "gcd16_small.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd_post_small;

configuration conf_tb_siso_gen_gcd_post_large of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_gcd_16_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length       => 16,
                         half_clock_period => 2.5 ns,
                         in_file_name      => "gcd16_large.in",
                         out_file_name     => "gcd16_large.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd_post_large;

configuration conf_tb_siso_gen_gcd_post_large_gc of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_gcd_gc_16_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length       => 16,
                         half_clock_period => 2.5 ns,
                         in_file_name      => "gcd16_large.in",
                         out_file_name     => "gcd16_large.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd_post_large_gc;
