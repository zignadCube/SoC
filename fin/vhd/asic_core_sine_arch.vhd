-------------------------------------------------------------------------------
-- File         : asic_core_sine_arch.vhd
-- Description  : sine-generator architecture for asic_core in
--                fpga_audio project
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 3, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

library ieee;
use ieee.numeric_std.all;

architecture sine of asic_core is
  component cordic_sine16_gen
     port(
        clock : in std_logic;
        resetn : in std_logic;
        phase_step : in signed(15 downto 0);
        enable : in std_logic;
        x_out : out signed(15 downto 0);
        y_out : out signed(15 downto 0)
     );
  end component;

  -- 0.44/48.828125 * 2^16
  constant phase_step_440hz: signed(15 downto 0) := to_signed(591, 16);
  signal sine16: signed(15 downto 0);
begin
  cs: cordic_sine16_gen
    port map(clock      => clk50m_c,
             resetn     => reset_n,
             phase_step => phase_step_440hz,
             enable     => clk48k8,
             x_out      => sine16
            );

  -- create 32-bit output by padding with zeros
  audio48k8(31 downto 16) <= std_logic_vector(sine16);
  audio48k8(15 downto  0) <= (others => '0');
end sine;
