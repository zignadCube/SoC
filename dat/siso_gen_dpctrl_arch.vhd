-------------------------------------------------------------------------------
-- File: siso_gen_dpctrl_arch.vhd
-- Description: data-path + controller architecture for generic siso
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sat Aug 21 21:09:13 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


architecture dpctrl of siso_gen is
  -- data path
  component cmp_add_dp
    generic (word_length: integer);
    port (data_in: in std_logic_vector(word_length-1 downto 0);
          clk: in std_logic;
          reset: in std_logic;
          data_out: out std_logic_vector(word_length-1 downto 0);
          -- adder left/right register control
          add_l_sel, add_r_sel, add_l_en, add_r_en, sub: in std_logic;
          -- comparator left/right register control
          cmp_l_sel, cmp_r_sel, cmp_l_en, cmp_r_en: in std_logic;
          -- memory control
          rd_addr, wr_addr: in std_logic_vector(1 downto 0);
          wr_sel_en: in std_logic_vector(1 downto 0);
          -- comparator status
          equal: out std_logic;
          greater: out std_logic);
  end component;

  component cmp_add_ctrl 
    port (clk, reset: in std_logic;
          -- main outputs
          req, ready: out std_logic;
          -- status inputs from data path
          equal, greater: in std_logic;
          -- control outputs to data path
          -- adder left/right register control
          add_l_sel, add_r_sel, add_l_en, add_r_en, sub: out std_logic;
          -- comparator left/right register control
          cmp_l_sel, cmp_r_sel, cmp_l_en, cmp_r_en: out std_logic;
          -- memory control
          rd_addr, wr_addr: out std_logic_vector(1 downto 0);
          wr_sel_en: out std_logic_vector(1 downto 0));
  end component;

  signal add_l_sel, add_r_sel, add_l_en, add_r_en, sub,
         cmp_l_sel, cmp_r_sel, cmp_l_en, cmp_r_en, equal, greater: std_logic;
  signal rd_addr, wr_addr, wr_sel_en: std_logic_vector(1 downto 0);
begin
  dp: cmp_add_dp 
        generic map (word_length => word_length)
        port map (data_in => data_in, clk => clk, reset => reset, 
                  data_out => data_out, 
                  add_l_sel => add_l_sel, add_r_sel => add_r_sel, 
                  add_l_en => add_l_en, add_r_en => add_r_en, 
                  cmp_l_sel => cmp_l_sel, cmp_r_sel => cmp_r_sel, 
                  cmp_l_en => cmp_l_en, cmp_r_en => cmp_r_en, 
                  rd_addr => rd_addr, wr_addr => wr_addr, 
                  wr_sel_en => wr_sel_en,
                  sub => sub, equal => equal, greater => greater);
  cn: cmp_add_ctrl
        port map (clk => clk, reset => reset,
                  req => req, ready => ready,
                  sub => sub, equal => equal, greater => greater,
                  add_l_sel => add_l_sel, add_r_sel => add_r_sel, 
                  add_l_en => add_l_en, add_r_en => add_r_en, 
                  cmp_l_sel => cmp_l_sel, cmp_r_sel => cmp_r_sel, 
                  cmp_l_en => cmp_l_en, cmp_r_en => cmp_r_en, 
                  rd_addr => rd_addr, wr_addr => wr_addr, 
                  wr_sel_en => wr_sel_en);
end dpctrl;
