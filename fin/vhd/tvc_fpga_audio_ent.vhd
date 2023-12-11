-------------------------------------------------------------------------------
-- File         : tvc_fpga_audio_ent.vhd
-- Description  : test-vector controller for 
--                DE1 SoC Board, top-level for an audio system
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

entity tvc_fpga_audio is
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
end tvc_fpga_audio;
