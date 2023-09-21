-------------------------------------------------------------------------------
-- File: cmp_add_ctrl_gcd_arch.vhd
-- Description: controller architecture to compute GCD with cmp/add data path
-- Author: Sabih Gerez, University of Twente
-- Creation date: Sat Aug 21 00:13:26 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------

architecture gcd of cmp_add_ctrl is
  -- enumeration type for states: "state"
  type state is (start,
                 read1, read2, load_cmp_l, load_cmp_r, 
                 finished, 
                 load_add_l_0, load_add_r_1, store_sub_0, 
                 load_add_l_1, load_add_r_0, store_sub_1);
  signal current_state, next_state: state;
begin
  seq: process(clk, reset) 
  begin
    if reset = '1'
    then
      current_state <= start;
      req <= '1';
      ready <= '0';
    elsif rising_edge(clk)
    then
      current_state <= next_state;

      -- request for second operand of GCD while storing first in
      -- memory; request for first operand when finished with previous
      -- computation
      if (next_state = read1) or (next_state = finished)
      then
        req <= '1';
      else
        req <= '0';
      end if;

      if next_state = finished
      then
        ready <= '1';
      else
        ready <= '0';
      end if;
    end if;
  end process seq;

  new_state: process(current_state, equal, greater)
  begin
    case current_state is
      when start => next_state <= read1;
      when read1 => next_state <= read2;
      when read2 => next_state <= load_cmp_l;
      when load_cmp_l => next_state <= load_cmp_r;
      when load_cmp_r => 
        if equal = '1'
        then
          next_state <= finished;
        elsif greater = '1' 
        then
          next_state <= load_add_l_0;
        else
          next_state <= load_add_l_1;
        end if;
      when finished => next_state <= read1;
      when load_add_l_0 => next_state <= load_add_r_1;
      when load_add_r_1 => next_state <= store_sub_0;
      when store_sub_0 => next_state <= load_cmp_l;
      when load_add_l_1 => next_state <= load_add_r_0;
      when load_add_r_0 => next_state <= store_sub_1;
      when store_sub_1 => next_state <= load_cmp_l;
    end case;
  end process new_state;

  outputs: process(next_state)
  begin
    case next_state is
      when start =>
        -- no meaningful activity in data path; all signals don't care
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "--"; wr_addr <= "--"; wr_sel_en <= "--";
      when read1 =>
        -- copy from data_in to memory address 0; 
        -- read addr is set to 00 because current state may be "finished"
        -- and ready may therefore be high
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "00"; wr_addr <= "00"; wr_sel_en <= "11";
      when read2 =>
        -- copy from data_in to memory address 1; rest is don't care
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "--"; wr_addr <= "01"; wr_sel_en <= "11";
      when load_cmp_l =>
        -- copy from memory address 0 to cmp_l register
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '0'; cmp_l_en <= '1'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "00"; wr_addr <= "--"; wr_sel_en <= "00";
      when load_cmp_r =>
        -- copy from memory address 1 to cmp_r register
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '0'; cmp_r_sel <= '0'; cmp_r_en <= '1'; 
        rd_addr <= "01"; wr_addr <= "--"; wr_sel_en <= "00";
      when finished =>
        -- next state is "finished"; "ready" is not yet high; 
        -- read address is don't care
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "--"; wr_addr <= "--"; wr_sel_en <= "00";
      when load_add_l_0 =>
        -- copy from memory address 0 to add_l
        add_l_sel <= '0'; add_l_en <= '1'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "00"; wr_addr <= "--"; wr_sel_en <= "00";
      when load_add_r_1 =>
        -- copy from memory address 1 to add_r
        add_l_sel <= '-'; add_l_en <= '0'; add_r_sel <= '0'; add_r_en <= '1'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "01"; wr_addr <= "--"; wr_sel_en <= "00";
      when store_sub_0 =>
        -- subtract and copy result of subtraction to memory address 0
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '1';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "--"; wr_addr <= "00"; wr_sel_en <= "01";
      when load_add_l_1 =>
        -- copy from memory address 1 to add_l
        add_l_sel <= '0'; add_l_en <= '1'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "01"; wr_addr <= "--"; wr_sel_en <= "00";
      when load_add_r_0 =>
        -- copy from memory address 0 to add_r 
        add_l_sel <= '-'; add_l_en <= '0'; add_r_sel <= '0'; add_r_en <= '1'; 
        sub <= '-';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "00"; wr_addr <= "--"; wr_sel_en <= "00";
      when store_sub_1 =>
        -- subtract and copy result of subtraction to memory address 1
        add_l_sel <= '-'; add_l_en <= '-'; add_r_sel <= '-'; add_r_en <= '-'; 
        sub <= '1';
        cmp_l_sel <= '-'; cmp_l_en <= '-'; cmp_r_sel <= '-'; cmp_r_en <= '-'; 
        rd_addr <= "--"; wr_addr <= "01"; wr_sel_en <= "01";
    end case;
  end process outputs;
end gcd;
