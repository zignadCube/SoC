-------------------------------------------------------------------------------
-- File         : tb_siso_gen.vhd
-- Description  : testbench for siso with generic word length
-- Author       : Sabih Gerez, University of Twente
-- Creation date: June 12, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep 16 23:56:43 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- tb_siso_gen: testbench, connecting TVC and DUV
--
-- Note: the testbench does not have any I/O signals!
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity tb_siso_gen is 
  generic(word_length: natural := 8);
end tb_siso_gen;

architecture structure of tb_siso_gen is
  -- declare components to be instantiated
  component siso_gen 
    generic (word_length: natural);
    port (data_in: in std_logic_vector(word_length-1 downto 0);
          clk: in std_logic;
          reset: in std_logic;
  
          req: out std_logic;
          data_out: out std_logic_vector(word_length-1 downto 0);
          ready: out std_logic
          -- ;
          -- scan_in, scan_shift: in std_logic;
          -- scan_out: out std_logic
          );
  end component;

  component tvc_siso_gen 
    generic (word_length: natural;
             in_file_name: string := "siso_gen.in";
             out_file_name: string := "siso_gen.out";
             half_clock_period: time := 100 ns);
    port (data_in: out std_logic_vector(word_length-1 downto 0);
          clk: out std_logic;
          reset: out std_logic;
  
          req: in std_logic;
          data_out: in std_logic_vector(word_length-1 downto 0);
          ready: in std_logic
          -- ;
          -- scan_in, scan_shift: out std_logic;
          -- scan_out: in std_logic
          );
  end component;

  -- declare local signals
  signal data_in, data_out: std_logic_vector(word_length-1 downto 0);
  signal clk, reset, req, ready: std_logic;
  -- signal scan_in, scan_shift, scan_out: std_logic;
begin
  -- instantiate and interconnect components
  -- note that the generic word_length is passed to the subblocks
  duv: siso_gen
    generic map (word_length => word_length)
    port map (data_in => data_in, clk => clk, reset => reset, 
              req => req, data_out => data_out, ready => ready
              -- , 
              -- scan_in => scan_in, scan_shift => scan_shift, 
              -- scan_out => scan_out
              );
  tvc: tvc_siso_gen
    generic map (word_length => word_length)
    port map (data_in => data_in, clk => clk, reset => reset, 
              req => req, data_out => data_out, ready => ready
              -- , 
              -- scan_in => scan_in, scan_shift => scan_shift, 
              -- scan_out => scan_out
              );
end structure;

-------------------------------------------------------------------------------
-- top level testbench (to bind generic word length)
-------------------------------------------------------------------------------

entity tb_siso_gen_top is
end tb_siso_gen_top;

architecture top of tb_siso_gen_top is
  component tb_siso_gen
    generic(word_length: natural := 8);
  end component;
begin
  tg: tb_siso_gen;
end top;
