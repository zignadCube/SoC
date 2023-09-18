-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_swap_tester.vhd
-- Description  : siso_gen post-synthesis conf. for swap design using
--                tester TVC
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 30, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep  9 19:24:38 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_swap_tester of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 2);
      for structure
        for duv: siso_gen use entity work.siso_gen(flat_swap_scan_2_5);
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(tester)
            generic map (word_length => 2,
                         half_clock_period => 5 ns,
                         in_file_name => "swap2_tester.in",
                         out_file_name => "swap2_tester.out");
            for tester
              for forcer: tvc_forcer use entity work.tvc_forcer(swap_2);
              end for;
            end for;
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_swap_tester;
