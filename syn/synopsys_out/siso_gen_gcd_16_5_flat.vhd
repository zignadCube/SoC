
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

architecture flat_gcd_16_5 of siso_gen is

   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4M1D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component NOR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OA32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
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
      num2_1_port, num2_0_port, odd, N44, t1_15, t1_14, t1_13, t1_12, t1_11, 
      t1_10, t1_9, t1_8, t1_7, t1_6, t1_5, t1_4, t1_3, t1_2, t1_1, t1_0, t2_15,
      t2_14, t2_13, t2_12, t2_11, t2_10, t2_9, t2_8, t2_7, t2_6, t2_5, t2_4, 
      t2_3, t2_2, t2_1, t2_0, N48, sub_res_15, sub_res_14, sub_res_13, 
      sub_res_12, sub_res_11, sub_res_10, sub_res_9, sub_res_8, sub_res_7, 
      sub_res_6, sub_res_5, sub_res_4, sub_res_3, sub_res_2, sub_res_1, 
      sub_res_0, n1, n480, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, 
      n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73
      , n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, 
      n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, 
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, 
      n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n_1003, sub_84_n17, sub_84_n16, sub_84_n15, sub_84_n14, sub_84_n13, 
      sub_84_n12, sub_84_n11, sub_84_n10, sub_84_n9, sub_84_n8, sub_84_n7, 
      sub_84_n6, sub_84_n5, sub_84_n4, sub_84_n3, sub_84_n2, sub_84_n1, 
      sub_84_carry_1_port, sub_84_carry_2_port, sub_84_carry_3_port, 
      sub_84_carry_4_port, sub_84_carry_5_port, sub_84_carry_6_port, 
      sub_84_carry_7_port, sub_84_carry_8_port, sub_84_carry_9_port, 
      sub_84_carry_10_port, sub_84_carry_11_port, sub_84_carry_12_port, 
      sub_84_carry_13_port, sub_84_carry_14_port, sub_84_carry_15_port : 
      std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   U50 : OAI22D1 port map( A1 => n125, A2 => n214, B1 => n124, B2 => n202, Z =>
                           t2_9);
   U51 : OAI22D1 port map( A1 => n126, A2 => n168, B1 => n124, B2 => n220, Z =>
                           t2_8);
   U52 : OAI22D1 port map( A1 => n126, A2 => n213, B1 => n124, B2 => n159, Z =>
                           t2_7);
   U53 : OAI22D1 port map( A1 => n126, A2 => n212, B1 => n124, B2 => n160, Z =>
                           t2_6);
   U54 : OAI22D1 port map( A1 => n126, A2 => n211, B1 => n124, B2 => n161, Z =>
                           t2_5);
   U55 : OAI22D1 port map( A1 => n126, A2 => n210, B1 => n124, B2 => n162, Z =>
                           t2_4);
   U56 : OAI22D1 port map( A1 => n126, A2 => n209, B1 => n124, B2 => n163, Z =>
                           t2_3);
   U57 : OAI22D1 port map( A1 => n126, A2 => n208, B1 => n124, B2 => n164, Z =>
                           t2_2);
   U58 : OAI22D1 port map( A1 => n126, A2 => n169, B1 => n124, B2 => n165, Z =>
                           t2_1);
   U59 : OAI22D1 port map( A1 => n126, A2 => n207, B1 => n124, B2 => n203, Z =>
                           t2_15);
   U60 : OAI22D1 port map( A1 => n126, A2 => n166, B1 => n124, B2 => n200, Z =>
                           t2_14);
   U61 : OAI22D1 port map( A1 => n119, A2 => n217, B1 => n124, B2 => n157, Z =>
                           t2_13);
   U62 : OAI22D1 port map( A1 => n126, A2 => n216, B1 => n124, B2 => n158, Z =>
                           t2_12);
   U63 : OAI22D1 port map( A1 => n125, A2 => n167, B1 => n124, B2 => n221, Z =>
                           t2_11);
   U64 : OAI22D1 port map( A1 => n126, A2 => n215, B1 => n124, B2 => n201, Z =>
                           t2_10);
   U65 : OAI22D1 port map( A1 => n126, A2 => n218, B1 => n124, B2 => n219, Z =>
                           t2_0);
   U66 : OAI22D1 port map( A1 => n202, A2 => n126, B1 => n124, B2 => n214, Z =>
                           t1_9);
   U67 : OAI22D1 port map( A1 => n126, A2 => n220, B1 => n124, B2 => n168, Z =>
                           t1_8);
   U68 : OAI22D1 port map( A1 => n126, A2 => n159, B1 => n124, B2 => n213, Z =>
                           t1_7);
   U69 : OAI22D1 port map( A1 => n126, A2 => n160, B1 => n124, B2 => n212, Z =>
                           t1_6);
   U70 : OAI22D1 port map( A1 => n126, A2 => n161, B1 => n124, B2 => n211, Z =>
                           t1_5);
   U71 : OAI22D1 port map( A1 => n126, A2 => n162, B1 => n124, B2 => n210, Z =>
                           t1_4);
   U72 : OAI22D1 port map( A1 => n126, A2 => n163, B1 => n124, B2 => n209, Z =>
                           t1_3);
   U73 : OAI22D1 port map( A1 => n126, A2 => n164, B1 => n124, B2 => n208, Z =>
                           t1_2);
   U74 : OAI22D1 port map( A1 => n126, A2 => n165, B1 => n123, B2 => n169, Z =>
                           t1_1);
   U75 : OAI22D1 port map( A1 => n126, A2 => n203, B1 => n123, B2 => n207, Z =>
                           t1_15);
   U76 : OAI22D1 port map( A1 => n119, A2 => n200, B1 => n123, B2 => n166, Z =>
                           t1_14);
   U77 : OAI22D1 port map( A1 => n126, A2 => n157, B1 => n124, B2 => n217, Z =>
                           t1_13);
   U78 : OAI22D1 port map( A1 => n119, A2 => n158, B1 => n124, B2 => n216, Z =>
                           t1_12);
   U79 : OAI22D1 port map( A1 => n126, A2 => n221, B1 => n124, B2 => n167, Z =>
                           t1_11);
   U80 : OAI22D1 port map( A1 => n125, A2 => n201, B1 => n124, B2 => n215, Z =>
                           t1_10);
   U81 : OAI22D1 port map( A1 => n125, A2 => n219, B1 => n123, B2 => n218, Z =>
                           t1_0);
   U82 : OAI21D1 port map( A1 => n480, A2 => n219, B => n49, Z => n85);
   U83 : AOI22D1 port map( A1 => sub_res_0, A2 => n50, B1 => data_in(0), B2 => 
                           n205, Z => n49);
   U84 : OAI21D1 port map( A1 => n480, A2 => n165, B => n51, Z => n86);
   U85 : AOI22D1 port map( A1 => sub_res_1, A2 => n50, B1 => data_in(1), B2 => 
                           n205, Z => n51);
   U86 : OAI21D1 port map( A1 => n480, A2 => n164, B => n52, Z => n87);
   U87 : AOI22D1 port map( A1 => sub_res_2, A2 => n50, B1 => data_in(2), B2 => 
                           n205, Z => n52);
   U88 : OAI21D1 port map( A1 => n480, A2 => n163, B => n53, Z => n88);
   U89 : AOI22D1 port map( A1 => sub_res_3, A2 => n50, B1 => data_in(3), B2 => 
                           n205, Z => n53);
   U90 : OAI21D1 port map( A1 => n480, A2 => n162, B => n54, Z => n89);
   U91 : AOI22D1 port map( A1 => sub_res_4, A2 => n50, B1 => data_in(4), B2 => 
                           n205, Z => n54);
   U92 : OAI21D1 port map( A1 => n480, A2 => n161, B => n55, Z => n90);
   U93 : AOI22D1 port map( A1 => sub_res_5, A2 => n50, B1 => data_in(5), B2 => 
                           n205, Z => n55);
   U94 : OAI21D1 port map( A1 => n480, A2 => n160, B => n56, Z => n91);
   U95 : AOI22D1 port map( A1 => sub_res_6, A2 => n50, B1 => data_in(6), B2 => 
                           n205, Z => n56);
   U96 : OAI21D1 port map( A1 => n480, A2 => n159, B => n57, Z => n92);
   U97 : AOI22D1 port map( A1 => sub_res_7, A2 => n50, B1 => data_in(7), B2 => 
                           n205, Z => n57);
   U98 : OAI21D1 port map( A1 => n480, A2 => n220, B => n58, Z => n93);
   U99 : AOI22D1 port map( A1 => sub_res_8, A2 => n50, B1 => data_in(8), B2 => 
                           n205, Z => n58);
   U100 : OAI21D1 port map( A1 => n480, A2 => n202, B => n59, Z => n94);
   U101 : AOI22D1 port map( A1 => sub_res_9, A2 => n50, B1 => data_in(9), B2 =>
                           n205, Z => n59);
   U102 : OAI21D1 port map( A1 => n480, A2 => n201, B => n60, Z => n95);
   U103 : AOI22D1 port map( A1 => sub_res_10, A2 => n50, B1 => data_in(10), B2 
                           => n205, Z => n60);
   U104 : OAI21D1 port map( A1 => n480, A2 => n221, B => n61, Z => n96);
   U105 : AOI22D1 port map( A1 => sub_res_11, A2 => n50, B1 => data_in(11), B2 
                           => n205, Z => n61);
   U106 : OAI21D1 port map( A1 => n480, A2 => n158, B => n62, Z => n97);
   U107 : AOI22D1 port map( A1 => sub_res_12, A2 => n50, B1 => data_in(12), B2 
                           => n205, Z => n62);
   U108 : OAI21D1 port map( A1 => n480, A2 => n157, B => n63, Z => n98);
   U109 : AOI22D1 port map( A1 => sub_res_13, A2 => n50, B1 => data_in(13), B2 
                           => n205, Z => n63);
   U110 : OAI21D1 port map( A1 => n480, A2 => n200, B => n64, Z => n99);
   U111 : AOI22D1 port map( A1 => sub_res_14, A2 => n50, B1 => data_in(14), B2 
                           => n205, Z => n64);
   U112 : OAI21D1 port map( A1 => n218, A2 => n204, B => n65, Z => n100);
   U113 : AOI22D1 port map( A1 => n66, A2 => sub_res_0, B1 => n121, B2 => 
                           data_in(0), Z => n65);
   U114 : OAI21D1 port map( A1 => n166, A2 => n204, B => n68, Z => n101);
   U115 : AOI22D1 port map( A1 => n66, A2 => sub_res_14, B1 => n120, B2 => 
                           data_in(14), Z => n68);
   U116 : OAI21D1 port map( A1 => n217, A2 => n204, B => n69, Z => n102);
   U117 : AOI22D1 port map( A1 => n66, A2 => sub_res_13, B1 => n67, B2 => 
                           data_in(13), Z => n69);
   U118 : OAI21D1 port map( A1 => n216, A2 => n204, B => n70, Z => n103);
   U119 : AOI22D1 port map( A1 => n66, A2 => sub_res_12, B1 => n121, B2 => 
                           data_in(12), Z => n70);
   U120 : OAI21D1 port map( A1 => n167, A2 => n204, B => n71, Z => n104);
   U121 : AOI22D1 port map( A1 => n66, A2 => sub_res_11, B1 => n120, B2 => 
                           data_in(11), Z => n71);
   U122 : OAI21D1 port map( A1 => n215, A2 => n204, B => n72, Z => n105);
   U123 : AOI22D1 port map( A1 => n66, A2 => sub_res_10, B1 => n67, B2 => 
                           data_in(10), Z => n72);
   U124 : OAI21D1 port map( A1 => n214, A2 => n204, B => n73, Z => n106);
   U125 : AOI22D1 port map( A1 => n66, A2 => sub_res_9, B1 => n121, B2 => 
                           data_in(9), Z => n73);
   U126 : OAI21D1 port map( A1 => n168, A2 => n204, B => n74, Z => n107);
   U127 : AOI22D1 port map( A1 => n66, A2 => sub_res_8, B1 => n120, B2 => 
                           data_in(8), Z => n74);
   U128 : OAI21D1 port map( A1 => n213, A2 => n204, B => n75, Z => n108);
   U129 : AOI22D1 port map( A1 => n66, A2 => sub_res_7, B1 => n67, B2 => 
                           data_in(7), Z => n75);
   U130 : OAI21D1 port map( A1 => n212, A2 => n204, B => n76, Z => n109);
   U131 : AOI22D1 port map( A1 => n66, A2 => sub_res_6, B1 => n121, B2 => 
                           data_in(6), Z => n76);
   U132 : OAI21D1 port map( A1 => n211, A2 => n204, B => n77, Z => n110);
   U133 : AOI22D1 port map( A1 => n66, A2 => sub_res_5, B1 => n120, B2 => 
                           data_in(5), Z => n77);
   U134 : OAI21D1 port map( A1 => n210, A2 => n204, B => n78, Z => n111);
   U135 : AOI22D1 port map( A1 => n66, A2 => sub_res_4, B1 => n67, B2 => 
                           data_in(4), Z => n78);
   U136 : OAI21D1 port map( A1 => n209, A2 => n204, B => n79, Z => n112);
   U137 : AOI22D1 port map( A1 => n66, A2 => sub_res_3, B1 => n121, B2 => 
                           data_in(3), Z => n79);
   U138 : OAI21D1 port map( A1 => n208, A2 => n204, B => n80, Z => n113);
   U139 : AOI22D1 port map( A1 => n66, A2 => sub_res_2, B1 => n120, B2 => 
                           data_in(2), Z => n80);
   U140 : OAI21D1 port map( A1 => n169, A2 => n204, B => n81, Z => n114);
   U141 : AOI22D1 port map( A1 => n66, A2 => sub_res_1, B1 => n67, B2 => 
                           data_in(1), Z => n81);
   U142 : OAI21D1 port map( A1 => n207, A2 => n204, B => n82, Z => n115);
   U143 : AOI22D1 port map( A1 => sub_res_15, A2 => n66, B1 => data_in(15), B2 
                           => n120, Z => n82);
   U144 : OAI21D1 port map( A1 => n480, A2 => n203, B => n83, Z => n116);
   U145 : AOI22D1 port map( A1 => sub_res_15, A2 => n50, B1 => data_in(15), B2 
                           => n205, Z => n83);
   U147 : OAI21D1 port map( A1 => n67, A2 => n206, B => n84, Z => n117);
   U148 : OR2D1 port map( A1 => N44, A2 => n205, Z => n118);
   odd_reg : DFFRPQ1 port map( D => n117, CK => clk, RB => n122, Q => odd);
   req_i_reg : DFFSPQ1 port map( D => n118, CK => clk, SB => n122, Q => 
                           req_port);
   num2_reg_4 : DFFRPQ1 port map( D => n111, CK => clk, RB => n122, Q => 
                           num2_4_port);
   num2_reg_6 : DFFRPQ1 port map( D => n109, CK => clk, RB => n122, Q => 
                           num2_6_port);
   num1_reg_4 : DFFRPQ1 port map( D => n89, CK => clk, RB => n122, Q => 
                           data_out_4_port);
   num1_reg_5 : DFFRPQ1 port map( D => n90, CK => clk, RB => n122, Q => 
                           data_out_5_port);
   num2_reg_0 : DFFRPQ1 port map( D => n100, CK => clk, RB => n122, Q => 
                           num2_0_port);
   num1_reg_6 : DFFRPQ1 port map( D => n91, CK => clk, RB => n122, Q => 
                           data_out_6_port);
   num2_reg_12 : DFFRPQ1 port map( D => n103, CK => clk, RB => n122, Q => 
                           num2_12_port);
   num1_reg_0 : DFFRPQ1 port map( D => n85, CK => clk, RB => n122, Q => 
                           data_out_0_port);
   num2_reg_1 : DFFRPQ1 port map( D => n114, CK => clk, RB => n122, Q => 
                           num2_1_port);
   num1_reg_8 : DFFRPQ1 port map( D => n93, CK => clk, RB => n122, Q => 
                           data_out_8_port);
   num2_reg_8 : DFFRPQ1 port map( D => n107, CK => clk, RB => n122, Q => 
                           num2_8_port);
   num1_reg_1 : DFFRPQ1 port map( D => n86, CK => clk, RB => n122, Q => 
                           data_out_1_port);
   num1_reg_14 : DFFRPQ1 port map( D => n99, CK => clk, RB => n122, Q => 
                           data_out_14_port);
   num2_reg_2 : DFFRPQ1 port map( D => n113, CK => clk, RB => n122, Q => 
                           num2_2_port);
   num2_reg_14 : DFFRPQ1 port map( D => n101, CK => clk, RB => n122, Q => 
                           num2_14_port);
   num2_reg_5 : DFFRPQ1 port map( D => n110, CK => clk, RB => n122, Q => 
                           num2_5_port);
   num1_reg_12 : DFFRPQ1 port map( D => n97, CK => clk, RB => n122, Q => 
                           data_out_12_port);
   num1_reg_10 : DFFRPQ1 port map( D => n95, CK => clk, RB => n122, Q => 
                           data_out_10_port);
   num2_reg_7 : DFFRPQ1 port map( D => n108, CK => clk, RB => n122, Q => 
                           num2_7_port);
   num2_reg_10 : DFFRPQ1 port map( D => n105, CK => clk, RB => n122, Q => 
                           num2_10_port);
   num1_reg_2 : DFFRPQ1 port map( D => n87, CK => clk, RB => n122, Q => 
                           data_out_2_port);
   num2_reg_15 : DFFRPQ1 port map( D => n115, CK => clk, RB => n122, Q => 
                           num2_15_port);
   num1_reg_7 : DFFRPQ1 port map( D => n92, CK => clk, RB => n122, Q => 
                           data_out_7_port);
   num1_reg_9 : DFFRPQ1 port map( D => n94, CK => clk, RB => n122, Q => 
                           data_out_9_port);
   num2_reg_13 : DFFRPQ1 port map( D => n102, CK => clk, RB => n122, Q => 
                           num2_13_port);
   num2_reg_11 : DFFRPQ1 port map( D => n104, CK => clk, RB => n122, Q => 
                           num2_11_port);
   num2_reg_9 : DFFRPQ1 port map( D => n106, CK => clk, RB => n122, Q => 
                           num2_9_port);
   num2_reg_3 : DFFRPQ1 port map( D => n112, CK => clk, RB => n122, Q => 
                           num2_3_port);
   num1_reg_13 : DFFRPQ1 port map( D => n98, CK => clk, RB => n122, Q => 
                           data_out_13_port);
   num1_reg_15 : DFFRPQ1 port map( D => n116, CK => clk, RB => n122, Q => 
                           data_out_15_port);
   num1_reg_3 : DFFRPQ1 port map( D => n88, CK => clk, RB => n122, Q => 
                           data_out_3_port);
   num1_reg_11 : DFFRPQ1 port map( D => n96, CK => clk, RB => n122, Q => 
                           data_out_11_port);
   ready_reg : DFFRPQ1 port map( D => N44, CK => clk, RB => n122, Q => ready);
   U149 : INVD1 port map( A => n125, Z => n124);
   U150 : INVD1 port map( A => n123, Z => n125);
   U151 : INVD1 port map( A => n123, Z => n126);
   U152 : INVD1 port map( A => n119, Z => n123);
   U153 : NOR2D1 port map( A1 => n204, A2 => n205, Z => n50);
   U154 : INVD1 port map( A => n480, Z => n204);
   U155 : OA32D1 port map( A1 => n156, A2 => n155, A3 => n154, B1 => n153, B2 
                           => n156, Z => n119);
   U156 : AOI21D1 port map( A1 => n126, A2 => n84, B => n120, Z => n480);
   U157 : NOR2D1 port map( A1 => n480, A2 => n67, Z => n66);
   U158 : NOR4D1 port map( A1 => n121, A2 => n205, A3 => N48, A4 => n124, Z => 
                           N44);
   U159 : INVD1 port map( A => n84, Z => n205);
   U160 : INVD1 port map( A => reset, Z => n122);
   U161 : INVD1 port map( A => num2_11_port, Z => n167);
   U162 : INVD1 port map( A => data_out_3_port, Z => n163);
   U163 : INVD1 port map( A => data_out_13_port, Z => n157);
   U164 : INVD1 port map( A => data_out_7_port, Z => n159);
   U165 : INVD1 port map( A => data_out_2_port, Z => n164);
   U166 : INVD1 port map( A => data_out_12_port, Z => n158);
   U167 : INVD1 port map( A => data_out_5_port, Z => n161);
   U168 : INVD1 port map( A => num2_14_port, Z => n166);
   U169 : INVD1 port map( A => data_out_1_port, Z => n165);
   U170 : INVD1 port map( A => num2_8_port, Z => n168);
   U171 : INVD1 port map( A => data_out_6_port, Z => n160);
   U172 : INVD1 port map( A => data_out_4_port, Z => n162);
   U173 : INVD1 port map( A => num2_1_port, Z => n169);
   U174 : INVD1 port map( A => num2_0_port, Z => n218);
   U175 : INVD1 port map( A => data_out_0_port, Z => n219);
   U176 : INVD1 port map( A => num2_2_port, Z => n208);
   U177 : INVD1 port map( A => num2_3_port, Z => n209);
   U178 : INVD1 port map( A => num2_4_port, Z => n210);
   U179 : INVD1 port map( A => num2_5_port, Z => n211);
   U180 : INVD1 port map( A => num2_6_port, Z => n212);
   U181 : INVD1 port map( A => num2_7_port, Z => n213);
   U182 : INVD1 port map( A => data_out_8_port, Z => n220);
   U183 : INVD1 port map( A => num2_9_port, Z => n214);
   U184 : INVD1 port map( A => num2_10_port, Z => n215);
   U185 : INVD1 port map( A => data_out_11_port, Z => n221);
   U186 : INVD1 port map( A => num2_12_port, Z => n216);
   U187 : INVD1 port map( A => num2_13_port, Z => n217);
   U188 : INVD1 port map( A => data_out_15_port, Z => n203);
   U189 : INVD1 port map( A => data_out_9_port, Z => n202);
   U190 : NAN2D1 port map( A1 => req_port, A2 => n206, Z => n84);
   U191 : INVD1 port map( A => odd, Z => n206);
   U192 : AND2D1 port map( A1 => req_port, A2 => odd, Z => n120);
   U193 : INVD1 port map( A => data_out_10_port, Z => n201);
   U194 : INVD1 port map( A => data_out_14_port, Z => n200);
   U195 : INVD1 port map( A => num2_15_port, Z => n207);
   U196 : AND2D1 port map( A1 => req_port, A2 => odd, Z => n67);
   U197 : AND2D1 port map( A1 => req_port, A2 => odd, Z => n121);
   U198 : TIELO port map( Z => n1);
   U199 : OR2D1 port map( A1 => num2_13_port, A2 => n157, Z => n131);
   U200 : NOR2M1D1 port map( A1 => data_out_15_port, A2 => num2_15_port, Z => 
                           n130);
   U201 : AOI21D1 port map( A1 => n166, A2 => data_out_14_port, B => n130, Z =>
                           n134);
   U202 : OAI211D1 port map( A1 => num2_12_port, A2 => n158, B => n131, C => 
                           n134, Z => n149);
   U203 : NOR2M1D1 port map( A1 => data_out_11_port, A2 => num2_11_port, Z => 
                           n127);
   U204 : AOI21D1 port map( A1 => n215, A2 => data_out_10_port, B => n127, Z =>
                           n152);
   U205 : OAI32D1 port map( A1 => n215, A2 => data_out_10_port, A3 => n127, B1 
                           => data_out_11_port, B2 => n167, Z => n129);
   U206 : AND2D1 port map( A1 => data_out_9_port, A2 => n214, Z => n150);
   U207 : OAI32D1 port map( A1 => n168, A2 => data_out_8_port, A3 => n150, B1 
                           => data_out_9_port, B2 => n214, Z => n128);
   U208 : OAI22D1 port map( A1 => n152, A2 => n129, B1 => n129, B2 => n128, Z 
                           => n136);
   U209 : OAI32D1 port map( A1 => n166, A2 => data_out_14_port, A3 => n130, B1 
                           => data_out_15_port, B2 => n207, Z => n133);
   U210 : AO32D1 port map( A1 => num2_12_port, A2 => n158, A3 => n131, B1 => 
                           n157, B2 => num2_13_port, Z => n132);
   U211 : OAI22D1 port map( A1 => n134, A2 => n133, B1 => n133, B2 => n132, Z 
                           => n135);
   U212 : OAI21D1 port map( A1 => n149, A2 => n136, B => n135, Z => n156);
   U213 : NAN2M1D1 port map( A1 => num2_5_port, A2 => data_out_5_port, Z => 
                           n145);
   U214 : AOI32D1 port map( A1 => n145, A2 => n162, A3 => num2_4_port, B1 => 
                           num2_5_port, B2 => n161, Z => n139);
   U215 : OR2D1 port map( A1 => num2_7_port, A2 => n159, Z => n137);
   U216 : AOI32D1 port map( A1 => num2_6_port, A2 => n160, A3 => n137, B1 => 
                           n159, B2 => num2_7_port, Z => n138);
   U217 : OAI21D1 port map( A1 => num2_6_port, A2 => n160, B => n137, Z => n146
                           );
   U218 : AOI22D1 port map( A1 => n139, A2 => n138, B1 => n138, B2 => n146, Z 
                           => n155);
   U219 : OR2D1 port map( A1 => num2_3_port, A2 => n163, Z => n141);
   U220 : AOI32D1 port map( A1 => num2_2_port, A2 => n164, A3 => n141, B1 => 
                           n163, B2 => num2_3_port, Z => n143);
   U221 : OAI22M10D1 port map( A1 => data_out_0_port, A2 => num2_0_port, B1 => 
                           n165, B2 => num2_1_port, Z => n140);
   U222 : OAI211D1 port map( A1 => n169, A2 => data_out_1_port, B => n143, C =>
                           n140, Z => n148);
   U223 : OAI21D1 port map( A1 => num2_2_port, A2 => n164, B => n141, Z => n142
                           );
   U224 : NAN2D1 port map( A1 => n143, A2 => n142, Z => n144);
   U225 : OAI211D1 port map( A1 => num2_4_port, A2 => n162, B => n145, C => 
                           n144, Z => n147);
   U226 : NOR3M1D1 port map( A1 => n148, A2 => n147, A3 => n146, Z => n154);
   U227 : AND2D1 port map( A1 => data_out_8_port, A2 => n168, Z => n151);
   U228 : NOR4M1D1 port map( A1 => n152, A2 => n151, A3 => n150, A4 => n149, Z 
                           => n153);
   U229 : OR2D1 port map( A1 => data_out_13_port, A2 => n217, Z => n174);
   U230 : NOR2M1D1 port map( A1 => num2_15_port, A2 => data_out_15_port, Z => 
                           n173);
   U231 : AOI21D1 port map( A1 => n200, A2 => num2_14_port, B => n173, Z => 
                           n177);
   U232 : OAI211D1 port map( A1 => data_out_12_port, A2 => n216, B => n174, C 
                           => n177, Z => n192);
   U233 : NOR2M1D1 port map( A1 => num2_11_port, A2 => data_out_11_port, Z => 
                           n170);
   U234 : AOI21D1 port map( A1 => n201, A2 => num2_10_port, B => n170, Z => 
                           n195);
   U235 : OAI32D1 port map( A1 => n201, A2 => num2_10_port, A3 => n170, B1 => 
                           num2_11_port, B2 => n221, Z => n172);
   U236 : AND2D1 port map( A1 => num2_9_port, A2 => n202, Z => n193);
   U237 : OAI32D1 port map( A1 => n220, A2 => num2_8_port, A3 => n193, B1 => 
                           num2_9_port, B2 => n202, Z => n171);
   U238 : OAI22D1 port map( A1 => n195, A2 => n172, B1 => n172, B2 => n171, Z 
                           => n179);
   U239 : OAI32D1 port map( A1 => n200, A2 => num2_14_port, A3 => n173, B1 => 
                           num2_15_port, B2 => n203, Z => n176);
   U240 : AO32D1 port map( A1 => data_out_12_port, A2 => n216, A3 => n174, B1 
                           => n217, B2 => data_out_13_port, Z => n175);
   U241 : OAI22D1 port map( A1 => n177, A2 => n176, B1 => n176, B2 => n175, Z 
                           => n178);
   U242 : OAI21D1 port map( A1 => n192, A2 => n179, B => n178, Z => n199);
   U243 : NAN2M1D1 port map( A1 => data_out_5_port, A2 => num2_5_port, Z => 
                           n188);
   U244 : AOI32D1 port map( A1 => n188, A2 => n210, A3 => data_out_4_port, B1 
                           => data_out_5_port, B2 => n211, Z => n182);
   U245 : OR2D1 port map( A1 => data_out_7_port, A2 => n213, Z => n180);
   U246 : AOI32D1 port map( A1 => data_out_6_port, A2 => n212, A3 => n180, B1 
                           => n213, B2 => data_out_7_port, Z => n181);
   U247 : OAI21D1 port map( A1 => data_out_6_port, A2 => n212, B => n180, Z => 
                           n189);
   U248 : AOI22D1 port map( A1 => n182, A2 => n181, B1 => n181, B2 => n189, Z 
                           => n198);
   U249 : OR2D1 port map( A1 => data_out_3_port, A2 => n209, Z => n184);
   U250 : AOI32D1 port map( A1 => data_out_2_port, A2 => n208, A3 => n184, B1 
                           => n209, B2 => data_out_3_port, Z => n186);
   U251 : OAI22M10D1 port map( A1 => num2_0_port, A2 => data_out_0_port, B1 => 
                           n169, B2 => data_out_1_port, Z => n183);
   U252 : OAI211D1 port map( A1 => n165, A2 => num2_1_port, B => n186, C => 
                           n183, Z => n191);
   U253 : OAI21D1 port map( A1 => data_out_2_port, A2 => n208, B => n184, Z => 
                           n185);
   U254 : NAN2D1 port map( A1 => n186, A2 => n185, Z => n187);
   U255 : OAI211D1 port map( A1 => data_out_4_port, A2 => n210, B => n188, C =>
                           n187, Z => n190);
   U256 : NOR3M1D1 port map( A1 => n191, A2 => n190, A3 => n189, Z => n197);
   U257 : AND2D1 port map( A1 => num2_8_port, A2 => n220, Z => n194);
   U258 : NOR4M1D1 port map( A1 => n195, A2 => n194, A3 => n193, A4 => n192, Z 
                           => n196);
   U259 : OAI32D1 port map( A1 => n199, A2 => n198, A3 => n197, B1 => n196, B2 
                           => n199, Z => N48);
   sub_84_U19 : EXNOR2D1 port map( A1 => sub_84_n2, A2 => t1_0, Z => sub_res_0)
                           ;
   sub_84_U18 : INVD1 port map( A => t2_0, Z => sub_84_n2);
   sub_84_U17 : INVD1 port map( A => t2_9, Z => sub_84_n17);
   sub_84_U16 : INVD1 port map( A => t2_14, Z => sub_84_n7);
   sub_84_U15 : INVD1 port map( A => t2_13, Z => sub_84_n6);
   sub_84_U14 : INVD1 port map( A => t2_12, Z => sub_84_n5);
   sub_84_U13 : INVD1 port map( A => t2_11, Z => sub_84_n4);
   sub_84_U12 : INVD1 port map( A => t2_10, Z => sub_84_n3);
   sub_84_U11 : INVD1 port map( A => t2_8, Z => sub_84_n16);
   sub_84_U10 : INVD1 port map( A => t2_7, Z => sub_84_n15);
   sub_84_U9 : INVD1 port map( A => t2_6, Z => sub_84_n14);
   sub_84_U8 : INVD1 port map( A => t2_5, Z => sub_84_n13);
   sub_84_U7 : INVD1 port map( A => t2_4, Z => sub_84_n12);
   sub_84_U6 : INVD1 port map( A => t2_3, Z => sub_84_n11);
   sub_84_U5 : INVD1 port map( A => t2_2, Z => sub_84_n10);
   sub_84_U4 : NAN2D1 port map( A1 => t2_0, A2 => sub_84_n1, Z => 
                           sub_84_carry_1_port);
   sub_84_U3 : INVD1 port map( A => t2_1, Z => sub_84_n9);
   sub_84_U2 : INVD1 port map( A => t2_15, Z => sub_84_n8);
   sub_84_U1 : INVD1 port map( A => t1_0, Z => sub_84_n1);
   sub_84_U2_15 : EXOR3D1 port map( A1 => t1_15, A2 => sub_84_n8, A3 => 
                           sub_84_carry_15_port, Z => sub_res_15);
   sub_84_U2_1 : ADFULD1 port map( A => t1_1, B => sub_84_n9, CI => 
                           sub_84_carry_1_port, CO => sub_84_carry_2_port, S =>
                           sub_res_1);
   sub_84_U2_2 : ADFULD1 port map( A => t1_2, B => sub_84_n10, CI => 
                           sub_84_carry_2_port, CO => sub_84_carry_3_port, S =>
                           sub_res_2);
   sub_84_U2_3 : ADFULD1 port map( A => t1_3, B => sub_84_n11, CI => 
                           sub_84_carry_3_port, CO => sub_84_carry_4_port, S =>
                           sub_res_3);
   sub_84_U2_4 : ADFULD1 port map( A => t1_4, B => sub_84_n12, CI => 
                           sub_84_carry_4_port, CO => sub_84_carry_5_port, S =>
                           sub_res_4);
   sub_84_U2_5 : ADFULD1 port map( A => t1_5, B => sub_84_n13, CI => 
                           sub_84_carry_5_port, CO => sub_84_carry_6_port, S =>
                           sub_res_5);
   sub_84_U2_6 : ADFULD1 port map( A => t1_6, B => sub_84_n14, CI => 
                           sub_84_carry_6_port, CO => sub_84_carry_7_port, S =>
                           sub_res_6);
   sub_84_U2_7 : ADFULD1 port map( A => t1_7, B => sub_84_n15, CI => 
                           sub_84_carry_7_port, CO => sub_84_carry_8_port, S =>
                           sub_res_7);
   sub_84_U2_8 : ADFULD1 port map( A => t1_8, B => sub_84_n16, CI => 
                           sub_84_carry_8_port, CO => sub_84_carry_9_port, S =>
                           sub_res_8);
   sub_84_U2_9 : ADFULD1 port map( A => t1_9, B => sub_84_n17, CI => 
                           sub_84_carry_9_port, CO => sub_84_carry_10_port, S 
                           => sub_res_9);
   sub_84_U2_10 : ADFULD1 port map( A => t1_10, B => sub_84_n3, CI => 
                           sub_84_carry_10_port, CO => sub_84_carry_11_port, S 
                           => sub_res_10);
   sub_84_U2_11 : ADFULD1 port map( A => t1_11, B => sub_84_n4, CI => 
                           sub_84_carry_11_port, CO => sub_84_carry_12_port, S 
                           => sub_res_11);
   sub_84_U2_12 : ADFULD1 port map( A => t1_12, B => sub_84_n5, CI => 
                           sub_84_carry_12_port, CO => sub_84_carry_13_port, S 
                           => sub_res_12);
   sub_84_U2_13 : ADFULD1 port map( A => t1_13, B => sub_84_n6, CI => 
                           sub_84_carry_13_port, CO => sub_84_carry_14_port, S 
                           => sub_res_13);
   sub_84_U2_14 : ADFULD1 port map( A => t1_14, B => sub_84_n7, CI => 
                           sub_84_carry_14_port, CO => sub_84_carry_15_port, S 
                           => sub_res_14);

end flat_gcd_16_5;
