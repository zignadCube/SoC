-------------------------------------------------------------------------------
-- File         : conf_tb_fgpa_audio_example_post.vhd
-- Description  : configuration for "example" testbench of fpga_audio system
--                post-synthesis version with clock gating
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 4, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 23:22:01 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

configuration conf_tb_fpga_audio_example_post of tb_fpga_audio is
  for structure
    for duv: fpga_audio use entity work.fpga_audio(example);
      for example
        for cd: clkdiv use entity work.clkdiv(rtl);
        end for;
        for ac: asic_core use entity work.asic_core(flat_sine_none_5);
        end for;
      end for;
    end for;
    for tvc: tvc_fpga_audio use entity work.tvc_fpga_audio(example);
    end for;
  end for;
end conf_tb_fpga_audio_example_post;
