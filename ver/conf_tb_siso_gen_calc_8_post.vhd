-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_calc_8_post.vhd
-- Description  : post-syn configuration(s) for the SISO "calc" architecture
-- Author       : Sabih Gerez, University of Twente
-- Creation date: September 12, 2018
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sat Sep 17 16:32:33 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_calc_8_mix_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "mix8.in",
                         out_file_name => "mix8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_8_mix_post;

configuration conf_tb_siso_gen_calc_8_nul_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "nul8.in",
                         out_file_name => "nul8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_8_nul_post;

configuration conf_tb_siso_gen_calc_8_add_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "add8.in",
                         out_file_name => "add8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_8_add_post;

configuration conf_tb_siso_gen_calc_8_mul_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "mul8.in",
                         out_file_name => "mul8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_8_mul_post;

configuration conf_tb_siso_gen_calc_gc_8_mix_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_gc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "mix8.in",
                         out_file_name => "mix8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_gc_8_mix_post;

configuration conf_tb_siso_gen_calc_gc_8_nul_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_gc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "nul8.in",
                         out_file_name => "nul8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_gc_8_nul_post;

configuration conf_tb_siso_gen_calc_gc_8_add_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_gc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "add8.in",
                         out_file_name => "add8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_gc_8_add_post;

configuration conf_tb_siso_gen_calc_gc_8_mul_post of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 8);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_calc_gc_8_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 8, -- code does not compile w/o this
                         half_clock_period => 2.5 ns,
                         in_file_name =>  "mul8.in",
                         out_file_name => "mul8.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_calc_gc_8_mul_post;
