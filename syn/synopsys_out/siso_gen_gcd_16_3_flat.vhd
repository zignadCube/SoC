
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_siso_gen is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_siso_gen;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture flat_gcd_16_3 of siso_gen is

   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component OAI22M20D1
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSPQ1
      port( D, CK, SB : in std_logic;  Q : out std_logic);
   end component;
   
   signal req_port, data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, num2_15_port, num2_14_port, num2_13_port, num2_12_port, 
      num2_11_port, num2_10_port, num2_9_port, num2_8_port, num2_7_port, 
      num2_6_port, num2_5_port, num2_4_port, num2_3_port, num2_2_port, 
      num2_1_port, num2_0_port, odd, sub_res_15, sub_res_14, sub_res_13, 
      sub_res_12, sub_res_11, sub_res_10, sub_res_9, sub_res_8, sub_res_7, 
      sub_res_6, sub_res_5, sub_res_4, sub_res_3, sub_res_2, sub_res_1, 
      sub_res_0, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, 
      N94, N95, N96, N97, n1, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
      n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80
      , n81, n820, n830, n840, n850, n860, n870, n880, n890, N810, N800, N790, 
      N780, N770, N760, N750, N740, N730, N720, N710, N700, N690, N680, N670, 
      N660, n900, n910, n920, n930, n940, n950, n960, n970, n98, n99, n100, 
      n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, 
      n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, 
      n149, n150, n151, n152, n153, n154, n155, n156, n157, n_1003, 
      add_0_root_add_80_ni_carry_2_port, add_0_root_add_80_ni_carry_3_port, 
      add_0_root_add_80_ni_carry_4_port, add_0_root_add_80_ni_carry_5_port, 
      add_0_root_add_80_ni_carry_6_port, add_0_root_add_80_ni_carry_7_port, 
      add_0_root_add_80_ni_carry_8_port, add_0_root_add_80_ni_carry_9_port, 
      add_0_root_add_80_ni_carry_10_port, add_0_root_add_80_ni_carry_11_port, 
      add_0_root_add_80_ni_carry_12_port, add_0_root_add_80_ni_carry_13_port, 
      add_0_root_add_80_ni_carry_14_port, add_0_root_add_80_ni_carry_15_port, 
      sub_63_n72, sub_63_n71, sub_63_n70, sub_63_n69, sub_63_n68, sub_63_n67, 
      sub_63_n66, sub_63_n65, sub_63_n64, sub_63_n63, sub_63_n62, sub_63_n61, 
      sub_63_n60, sub_63_n59, sub_63_n58, sub_63_n57, sub_63_n56, sub_63_n55, 
      sub_63_n54, sub_63_n52, sub_63_n51, sub_63_n50, sub_63_n49, sub_63_n48, 
      sub_63_n47, sub_63_n46, sub_63_n45, sub_63_n44, sub_63_n43, sub_63_n42, 
      sub_63_n41, sub_63_n40, sub_63_n39, sub_63_n38, sub_63_n37, sub_63_n36, 
      sub_63_n35, sub_63_n34, sub_63_n33, sub_63_n32, sub_63_n31, sub_63_n30, 
      sub_63_n29, sub_63_n28, sub_63_n27, sub_63_n26, sub_63_n25, sub_63_n24, 
      sub_63_n23, sub_63_n22, sub_63_n21, sub_63_n20, sub_63_n19, sub_63_n18, 
      sub_63_n17, sub_63_n16, sub_63_n15, sub_63_n14, sub_63_n13, sub_63_n12, 
      sub_63_n11, sub_63_n10, sub_63_n9, sub_63_n8, sub_63_n7, sub_63_n6, 
      sub_63_n5, sub_63_n4, sub_63_n3, sub_63_n2, sub_63_n1 : std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   odd_reg : DFFRPQ1 port map( D => n880, CK => clk, RB => n940, Q => odd);
   num2_reg_15 : DFFRPQ1 port map( D => n56, CK => clk, RB => n940, Q => 
                           num2_15_port);
   num2_reg_14 : DFFRPQ1 port map( D => n57, CK => clk, RB => n940, Q => 
                           num2_14_port);
   num2_reg_13 : DFFRPQ1 port map( D => n58, CK => clk, RB => n940, Q => 
                           num2_13_port);
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n940, Q => 
                           req_port);
   num1_reg_15 : DFFRPQ1 port map( D => n72, CK => clk, RB => n940, Q => 
                           data_out_15_port);
   num1_reg_14 : DFFRPQ1 port map( D => n73, CK => clk, RB => n940, Q => 
                           data_out_14_port);
   num1_reg_13 : DFFRPQ1 port map( D => n74, CK => clk, RB => n940, Q => 
                           data_out_13_port);
   num1_reg_12 : DFFRPQ1 port map( D => n75, CK => clk, RB => n940, Q => 
                           data_out_12_port);
   num2_reg_12 : DFFRPQ1 port map( D => n59, CK => clk, RB => n940, Q => 
                           num2_12_port);
   num1_reg_11 : DFFRPQ1 port map( D => n76, CK => clk, RB => n940, Q => 
                           data_out_11_port);
   num2_reg_11 : DFFRPQ1 port map( D => n60, CK => clk, RB => n940, Q => 
                           num2_11_port);
   num1_reg_10 : DFFRPQ1 port map( D => n77, CK => clk, RB => n940, Q => 
                           data_out_10_port);
   num2_reg_10 : DFFRPQ1 port map( D => n61, CK => clk, RB => n940, Q => 
                           num2_10_port);
   num1_reg_9 : DFFRPQ1 port map( D => n78, CK => clk, RB => n940, Q => 
                           data_out_9_port);
   num2_reg_9 : DFFRPQ1 port map( D => n62, CK => clk, RB => n940, Q => 
                           num2_9_port);
   num1_reg_8 : DFFRPQ1 port map( D => n79, CK => clk, RB => n940, Q => 
                           data_out_8_port);
   num2_reg_8 : DFFRPQ1 port map( D => n63, CK => clk, RB => n940, Q => 
                           num2_8_port);
   num1_reg_4 : DFFRPQ1 port map( D => n830, CK => clk, RB => n940, Q => 
                           data_out_4_port);
   num1_reg_6 : DFFRPQ1 port map( D => n81, CK => clk, RB => n940, Q => 
                           data_out_6_port);
   num1_reg_7 : DFFRPQ1 port map( D => n80, CK => clk, RB => n940, Q => 
                           data_out_7_port);
   num1_reg_2 : DFFRPQ1 port map( D => n850, CK => clk, RB => n940, Q => 
                           data_out_2_port);
   num1_reg_5 : DFFRPQ1 port map( D => n820, CK => clk, RB => n940, Q => 
                           data_out_5_port);
   num2_reg_4 : DFFRPQ1 port map( D => n67, CK => clk, RB => n940, Q => 
                           num2_4_port);
   num2_reg_6 : DFFRPQ1 port map( D => n65, CK => clk, RB => n940, Q => 
                           num2_6_port);
   num1_reg_1 : DFFRPQ1 port map( D => n860, CK => clk, RB => n940, Q => 
                           data_out_1_port);
   num1_reg_3 : DFFRPQ1 port map( D => n840, CK => clk, RB => n940, Q => 
                           data_out_3_port);
   num2_reg_7 : DFFRPQ1 port map( D => n64, CK => clk, RB => n940, Q => 
                           num2_7_port);
   num1_reg_0 : DFFRPQ1 port map( D => n870, CK => clk, RB => n940, Q => 
                           data_out_0_port);
   num2_reg_2 : DFFRPQ1 port map( D => n69, CK => clk, RB => n940, Q => 
                           num2_2_port);
   num2_reg_5 : DFFRPQ1 port map( D => n66, CK => clk, RB => n940, Q => 
                           num2_5_port);
   num2_reg_1 : DFFRPQ1 port map( D => n70, CK => clk, RB => n940, Q => 
                           num2_1_port);
   num2_reg_3 : DFFRPQ1 port map( D => n68, CK => clk, RB => n940, Q => 
                           num2_3_port);
   num2_reg_0 : DFFRPQ1 port map( D => n71, CK => clk, RB => n940, Q => 
                           num2_0_port);
   ready_reg : DFFRPQ1 port map( D => n157, CK => clk, RB => n940, Q => ready);
   U87 : INVD1 port map( A => sub_res_1, Z => N800);
   U88 : INVD1 port map( A => sub_res_2, Z => N790);
   U89 : AND2D1 port map( A1 => n120, A2 => N660, Z => n900);
   U90 : INVD1 port map( A => sub_res_3, Z => N780);
   U91 : INVD1 port map( A => sub_res_4, Z => N770);
   U92 : INVD1 port map( A => sub_res_5, Z => N760);
   U93 : INVD1 port map( A => sub_res_6, Z => N750);
   U94 : INVD1 port map( A => sub_res_7, Z => N740);
   U95 : INVD1 port map( A => n156, Z => n120);
   U96 : NAN2D1 port map( A1 => n101, A2 => n154, Z => n116);
   U97 : INVD1 port map( A => n155, Z => n100);
   U98 : INVD1 port map( A => sub_res_15, Z => N660);
   U99 : INVD1 port map( A => sub_res_14, Z => N670);
   U100 : INVD1 port map( A => sub_res_13, Z => N680);
   U101 : OAI21D1 port map( A1 => sub_res_15, A2 => n119, B => n920, Z => n151)
                           ;
   U102 : INVD1 port map( A => sub_res_12, Z => N690);
   U103 : AND2D1 port map( A1 => n120, A2 => sub_res_15, Z => n910);
   U104 : INVD1 port map( A => sub_res_0, Z => N810);
   U105 : INVD1 port map( A => sub_res_11, Z => N700);
   U106 : INVD1 port map( A => sub_res_10, Z => N710);
   U107 : INVD1 port map( A => sub_res_9, Z => N720);
   U108 : INVD1 port map( A => sub_res_8, Z => N730);
   U109 : INVD1 port map( A => n154, Z => n119);
   U110 : INVD1 port map( A => reset, Z => n940);
   U111 : OAI22M20D1 port map( B1 => n122, B2 => n118, A1 => n116, A2 => 
                           data_out_15_port, Z => n72);
   U112 : INVD1 port map( A => data_in(1), Z => n150);
   U113 : INVD1 port map( A => data_in(2), Z => n148);
   U114 : INVD1 port map( A => data_in(3), Z => n146);
   U115 : INVD1 port map( A => data_in(4), Z => n144);
   U116 : INVD1 port map( A => data_in(5), Z => n142);
   U117 : INVD1 port map( A => data_in(6), Z => n140);
   U118 : INVD1 port map( A => data_in(7), Z => n138);
   U119 : INVD1 port map( A => data_in(8), Z => n136);
   U120 : INVD1 port map( A => data_in(9), Z => n134);
   U121 : INVD1 port map( A => data_in(10), Z => n132);
   U122 : INVD1 port map( A => data_in(11), Z => n130);
   U123 : INVD1 port map( A => data_in(12), Z => n128);
   U124 : INVD1 port map( A => data_in(13), Z => n126);
   U125 : INVD1 port map( A => data_in(14), Z => n124);
   U126 : INVD1 port map( A => data_in(0), Z => n153);
   U127 : INVD1 port map( A => data_in(15), Z => n122);
   U128 : NAN2D1 port map( A1 => odd, A2 => req_port, Z => n154);
   U129 : INVD1 port map( A => odd, Z => n950);
   U130 : TIELO port map( Z => n1);
   U131 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n920);
   U132 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n930);
   U133 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n118);
   U134 : OAI21D1 port map( A1 => n119, A2 => n950, B => n920, Z => n880);
   U135 : NAN4D1 port map( A1 => N760, A2 => N770, A3 => N740, A4 => N750, Z =>
                           n99);
   U136 : NAN4D1 port map( A1 => N800, A2 => N810, A3 => N780, A4 => N790, Z =>
                           n98);
   U137 : NAN4D1 port map( A1 => N680, A2 => N690, A3 => N660, A4 => N670, Z =>
                           n970);
   U138 : NAN4D1 port map( A1 => N720, A2 => N730, A3 => N700, A4 => N710, Z =>
                           n960);
   U139 : OR4D1 port map( A1 => n99, A2 => n98, A3 => n970, A4 => n960, Z => 
                           n155);
   U140 : OAI21D1 port map( A1 => n119, A2 => n155, B => n930, Z => n890);
   U141 : OAI21D1 port map( A1 => sub_res_15, A2 => n100, B => n118, Z => n101)
                           ;
   U142 : NAN2D1 port map( A1 => n154, A2 => n930, Z => n156);
   U143 : AOI22D1 port map( A1 => n900, A2 => sub_res_14, B1 => 
                           data_out_14_port, B2 => n116, Z => n102);
   U144 : OAI21D1 port map( A1 => n124, A2 => n118, B => n102, Z => n73);
   U145 : AOI22D1 port map( A1 => n900, A2 => sub_res_13, B1 => 
                           data_out_13_port, B2 => n116, Z => n103);
   U146 : OAI21D1 port map( A1 => n126, A2 => n920, B => n103, Z => n74);
   U147 : AOI22D1 port map( A1 => n900, A2 => sub_res_12, B1 => 
                           data_out_12_port, B2 => n116, Z => n104);
   U148 : OAI21D1 port map( A1 => n128, A2 => n930, B => n104, Z => n75);
   U149 : AOI22D1 port map( A1 => n900, A2 => sub_res_11, B1 => 
                           data_out_11_port, B2 => n116, Z => n105);
   U150 : OAI21D1 port map( A1 => n130, A2 => n118, B => n105, Z => n76);
   U151 : AOI22D1 port map( A1 => n900, A2 => sub_res_10, B1 => 
                           data_out_10_port, B2 => n116, Z => n106);
   U152 : OAI21D1 port map( A1 => n132, A2 => n920, B => n106, Z => n77);
   U153 : AOI22D1 port map( A1 => n900, A2 => sub_res_9, B1 => data_out_9_port,
                           B2 => n116, Z => n107);
   U154 : OAI21D1 port map( A1 => n134, A2 => n930, B => n107, Z => n78);
   U155 : AOI22D1 port map( A1 => n900, A2 => sub_res_8, B1 => data_out_8_port,
                           B2 => n116, Z => n108);
   U156 : OAI21D1 port map( A1 => n136, A2 => n118, B => n108, Z => n79);
   U157 : AOI22D1 port map( A1 => n900, A2 => sub_res_7, B1 => data_out_7_port,
                           B2 => n116, Z => n109);
   U158 : OAI21D1 port map( A1 => n138, A2 => n920, B => n109, Z => n80);
   U159 : AOI22D1 port map( A1 => n900, A2 => sub_res_6, B1 => data_out_6_port,
                           B2 => n116, Z => n110);
   U160 : OAI21D1 port map( A1 => n140, A2 => n930, B => n110, Z => n81);
   U161 : AOI22D1 port map( A1 => n900, A2 => sub_res_5, B1 => data_out_5_port,
                           B2 => n116, Z => n111);
   U162 : OAI21D1 port map( A1 => n142, A2 => n118, B => n111, Z => n820);
   U163 : AOI22D1 port map( A1 => n900, A2 => sub_res_4, B1 => data_out_4_port,
                           B2 => n116, Z => n112);
   U164 : OAI21D1 port map( A1 => n144, A2 => n920, B => n112, Z => n830);
   U165 : AOI22D1 port map( A1 => n900, A2 => sub_res_3, B1 => data_out_3_port,
                           B2 => n116, Z => n113);
   U166 : OAI21D1 port map( A1 => n146, A2 => n930, B => n113, Z => n840);
   U167 : AOI22D1 port map( A1 => n900, A2 => sub_res_2, B1 => data_out_2_port,
                           B2 => n116, Z => n114);
   U168 : OAI21D1 port map( A1 => n148, A2 => n118, B => n114, Z => n850);
   U169 : AOI22D1 port map( A1 => n900, A2 => sub_res_1, B1 => data_out_1_port,
                           B2 => n116, Z => n115);
   U170 : OAI21D1 port map( A1 => n150, A2 => n920, B => n115, Z => n860);
   U171 : AOI22D1 port map( A1 => n900, A2 => sub_res_0, B1 => data_out_0_port,
                           B2 => n116, Z => n117);
   U172 : OAI21D1 port map( A1 => n153, A2 => n930, B => n117, Z => n870);
   U173 : AOI22D1 port map( A1 => num2_15_port, A2 => n151, B1 => N97, B2 => 
                           n910, Z => n121);
   U174 : OAI21D1 port map( A1 => n154, A2 => n122, B => n121, Z => n56);
   U175 : AOI22D1 port map( A1 => num2_14_port, A2 => n151, B1 => N96, B2 => 
                           n910, Z => n123);
   U176 : OAI21D1 port map( A1 => n154, A2 => n124, B => n123, Z => n57);
   U177 : AOI22D1 port map( A1 => num2_13_port, A2 => n151, B1 => N95, B2 => 
                           n910, Z => n125);
   U178 : OAI21D1 port map( A1 => n154, A2 => n126, B => n125, Z => n58);
   U179 : AOI22D1 port map( A1 => num2_12_port, A2 => n151, B1 => N94, B2 => 
                           n910, Z => n127);
   U180 : OAI21D1 port map( A1 => n154, A2 => n128, B => n127, Z => n59);
   U181 : AOI22D1 port map( A1 => num2_11_port, A2 => n151, B1 => N93, B2 => 
                           n910, Z => n129);
   U182 : OAI21D1 port map( A1 => n154, A2 => n130, B => n129, Z => n60);
   U183 : AOI22D1 port map( A1 => num2_10_port, A2 => n151, B1 => N92, B2 => 
                           n910, Z => n131);
   U184 : OAI21D1 port map( A1 => n154, A2 => n132, B => n131, Z => n61);
   U185 : AOI22D1 port map( A1 => num2_9_port, A2 => n151, B1 => N91, B2 => 
                           n910, Z => n133);
   U186 : OAI21D1 port map( A1 => n154, A2 => n134, B => n133, Z => n62);
   U187 : AOI22D1 port map( A1 => num2_8_port, A2 => n151, B1 => N90, B2 => 
                           n910, Z => n135);
   U188 : OAI21D1 port map( A1 => n154, A2 => n136, B => n135, Z => n63);
   U189 : AOI22D1 port map( A1 => num2_7_port, A2 => n151, B1 => N89, B2 => 
                           n910, Z => n137);
   U190 : OAI21D1 port map( A1 => n154, A2 => n138, B => n137, Z => n64);
   U191 : AOI22D1 port map( A1 => num2_6_port, A2 => n151, B1 => N88, B2 => 
                           n910, Z => n139);
   U192 : OAI21D1 port map( A1 => n154, A2 => n140, B => n139, Z => n65);
   U193 : AOI22D1 port map( A1 => num2_5_port, A2 => n151, B1 => N87, B2 => 
                           n910, Z => n141);
   U194 : OAI21D1 port map( A1 => n154, A2 => n142, B => n141, Z => n66);
   U195 : AOI22D1 port map( A1 => num2_4_port, A2 => n151, B1 => N86, B2 => 
                           n910, Z => n143);
   U196 : OAI21D1 port map( A1 => n154, A2 => n144, B => n143, Z => n67);
   U197 : AOI22D1 port map( A1 => num2_3_port, A2 => n151, B1 => N85, B2 => 
                           n910, Z => n145);
   U198 : OAI21D1 port map( A1 => n154, A2 => n146, B => n145, Z => n68);
   U199 : AOI22D1 port map( A1 => num2_2_port, A2 => n151, B1 => N84, B2 => 
                           n910, Z => n147);
   U200 : OAI21D1 port map( A1 => n154, A2 => n148, B => n147, Z => n69);
   U201 : AOI22D1 port map( A1 => num2_1_port, A2 => n151, B1 => N83, B2 => 
                           n910, Z => n149);
   U202 : OAI21D1 port map( A1 => n154, A2 => n150, B => n149, Z => n70);
   U203 : AOI22D1 port map( A1 => num2_0_port, A2 => n151, B1 => N82, B2 => 
                           n910, Z => n152);
   U204 : OAI21D1 port map( A1 => n154, A2 => n153, B => n152, Z => n71);
   U205 : NOR2D1 port map( A1 => n156, A2 => n155, Z => n157);
   add_0_root_add_80_ni_U2 : EXOR2D1 port map( A1 => 
                           add_0_root_add_80_ni_carry_15_port, A2 => N660, Z =>
                           N97);
   add_0_root_add_80_ni_U1 : INVD1 port map( A => N810, Z => N82);
   add_0_root_add_80_ni_U1_1_2 : ADHALFDL port map( A => N790, B => 
                           add_0_root_add_80_ni_carry_2_port, CO => 
                           add_0_root_add_80_ni_carry_3_port, S => N84);
   add_0_root_add_80_ni_U1_1_3 : ADHALFDL port map( A => N780, B => 
                           add_0_root_add_80_ni_carry_3_port, CO => 
                           add_0_root_add_80_ni_carry_4_port, S => N85);
   add_0_root_add_80_ni_U1_1_4 : ADHALFDL port map( A => N770, B => 
                           add_0_root_add_80_ni_carry_4_port, CO => 
                           add_0_root_add_80_ni_carry_5_port, S => N86);
   add_0_root_add_80_ni_U1_1_5 : ADHALFDL port map( A => N760, B => 
                           add_0_root_add_80_ni_carry_5_port, CO => 
                           add_0_root_add_80_ni_carry_6_port, S => N87);
   add_0_root_add_80_ni_U1_1_6 : ADHALFDL port map( A => N750, B => 
                           add_0_root_add_80_ni_carry_6_port, CO => 
                           add_0_root_add_80_ni_carry_7_port, S => N88);
   add_0_root_add_80_ni_U1_1_7 : ADHALFDL port map( A => N740, B => 
                           add_0_root_add_80_ni_carry_7_port, CO => 
                           add_0_root_add_80_ni_carry_8_port, S => N89);
   add_0_root_add_80_ni_U1_1_14 : ADHALFDL port map( A => N670, B => 
                           add_0_root_add_80_ni_carry_14_port, CO => 
                           add_0_root_add_80_ni_carry_15_port, S => N96);
   add_0_root_add_80_ni_U1_1_1 : ADHALFDL port map( A => N800, B => N810, CO =>
                           add_0_root_add_80_ni_carry_2_port, S => N83);
   add_0_root_add_80_ni_U1_1_8 : ADHALFDL port map( A => N730, B => 
                           add_0_root_add_80_ni_carry_8_port, CO => 
                           add_0_root_add_80_ni_carry_9_port, S => N90);
   add_0_root_add_80_ni_U1_1_9 : ADHALFDL port map( A => N720, B => 
                           add_0_root_add_80_ni_carry_9_port, CO => 
                           add_0_root_add_80_ni_carry_10_port, S => N91);
   add_0_root_add_80_ni_U1_1_10 : ADHALFDL port map( A => N710, B => 
                           add_0_root_add_80_ni_carry_10_port, CO => 
                           add_0_root_add_80_ni_carry_11_port, S => N92);
   add_0_root_add_80_ni_U1_1_11 : ADHALFDL port map( A => N700, B => 
                           add_0_root_add_80_ni_carry_11_port, CO => 
                           add_0_root_add_80_ni_carry_12_port, S => N93);
   add_0_root_add_80_ni_U1_1_12 : ADHALFDL port map( A => N690, B => 
                           add_0_root_add_80_ni_carry_12_port, CO => 
                           add_0_root_add_80_ni_carry_13_port, S => N94);
   add_0_root_add_80_ni_U1_1_13 : ADHALFDL port map( A => N680, B => 
                           add_0_root_add_80_ni_carry_13_port, CO => 
                           add_0_root_add_80_ni_carry_14_port, S => N95);
   sub_63_U138 : INVD1 port map( A => sub_63_n37, Z => sub_63_n36);
   sub_63_U137 : INVD1 port map( A => sub_63_n46, Z => sub_63_n45);
   sub_63_U136 : NAN2D1 port map( A1 => sub_63_n56, A2 => sub_63_n48, Z => 
                           sub_63_n8);
   sub_63_U135 : INVD1 port map( A => num2_4_port, Z => sub_63_n68);
   sub_63_U134 : NOR2D1 port map( A1 => sub_63_n68, A2 => data_out_4_port, Z =>
                           sub_63_n34);
   sub_63_U133 : NAN2D1 port map( A1 => sub_63_n68, A2 => data_out_4_port, Z =>
                           sub_63_n35);
   sub_63_U132 : INVD1 port map( A => sub_63_n34, Z => sub_63_n32);
   sub_63_U131 : NOR2D1 port map( A1 => sub_63_n34, A2 => sub_63_n29, Z => 
                           sub_63_n27);
   sub_63_U130 : INVD1 port map( A => sub_63_n35, Z => sub_63_n33);
   sub_63_U129 : NAN2D1 port map( A1 => sub_63_n32, A2 => sub_63_n35, Z => 
                           sub_63_n5);
   sub_63_U128 : INVD1 port map( A => num2_1_port, Z => sub_63_n71);
   sub_63_U127 : NOR2D1 port map( A1 => sub_63_n71, A2 => data_out_1_port, Z =>
                           sub_63_n47);
   sub_63_U126 : NAN2D1 port map( A1 => sub_63_n71, A2 => data_out_1_port, Z =>
                           sub_63_n48);
   sub_63_U125 : INVD1 port map( A => sub_63_n47, Z => sub_63_n56);
   sub_63_U124 : INVD1 port map( A => num2_3_port, Z => sub_63_n69);
   sub_63_U123 : NOR2D1 port map( A1 => sub_63_n69, A2 => data_out_3_port, Z =>
                           sub_63_n40);
   sub_63_U122 : NAN2D1 port map( A1 => sub_63_n69, A2 => data_out_3_port, Z =>
                           sub_63_n41);
   sub_63_U121 : NOR2D1 port map( A1 => sub_63_n43, A2 => sub_63_n40, Z => 
                           sub_63_n38);
   sub_63_U120 : INVD1 port map( A => sub_63_n40, Z => sub_63_n54);
   sub_63_U119 : NAN2D1 port map( A1 => sub_63_n54, A2 => sub_63_n41, Z => 
                           sub_63_n6);
   sub_63_U118 : NOR2D1 port map( A1 => sub_63_n67, A2 => data_out_5_port, Z =>
                           sub_63_n29);
   sub_63_U117 : INVD1 port map( A => sub_63_n29, Z => sub_63_n52);
   sub_63_U116 : INVD1 port map( A => num2_5_port, Z => sub_63_n67);
   sub_63_U115 : NAN2D1 port map( A1 => sub_63_n67, A2 => data_out_5_port, Z =>
                           sub_63_n30);
   sub_63_U114 : INVD1 port map( A => num2_2_port, Z => sub_63_n70);
   sub_63_U113 : NOR2D1 port map( A1 => sub_63_n70, A2 => data_out_2_port, Z =>
                           sub_63_n43);
   sub_63_U112 : NAN2D1 port map( A1 => sub_63_n70, A2 => data_out_2_port, Z =>
                           sub_63_n44);
   sub_63_U111 : INVD1 port map( A => sub_63_n43, Z => sub_63_n55);
   sub_63_U110 : NAN2D1 port map( A1 => sub_63_n52, A2 => sub_63_n30, Z => 
                           sub_63_n4);
   sub_63_U109 : NAN2D1 port map( A1 => sub_63_n55, A2 => sub_63_n44, Z => 
                           sub_63_n7);
   sub_63_U108 : INVD1 port map( A => num2_7_port, Z => sub_63_n65);
   sub_63_U107 : NOR2D1 port map( A1 => sub_63_n65, A2 => data_out_7_port, Z =>
                           sub_63_n21);
   sub_63_U106 : NAN2D1 port map( A1 => sub_63_n65, A2 => data_out_7_port, Z =>
                           sub_63_n22);
   sub_63_U105 : NOR2D1 port map( A1 => sub_63_n24, A2 => sub_63_n21, Z => 
                           sub_63_n19);
   sub_63_U104 : INVD1 port map( A => sub_63_n21, Z => sub_63_n50);
   sub_63_U103 : NAN2D1 port map( A1 => sub_63_n27, A2 => sub_63_n19, Z => 
                           sub_63_n17);
   sub_63_U102 : INVD1 port map( A => num2_0_port, Z => sub_63_n72);
   sub_63_U101 : NOR2D1 port map( A1 => sub_63_n72, A2 => data_out_0_port, Z =>
                           sub_63_n49);
   sub_63_U100 : NAN2D1 port map( A1 => sub_63_n50, A2 => sub_63_n22, Z => 
                           sub_63_n2);
   sub_63_U99 : INVD1 port map( A => num2_6_port, Z => sub_63_n66);
   sub_63_U98 : NOR2D1 port map( A1 => sub_63_n66, A2 => data_out_6_port, Z => 
                           sub_63_n24);
   sub_63_U97 : NAN2D1 port map( A1 => sub_63_n66, A2 => data_out_6_port, Z => 
                           sub_63_n25);
   sub_63_U96 : INVD1 port map( A => sub_63_n24, Z => sub_63_n51);
   sub_63_U95 : NAN2D1 port map( A1 => sub_63_n51, A2 => sub_63_n25, Z => 
                           sub_63_n3);
   sub_63_U94 : INVD1 port map( A => num2_8_port, Z => sub_63_n64);
   sub_63_U93 : INVD1 port map( A => num2_9_port, Z => sub_63_n63);
   sub_63_U92 : INVD1 port map( A => num2_10_port, Z => sub_63_n62);
   sub_63_U91 : INVD1 port map( A => num2_11_port, Z => sub_63_n61);
   sub_63_U90 : INVD1 port map( A => num2_12_port, Z => sub_63_n60);
   sub_63_U89 : INVD1 port map( A => num2_13_port, Z => sub_63_n59);
   sub_63_U88 : EXOR2DL port map( A1 => sub_63_n9, A2 => sub_63_n1, Z => 
                           sub_res_15);
   sub_63_U87 : INVD1 port map( A => num2_14_port, Z => sub_63_n58);
   sub_63_U86 : INVD1 port map( A => num2_15_port, Z => sub_63_n57);
   sub_63_U85 : EXOR2D1 port map( A1 => sub_63_n57, A2 => data_out_15_port, Z 
                           => sub_63_n1);
   sub_63_U64 : EXNOR2D1 port map( A1 => sub_63_n72, A2 => data_out_0_port, Z 
                           => sub_res_0);
   sub_63_U59 : OAI21D1 port map( A1 => sub_63_n47, A2 => sub_63_n49, B => 
                           sub_63_n48, Z => sub_63_n46);
   sub_63_U57 : EXOR2D1 port map( A1 => sub_63_n8, A2 => sub_63_n49, Z => 
                           sub_res_1);
   sub_63_U52 : OAI21D1 port map( A1 => sub_63_n45, A2 => sub_63_n43, B => 
                           sub_63_n44, Z => sub_63_n42);
   sub_63_U51 : EXOR2D1 port map( A1 => sub_63_n45, A2 => sub_63_n7, Z => 
                           sub_res_2);
   sub_63_U46 : OAI21D1 port map( A1 => sub_63_n40, A2 => sub_63_n44, B => 
                           sub_63_n41, Z => sub_63_n39);
   sub_63_U44 : AOI21D1 port map( A1 => sub_63_n38, A2 => sub_63_n46, B => 
                           sub_63_n39, Z => sub_63_n37);
   sub_63_U42 : EXNOR2D1 port map( A1 => sub_63_n42, A2 => sub_63_n6, Z => 
                           sub_res_3);
   sub_63_U35 : AOI21D1 port map( A1 => sub_63_n36, A2 => sub_63_n32, B => 
                           sub_63_n33, Z => sub_63_n31);
   sub_63_U34 : EXNOR2D1 port map( A1 => sub_63_n36, A2 => sub_63_n5, Z => 
                           sub_res_4);
   sub_63_U29 : OAI21D1 port map( A1 => sub_63_n29, A2 => sub_63_n35, B => 
                           sub_63_n30, Z => sub_63_n28);
   sub_63_U27 : AOI21D1 port map( A1 => sub_63_n36, A2 => sub_63_n27, B => 
                           sub_63_n28, Z => sub_63_n26);
   sub_63_U26 : EXOR2D1 port map( A1 => sub_63_n31, A2 => sub_63_n4, Z => 
                           sub_res_5);
   sub_63_U21 : OAI21D1 port map( A1 => sub_63_n26, A2 => sub_63_n24, B => 
                           sub_63_n25, Z => sub_63_n23);
   sub_63_U20 : EXOR2D1 port map( A1 => sub_63_n26, A2 => sub_63_n3, Z => 
                           sub_res_6);
   sub_63_U15 : OAI21D1 port map( A1 => sub_63_n21, A2 => sub_63_n25, B => 
                           sub_63_n22, Z => sub_63_n20);
   sub_63_U13 : AOI21D1 port map( A1 => sub_63_n19, A2 => sub_63_n28, B => 
                           sub_63_n20, Z => sub_63_n18);
   sub_63_U11 : OAI21D1 port map( A1 => sub_63_n37, A2 => sub_63_n17, B => 
                           sub_63_n18, Z => sub_63_n16);
   sub_63_U10 : EXNOR2D1 port map( A1 => sub_63_n23, A2 => sub_63_n2, Z => 
                           sub_res_7);
   sub_63_U9 : ADFULD1 port map( A => sub_63_n64, B => data_out_8_port, CI => 
                           sub_63_n16, CO => sub_63_n15, S => sub_res_8);
   sub_63_U8 : ADFULD1 port map( A => sub_63_n63, B => data_out_9_port, CI => 
                           sub_63_n15, CO => sub_63_n14, S => sub_res_9);
   sub_63_U7 : ADFULD1 port map( A => sub_63_n62, B => data_out_10_port, CI => 
                           sub_63_n14, CO => sub_63_n13, S => sub_res_10);
   sub_63_U6 : ADFULD1 port map( A => sub_63_n61, B => data_out_11_port, CI => 
                           sub_63_n13, CO => sub_63_n12, S => sub_res_11);
   sub_63_U5 : ADFULD1 port map( A => sub_63_n60, B => data_out_12_port, CI => 
                           sub_63_n12, CO => sub_63_n11, S => sub_res_12);
   sub_63_U4 : ADFULD1 port map( A => sub_63_n59, B => data_out_13_port, CI => 
                           sub_63_n11, CO => sub_63_n10, S => sub_res_13);
   sub_63_U3 : ADFULD1 port map( A => sub_63_n58, B => data_out_14_port, CI => 
                           sub_63_n10, CO => sub_63_n9, S => sub_res_14);

end flat_gcd_16_3;
