-------------------------------------------------------------------------------
-- File         : conf_tb_siso_gen_gcd_large.vhd
-- Description  : configuration of data-path SISO for large GCD inputs
-- Author       : Sabih Gerez, University of Twente
-- Creation date: September 13, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

configuration conf_tb_siso_gen_gcd_large_own of tb_siso_gen_top is
  for top 
    for tg: tb_siso_gen use entity work.tb_siso_gen(structure)
            generic map (word_length => 16);
      for structure
        for duv: siso_gen use entity work.siso_gen(dpctrl);
          for dpctrl
            for dp: cmp_add_dp use entity work.cmp_add_dp(behavioral);
            end for;
            for cn: cmp_add_ctrl use entity work.cmp_add_ctrl(my_gcd);
            end for;
          end for;
        end for;
        for tvc: tvc_siso_gen use entity work.tvc_siso_gen(file_io)
            generic map (word_length => 16,
                         in_file_name => "gcd16_large.in",
                         out_file_name => "gcd16_large.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_gcd_large_own;
