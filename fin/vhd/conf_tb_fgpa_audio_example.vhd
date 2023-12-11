-------------------------------------------------------------------------------
-- File         : conf_tb_fgpa_audio_example.vhd
-- Description  : configuration for "example" testbench of fpga_audio system
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 4, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

configuration conf_tb_fpga_audio_example of tb_fpga_audio is
  for structure
    for duv: fpga_audio use entity work.fpga_audio(example);
      for example
        for cd: clkdiv use entity work.clkdiv(rtl);
        end for;
        for ac: asic_core use entity work.asic_core(sine);
        end for;
      end for;
    end for;
    for tvc: tvc_fpga_audio use entity work.tvc_fpga_audio(example);
    end for;
  end for;
end conf_tb_fpga_audio_example;
