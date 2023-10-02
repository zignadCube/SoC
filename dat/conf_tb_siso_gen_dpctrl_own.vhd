-------------------------------------------------------------------------------
-- File: conf_tb_siso_gen_dpctrl.vhd
-- Description: configuration of generic SISO for data path/controller
--              architecture
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sat Aug 21 21:42:00 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_siso_gen_dpctrl_own of tb_siso_gen_top is
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
                         in_file_name => "gcd16.in",
                         out_file_name => "gcd16.out");
        end for;
      end for;
    end for;
  end for;
end conf_tb_siso_gen_dpctrl_own;