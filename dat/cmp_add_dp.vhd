-------------------------------------------------------------------------------
-- File: cmp_add_dp.vhd
-- Description: data path with comparator and adder
-- Author: Sabih Gerez, University of Twente
-- Creation date: Wed Aug 18 23:22:11 CEST 2004
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Thu Sep 15 09:40:39 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-- library and package declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cmp_add_dp is
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
end cmp_add_dp;

architecture behavioral of cmp_add_dp is
  -- Note: all buses are "signed".

  -- type declaration for memory
  type memory is array (0 to 3) of signed(word_length-1 downto 0);
  -- memory declaration
  signal mem: memory;
  -- other memory elements
  signal add_l, add_r, cmp_l, cmp_r: signed(word_length-1 downto 0);
  -- wires
  signal add_out, mem_out: signed(word_length-1 downto 0);
begin
  seq: process(clk, reset)
    variable counter: integer range 0 to 3;
  begin
    if (reset = '1')
    then
      for counter in 0 to 3 loop
        mem(counter) <= (others => '0');
      end loop;
      add_l <= (others => '0');
      add_r <= (others => '0');
      cmp_l <= (others => '0');
      cmp_r <= (others => '0');
    elsif rising_edge(clk)
    then
      -- memory write
      case wr_sel_en is
        when "00" => null; -- write is disabled
        when "01" => mem(to_integer(unsigned(wr_addr))) <= add_out;
        when "10" => mem(to_integer(unsigned(wr_addr))) <= mem_out;
        when "11" => mem(to_integer(unsigned(wr_addr))) <= signed(data_in);
        when others => null; -- not relevant for synthesis
      end case;
      if (add_l_en = '1')
      then
        if (add_l_sel = '1')
        then
           add_l <= add_out;
        else
           add_l <= mem_out;
        end if;
      end if;
      if (add_r_en = '1')
      then
        if (add_r_sel = '1')
        then
           add_r <= add_out;
        else
           add_r <= mem_out;
        end if;
      end if;
      if (cmp_l_en = '1')
      then
        if (cmp_l_sel = '1')
        then
           cmp_l <= add_out;
        else
           cmp_l <= mem_out;
        end if;
      end if;
      if (cmp_r_en = '1')
      then
        if (cmp_r_sel = '1')
        then
           cmp_r <= add_out;
        else
           cmp_r <= mem_out;
        end if;
      end if;
    end if;
  end process seq;
  
  -- adder/subtractor
  add_sub: process(add_l, add_r, sub)
    variable add_r_in: signed(word_length-1 downto 0);
    variable carry: integer range 0 to 1; -- easy to add to "signed" operands
  begin
    -- for substract, invert bits of 'add_r' and add a carry
    if (sub = '1')
    then
      add_r_in := not(add_r);
      carry := 1;
    else
      add_r_in := add_r;
      carry := 0;
    end if;
    add_out <= add_l + add_r_in + carry;
  end process add_sub;

  -- comparator
  equal <= '1' when (cmp_l = cmp_r) else '0';
  greater <= '1' when (cmp_l > cmp_r) else '0';

  -- memory read
  mem_out <= mem(to_integer(unsigned(rd_addr)));

  -- main output
  data_out <= std_logic_vector(mem_out);
end behavioral;
