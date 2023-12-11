-------------------------------------------------------------------------------
-- File         : fpga_audio_ent.vhd
-- Description  : DE1 SoC Board, top-level for an audio system
-- Author       : Sabih Gerez, University of Twente
-- Creation date: November 29, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;

entity fpga_audio is
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
end fpga_audio;

