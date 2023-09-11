
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

architecture flat_gcd_16_2 of siso_gen is

   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INVDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
      add_0_root_add_80_ni_n50, add_0_root_add_80_ni_n48, 
      add_0_root_add_80_ni_n47, add_0_root_add_80_ni_n46, 
      add_0_root_add_80_ni_n45, add_0_root_add_80_ni_n43, 
      add_0_root_add_80_ni_n42, add_0_root_add_80_ni_n41, 
      add_0_root_add_80_ni_n40, add_0_root_add_80_ni_n39, 
      add_0_root_add_80_ni_n38, add_0_root_add_80_ni_n37, 
      add_0_root_add_80_ni_n36, add_0_root_add_80_ni_n35, 
      add_0_root_add_80_ni_n34, add_0_root_add_80_ni_n33, 
      add_0_root_add_80_ni_n31, add_0_root_add_80_ni_n30, 
      add_0_root_add_80_ni_n29, add_0_root_add_80_ni_n28, 
      add_0_root_add_80_ni_n27, add_0_root_add_80_ni_n25, 
      add_0_root_add_80_ni_n24, add_0_root_add_80_ni_n23, 
      add_0_root_add_80_ni_n22, add_0_root_add_80_ni_n19, 
      add_0_root_add_80_ni_n18, add_0_root_add_80_ni_n16, 
      add_0_root_add_80_ni_n15, add_0_root_add_80_ni_n13, 
      add_0_root_add_80_ni_n12, add_0_root_add_80_ni_n10, 
      add_0_root_add_80_ni_n9, add_0_root_add_80_ni_n8, add_0_root_add_80_ni_n6
      , add_0_root_add_80_ni_n5, add_0_root_add_80_ni_n4, 
      add_0_root_add_80_ni_n3, add_0_root_add_80_ni_n2, sub_63_n197, 
      sub_63_n196, sub_63_n140, sub_63_n139, sub_63_n138, sub_63_n137, 
      sub_63_n136, sub_63_n135, sub_63_n134, sub_63_n133, sub_63_n132, 
      sub_63_n131, sub_63_n130, sub_63_n129, sub_63_n128, sub_63_n127, 
      sub_63_n126, sub_63_n125, sub_63_n124, sub_63_n123, sub_63_n122, 
      sub_63_n120, sub_63_n119, sub_63_n118, sub_63_n117, sub_63_n116, 
      sub_63_n115, sub_63_n114, sub_63_n113, sub_63_n112, sub_63_n109, 
      sub_63_n108, sub_63_n107, sub_63_n106, sub_63_n105, sub_63_n104, 
      sub_63_n103, sub_63_n102, sub_63_n101, sub_63_n100, sub_63_n99, 
      sub_63_n98, sub_63_n97, sub_63_n96, sub_63_n95, sub_63_n94, sub_63_n93, 
      sub_63_n92, sub_63_n91, sub_63_n90, sub_63_n89, sub_63_n88, sub_63_n87, 
      sub_63_n86, sub_63_n82, sub_63_n81, sub_63_n80, sub_63_n77, sub_63_n76, 
      sub_63_n75, sub_63_n74, sub_63_n73, sub_63_n72, sub_63_n71, sub_63_n70, 
      sub_63_n69, sub_63_n68, sub_63_n67, sub_63_n66, sub_63_n65, sub_63_n63, 
      sub_63_n62, sub_63_n61, sub_63_n60, sub_63_n59, sub_63_n58, sub_63_n57, 
      sub_63_n54, sub_63_n53, sub_63_n52, sub_63_n49, sub_63_n48, sub_63_n47, 
      sub_63_n46, sub_63_n45, sub_63_n44, sub_63_n43, sub_63_n42, sub_63_n41, 
      sub_63_n40, sub_63_n39, sub_63_n38, sub_63_n37, sub_63_n36, sub_63_n35, 
      sub_63_n34, sub_63_n33, sub_63_n32, sub_63_n31, sub_63_n30, sub_63_n29, 
      sub_63_n28, sub_63_n27, sub_63_n26, sub_63_n25, sub_63_n23, sub_63_n21, 
      sub_63_n20, sub_63_n19, sub_63_n18, sub_63_n17, sub_63_n16, sub_63_n15, 
      sub_63_n14, sub_63_n13, sub_63_n12, sub_63_n11, sub_63_n10, sub_63_n9, 
      sub_63_n8, sub_63_n7, sub_63_n6, sub_63_n5, sub_63_n4, sub_63_n3 : 
      std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   odd_reg : DFFRPQ1 port map( D => n880, CK => clk, RB => n940, Q => odd);
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n940, Q => 
                           req_port);
   num1_reg_15 : DFFRPQ1 port map( D => n72, CK => clk, RB => n940, Q => 
                           data_out_15_port);
   num2_reg_15 : DFFRPQ1 port map( D => n56, CK => clk, RB => n940, Q => 
                           num2_15_port);
   num1_reg_14 : DFFRPQ1 port map( D => n73, CK => clk, RB => n940, Q => 
                           data_out_14_port);
   num2_reg_14 : DFFRPQ1 port map( D => n57, CK => clk, RB => n940, Q => 
                           num2_14_port);
   num1_reg_12 : DFFRPQ1 port map( D => n75, CK => clk, RB => n940, Q => 
                           data_out_12_port);
   num1_reg_13 : DFFRPQ1 port map( D => n74, CK => clk, RB => n940, Q => 
                           data_out_13_port);
   num2_reg_12 : DFFRPQ1 port map( D => n59, CK => clk, RB => n940, Q => 
                           num2_12_port);
   num2_reg_13 : DFFRPQ1 port map( D => n58, CK => clk, RB => n940, Q => 
                           num2_13_port);
   num1_reg_11 : DFFRPQ1 port map( D => n76, CK => clk, RB => n940, Q => 
                           data_out_11_port);
   num1_reg_8 : DFFRPQ1 port map( D => n79, CK => clk, RB => n940, Q => 
                           data_out_8_port);
   num1_reg_10 : DFFRPQ1 port map( D => n77, CK => clk, RB => n940, Q => 
                           data_out_10_port);
   num1_reg_9 : DFFRPQ1 port map( D => n78, CK => clk, RB => n940, Q => 
                           data_out_9_port);
   num2_reg_11 : DFFRPQ1 port map( D => n60, CK => clk, RB => n940, Q => 
                           num2_11_port);
   num2_reg_10 : DFFRPQ1 port map( D => n61, CK => clk, RB => n940, Q => 
                           num2_10_port);
   num2_reg_9 : DFFRPQ1 port map( D => n62, CK => clk, RB => n940, Q => 
                           num2_9_port);
   num2_reg_8 : DFFRPQ1 port map( D => n63, CK => clk, RB => n940, Q => 
                           num2_8_port);
   num1_reg_7 : DFFRPQ1 port map( D => n80, CK => clk, RB => n940, Q => 
                           data_out_7_port);
   num1_reg_2 : DFFRPQ1 port map( D => n850, CK => clk, RB => n940, Q => 
                           data_out_2_port);
   num1_reg_4 : DFFRPQ1 port map( D => n830, CK => clk, RB => n940, Q => 
                           data_out_4_port);
   num1_reg_1 : DFFRPQ1 port map( D => n860, CK => clk, RB => n940, Q => 
                           data_out_1_port);
   num1_reg_6 : DFFRPQ1 port map( D => n81, CK => clk, RB => n940, Q => 
                           data_out_6_port);
   num1_reg_3 : DFFRPQ1 port map( D => n840, CK => clk, RB => n940, Q => 
                           data_out_3_port);
   num2_reg_7 : DFFRPQ1 port map( D => n64, CK => clk, RB => n940, Q => 
                           num2_7_port);
   num1_reg_0 : DFFRPQ1 port map( D => n870, CK => clk, RB => n940, Q => 
                           data_out_0_port);
   num1_reg_5 : DFFRPQ1 port map( D => n820, CK => clk, RB => n940, Q => 
                           data_out_5_port);
   num2_reg_4 : DFFRPQ1 port map( D => n67, CK => clk, RB => n940, Q => 
                           num2_4_port);
   num2_reg_2 : DFFRPQ1 port map( D => n69, CK => clk, RB => n940, Q => 
                           num2_2_port);
   num2_reg_6 : DFFRPQ1 port map( D => n65, CK => clk, RB => n940, Q => 
                           num2_6_port);
   num2_reg_3 : DFFRPQ1 port map( D => n68, CK => clk, RB => n940, Q => 
                           num2_3_port);
   num2_reg_1 : DFFRPQ1 port map( D => n70, CK => clk, RB => n940, Q => 
                           num2_1_port);
   num2_reg_5 : DFFRPQ1 port map( D => n66, CK => clk, RB => n940, Q => 
                           num2_5_port);
   num2_reg_0 : DFFRPQ1 port map( D => n71, CK => clk, RB => n940, Q => 
                           num2_0_port);
   ready_reg : DFFRPQ1 port map( D => n157, CK => clk, RB => n940, Q => ready);
   U87 : NAN4D1 port map( A1 => N680, A2 => N690, A3 => N660, A4 => N670, Z => 
                           n970);
   U88 : INVD1 port map( A => sub_res_11, Z => N700);
   U89 : INVD1 port map( A => sub_res_13, Z => N680);
   U90 : INVD1 port map( A => sub_res_9, Z => N720);
   U91 : INVD1 port map( A => sub_res_14, Z => N670);
   U92 : INVD1 port map( A => sub_res_12, Z => N690);
   U93 : INVD1 port map( A => sub_res_10, Z => N710);
   U94 : INVD1 port map( A => sub_res_1, Z => N800);
   U95 : INVD1 port map( A => sub_res_3, Z => N780);
   U96 : INVD1 port map( A => sub_res_8, Z => N730);
   U97 : INVD1 port map( A => sub_res_2, Z => N790);
   U98 : INVD1 port map( A => sub_res_4, Z => N770);
   U99 : INVD1 port map( A => sub_res_6, Z => N750);
   U100 : INVD1 port map( A => sub_res_5, Z => N760);
   U101 : INVD1 port map( A => sub_res_7, Z => N740);
   U102 : AND2D1 port map( A1 => n120, A2 => N660, Z => n900);
   U103 : INVD1 port map( A => n156, Z => n120);
   U104 : NAN2D1 port map( A1 => n101, A2 => n154, Z => n116);
   U105 : INVD1 port map( A => sub_res_15, Z => N660);
   U106 : INVD1 port map( A => sub_res_0, Z => N810);
   U107 : OAI21D1 port map( A1 => sub_res_15, A2 => n119, B => n920, Z => n151)
                           ;
   U108 : AND2D1 port map( A1 => n120, A2 => sub_res_15, Z => n910);
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
   U131 : INVD1 port map( A => n155, Z => n100);
   U132 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n920);
   U133 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n930);
   U134 : NAN2D1 port map( A1 => req_port, A2 => n950, Z => n118);
   U135 : OAI21D1 port map( A1 => n119, A2 => n950, B => n920, Z => n880);
   U136 : NAN4D1 port map( A1 => N760, A2 => N770, A3 => N740, A4 => N750, Z =>
                           n99);
   U137 : NAN4D1 port map( A1 => N800, A2 => N810, A3 => N780, A4 => N790, Z =>
                           n98);
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
   add_0_root_add_80_ni_U110 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n39,
                           A2 => add_0_root_add_80_ni_n40, Z => 
                           add_0_root_add_80_ni_n38);
   add_0_root_add_80_ni_U109 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n34,
                           A2 => N740, Z => add_0_root_add_80_ni_n31);
   add_0_root_add_80_ni_U108 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n34,
                           A2 => add_0_root_add_80_ni_n29, Z => 
                           add_0_root_add_80_ni_n28);
   add_0_root_add_80_ni_U107 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n23,
                           A2 => add_0_root_add_80_ni_n16, Z => 
                           add_0_root_add_80_ni_n13);
   add_0_root_add_80_ni_U106 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n23,
                           A2 => add_0_root_add_80_ni_n22, Z => 
                           add_0_root_add_80_ni_n19);
   add_0_root_add_80_ni_U105 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n10,
                           A2 => add_0_root_add_80_ni_n23, Z => 
                           add_0_root_add_80_ni_n9);
   add_0_root_add_80_ni_U104 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n2,
                           A2 => N660, Z => N97);
   add_0_root_add_80_ni_U103 : INVD1 port map( A => N810, Z => N82);
   add_0_root_add_80_ni_U102 : INVD1 port map( A => N670, Z => 
                           add_0_root_add_80_ni_n3);
   add_0_root_add_80_ni_U101 : INVD1 port map( A => N690, Z => 
                           add_0_root_add_80_ni_n12);
   add_0_root_add_80_ni_U100 : INVD1 port map( A => N730, Z => 
                           add_0_root_add_80_ni_n30);
   add_0_root_add_80_ni_U99 : INVD1 port map( A => N680, Z => 
                           add_0_root_add_80_ni_n8);
   add_0_root_add_80_ni_U98 : INVD1 port map( A => N710, Z => 
                           add_0_root_add_80_ni_n22);
   add_0_root_add_80_ni_U97 : INVD1 port map( A => N700, Z => 
                           add_0_root_add_80_ni_n18);
   add_0_root_add_80_ni_U96 : INVD1 port map( A => N740, Z => 
                           add_0_root_add_80_ni_n33);
   add_0_root_add_80_ni_U95 : INVD1 port map( A => N720, Z => 
                           add_0_root_add_80_ni_n27);
   add_0_root_add_80_ni_U94 : INVD1 port map( A => N760, Z => 
                           add_0_root_add_80_ni_n39);
   add_0_root_add_80_ni_U93 : INVD1 port map( A => N750, Z => 
                           add_0_root_add_80_ni_n37);
   add_0_root_add_80_ni_U92 : INVD1 port map( A => N770, Z => 
                           add_0_root_add_80_ni_n42);
   add_0_root_add_80_ni_U91 : INVD1 port map( A => N790, Z => 
                           add_0_root_add_80_ni_n47);
   add_0_root_add_80_ni_U90 : INVD1 port map( A => N780, Z => 
                           add_0_root_add_80_ni_n45);
   add_0_root_add_80_ni_U89 : INVD1 port map( A => N800, Z => 
                           add_0_root_add_80_ni_n50);
   add_0_root_add_80_ni_U88 : NAN2M1D1 port map( A1 => add_0_root_add_80_ni_n18
                           , A2 => N710, Z => add_0_root_add_80_ni_n16);
   add_0_root_add_80_ni_U87 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n30, 
                           A2 => add_0_root_add_80_ni_n33, Z => 
                           add_0_root_add_80_ni_n29);
   add_0_root_add_80_ni_U86 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n4, 
                           A2 => add_0_root_add_80_ni_n3, Z => 
                           add_0_root_add_80_ni_n2);
   add_0_root_add_80_ni_U85 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n46, 
                           A2 => N780, Z => add_0_root_add_80_ni_n43);
   add_0_root_add_80_ni_U84 : NAN2M1D1 port map( A1 => add_0_root_add_80_ni_n50
                           , A2 => N810, Z => add_0_root_add_80_ni_n48);
   add_0_root_add_80_ni_U83 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n47, 
                           A2 => add_0_root_add_80_ni_n48, Z => 
                           add_0_root_add_80_ni_n46);
   add_0_root_add_80_ni_U82 : NAN2D1 port map( A1 => N690, A2 => N680, Z => 
                           add_0_root_add_80_ni_n6);
   add_0_root_add_80_ni_U81 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n6, 
                           A2 => add_0_root_add_80_ni_n16, Z => 
                           add_0_root_add_80_ni_n5);
   add_0_root_add_80_ni_U80 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n5, 
                           A2 => add_0_root_add_80_ni_n24, Z => 
                           add_0_root_add_80_ni_n4);
   add_0_root_add_80_ni_U79 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n39, 
                           A2 => add_0_root_add_80_ni_n37, Z => 
                           add_0_root_add_80_ni_n36);
   add_0_root_add_80_ni_U78 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n36, 
                           A2 => add_0_root_add_80_ni_n41, Z => 
                           add_0_root_add_80_ni_n35);
   add_0_root_add_80_ni_U77 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n42, 
                           A2 => add_0_root_add_80_ni_n43, Z => 
                           add_0_root_add_80_ni_n41);
   add_0_root_add_80_ni_U76 : NAN2D1 port map( A1 => N720, A2 => 
                           add_0_root_add_80_ni_n29, Z => 
                           add_0_root_add_80_ni_n25);
   add_0_root_add_80_ni_U75 : NOR2D1 port map( A1 => add_0_root_add_80_ni_n25, 
                           A2 => add_0_root_add_80_ni_n35, Z => 
                           add_0_root_add_80_ni_n24);
   add_0_root_add_80_ni_U74 : INVD1 port map( A => add_0_root_add_80_ni_n41, Z 
                           => add_0_root_add_80_ni_n40);
   add_0_root_add_80_ni_U73 : INVD1 port map( A => add_0_root_add_80_ni_n35, Z 
                           => add_0_root_add_80_ni_n34);
   add_0_root_add_80_ni_U72 : INVD1 port map( A => add_0_root_add_80_ni_n16, Z 
                           => add_0_root_add_80_ni_n15);
   add_0_root_add_80_ni_U71 : NAN2D1 port map( A1 => add_0_root_add_80_ni_n15, 
                           A2 => N690, Z => add_0_root_add_80_ni_n10);
   add_0_root_add_80_ni_U70 : INVD1 port map( A => add_0_root_add_80_ni_n24, Z 
                           => add_0_root_add_80_ni_n23);
   add_0_root_add_80_ni_U62 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n50
                           , A2 => N810, Z => N83);
   add_0_root_add_80_ni_U59 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n47,
                           A2 => add_0_root_add_80_ni_n48, Z => N84);
   add_0_root_add_80_ni_U55 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n45
                           , A2 => add_0_root_add_80_ni_n46, Z => N85);
   add_0_root_add_80_ni_U51 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n42,
                           A2 => add_0_root_add_80_ni_n43, Z => N86);
   add_0_root_add_80_ni_U48 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n39,
                           A2 => add_0_root_add_80_ni_n40, Z => N87);
   add_0_root_add_80_ni_U43 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n38
                           , A2 => add_0_root_add_80_ni_n37, Z => N88);
   add_0_root_add_80_ni_U39 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n34
                           , A2 => add_0_root_add_80_ni_n33, Z => N89);
   add_0_root_add_80_ni_U35 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n31,
                           A2 => add_0_root_add_80_ni_n30, Z => N90);
   add_0_root_add_80_ni_U29 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n28,
                           A2 => add_0_root_add_80_ni_n27, Z => N91);
   add_0_root_add_80_ni_U24 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n23,
                           A2 => add_0_root_add_80_ni_n22, Z => N92);
   add_0_root_add_80_ni_U17 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n19
                           , A2 => add_0_root_add_80_ni_n18, Z => N93);
   add_0_root_add_80_ni_U12 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n13
                           , A2 => add_0_root_add_80_ni_n12, Z => N94);
   add_0_root_add_80_ni_U6 : EXNOR2D1 port map( A1 => add_0_root_add_80_ni_n9, 
                           A2 => add_0_root_add_80_ni_n8, Z => N95);
   add_0_root_add_80_ni_U3 : EXOR2D1 port map( A1 => add_0_root_add_80_ni_n4, 
                           A2 => add_0_root_add_80_ni_n3, Z => N96);
   sub_63_U272 : AOI21DL port map( A1 => sub_63_n68, A2 => sub_63_n59, B => 
                           sub_63_n60, Z => sub_63_n54);
   sub_63_U271 : AOI21DL port map( A1 => sub_63_n68, A2 => sub_63_n48, B => 
                           sub_63_n49, Z => sub_63_n47);
   sub_63_U270 : EXOR2DL port map( A1 => sub_63_n38, A2 => sub_63_n5, Z => 
                           sub_res_12);
   sub_63_U269 : AOI21DL port map( A1 => sub_63_n68, A2 => sub_63_n117, B => 
                           sub_63_n65, Z => sub_63_n63);
   sub_63_U268 : AOI21DL port map( A1 => sub_63_n68, A2 => sub_63_n27, B => 
                           sub_63_n28, Z => sub_63_n26);
   sub_63_U267 : EXNOR2DL port map( A1 => sub_63_n68, A2 => sub_63_n9, Z => 
                           sub_res_8);
   sub_63_U266 : INVDL port map( A => sub_63_n97, Z => sub_63_n96);
   sub_63_U265 : INVD1 port map( A => sub_63_n106, Z => sub_63_n105);
   sub_63_U264 : NAN2D1 port map( A1 => sub_63_n124, A2 => sub_63_n108, Z => 
                           sub_63_n16);
   sub_63_U263 : NAN2D1 port map( A1 => sub_63_n132, A2 => data_out_8_port, Z 
                           => sub_63_n67);
   sub_63_U262 : INVD1 port map( A => sub_63_n67, Z => sub_63_n65);
   sub_63_U261 : NAN2D1 port map( A1 => sub_63_n117, A2 => sub_63_n67, Z => 
                           sub_63_n9);
   sub_63_U260 : OAI21D1 port map( A1 => sub_63_n61, A2 => sub_63_n67, B => 
                           sub_63_n62, Z => sub_63_n60);
   sub_63_U259 : INVD1 port map( A => sub_63_n60, Z => sub_63_n58);
   sub_63_U258 : AOI21DL port map( A1 => sub_63_n68, A2 => sub_63_n18, B => 
                           sub_63_n19, Z => sub_63_n17);
   sub_63_U257 : NAN2D1 port map( A1 => sub_63_n136, A2 => data_out_4_port, Z 
                           => sub_63_n95);
   sub_63_U256 : INVD1 port map( A => sub_63_n95, Z => sub_63_n93);
   sub_63_U255 : NAN2D1 port map( A1 => sub_63_n92, A2 => sub_63_n95, Z => 
                           sub_63_n13);
   sub_63_U254 : NOR2D1 port map( A1 => sub_63_n41, A2 => sub_63_n20, Z => 
                           sub_63_n18);
   sub_63_U253 : NOR2D1 port map( A1 => sub_63_n66, A2 => sub_63_n61, Z => 
                           sub_63_n59);
   sub_63_U252 : INVD1 port map( A => sub_63_n66, Z => sub_63_n117);
   sub_63_U251 : NAN2D1 port map( A1 => sub_63_n59, A2 => sub_63_n43, Z => 
                           sub_63_n41);
   sub_63_U250 : INVD1 port map( A => sub_63_n59, Z => sub_63_n57);
   sub_63_U249 : NAN2D1 port map( A1 => sub_63_n130, A2 => data_out_10_port, Z 
                           => sub_63_n53);
   sub_63_U248 : INVD1 port map( A => num2_10_port, Z => sub_63_n130);
   sub_63_U247 : EXOR2D1 port map( A1 => sub_63_n54, A2 => sub_63_n7, Z => 
                           sub_res_10);
   sub_63_U246 : NAN2D1 port map( A1 => sub_63_n115, A2 => sub_63_n53, Z => 
                           sub_63_n7);
   sub_63_U245 : NAN2D1 port map( A1 => sub_63_n135, A2 => data_out_5_port, Z 
                           => sub_63_n90);
   sub_63_U244 : INVD1 port map( A => sub_63_n94, Z => sub_63_n92);
   sub_63_U243 : NOR2D1 port map( A1 => sub_63_n89, A2 => sub_63_n94, Z => 
                           sub_63_n87);
   sub_63_U242 : NAN2D1 port map( A1 => sub_63_n71, A2 => sub_63_n87, Z => 
                           sub_63_n69);
   sub_63_U241 : NOR2D1 port map( A1 => sub_63_n130, A2 => data_out_10_port, Z 
                           => sub_63_n52);
   sub_63_U240 : NOR2D1 port map( A1 => sub_63_n41, A2 => sub_63_n29, Z => 
                           sub_63_n27);
   sub_63_U239 : INVD1 port map( A => sub_63_n41, Z => sub_63_n39);
   sub_63_U238 : INVD1 port map( A => sub_63_n42, Z => sub_63_n40);
   sub_63_U237 : NOR2D1 port map( A1 => sub_63_n52, A2 => sub_63_n45, Z => 
                           sub_63_n43);
   sub_63_U236 : AOI21D1 port map( A1 => sub_63_n43, A2 => sub_63_n60, B => 
                           sub_63_n44, Z => sub_63_n42);
   sub_63_U235 : INVD1 port map( A => num2_6_port, Z => sub_63_n134);
   sub_63_U234 : NAN2D1 port map( A1 => sub_63_n134, A2 => data_out_6_port, Z 
                           => sub_63_n81);
   sub_63_U233 : NAN2D1 port map( A1 => sub_63_n119, A2 => sub_63_n81, Z => 
                           sub_63_n11);
   sub_63_U232 : INVD1 port map( A => num2_13_port, Z => sub_63_n127);
   sub_63_U231 : NOR2D1 port map( A1 => sub_63_n127, A2 => data_out_13_port, Z 
                           => sub_63_n33);
   sub_63_U230 : NAN2D1 port map( A1 => sub_63_n127, A2 => data_out_13_port, Z 
                           => sub_63_n34);
   sub_63_U229 : NOR2D1 port map( A1 => sub_63_n36, A2 => sub_63_n33, Z => 
                           sub_63_n31);
   sub_63_U228 : INVD1 port map( A => sub_63_n33, Z => sub_63_n112);
   sub_63_U227 : INVD1 port map( A => sub_63_n32, Z => sub_63_n30);
   sub_63_U226 : EXOR2DL port map( A1 => sub_63_n26, A2 => sub_63_n3, Z => 
                           sub_res_14);
   sub_63_U225 : INVD1 port map( A => sub_63_n52, Z => sub_63_n115);
   sub_63_U224 : EXNOR2DL port map( A1 => sub_63_n35, A2 => sub_63_n4, Z => 
                           sub_res_13);
   sub_63_U223 : NOR2D1 port map( A1 => sub_63_n57, A2 => sub_63_n52, Z => 
                           sub_63_n48);
   sub_63_U222 : INVD1 port map( A => num2_4_port, Z => sub_63_n136);
   sub_63_U221 : NOR2D1 port map( A1 => sub_63_n136, A2 => data_out_4_port, Z 
                           => sub_63_n94);
   sub_63_U220 : INVD1 port map( A => sub_63_n88, Z => sub_63_n86);
   sub_63_U219 : NOR2D1 port map( A1 => sub_63_n139, A2 => data_out_1_port, Z 
                           => sub_63_n107);
   sub_63_U218 : EXOR2DL port map( A1 => sub_63_n47, A2 => sub_63_n6, Z => 
                           sub_res_11);
   sub_63_U217 : EXOR2DL port map( A1 => sub_63_n63, A2 => sub_63_n8, Z => 
                           sub_res_9);
   sub_63_U216 : INVD1 port map( A => sub_63_n107, Z => sub_63_n124);
   sub_63_U215 : INVD1 port map( A => num2_3_port, Z => sub_63_n137);
   sub_63_U214 : NOR2D1 port map( A1 => sub_63_n137, A2 => data_out_3_port, Z 
                           => sub_63_n100);
   sub_63_U213 : NAN2D1 port map( A1 => sub_63_n137, A2 => data_out_3_port, Z 
                           => sub_63_n101);
   sub_63_U212 : NOR2D1 port map( A1 => sub_63_n103, A2 => sub_63_n100, Z => 
                           sub_63_n98);
   sub_63_U211 : INVD1 port map( A => sub_63_n100, Z => sub_63_n122);
   sub_63_U210 : INVD1 port map( A => num2_1_port, Z => sub_63_n139);
   sub_63_U209 : NAN2D1 port map( A1 => sub_63_n139, A2 => data_out_1_port, Z 
                           => sub_63_n108);
   sub_63_U208 : NOR2D1 port map( A1 => sub_63_n134, A2 => data_out_6_port, Z 
                           => sub_63_n80);
   sub_63_U207 : NOR2D1 port map( A1 => sub_63_n80, A2 => sub_63_n73, Z => 
                           sub_63_n71);
   sub_63_U206 : INVD1 port map( A => sub_63_n80, Z => sub_63_n119);
   sub_63_U205 : NAN2D1 port map( A1 => sub_63_n122, A2 => sub_63_n101, Z => 
                           sub_63_n14);
   sub_63_U204 : INVD1 port map( A => num2_2_port, Z => sub_63_n138);
   sub_63_U203 : NOR2D1 port map( A1 => sub_63_n138, A2 => data_out_2_port, Z 
                           => sub_63_n103);
   sub_63_U202 : NAN2D1 port map( A1 => sub_63_n138, A2 => data_out_2_port, Z 
                           => sub_63_n104);
   sub_63_U201 : INVD1 port map( A => sub_63_n103, Z => sub_63_n123);
   sub_63_U200 : NAN2D1 port map( A1 => sub_63_n123, A2 => sub_63_n104, Z => 
                           sub_63_n15);
   sub_63_U199 : NOR2D1 port map( A1 => sub_63_n133, A2 => data_out_7_port, Z 
                           => sub_63_n73);
   sub_63_U198 : INVD1 port map( A => sub_63_n73, Z => sub_63_n118);
   sub_63_U197 : INVD1 port map( A => num2_7_port, Z => sub_63_n133);
   sub_63_U196 : NAN2D1 port map( A1 => sub_63_n133, A2 => data_out_7_port, Z 
                           => sub_63_n74);
   sub_63_U195 : INVD1 port map( A => num2_0_port, Z => sub_63_n140);
   sub_63_U194 : NOR2D1 port map( A1 => sub_63_n140, A2 => data_out_0_port, Z 
                           => sub_63_n109);
   sub_63_U193 : INVD1 port map( A => num2_5_port, Z => sub_63_n135);
   sub_63_U192 : NOR2D1 port map( A1 => sub_63_n135, A2 => data_out_5_port, Z 
                           => sub_63_n89);
   sub_63_U191 : INVD1 port map( A => sub_63_n89, Z => sub_63_n120);
   sub_63_U190 : NAN2D1 port map( A1 => sub_63_n120, A2 => sub_63_n90, Z => 
                           sub_63_n12);
   sub_63_U189 : NAN2D1 port map( A1 => sub_63_n118, A2 => sub_63_n74, Z => 
                           sub_63_n10);
   sub_63_U188 : NOR2D1 port map( A1 => sub_63_n131, A2 => data_out_9_port, Z 
                           => sub_63_n61);
   sub_63_U187 : INVD1 port map( A => sub_63_n61, Z => sub_63_n116);
   sub_63_U186 : INVD1 port map( A => num2_9_port, Z => sub_63_n131);
   sub_63_U185 : NAN2D1 port map( A1 => sub_63_n131, A2 => data_out_9_port, Z 
                           => sub_63_n62);
   sub_63_U184 : NAN2D1 port map( A1 => sub_63_n116, A2 => sub_63_n62, Z => 
                           sub_63_n8);
   sub_63_U183 : NOR2D1 port map( A1 => sub_63_n129, A2 => data_out_11_port, Z 
                           => sub_63_n45);
   sub_63_U182 : INVD1 port map( A => sub_63_n45, Z => sub_63_n114);
   sub_63_U181 : INVD1 port map( A => num2_11_port, Z => sub_63_n129);
   sub_63_U180 : NAN2D1 port map( A1 => sub_63_n129, A2 => data_out_11_port, Z 
                           => sub_63_n46);
   sub_63_U179 : NAN2D1 port map( A1 => sub_63_n114, A2 => sub_63_n46, Z => 
                           sub_63_n6);
   sub_63_U178 : NAN2D1 port map( A1 => sub_63_n31, A2 => sub_63_n196, Z => 
                           sub_63_n20);
   sub_63_U177 : INVD1 port map( A => sub_63_n31, Z => sub_63_n29);
   sub_63_U176 : NAN2D1 port map( A1 => sub_63_n112, A2 => sub_63_n34, Z => 
                           sub_63_n4);
   sub_63_U175 : INVD1 port map( A => num2_12_port, Z => sub_63_n128);
   sub_63_U174 : NOR2D1 port map( A1 => sub_63_n128, A2 => data_out_12_port, Z 
                           => sub_63_n36);
   sub_63_U173 : NAN2D1 port map( A1 => sub_63_n128, A2 => data_out_12_port, Z 
                           => sub_63_n37);
   sub_63_U172 : INVD1 port map( A => sub_63_n36, Z => sub_63_n113);
   sub_63_U171 : NAN2D1 port map( A1 => sub_63_n113, A2 => sub_63_n37, Z => 
                           sub_63_n5);
   sub_63_U170 : NOR2D1 port map( A1 => sub_63_n132, A2 => data_out_8_port, Z 
                           => sub_63_n66);
   sub_63_U169 : INVD1 port map( A => num2_14_port, Z => sub_63_n126);
   sub_63_U168 : NAN2D1 port map( A1 => sub_63_n126, A2 => data_out_14_port, Z 
                           => sub_63_n25);
   sub_63_U167 : INVD1 port map( A => sub_63_n25, Z => sub_63_n23);
   sub_63_U166 : NAN2D1 port map( A1 => sub_63_n196, A2 => sub_63_n25, Z => 
                           sub_63_n3);
   sub_63_U165 : INVD1 port map( A => num2_15_port, Z => sub_63_n125);
   sub_63_U164 : INVD1 port map( A => num2_8_port, Z => sub_63_n132);
   sub_63_U163 : EXNOR2D1 port map( A1 => sub_63_n125, A2 => data_out_15_port, 
                           Z => sub_63_n197);
   sub_63_U162 : EXOR2D1 port map( A1 => sub_63_n17, A2 => sub_63_n197, Z => 
                           sub_res_15);
   sub_63_U161 : NOR2M1D1 port map( A1 => sub_63_n87, A2 => sub_63_n80, Z => 
                           sub_63_n76);
   sub_63_U160 : OR2D1 port map( A1 => sub_63_n126, A2 => data_out_14_port, Z 
                           => sub_63_n196);
   sub_63_U139 : EXNOR2D1 port map( A1 => sub_63_n140, A2 => data_out_0_port, Z
                           => sub_res_0);
   sub_63_U134 : OAI21D1 port map( A1 => sub_63_n107, A2 => sub_63_n109, B => 
                           sub_63_n108, Z => sub_63_n106);
   sub_63_U132 : EXOR2D1 port map( A1 => sub_63_n16, A2 => sub_63_n109, Z => 
                           sub_res_1);
   sub_63_U127 : OAI21D1 port map( A1 => sub_63_n105, A2 => sub_63_n103, B => 
                           sub_63_n104, Z => sub_63_n102);
   sub_63_U126 : EXOR2D1 port map( A1 => sub_63_n105, A2 => sub_63_n15, Z => 
                           sub_res_2);
   sub_63_U121 : OAI21D1 port map( A1 => sub_63_n100, A2 => sub_63_n104, B => 
                           sub_63_n101, Z => sub_63_n99);
   sub_63_U119 : AOI21D1 port map( A1 => sub_63_n98, A2 => sub_63_n106, B => 
                           sub_63_n99, Z => sub_63_n97);
   sub_63_U117 : EXNOR2D1 port map( A1 => sub_63_n102, A2 => sub_63_n14, Z => 
                           sub_res_3);
   sub_63_U110 : AOI21D1 port map( A1 => sub_63_n96, A2 => sub_63_n92, B => 
                           sub_63_n93, Z => sub_63_n91);
   sub_63_U109 : EXNOR2D1 port map( A1 => sub_63_n96, A2 => sub_63_n13, Z => 
                           sub_res_4);
   sub_63_U104 : OAI21D1 port map( A1 => sub_63_n89, A2 => sub_63_n95, B => 
                           sub_63_n90, Z => sub_63_n88);
   sub_63_U98 : AOI21D1 port map( A1 => sub_63_n96, A2 => sub_63_n87, B => 
                           sub_63_n88, Z => sub_63_n82);
   sub_63_U97 : EXOR2D1 port map( A1 => sub_63_n91, A2 => sub_63_n12, Z => 
                           sub_res_5);
   sub_63_U90 : OAI21D1 port map( A1 => sub_63_n86, A2 => sub_63_n80, B => 
                           sub_63_n81, Z => sub_63_n77);
   sub_63_U88 : AOI21D1 port map( A1 => sub_63_n96, A2 => sub_63_n76, B => 
                           sub_63_n77, Z => sub_63_n75);
   sub_63_U87 : EXOR2D1 port map( A1 => sub_63_n82, A2 => sub_63_n11, Z => 
                           sub_res_6);
   sub_63_U82 : OAI21D1 port map( A1 => sub_63_n73, A2 => sub_63_n81, B => 
                           sub_63_n74, Z => sub_63_n72);
   sub_63_U80 : AOI21D1 port map( A1 => sub_63_n71, A2 => sub_63_n88, B => 
                           sub_63_n72, Z => sub_63_n70);
   sub_63_U78 : OAI21D1 port map( A1 => sub_63_n97, A2 => sub_63_n69, B => 
                           sub_63_n70, Z => sub_63_n68);
   sub_63_U77 : EXOR2D1 port map( A1 => sub_63_n75, A2 => sub_63_n10, Z => 
                           sub_res_7);
   sub_63_U50 : OAI21D1 port map( A1 => sub_63_n58, A2 => sub_63_n52, B => 
                           sub_63_n53, Z => sub_63_n49);
   sub_63_U42 : OAI21D1 port map( A1 => sub_63_n45, A2 => sub_63_n53, B => 
                           sub_63_n46, Z => sub_63_n44);
   sub_63_U36 : AOI21D1 port map( A1 => sub_63_n68, A2 => sub_63_n39, B => 
                           sub_63_n40, Z => sub_63_n38);
   sub_63_U30 : OAI21D1 port map( A1 => sub_63_n38, A2 => sub_63_n36, B => 
                           sub_63_n37, Z => sub_63_n35);
   sub_63_U24 : OAI21D1 port map( A1 => sub_63_n33, A2 => sub_63_n37, B => 
                           sub_63_n34, Z => sub_63_n32);
   sub_63_U20 : OAI21D1 port map( A1 => sub_63_n42, A2 => sub_63_n29, B => 
                           sub_63_n30, Z => sub_63_n28);
   sub_63_U10 : AOI21D1 port map( A1 => sub_63_n32, A2 => sub_63_n196, B => 
                           sub_63_n23, Z => sub_63_n21);
   sub_63_U8 : OAI21D1 port map( A1 => sub_63_n42, A2 => sub_63_n20, B => 
                           sub_63_n21, Z => sub_63_n19);

end flat_gcd_16_2;
