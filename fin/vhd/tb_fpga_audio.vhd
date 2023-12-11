-------------------------------------------------------------------------------
-- File         : tb_fpga_audio.vhd
-- Description  : testbench for FPGA-audio system
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 2, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------


-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;

entity tb_fpga_audio is
end tb_fpga_audio;

architecture structure of tb_fpga_audio is
  -- component declarations
  component fpga_audio 
    port(
          -- Audio: ADC & DAC interface
          AUD_ADCDAT:  in    std_logic;
          AUD_ADCLRCK: inout std_logic;
          AUD_BCLK:    inout std_logic;
          AUD_DACDAT:  out   std_logic;
          AUD_DACLRCK: inout std_logic;
          AUD_XCK:     out   std_logic;                                 
  
          -- CLOCK 50 MHz
          CLOCK_50: in std_logic;
  
          -- I2C for Audio and Video-In;
          FPGA_I2C_SCLK: out   std_logic;
          FPGA_I2C_SDAT: inout std_logic;
  
          -- 7-segment displays 6x
          HEX0: out std_logic_vector(6 downto 0);
          HEX1: out std_logic_vector(6 downto 0);
          HEX2: out std_logic_vector(6 downto 0);
          HEX3: out std_logic_vector(6 downto 0);
          HEX4: out std_logic_vector(6 downto 0);
          HEX5: out std_logic_vector(6 downto 0);
  
          -- KEY push-buttons 4x
          KEY: in std_logic_vector(3 downto 0);
  
          -- LEDs 10x
          LEDR: out std_logic_vector(9 downto 0);
  
          -- switches 10x
          SW: in std_logic_vector(9 downto 0);
  
          -- GPIO_1, GPIO_1 connect to GPIO Default 
          -- GPIO_1 is the right-most header on the DE1 SoC Board
          GPIO: inout std_logic_vector(35 downto 0)
    );
  end component;

  component tvc_fpga_audio 
    port(
          -- Audio: ADC & DAC interface
          AUD_ADCDAT:  out   std_logic;
          AUD_ADCLRCK: inout std_logic;
          AUD_BCLK:    inout std_logic;
          AUD_DACDAT:  in    std_logic;
          AUD_DACLRCK: inout std_logic;
          AUD_XCK:     in    std_logic;                                 
  
          -- CLOCK 50 MHz
          CLOCK_50: out std_logic;
  
          -- I2C for Audio and Video-In;
          FPGA_I2C_SCLK: in    std_logic;
          FPGA_I2C_SDAT: inout std_logic;
  
          -- 7-segment displays 6x
          HEX0: in std_logic_vector(6 downto 0);
          HEX1: in std_logic_vector(6 downto 0);
          HEX2: in std_logic_vector(6 downto 0);
          HEX3: in std_logic_vector(6 downto 0);
          HEX4: in std_logic_vector(6 downto 0);
          HEX5: in std_logic_vector(6 downto 0);
  
          -- KEY push-buttons 4x
          KEY: out std_logic_vector(3 downto 0);
  
          -- LEDs 10x
          LEDR: in std_logic_vector(9 downto 0);
  
          -- switches 10x
          SW: out std_logic_vector(9 downto 0);
  
          -- GPIO_1, GPIO_1 connect to GPIO Default 
          -- GPIO_1 is the right-most header on the DE1 SoC Board
          GPIO: inout std_logic_vector(35 downto 0)
    );
  end component;

  -- local wires
  signal AUD_ADCDAT:  std_logic;
  signal AUD_ADCLRCK: std_logic;
  signal AUD_BCLK:    std_logic;
  signal AUD_DACDAT:  std_logic;
  signal AUD_DACLRCK: std_logic;
  signal AUD_XCK:     std_logic;                                 
  
  -- CLOCK 50 MHz
  signal CLOCK_50: std_logic;
  
  -- I2C for Audio and Video-In;
  signal FPGA_I2C_SCLK: std_logic;
  signal FPGA_I2C_SDAT: std_logic;
  
  -- 7-segment displays 6x
  signal HEX0: std_logic_vector(6 downto 0);
  signal HEX1: std_logic_vector(6 downto 0);
  signal HEX2: std_logic_vector(6 downto 0);
  signal HEX3: std_logic_vector(6 downto 0);
  signal HEX4: std_logic_vector(6 downto 0);
  signal HEX5: std_logic_vector(6 downto 0);
  
  -- KEY push-buttons 4x
  signal KEY: std_logic_vector(3 downto 0);
  
  -- LEDs 10x
  signal LEDR: std_logic_vector(9 downto 0);
  
  -- switches 10x
  signal SW: std_logic_vector(9 downto 0);
  
  -- GPIO_1, GPIO_1 connect to GPIO Default 
  -- GPIO_1 is the right-most header on the DE1 SoC Board
  signal GPIO: std_logic_vector(35 downto 0);
begin
  duv: fpga_audio
    port map(
      AUD_ADCDAT    => AUD_ADCDAT,
      AUD_ADCLRCK   => AUD_ADCLRCK,
      AUD_BCLK      => AUD_BCLK,
      AUD_DACDAT    => AUD_DACDAT,
      AUD_DACLRCK   => AUD_DACLRCK,
      AUD_XCK       => AUD_XCK,
      CLOCK_50      => CLOCK_50,
      FPGA_I2C_SCLK => FPGA_I2C_SCLK,
      FPGA_I2C_SDAT => FPGA_I2C_SDAT,
      HEX0          => HEX0,
      HEX1          => HEX1,
      HEX2          => HEX2,
      HEX3          => HEX3,
      HEX4          => HEX4,
      HEX5          => HEX5,
      KEY           => KEY,
      LEDR          => LEDR,
      SW            => SW,
      GPIO          => GPIO
    );

  tvc: tvc_fpga_audio
    port map(
      AUD_ADCDAT    => AUD_ADCDAT,
      AUD_ADCLRCK   => AUD_ADCLRCK,
      AUD_BCLK      => AUD_BCLK,
      AUD_DACDAT    => AUD_DACDAT,
      AUD_DACLRCK   => AUD_DACLRCK,
      AUD_XCK       => AUD_XCK,
      CLOCK_50      => CLOCK_50,
      FPGA_I2C_SCLK => FPGA_I2C_SCLK,
      FPGA_I2C_SDAT => FPGA_I2C_SDAT,
      HEX0          => HEX0,
      HEX1          => HEX1,
      HEX2          => HEX2,
      HEX3          => HEX3,
      HEX4          => HEX4,
      HEX5          => HEX5,
      KEY           => KEY,
      LEDR          => LEDR,
      SW            => SW,
      GPIO          => GPIO
    );
end structure;
