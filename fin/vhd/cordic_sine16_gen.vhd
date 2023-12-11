-------------------------------------------------------------------------------
-- File         : cordic_sine16_gen.vhd
-- Description  : sine generator with 16-bit resolution generated from Arx code
-- Author       : Sabih Gerez, University of Twente
-- Creation date: December 3, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Dec  5 16:24:45 CET 2022$
-- $Log$
-------------------------------------------------------------------------------

--
-- cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library arx_lib; use arx_lib.arx_numeric.all;
use work.arx_numeric.all;

entity cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2 is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      x_in : in signed(14 downto 0);
      y_in : in signed(14 downto 0);
      p_in : in signed(15 downto 0);
      enable : in std_logic;
      op_mode : in std_logic;
      x_out : out signed(15 downto 0);
      y_out : out signed(15 downto 0);
      p_out : out signed(15 downto 0)
   );
end cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2;

architecture rtl of cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2 is
   type arx_aTan_array_type is array (0 to 14) of signed(15 downto 0);
   type arx_d_array_type is array (0 to 14) of Boolean;
   type arx_x_sh_array_type is array (0 to 14) of signed(15 downto 0);
   type arx_y_sh_array_type is array (0 to 14) of signed(15 downto 0);
   type arx_x_array_type is array (0 to 15) of signed(15 downto 0);
   type arx_y_array_type is array (0 to 15) of signed(15 downto 0);
   type arx_z_array_type is array (0 to 15) of signed(15 downto 0);

   constant aTan : arx_aTan_array_type := 
      (
      "0010000000000000",
      "0001001011100100",
      "0000100111111011",
      "0000010100010001",
      "0000001010001011",
      "0000000101000101",
      "0000000010100010",
      "0000000001010001",
      "0000000000101000",
      "0000000000010100",
      "0000000000001010",
      "0000000000000101",
      "0000000000000010",
      "0000000000000001",
      "0000000000000000"
      );
   constant arx_x_reset : arx_x_array_type := 
      (
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000"
      );
   constant arx_y_reset : arx_y_array_type := 
      (
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000"
      );
   constant arx_z_reset : arx_z_array_type := 
      (
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000",
      "0000000000000000"
      );

   signal arx_x_reg, arx_x_nxt : arx_x_array_type;
   signal arx_y_reg, arx_y_nxt : arx_y_array_type;
   signal arx_z_reg, arx_z_nxt : arx_z_array_type;
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_x_reg <= arx_x_reset;
         arx_y_reg <= arx_y_reset;
         arx_z_reg <= arx_z_reset;
      elsif rising_edge(clock) then
         for i in 0 to 15 loop
            arx_x_reg(i) <= arx_x_nxt(i);
         end loop;
         for i in 0 to 15 loop
            arx_y_reg(i) <= arx_y_nxt(i);
         end loop;
         for i in 0 to 15 loop
            arx_z_reg(i) <= arx_z_nxt(i);
         end loop;
      end if;
   end process registers;

   update : process (x_in, y_in, p_in, enable, op_mode, arx_x_reg, arx_y_reg, arx_z_reg)
      variable d : arx_d_array_type; -- reads=15, writes=15
      variable x_sh : arx_x_sh_array_type; -- reads=30, writes=15
      variable y_sh : arx_y_sh_array_type; -- reads=30, writes=15
      variable x : arx_x_array_type; -- reads=46, writes=34
      variable y : arx_y_array_type; -- reads=61, writes=34
      variable z : arx_z_array_type; -- reads=46, writes=34
   begin
      --initialize variables and outports
      d(0) := false;
      d(1) := false;
      d(2) := false;
      d(3) := false;
      d(4) := false;
      d(5) := false;
      d(6) := false;
      d(7) := false;
      d(8) := false;
      d(9) := false;
      d(10) := false;
      d(11) := false;
      d(12) := false;
      d(13) := false;
      d(14) := false;
      x_sh(0) := to_signed(0, 16);
      x_sh(1) := to_signed(0, 16);
      x_sh(2) := to_signed(0, 16);
      x_sh(3) := to_signed(0, 16);
      x_sh(4) := to_signed(0, 16);
      x_sh(5) := to_signed(0, 16);
      x_sh(6) := to_signed(0, 16);
      x_sh(7) := to_signed(0, 16);
      x_sh(8) := to_signed(0, 16);
      x_sh(9) := to_signed(0, 16);
      x_sh(10) := to_signed(0, 16);
      x_sh(11) := to_signed(0, 16);
      x_sh(12) := to_signed(0, 16);
      x_sh(13) := to_signed(0, 16);
      x_sh(14) := to_signed(0, 16);
      y_sh(0) := to_signed(0, 16);
      y_sh(1) := to_signed(0, 16);
      y_sh(2) := to_signed(0, 16);
      y_sh(3) := to_signed(0, 16);
      y_sh(4) := to_signed(0, 16);
      y_sh(5) := to_signed(0, 16);
      y_sh(6) := to_signed(0, 16);
      y_sh(7) := to_signed(0, 16);
      y_sh(8) := to_signed(0, 16);
      y_sh(9) := to_signed(0, 16);
      y_sh(10) := to_signed(0, 16);
      y_sh(11) := to_signed(0, 16);
      y_sh(12) := to_signed(0, 16);
      y_sh(13) := to_signed(0, 16);
      y_sh(14) := to_signed(0, 16);
      x_out <= to_signed(0, 16);
      y_out <= to_signed(0, 16);
      p_out <= to_signed(0, 16);
      --copy register values to local variables
      for i in 0 to 15 loop
         x(i) := arx_x_reg(i);
      end loop;
      for i in 0 to 15 loop
         y(i) := arx_y_reg(i);
      end loop;
      for i in 0 to 15 loop
         z(i) := arx_z_reg(i);
      end loop;
      --read from component outports
      --update outputs and register values
      x_out <= arx_x_reg(15);
      y_out <= arx_y_reg(15);
      p_out <= arx_z_reg(15);
      d(14) := ((op_mode = '0' and arx_z_reg(14) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(14) < "0000000000000000"));
      x_sh(14) := arx_msb_extend(arx_truncate(arx_x_reg(14), 14), 14);
      y_sh(14) := arx_msb_extend(arx_truncate(arx_y_reg(14), 14), 14);
      if enable = '1' then
         if d(14) = true then
            x(15) := arx_wrap((arx_msb_extend(arx_x_reg(14), 1) - arx_msb_extend(y_sh(14), 1)), 1);
            y(15) := arx_wrap((arx_msb_extend(arx_y_reg(14), 1) + arx_msb_extend(x_sh(14), 1)), 1);
            z(15) := arx_wrap((arx_msb_extend(arx_z_reg(14), 1) - arx_msb_extend("0000000000000000", 1)), 1);
         else
            x(15) := arx_wrap((arx_msb_extend(arx_x_reg(14), 1) + arx_msb_extend(y_sh(14), 1)), 1);
            y(15) := arx_wrap((arx_msb_extend(arx_y_reg(14), 1) - arx_msb_extend(x_sh(14), 1)), 1);
            z(15) := arx_wrap((arx_msb_extend(arx_z_reg(14), 1) + arx_msb_extend("0000000000000000", 1)), 1);
         end if;
      end if;
      d(13) := ((op_mode = '0' and arx_z_reg(13) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(13) < "0000000000000000"));
      x_sh(13) := arx_msb_extend(arx_truncate(arx_x_reg(13), 13), 13);
      y_sh(13) := arx_msb_extend(arx_truncate(arx_y_reg(13), 13), 13);
      if enable = '1' then
         if d(13) = true then
            x(14) := arx_wrap((arx_msb_extend(arx_x_reg(13), 1) - arx_msb_extend(y_sh(13), 1)), 1);
            y(14) := arx_wrap((arx_msb_extend(arx_y_reg(13), 1) + arx_msb_extend(x_sh(13), 1)), 1);
            z(14) := arx_wrap((arx_msb_extend(arx_z_reg(13), 1) - arx_msb_extend("0000000000000001", 1)), 1);
         else
            x(14) := arx_wrap((arx_msb_extend(arx_x_reg(13), 1) + arx_msb_extend(y_sh(13), 1)), 1);
            y(14) := arx_wrap((arx_msb_extend(arx_y_reg(13), 1) - arx_msb_extend(x_sh(13), 1)), 1);
            z(14) := arx_wrap((arx_msb_extend(arx_z_reg(13), 1) + arx_msb_extend("0000000000000001", 1)), 1);
         end if;
      end if;
      d(12) := ((op_mode = '0' and arx_z_reg(12) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(12) < "0000000000000000"));
      x_sh(12) := arx_msb_extend(arx_truncate(arx_x_reg(12), 12), 12);
      y_sh(12) := arx_msb_extend(arx_truncate(arx_y_reg(12), 12), 12);
      if enable = '1' then
         if d(12) = true then
            x(13) := arx_wrap((arx_msb_extend(arx_x_reg(12), 1) - arx_msb_extend(y_sh(12), 1)), 1);
            y(13) := arx_wrap((arx_msb_extend(arx_y_reg(12), 1) + arx_msb_extend(x_sh(12), 1)), 1);
            z(13) := arx_wrap((arx_msb_extend(arx_z_reg(12), 1) - arx_msb_extend("0000000000000010", 1)), 1);
         else
            x(13) := arx_wrap((arx_msb_extend(arx_x_reg(12), 1) + arx_msb_extend(y_sh(12), 1)), 1);
            y(13) := arx_wrap((arx_msb_extend(arx_y_reg(12), 1) - arx_msb_extend(x_sh(12), 1)), 1);
            z(13) := arx_wrap((arx_msb_extend(arx_z_reg(12), 1) + arx_msb_extend("0000000000000010", 1)), 1);
         end if;
      end if;
      d(11) := ((op_mode = '0' and arx_z_reg(11) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(11) < "0000000000000000"));
      x_sh(11) := arx_msb_extend(arx_truncate(arx_x_reg(11), 11), 11);
      y_sh(11) := arx_msb_extend(arx_truncate(arx_y_reg(11), 11), 11);
      if enable = '1' then
         if d(11) = true then
            x(12) := arx_wrap((arx_msb_extend(arx_x_reg(11), 1) - arx_msb_extend(y_sh(11), 1)), 1);
            y(12) := arx_wrap((arx_msb_extend(arx_y_reg(11), 1) + arx_msb_extend(x_sh(11), 1)), 1);
            z(12) := arx_wrap((arx_msb_extend(arx_z_reg(11), 1) - arx_msb_extend("0000000000000101", 1)), 1);
         else
            x(12) := arx_wrap((arx_msb_extend(arx_x_reg(11), 1) + arx_msb_extend(y_sh(11), 1)), 1);
            y(12) := arx_wrap((arx_msb_extend(arx_y_reg(11), 1) - arx_msb_extend(x_sh(11), 1)), 1);
            z(12) := arx_wrap((arx_msb_extend(arx_z_reg(11), 1) + arx_msb_extend("0000000000000101", 1)), 1);
         end if;
      end if;
      d(10) := ((op_mode = '0' and arx_z_reg(10) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(10) < "0000000000000000"));
      x_sh(10) := arx_msb_extend(arx_truncate(arx_x_reg(10), 10), 10);
      y_sh(10) := arx_msb_extend(arx_truncate(arx_y_reg(10), 10), 10);
      if enable = '1' then
         if d(10) = true then
            x(11) := arx_wrap((arx_msb_extend(arx_x_reg(10), 1) - arx_msb_extend(y_sh(10), 1)), 1);
            y(11) := arx_wrap((arx_msb_extend(arx_y_reg(10), 1) + arx_msb_extend(x_sh(10), 1)), 1);
            z(11) := arx_wrap((arx_msb_extend(arx_z_reg(10), 1) - arx_msb_extend("0000000000001010", 1)), 1);
         else
            x(11) := arx_wrap((arx_msb_extend(arx_x_reg(10), 1) + arx_msb_extend(y_sh(10), 1)), 1);
            y(11) := arx_wrap((arx_msb_extend(arx_y_reg(10), 1) - arx_msb_extend(x_sh(10), 1)), 1);
            z(11) := arx_wrap((arx_msb_extend(arx_z_reg(10), 1) + arx_msb_extend("0000000000001010", 1)), 1);
         end if;
      end if;
      d(9) := ((op_mode = '0' and arx_z_reg(9) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(9) < "0000000000000000"));
      x_sh(9) := arx_msb_extend(arx_truncate(arx_x_reg(9), 9), 9);
      y_sh(9) := arx_msb_extend(arx_truncate(arx_y_reg(9), 9), 9);
      if enable = '1' then
         if d(9) = true then
            x(10) := arx_wrap((arx_msb_extend(arx_x_reg(9), 1) - arx_msb_extend(y_sh(9), 1)), 1);
            y(10) := arx_wrap((arx_msb_extend(arx_y_reg(9), 1) + arx_msb_extend(x_sh(9), 1)), 1);
            z(10) := arx_wrap((arx_msb_extend(arx_z_reg(9), 1) - arx_msb_extend("0000000000010100", 1)), 1);
         else
            x(10) := arx_wrap((arx_msb_extend(arx_x_reg(9), 1) + arx_msb_extend(y_sh(9), 1)), 1);
            y(10) := arx_wrap((arx_msb_extend(arx_y_reg(9), 1) - arx_msb_extend(x_sh(9), 1)), 1);
            z(10) := arx_wrap((arx_msb_extend(arx_z_reg(9), 1) + arx_msb_extend("0000000000010100", 1)), 1);
         end if;
      end if;
      d(8) := ((op_mode = '0' and arx_z_reg(8) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(8) < "0000000000000000"));
      x_sh(8) := arx_msb_extend(arx_truncate(arx_x_reg(8), 8), 8);
      y_sh(8) := arx_msb_extend(arx_truncate(arx_y_reg(8), 8), 8);
      if enable = '1' then
         if d(8) = true then
            x(9) := arx_wrap((arx_msb_extend(arx_x_reg(8), 1) - arx_msb_extend(y_sh(8), 1)), 1);
            y(9) := arx_wrap((arx_msb_extend(arx_y_reg(8), 1) + arx_msb_extend(x_sh(8), 1)), 1);
            z(9) := arx_wrap((arx_msb_extend(arx_z_reg(8), 1) - arx_msb_extend("0000000000101000", 1)), 1);
         else
            x(9) := arx_wrap((arx_msb_extend(arx_x_reg(8), 1) + arx_msb_extend(y_sh(8), 1)), 1);
            y(9) := arx_wrap((arx_msb_extend(arx_y_reg(8), 1) - arx_msb_extend(x_sh(8), 1)), 1);
            z(9) := arx_wrap((arx_msb_extend(arx_z_reg(8), 1) + arx_msb_extend("0000000000101000", 1)), 1);
         end if;
      end if;
      d(7) := ((op_mode = '0' and arx_z_reg(7) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(7) < "0000000000000000"));
      x_sh(7) := arx_msb_extend(arx_truncate(arx_x_reg(7), 7), 7);
      y_sh(7) := arx_msb_extend(arx_truncate(arx_y_reg(7), 7), 7);
      if enable = '1' then
         if d(7) = true then
            x(8) := arx_wrap((arx_msb_extend(arx_x_reg(7), 1) - arx_msb_extend(y_sh(7), 1)), 1);
            y(8) := arx_wrap((arx_msb_extend(arx_y_reg(7), 1) + arx_msb_extend(x_sh(7), 1)), 1);
            z(8) := arx_wrap((arx_msb_extend(arx_z_reg(7), 1) - arx_msb_extend("0000000001010001", 1)), 1);
         else
            x(8) := arx_wrap((arx_msb_extend(arx_x_reg(7), 1) + arx_msb_extend(y_sh(7), 1)), 1);
            y(8) := arx_wrap((arx_msb_extend(arx_y_reg(7), 1) - arx_msb_extend(x_sh(7), 1)), 1);
            z(8) := arx_wrap((arx_msb_extend(arx_z_reg(7), 1) + arx_msb_extend("0000000001010001", 1)), 1);
         end if;
      end if;
      d(6) := ((op_mode = '0' and arx_z_reg(6) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(6) < "0000000000000000"));
      x_sh(6) := arx_msb_extend(arx_truncate(arx_x_reg(6), 6), 6);
      y_sh(6) := arx_msb_extend(arx_truncate(arx_y_reg(6), 6), 6);
      if enable = '1' then
         if d(6) = true then
            x(7) := arx_wrap((arx_msb_extend(arx_x_reg(6), 1) - arx_msb_extend(y_sh(6), 1)), 1);
            y(7) := arx_wrap((arx_msb_extend(arx_y_reg(6), 1) + arx_msb_extend(x_sh(6), 1)), 1);
            z(7) := arx_wrap((arx_msb_extend(arx_z_reg(6), 1) - arx_msb_extend("0000000010100010", 1)), 1);
         else
            x(7) := arx_wrap((arx_msb_extend(arx_x_reg(6), 1) + arx_msb_extend(y_sh(6), 1)), 1);
            y(7) := arx_wrap((arx_msb_extend(arx_y_reg(6), 1) - arx_msb_extend(x_sh(6), 1)), 1);
            z(7) := arx_wrap((arx_msb_extend(arx_z_reg(6), 1) + arx_msb_extend("0000000010100010", 1)), 1);
         end if;
      end if;
      d(5) := ((op_mode = '0' and arx_z_reg(5) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(5) < "0000000000000000"));
      x_sh(5) := arx_msb_extend(arx_truncate(arx_x_reg(5), 5), 5);
      y_sh(5) := arx_msb_extend(arx_truncate(arx_y_reg(5), 5), 5);
      if enable = '1' then
         if d(5) = true then
            x(6) := arx_wrap((arx_msb_extend(arx_x_reg(5), 1) - arx_msb_extend(y_sh(5), 1)), 1);
            y(6) := arx_wrap((arx_msb_extend(arx_y_reg(5), 1) + arx_msb_extend(x_sh(5), 1)), 1);
            z(6) := arx_wrap((arx_msb_extend(arx_z_reg(5), 1) - arx_msb_extend("0000000101000101", 1)), 1);
         else
            x(6) := arx_wrap((arx_msb_extend(arx_x_reg(5), 1) + arx_msb_extend(y_sh(5), 1)), 1);
            y(6) := arx_wrap((arx_msb_extend(arx_y_reg(5), 1) - arx_msb_extend(x_sh(5), 1)), 1);
            z(6) := arx_wrap((arx_msb_extend(arx_z_reg(5), 1) + arx_msb_extend("0000000101000101", 1)), 1);
         end if;
      end if;
      d(4) := ((op_mode = '0' and arx_z_reg(4) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(4) < "0000000000000000"));
      x_sh(4) := arx_msb_extend(arx_truncate(arx_x_reg(4), 4), 4);
      y_sh(4) := arx_msb_extend(arx_truncate(arx_y_reg(4), 4), 4);
      if enable = '1' then
         if d(4) = true then
            x(5) := arx_wrap((arx_msb_extend(arx_x_reg(4), 1) - arx_msb_extend(y_sh(4), 1)), 1);
            y(5) := arx_wrap((arx_msb_extend(arx_y_reg(4), 1) + arx_msb_extend(x_sh(4), 1)), 1);
            z(5) := arx_wrap((arx_msb_extend(arx_z_reg(4), 1) - arx_msb_extend("0000001010001011", 1)), 1);
         else
            x(5) := arx_wrap((arx_msb_extend(arx_x_reg(4), 1) + arx_msb_extend(y_sh(4), 1)), 1);
            y(5) := arx_wrap((arx_msb_extend(arx_y_reg(4), 1) - arx_msb_extend(x_sh(4), 1)), 1);
            z(5) := arx_wrap((arx_msb_extend(arx_z_reg(4), 1) + arx_msb_extend("0000001010001011", 1)), 1);
         end if;
      end if;
      d(3) := ((op_mode = '0' and arx_z_reg(3) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(3) < "0000000000000000"));
      x_sh(3) := arx_msb_extend(arx_truncate(arx_x_reg(3), 3), 3);
      y_sh(3) := arx_msb_extend(arx_truncate(arx_y_reg(3), 3), 3);
      if enable = '1' then
         if d(3) = true then
            x(4) := arx_wrap((arx_msb_extend(arx_x_reg(3), 1) - arx_msb_extend(y_sh(3), 1)), 1);
            y(4) := arx_wrap((arx_msb_extend(arx_y_reg(3), 1) + arx_msb_extend(x_sh(3), 1)), 1);
            z(4) := arx_wrap((arx_msb_extend(arx_z_reg(3), 1) - arx_msb_extend("0000010100010001", 1)), 1);
         else
            x(4) := arx_wrap((arx_msb_extend(arx_x_reg(3), 1) + arx_msb_extend(y_sh(3), 1)), 1);
            y(4) := arx_wrap((arx_msb_extend(arx_y_reg(3), 1) - arx_msb_extend(x_sh(3), 1)), 1);
            z(4) := arx_wrap((arx_msb_extend(arx_z_reg(3), 1) + arx_msb_extend("0000010100010001", 1)), 1);
         end if;
      end if;
      d(2) := ((op_mode = '0' and arx_z_reg(2) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(2) < "0000000000000000"));
      x_sh(2) := arx_msb_extend(arx_truncate(arx_x_reg(2), 2), 2);
      y_sh(2) := arx_msb_extend(arx_truncate(arx_y_reg(2), 2), 2);
      if enable = '1' then
         if d(2) = true then
            x(3) := arx_wrap((arx_msb_extend(arx_x_reg(2), 1) - arx_msb_extend(y_sh(2), 1)), 1);
            y(3) := arx_wrap((arx_msb_extend(arx_y_reg(2), 1) + arx_msb_extend(x_sh(2), 1)), 1);
            z(3) := arx_wrap((arx_msb_extend(arx_z_reg(2), 1) - arx_msb_extend("0000100111111011", 1)), 1);
         else
            x(3) := arx_wrap((arx_msb_extend(arx_x_reg(2), 1) + arx_msb_extend(y_sh(2), 1)), 1);
            y(3) := arx_wrap((arx_msb_extend(arx_y_reg(2), 1) - arx_msb_extend(x_sh(2), 1)), 1);
            z(3) := arx_wrap((arx_msb_extend(arx_z_reg(2), 1) + arx_msb_extend("0000100111111011", 1)), 1);
         end if;
      end if;
      d(1) := ((op_mode = '0' and arx_z_reg(1) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(1) < "0000000000000000"));
      x_sh(1) := arx_msb_extend(arx_truncate(arx_x_reg(1), 1), 1);
      y_sh(1) := arx_msb_extend(arx_truncate(arx_y_reg(1), 1), 1);
      if enable = '1' then
         if d(1) = true then
            x(2) := arx_wrap((arx_msb_extend(arx_x_reg(1), 1) - arx_msb_extend(y_sh(1), 1)), 1);
            y(2) := arx_wrap((arx_msb_extend(arx_y_reg(1), 1) + arx_msb_extend(x_sh(1), 1)), 1);
            z(2) := arx_wrap((arx_msb_extend(arx_z_reg(1), 1) - arx_msb_extend("0001001011100100", 1)), 1);
         else
            x(2) := arx_wrap((arx_msb_extend(arx_x_reg(1), 1) + arx_msb_extend(y_sh(1), 1)), 1);
            y(2) := arx_wrap((arx_msb_extend(arx_y_reg(1), 1) - arx_msb_extend(x_sh(1), 1)), 1);
            z(2) := arx_wrap((arx_msb_extend(arx_z_reg(1), 1) + arx_msb_extend("0001001011100100", 1)), 1);
         end if;
      end if;
      d(0) := ((op_mode = '0' and arx_z_reg(0) >= "0000000000000000") or (op_mode = '1' and arx_y_reg(0) < "0000000000000000"));
      x_sh(0) := arx_x_reg(0);
      y_sh(0) := arx_y_reg(0);
      if enable = '1' then
         if d(0) = true then
            x(1) := arx_wrap((arx_msb_extend(arx_x_reg(0), 1) - arx_msb_extend(y_sh(0), 1)), 1);
            y(1) := arx_wrap((arx_msb_extend(arx_y_reg(0), 1) + arx_msb_extend(x_sh(0), 1)), 1);
            z(1) := arx_wrap((arx_msb_extend(arx_z_reg(0), 1) - arx_msb_extend("0010000000000000", 1)), 1);
         else
            x(1) := arx_wrap((arx_msb_extend(arx_x_reg(0), 1) + arx_msb_extend(y_sh(0), 1)), 1);
            y(1) := arx_wrap((arx_msb_extend(arx_y_reg(0), 1) - arx_msb_extend(x_sh(0), 1)), 1);
            z(1) := arx_wrap((arx_msb_extend(arx_z_reg(0), 1) + arx_msb_extend("0010000000000000", 1)), 1);
         end if;
      end if;
      if enable = '1' then
         if op_mode = '0' then
            if (p_in > "0100000000000000" or p_in < "1100000000000000") then
               x(0) := arx_msb_extend((-x_in), 1);
               y(0) := arx_msb_extend((-y_in), 1);
               z(0) := arx_wrap((arx_msb_extend(p_in, 1) + arx_msb_extend("1000000000000000", 1)), 1);
            else
               x(0) := arx_msb_extend(x_in, 1);
               y(0) := arx_msb_extend(y_in, 1);
               z(0) := p_in;
            end if;
         else
            if x_in <= "000000000000000" then
               x(0) := arx_msb_extend((-x_in), 1);
               y(0) := arx_msb_extend((-y_in), 1);
               z(0) := arx_wrap((arx_msb_extend(p_in, 1) + arx_msb_extend("1000000000000000", 1)), 1);
            else
               x(0) := arx_msb_extend(x_in, 1);
               y(0) := arx_msb_extend(y_in, 1);
               z(0) := p_in;
            end if;
         end if;
      end if;
      --write to component inports
      --copy local variables to next register values
      for i in 0 to 15 loop
         arx_x_nxt(i) <= x(i);
      end loop;
      for i in 0 to 15 loop
         arx_y_nxt(i) <= y(i);
      end loop;
      for i in 0 to 15 loop
         arx_z_nxt(i) <= z(i);
      end loop;
   end process update;
end rtl;

--
-- cordic_sine16_gen_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library arx_lib; use arx_lib.arx_numeric.all;
use work.arx_numeric.all;

entity cordic_sine16_gen_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_step : in std_logic_vector(15 downto 0);
      enable : in std_logic;
      x_out : out std_logic_vector(15 downto 0);
      y_out : out std_logic_vector(15 downto 0)
   );
end cordic_sine16_gen_std;

architecture rtl of cordic_sine16_gen_std is
   component cordic_sine16_gen
      port (
         clock : in std_logic;
         resetn : in std_logic;
         phase_step : in signed(15 downto 0);
         enable : in std_logic;
         x_out : out signed(15 downto 0);
         y_out : out signed(15 downto 0)
      );
   end component;

   signal arx_phase_step : signed(15 downto 0);
   signal arx_enable : std_logic;
   signal arx_x_out : signed(15 downto 0);
   signal arx_y_out : signed(15 downto 0);
begin

   cordic_sine16_gen_inst : cordic_sine16_gen
      port map (
         clock => clock,
         resetn => resetn,
         phase_step => arx_phase_step,
         enable => arx_enable,
         x_out => arx_x_out,
         y_out => arx_y_out
      );

   arx_phase_step <= signed(phase_step);
   arx_enable <= std_logic(enable);
   x_out <= std_logic_vector(arx_x_out);
   y_out <= std_logic_vector(arx_y_out);
end rtl;

--
-- cordic_sine16_gen
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library arx_lib; use arx_lib.arx_numeric.all;
use work.arx_numeric.all;

entity cordic_sine16_gen is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_step : in signed(15 downto 0);
      enable : in std_logic;
      x_out : out signed(15 downto 0);
      y_out : out signed(15 downto 0)
   );
end cordic_sine16_gen;

architecture rtl of cordic_sine16_gen is


   component phase_acc_signed_16_1_8
      port (
         clock : in std_logic;
         resetn : in std_logic;
         phase_step : in signed(15 downto 0);
         enable : in std_logic;
         phase_sum : out signed(15 downto 0)
      );
   end component;
   
   signal arx_p_acc_phase_step : signed(15 downto 0);
   signal arx_p_acc_enable : std_logic;
   signal arx_p_acc_phase_sum : signed(15 downto 0);
   component cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2
      port (
         clock : in std_logic;
         resetn : in std_logic;
         x_in : in signed(14 downto 0);
         y_in : in signed(14 downto 0);
         p_in : in signed(15 downto 0);
         enable : in std_logic;
         op_mode : in std_logic;
         x_out : out signed(15 downto 0);
         y_out : out signed(15 downto 0);
         p_out : out signed(15 downto 0)
      );
   end component;
   
   signal arx_duv_x_in : signed(14 downto 0);
   signal arx_duv_y_in : signed(14 downto 0);
   signal arx_duv_p_in : signed(15 downto 0);
   signal arx_duv_enable : std_logic;
   signal arx_duv_op_mode : std_logic;
   signal arx_duv_x_out : signed(15 downto 0);
   signal arx_duv_y_out : signed(15 downto 0);
   signal arx_duv_p_out : signed(15 downto 0);
begin

   p_acc : phase_acc_signed_16_1_8
      port map (
         clock => clock,
         resetn => resetn,
         phase_step => arx_p_acc_phase_step,
         enable => arx_p_acc_enable,
         phase_sum => arx_p_acc_phase_sum
      );
   
   duv : cordic_signed_16_1_signed_15_1_16_16_15_signed_16_2
      port map (
         clock => clock,
         resetn => resetn,
         x_in => arx_duv_x_in,
         y_in => arx_duv_y_in,
         p_in => arx_duv_p_in,
         enable => arx_duv_enable,
         op_mode => arx_duv_op_mode,
         x_out => arx_duv_x_out,
         y_out => arx_duv_y_out,
         p_out => arx_duv_p_out
      );
   
   update : process (arx_p_acc_phase_sum, arx_duv_x_out, arx_duv_y_out, arx_duv_p_out, phase_step, enable)
      variable cordic_in_x : signed(14 downto 0); -- reads=1, writes=1
      variable cordic_in_y : signed(14 downto 0); -- reads=1, writes=1
      variable cordic_out_x : signed(15 downto 0); -- reads=1, writes=1
      variable cordic_out_y : signed(15 downto 0); -- reads=1, writes=1
      variable cordic_out_p : signed(15 downto 0); -- reads=0, writes=1
      variable phase_sum : signed(15 downto 0); -- reads=1, writes=1
      variable cordic_op_mode : std_logic; -- reads=1, writes=1
   begin
      --initialize variables and outports
      cordic_in_x := to_signed(0, 15);
      cordic_in_y := to_signed(0, 15);
      cordic_out_x := to_signed(0, 16);
      cordic_out_y := to_signed(0, 16);
      cordic_out_p := to_signed(0, 16);
      phase_sum := to_signed(0, 16);
      cordic_op_mode := '0';
      x_out <= to_signed(0, 16);
      y_out <= to_signed(0, 16);
      --copy register values to local variables
      --read from component outports
      phase_sum := arx_p_acc_phase_sum;
      cordic_out_x := arx_duv_x_out;
      cordic_out_y := arx_duv_y_out;
      cordic_out_p := arx_duv_p_out;
      --update outputs and register values
      cordic_op_mode := '0';
      cordic_in_y := "000000000000000";
      cordic_in_x := "011100110011001";
      x_out <= cordic_out_x;
      y_out <= cordic_out_y;
      --write to component inports
      arx_p_acc_phase_step <= phase_step;
      arx_p_acc_enable <= enable;
      arx_duv_x_in <= cordic_in_x;
      arx_duv_y_in <= cordic_in_y;
      arx_duv_p_in <= phase_sum;
      arx_duv_enable <= enable;
      arx_duv_op_mode <= cordic_op_mode;
      --copy local variables to next register values
   end process update;
end rtl;

--
-- phase_acc_signed_16_1_8
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library arx_lib; use arx_lib.arx_numeric.all;
use work.arx_numeric.all;

entity phase_acc_signed_16_1_8 is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_step : in signed(15 downto 0);
      enable : in std_logic;
      phase_sum : out signed(15 downto 0)
   );
end phase_acc_signed_16_1_8;

architecture rtl of phase_acc_signed_16_1_8 is

   constant arx_phase_acc_reset : signed(15 downto 0) := "0000000000000000";

   signal arx_phase_acc_reg, arx_phase_acc_nxt : signed(15 downto 0);
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_phase_acc_reg <= arx_phase_acc_reset;
      elsif rising_edge(clock) then
         arx_phase_acc_reg <= arx_phase_acc_nxt;
      end if;
   end process registers;

   update : process (phase_step, enable, arx_phase_acc_reg)
      variable phase_acc : signed(15 downto 0); -- reads=2, writes=1
   begin
      --initialize variables and outports
      phase_sum <= to_signed(0, 16);
      --copy register values to local variables
      phase_acc := arx_phase_acc_reg;
      --read from component outports
      --update outputs and register values
      if enable = '1' then
         phase_acc := arx_wrap((arx_msb_extend(arx_phase_acc_reg, 1) + arx_msb_extend(phase_step, 1)), 1);
      end if;
      phase_sum <= arx_phase_acc_reg;
      --write to component inports
      --copy local variables to next register values
      arx_phase_acc_nxt <= phase_acc;
   end process update;
end rtl;

