-------------------------------------------------------------------------------
-- File         : siso_gen_swap_arch.vhd
-- Description  : stream-swap architecture for siso_gen
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 24, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep  1 17:00:21 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


architecture swap of siso_gen is
  type state is (start, odd, even);
  -- registers
  signal state_cur: state;
  signal reg_keep, reg_out: std_logic_vector(word_length-1 downto 0);
  -- wires
  signal state_nxt: state;
  signal reg_keep_nxt, reg_out_nxt: std_logic_vector(word_length-1 downto 0);
  signal ready_nxt: std_logic;
begin
  -- the nxt process is sequential and only sensitive to clk and reset
  seq: process(clk, reset)
  begin
    if (reset = '1')
    then
      state_cur <= start;
      reg_keep  <= (others => '0');
      reg_out   <= (others => '0');
      ready     <= '0';
    elsif rising_edge(clk)
    then
      state_cur <= state_nxt;
      reg_keep  <= reg_keep_nxt;
      reg_out   <= reg_out_nxt;
      ready     <= ready_nxt;
    end if;
  end process seq; 

  -- combinational process
  nxt_val: process(state_cur, reg_keep, reg_out, data_in)
  begin
    case state_cur is
      when start =>
        state_nxt    <= odd;
        reg_keep_nxt <= data_in;
        reg_out_nxt  <= reg_out;
        ready_nxt    <= '0';
      when odd =>
        state_nxt    <= even;
        reg_keep_nxt <= reg_keep;
        reg_out_nxt  <= data_in;
        ready_nxt    <= '1';
      when even =>
        state_nxt    <= odd;
        reg_keep_nxt <= data_in;
        reg_out_nxt  <= reg_keep;
        ready_nxt    <= '1';
    end case;
  end process nxt_val;

  -- constant output
  req <= '1'; -- the system is ready to receive data after reset
  -- data_out is reg_out
  data_out <= reg_out;
end swap;
