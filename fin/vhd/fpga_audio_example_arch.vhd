-------------------------------------------------------------------------------
-- File         : fpga_audio_example_arch.vhd
-- Description  : example content for fpga_audio system
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 2, 2019
-------------------------------------------------------------------------------
-- $Rev: 2$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 23:22:01 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

architecture example of fpga_audio is
  -- declare all subblocks first
  component clkdiv
    port (clk50m_c: in  std_logic; -- 50 MHz input clock
          reset_n:  in  std_logic;
          clk12m5:  out std_logic; -- 12.5 MHz main clock for CODEC
          clk6m25:  out std_logic; -- 6.25 MHz sigma-delta sample clock
          clk48k8:  out std_logic  -- 48.8 kHz audio sample clock
         ); 
  end component;

  component asic_core 
    port(clk50m_c:   in  std_logic;
         reset_n:    in  std_logic;
         sigdel_out: in  std_logic; -- output of sigma-delta analog
         clk6m25:    in  std_logic; -- sample strobe for sigdel_out
         clk48k8:    in  std_logic; -- enable
         audio48k8:  out std_logic_vector(31 downto 0) -- 2's complement
        );
  end component;

  -- version of Koushik Roy
  component audio_interface IS
    PORT
    ( 
      -- parallel external data inputs
      LDATA, RDATA: IN  std_logic_vector(15 downto 0); 
      clk, Reset  : IN  std_logic; 
      INIT_FINISH : OUT std_logic;
      adc_full    : OUT std_logic;
      data_over   : OUT std_logic; -- sample sync pulse
      AUD_MCLK    : OUT std_logic; -- Codec master clock OUTPUT
      AUD_BCLK    : IN  std_logic; -- Digital Audio bit clock
      AUD_ADCDAT  : IN  std_logic;
      AUD_DACDAT  : OUT std_logic; -- DAC data line
      AUD_DACLRCK : IN  std_logic; -- DAC data left/right select
      AUD_ADCLRCK : IN  std_logic; -- DAC data left/right select
      I2C_SDAT    : OUT std_logic; -- serial interface data line
      I2C_SCLK    : OUT std_logic; -- serial interface clock
      ADCDATA     : OUT std_logic_vector(31 downto 0)
    );
  END component;

  -- internal wiring
  signal clk50m_c:   std_logic;
  signal reset_n:    std_logic;
  signal clk12m5:    std_logic;
  signal clk6m25:    std_logic;
  signal clk48k8:    std_logic;
  signal sigdel_out: std_logic;

  signal audio48k8: std_logic_vector(31 downto 0);
begin
  -- renaming of I/O signals
  clk50m_c   <= CLOCK_50;
  reset_n    <= KEY(0);
  sigdel_out <= GPIO(35);
  
  GPIO(0)            <= clk6m25;
  GPIO(31 downto 16) <= audio48k8(31 downto 16);

  -- instantiation of subblocks
  cd: clkdiv
    port map(clk50m_c => clk50m_c, 
             reset_n  => reset_n,  
             clk12m5  => clk12m5,  
             clk6m25  => clk6m25,  
             clk48k8  => clk48k8);  

  ac: asic_core
    port map(clk50m_c   => clk50m_c, 
             reset_n    => reset_n,  
             sigdel_out => sigdel_out,
             clk6m25    => clk6m25,  
             clk48k8    => clk48k8,
             audio48k8  => audio48k8
    );

  -- instantiate the "ugly" Koushik Roy IP block for CODEC interfacing
  -- to be replaced in due time
  -- the interface is configured to use 16-bit audio even when the
  -- CODEC is able to deal with 32
  dd: audio_interface 
    port map(LDATA       => audio48k8(31 downto 16),
             RDATA       => audio48k8(31 downto 16),
             clk         => clk50m_c,
             reset       => reset_n,
             INIT_FINISH => open,
             adc_full    => open,
             data_over   => open,
             AUD_MCLK    => AUD_XCK,
             AUD_BCLK    => AUD_BCLK,
             AUD_ADCDAT  => AUD_ADCDAT,
             AUD_DACDAT  => AUD_DACDAT,
             AUD_DACLRCK => AUD_DACLRCK,
             AUD_ADCLRCK => AUD_ADCLRCK,  
             I2C_SCLK    => FPGA_I2C_SCLK,
             I2C_SDAT    => FPGA_I2C_SDAT
            );

  -- drive bidirectionals
  AUD_BCLK      <= 'Z';
  AUD_DACLRCK   <= 'Z';
end example;
