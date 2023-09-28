
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

architecture flat_calc_own_8_5 of siso_gen is

   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4M1D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFERPQ1
      port( D, CEB, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   signal left_in_add_reg_7_port, left_in_add_reg_6_port, 
      left_in_add_reg_5_port, left_in_add_reg_4_port, left_in_add_reg_3_port, 
      left_in_add_reg_2_port, left_in_add_reg_1_port, left_in_add_reg_0_port, 
      right_in_add_reg_7_port, right_in_add_reg_6_port, right_in_add_reg_5_port
      , right_in_add_reg_4_port, right_in_add_reg_3_port, 
      right_in_add_reg_2_port, right_in_add_reg_1_port, right_in_add_reg_0_port
      , left_in_mul_reg_7_port, left_in_mul_reg_6_port, left_in_mul_reg_5_port,
      left_in_mul_reg_4_port, left_in_mul_reg_3_port, left_in_mul_reg_2_port, 
      left_in_mul_reg_1_port, left_in_mul_reg_0_port, right_in_mul_reg_7_port, 
      right_in_mul_reg_6_port, right_in_mul_reg_5_port, right_in_mul_reg_4_port
      , right_in_mul_reg_3_port, right_in_mul_reg_2_port, 
      right_in_mul_reg_1_port, right_in_mul_reg_0_port, opcode_reg_3_port, 
      opcode_reg_2_port, opcode_reg_1_port, opcode_reg_0_port, 
      result_reg_15_port, result_reg_14_port, result_reg_13_port, 
      result_reg_12_port, result_reg_11_port, result_reg_10_port, 
      result_reg_9_port, result_reg_8_port, result_reg_7_port, 
      result_reg_6_port, result_reg_5_port, result_reg_4_port, 
      result_reg_3_port, result_reg_2_port, result_reg_1_port, 
      result_reg_0_port, cur_state_2_port, cur_state_1_port, cur_state_0_port, 
      ready_nxt, nxt_state_2_port, nxt_state_1_port, nxt_state_0_port, 
      adder_out_7_port, adder_out_6_port, adder_out_5_port, adder_out_4_port, 
      adder_out_3_port, adder_out_2_port, adder_out_1_port, adder_out_0_port, 
      mult_out_15_port, mult_out_14_port, mult_out_13_port, mult_out_12_port, 
      mult_out_11_port, mult_out_10_port, mult_out_9_port, mult_out_8_port, 
      mult_out_7_port, mult_out_6_port, mult_out_5_port, mult_out_4_port, 
      mult_out_3_port, mult_out_2_port, mult_out_1_port, mult_out_0_port, n1, 
      n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48
      , n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, 
      n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77
      , n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, 
      n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, 
      n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n_1003,
      add_210_n_1002, add_210_n1, add_210_carry_2_port, add_210_carry_3_port, 
      add_210_carry_4_port, add_210_carry_5_port, add_210_carry_6_port, 
      add_210_carry_7_port, mult_213_n246, mult_213_n245, mult_213_n244, 
      mult_213_n243, mult_213_n242, mult_213_n241, mult_213_n240, mult_213_n239
      , mult_213_n238, mult_213_n237, mult_213_n236, mult_213_n235, 
      mult_213_n234, mult_213_n233, mult_213_n232, mult_213_n231, mult_213_n230
      , mult_213_n229, mult_213_n228, mult_213_n227, mult_213_n226, 
      mult_213_n225, mult_213_n224, mult_213_n223, mult_213_n222, mult_213_n221
      , mult_213_n220, mult_213_n219, mult_213_n218, mult_213_n217, 
      mult_213_n216, mult_213_n215, mult_213_n214, mult_213_n213, mult_213_n212
      , mult_213_n211, mult_213_n210, mult_213_n209, mult_213_n208, 
      mult_213_n207, mult_213_n206, mult_213_n205, mult_213_n204, mult_213_n203
      , mult_213_n202, mult_213_n201, mult_213_n200, mult_213_n199, 
      mult_213_n198, mult_213_n197, mult_213_n196, mult_213_n195, mult_213_n92,
      mult_213_n91, mult_213_n90, mult_213_n89, mult_213_n88, mult_213_n87, 
      mult_213_n86, mult_213_n85, mult_213_n84, mult_213_n83, mult_213_n82, 
      mult_213_n81, mult_213_n80, mult_213_n79, mult_213_n77, mult_213_n76, 
      mult_213_n75, mult_213_n74, mult_213_n73, mult_213_n72, mult_213_n71, 
      mult_213_n70, mult_213_n69, mult_213_n68, mult_213_n67, mult_213_n65, 
      mult_213_n64, mult_213_n63, mult_213_n62, mult_213_n61, mult_213_n60, 
      mult_213_n59, mult_213_n58, mult_213_n57, mult_213_n56, mult_213_n55, 
      mult_213_n54, mult_213_n53, mult_213_n52, mult_213_n51, mult_213_n50, 
      mult_213_n49, mult_213_n48, mult_213_n47, mult_213_n46, mult_213_n45, 
      mult_213_n44, mult_213_n43, mult_213_n42, mult_213_n41, mult_213_n40, 
      mult_213_n39, mult_213_n38, mult_213_n37, mult_213_n36, mult_213_n35, 
      mult_213_n34, mult_213_n33, mult_213_n31, mult_213_n30, mult_213_n29, 
      mult_213_n28, mult_213_n27, mult_213_n26, mult_213_n25, mult_213_n24, 
      mult_213_n23, mult_213_n21, mult_213_n20, mult_213_n19, mult_213_n18, 
      mult_213_n17, mult_213_n15, mult_213_n14, mult_213_n13, mult_213_n12, 
      mult_213_n11, mult_213_n10, mult_213_n9, mult_213_n8, mult_213_n7, 
      mult_213_n6, mult_213_n5, mult_213_n4, mult_213_n3, mult_213_n2, 
      mult_213_n1 : std_logic;

begin
   
   U56 : OR3D1 port map( A1 => n34, A2 => n89, A3 => n92, Z => nxt_state_2_port
                           );
   U57 : OAI21D1 port map( A1 => n35, A2 => n36, B => n37, Z => 
                           nxt_state_1_port);
   U58 : AOI21M20D1 port map( A1 => n34, A2 => n40, B => n88, Z => n37);
   U59 : OAI21D1 port map( A1 => n41, A2 => n115, B => n42, Z => n68);
   U60 : AOI22D1 port map( A1 => adder_out_0_port, A2 => n43, B1 => 
                           mult_out_0_port, B2 => n44, Z => n42);
   U61 : OAI21D1 port map( A1 => n41, A2 => n114, B => n45, Z => n69);
   U62 : AOI22D1 port map( A1 => adder_out_1_port, A2 => n43, B1 => 
                           mult_out_1_port, B2 => n44, Z => n45);
   U63 : OAI21D1 port map( A1 => n41, A2 => n113, B => n46, Z => n70);
   U64 : AOI22D1 port map( A1 => adder_out_2_port, A2 => n43, B1 => 
                           mult_out_2_port, B2 => n44, Z => n46);
   U65 : OAI21D1 port map( A1 => n41, A2 => n112, B => n47, Z => n71);
   U66 : AOI22D1 port map( A1 => adder_out_3_port, A2 => n43, B1 => 
                           mult_out_3_port, B2 => n44, Z => n47);
   U67 : OAI21D1 port map( A1 => n41, A2 => n111, B => n48, Z => n72);
   U68 : AOI22D1 port map( A1 => adder_out_4_port, A2 => n43, B1 => 
                           mult_out_4_port, B2 => n44, Z => n48);
   U69 : OAI21D1 port map( A1 => n41, A2 => n110, B => n49, Z => n73);
   U70 : AOI22D1 port map( A1 => adder_out_5_port, A2 => n43, B1 => 
                           mult_out_5_port, B2 => n44, Z => n49);
   U71 : OAI21D1 port map( A1 => n41, A2 => n109, B => n50, Z => n74);
   U72 : AOI22D1 port map( A1 => adder_out_6_port, A2 => n43, B1 => 
                           mult_out_6_port, B2 => n44, Z => n50);
   U73 : OAI21D1 port map( A1 => n41, A2 => n108, B => n51, Z => n75);
   U74 : AOI22D1 port map( A1 => adder_out_7_port, A2 => n43, B1 => 
                           mult_out_7_port, B2 => n44, Z => n51);
   U75 : OAI22M10D1 port map( A1 => mult_out_8_port, A2 => n86, B1 => n41, B2 
                           => n107, Z => n76);
   U76 : OAI22M10D1 port map( A1 => mult_out_9_port, A2 => n86, B1 => n41, B2 
                           => n106, Z => n77);
   U77 : OAI22M10D1 port map( A1 => mult_out_10_port, A2 => n86, B1 => n41, B2 
                           => n105, Z => n78);
   U78 : OAI22M10D1 port map( A1 => mult_out_11_port, A2 => n86, B1 => n41, B2 
                           => n104, Z => n79);
   U79 : OAI22M10D1 port map( A1 => mult_out_12_port, A2 => n86, B1 => n41, B2 
                           => n103, Z => n80);
   U80 : OAI22M10D1 port map( A1 => mult_out_13_port, A2 => n86, B1 => n41, B2 
                           => n102, Z => n81);
   U81 : OAI22M10D1 port map( A1 => mult_out_14_port, A2 => n86, B1 => n41, B2 
                           => n101, Z => n82);
   U82 : OAI22M10D1 port map( A1 => mult_out_15_port, A2 => n86, B1 => n41, B2 
                           => n100, Z => n83);
   U83 : AOI211D1 port map( A1 => n92, A2 => n52, B => n94, C => n59, Z => n58)
                           ;
   U84 : AOI21D1 port map( A1 => n89, A2 => n87, B => n93, Z => n57);
   U85 : AOI21D1 port map( A1 => n99, A2 => n98, B => n38, Z => n59);
   U86 : AOI22D1 port map( A1 => n89, A2 => n97, B1 => n92, B2 => n35, Z => n64
                           );
   U87 : AOI21D1 port map( A1 => n35, A2 => n93, B => n92, Z => n39);
   U88 : AOI21D1 port map( A1 => n67, A2 => cur_state_0_port, B => n34, Z => 
                           n40);
   U89 : OAI22D1 port map( A1 => n89, A2 => n108, B1 => n100, B2 => n38, Z => 
                           data_out(7));
   U90 : OAI22D1 port map( A1 => n89, A2 => n109, B1 => n101, B2 => n38, Z => 
                           data_out(6));
   U91 : OAI22D1 port map( A1 => n89, A2 => n110, B1 => n102, B2 => n38, Z => 
                           data_out(5));
   U92 : OAI22D1 port map( A1 => n89, A2 => n111, B1 => n103, B2 => n38, Z => 
                           data_out(4));
   U93 : OAI22D1 port map( A1 => n89, A2 => n112, B1 => n104, B2 => n38, Z => 
                           data_out(3));
   U94 : OAI22D1 port map( A1 => n89, A2 => n113, B1 => n105, B2 => n38, Z => 
                           data_out(2));
   U95 : OAI22D1 port map( A1 => n89, A2 => n114, B1 => n106, B2 => n38, Z => 
                           data_out(1));
   U96 : OAI22D1 port map( A1 => n89, A2 => n115, B1 => n107, B2 => n38, Z => 
                           data_out(0));
   left_in_add_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n54, CK =>
                           clk, RB => n85, Q => left_in_add_reg_7_port);
   right_in_add_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_7_port);
   left_in_add_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n54, CK =>
                           clk, RB => n84, Q => left_in_add_reg_6_port);
   right_in_add_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_6_port);
   opcode_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n53, CK => clk,
                           RB => n85, Q => opcode_reg_0_port);
   opcode_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n53, CK => clk,
                           RB => n84, Q => opcode_reg_2_port);
   opcode_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n53, CK => clk,
                           RB => n84, Q => opcode_reg_3_port);
   opcode_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n53, CK => clk,
                           RB => n84, Q => opcode_reg_1_port);
   left_in_add_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n54, CK =>
                           clk, RB => n84, Q => left_in_add_reg_5_port);
   right_in_add_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_5_port);
   left_in_add_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n54, CK =>
                           clk, RB => n85, Q => left_in_add_reg_4_port);
   right_in_add_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_4_port);
   left_in_add_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n54, CK =>
                           clk, RB => n84, Q => left_in_add_reg_3_port);
   right_in_add_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_3_port);
   left_in_add_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n54, CK =>
                           clk, RB => n85, Q => left_in_add_reg_2_port);
   right_in_add_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_2_port);
   left_in_add_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n54, CK =>
                           clk, RB => n85, Q => left_in_add_reg_1_port);
   right_in_add_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_1_port);
   right_in_add_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n60, CK 
                           => clk, RB => n85, Q => right_in_add_reg_0_port);
   left_in_add_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n54, CK =>
                           clk, RB => n84, Q => left_in_add_reg_0_port);
   right_in_mul_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n66, CK 
                           => clk, RB => n84, Q => right_in_mul_reg_7_port);
   left_in_mul_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_7_port);
   right_in_mul_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n66, CK 
                           => clk, RB => n84, Q => right_in_mul_reg_6_port);
   left_in_mul_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_6_port);
   right_in_mul_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n66, CK 
                           => clk, RB => n84, Q => right_in_mul_reg_5_port);
   result_reg_reg_15 : DFFRPQ1 port map( D => n83, CK => clk, RB => n85, Q => 
                           result_reg_15_port);
   result_reg_reg_14 : DFFRPQ1 port map( D => n82, CK => clk, RB => n85, Q => 
                           result_reg_14_port);
   result_reg_reg_13 : DFFRPQ1 port map( D => n81, CK => clk, RB => n85, Q => 
                           result_reg_13_port);
   result_reg_reg_12 : DFFRPQ1 port map( D => n80, CK => clk, RB => n84, Q => 
                           result_reg_12_port);
   result_reg_reg_11 : DFFRPQ1 port map( D => n79, CK => clk, RB => n85, Q => 
                           result_reg_11_port);
   result_reg_reg_10 : DFFRPQ1 port map( D => n78, CK => clk, RB => n84, Q => 
                           result_reg_10_port);
   result_reg_reg_9 : DFFRPQ1 port map( D => n77, CK => clk, RB => n84, Q => 
                           result_reg_9_port);
   result_reg_reg_8 : DFFRPQ1 port map( D => n76, CK => clk, RB => n85, Q => 
                           result_reg_8_port);
   right_in_mul_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n66, CK 
                           => clk, RB => n85, Q => right_in_mul_reg_4_port);
   result_reg_reg_7 : DFFRPQ1 port map( D => n75, CK => clk, RB => n85, Q => 
                           result_reg_7_port);
   result_reg_reg_6 : DFFRPQ1 port map( D => n74, CK => clk, RB => n84, Q => 
                           result_reg_6_port);
   result_reg_reg_5 : DFFRPQ1 port map( D => n73, CK => clk, RB => n85, Q => 
                           result_reg_5_port);
   result_reg_reg_4 : DFFRPQ1 port map( D => n72, CK => clk, RB => n84, Q => 
                           result_reg_4_port);
   result_reg_reg_3 : DFFRPQ1 port map( D => n71, CK => clk, RB => n84, Q => 
                           result_reg_3_port);
   result_reg_reg_2 : DFFRPQ1 port map( D => n70, CK => clk, RB => n85, Q => 
                           result_reg_2_port);
   result_reg_reg_1 : DFFRPQ1 port map( D => n69, CK => clk, RB => n85, Q => 
                           result_reg_1_port);
   result_reg_reg_0 : DFFRPQ1 port map( D => n68, CK => clk, RB => n84, Q => 
                           result_reg_0_port);
   right_in_mul_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n66, CK 
                           => clk, RB => n84, Q => right_in_mul_reg_2_port);
   left_in_mul_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_5_port);
   right_in_mul_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n66, CK 
                           => clk, RB => n85, Q => right_in_mul_reg_3_port);
   right_in_mul_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n66, CK 
                           => clk, RB => n84, Q => right_in_mul_reg_0_port);
   left_in_mul_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_4_port);
   left_in_mul_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_0_port);
   right_in_mul_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n66, CK 
                           => clk, RB => n85, Q => right_in_mul_reg_1_port);
   left_in_mul_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_3_port);
   left_in_mul_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_2_port);
   cur_state_reg_2 : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, RB => 
                           n85, Q => cur_state_2_port);
   left_in_mul_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n63, CK =>
                           clk, RB => n84, Q => left_in_mul_reg_1_port);
   cur_state_reg_1 : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, RB => 
                           n85, Q => cur_state_1_port);
   cur_state_reg_0 : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, RB => 
                           n84, Q => cur_state_0_port);
   ready_reg : DFFRPQ1 port map( D => ready_nxt, CK => clk, RB => n85, Q => 
                           ready);
   U97 : NOR2D1 port map( A1 => n53, A2 => n88, Z => n41);
   U98 : INVD1 port map( A => n44, Z => n86);
   U99 : INVD1 port map( A => n56, Z => n88);
   U100 : INVD1 port map( A => ready_nxt, Z => n90);
   U101 : NAN3D1 port map( A1 => n56, A2 => n90, A3 => n39, Z => n66);
   U102 : INVD1 port map( A => reset, Z => n84);
   U103 : INVD1 port map( A => reset, Z => n85);
   U104 : INVD1 port map( A => n38, Z => n89);
   U105 : NOR2M1D1 port map( A1 => n41, A2 => n35, Z => n44);
   U106 : NAN3D1 port map( A1 => n62, A2 => n38, A3 => n36, Z => n53);
   U107 : NOR2M1D1 port map( A1 => n41, A2 => n52, Z => n43);
   U108 : NAN2D1 port map( A1 => n67, A2 => n91, Z => n56);
   U109 : NAN4M1D1 port map( A1 => n55, A2 => n56, A3 => n57, A4 => n58, Z => 
                           n54);
   U110 : INVD1 port map( A => n40, Z => n94);
   U111 : NAN3D1 port map( A1 => n64, A2 => n40, A3 => n65, Z => n63);
   U112 : NOR4D1 port map( A1 => n55, A2 => n88, A3 => n93, A4 => n59, Z => n65
                           );
   U113 : NOR3D1 port map( A1 => n87, A2 => n97, A3 => n38, Z => n55);
   U114 : NAN4D1 port map( A1 => n61, A2 => n62, A3 => n56, A4 => n90, Z => n60
                           );
   U115 : NAN2D1 port map( A1 => n93, A2 => n52, Z => n61);
   U116 : NAN2D1 port map( A1 => n40, A2 => n38, Z => ready_nxt);
   U117 : INVD1 port map( A => n62, Z => n92);
   U118 : INVD1 port map( A => n36, Z => n93);
   U119 : NAN3D1 port map( A1 => n37, A2 => n38, A3 => n39, Z => 
                           nxt_state_0_port);
   U120 : NAN3D1 port map( A1 => n91, A2 => n96, A3 => cur_state_2_port, Z => 
                           n38);
   U121 : INVD1 port map( A => cur_state_0_port, Z => n91);
   U122 : INVD1 port map( A => cur_state_1_port, Z => n96);
   U123 : INVD1 port map( A => result_reg_0_port, Z => n115);
   U124 : INVD1 port map( A => result_reg_1_port, Z => n114);
   U125 : INVD1 port map( A => result_reg_2_port, Z => n113);
   U126 : INVD1 port map( A => result_reg_3_port, Z => n112);
   U127 : INVD1 port map( A => result_reg_4_port, Z => n111);
   U128 : INVD1 port map( A => result_reg_5_port, Z => n110);
   U129 : INVD1 port map( A => result_reg_6_port, Z => n109);
   U130 : INVD1 port map( A => result_reg_7_port, Z => n108);
   U131 : INVD1 port map( A => result_reg_8_port, Z => n107);
   U132 : INVD1 port map( A => result_reg_9_port, Z => n106);
   U133 : INVD1 port map( A => result_reg_10_port, Z => n105);
   U134 : INVD1 port map( A => result_reg_11_port, Z => n104);
   U135 : INVD1 port map( A => result_reg_12_port, Z => n103);
   U136 : INVD1 port map( A => result_reg_13_port, Z => n102);
   U137 : INVD1 port map( A => result_reg_14_port, Z => n101);
   U138 : INVD1 port map( A => result_reg_15_port, Z => n100);
   U139 : NAN3D1 port map( A1 => cur_state_0_port, A2 => n95, A3 => 
                           cur_state_1_port, Z => n62);
   U140 : INVD1 port map( A => cur_state_2_port, Z => n95);
   U141 : NAN3D1 port map( A1 => cur_state_2_port, A2 => n96, A3 => 
                           cur_state_0_port, Z => n36);
   U142 : NOR2D1 port map( A1 => cur_state_1_port, A2 => cur_state_2_port, Z =>
                           n67);
   U143 : NOR3D1 port map( A1 => cur_state_0_port, A2 => cur_state_2_port, A3 
                           => n96, Z => n34);
   U144 : NAN4D1 port map( A1 => opcode_reg_0_port, A2 => n97, A3 => n98, A4 =>
                           n99, Z => n52);
   U145 : INVD1 port map( A => opcode_reg_1_port, Z => n97);
   U146 : INVD1 port map( A => opcode_reg_3_port, Z => n99);
   U147 : INVD1 port map( A => opcode_reg_2_port, Z => n98);
   U148 : NAN4D1 port map( A1 => opcode_reg_1_port, A2 => n87, A3 => n98, A4 =>
                           n99, Z => n35);
   U149 : INVD1 port map( A => opcode_reg_0_port, Z => n87);
   U150 : TIEHI port map( Z => req);
   U151 : TIELO port map( Z => n1);
   add_210_U2 : EXOR2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => adder_out_0_port);
   add_210_U1 : AND2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => add_210_n1);
   add_210_U1_1 : ADFULD1 port map( A => left_in_add_reg_1_port, B => 
                           right_in_add_reg_1_port, CI => add_210_n1, CO => 
                           add_210_carry_2_port, S => adder_out_1_port);
   add_210_U1_2 : ADFULD1 port map( A => left_in_add_reg_2_port, B => 
                           right_in_add_reg_2_port, CI => add_210_carry_2_port,
                           CO => add_210_carry_3_port, S => adder_out_2_port);
   add_210_U1_3 : ADFULD1 port map( A => left_in_add_reg_3_port, B => 
                           right_in_add_reg_3_port, CI => add_210_carry_3_port,
                           CO => add_210_carry_4_port, S => adder_out_3_port);
   add_210_U1_4 : ADFULD1 port map( A => left_in_add_reg_4_port, B => 
                           right_in_add_reg_4_port, CI => add_210_carry_4_port,
                           CO => add_210_carry_5_port, S => adder_out_4_port);
   add_210_U1_5 : ADFULD1 port map( A => left_in_add_reg_5_port, B => 
                           right_in_add_reg_5_port, CI => add_210_carry_5_port,
                           CO => add_210_carry_6_port, S => adder_out_5_port);
   add_210_U1_6 : ADFULD1 port map( A => left_in_add_reg_6_port, B => 
                           right_in_add_reg_6_port, CI => add_210_carry_6_port,
                           CO => add_210_carry_7_port, S => adder_out_6_port);
   add_210_U1_7 : ADFULD1 port map( A => left_in_add_reg_7_port, B => 
                           right_in_add_reg_7_port, CI => add_210_carry_7_port,
                           CO => add_210_n_1002, S => adder_out_7_port);
   mult_213_U237 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_7_port, Z => mult_213_n240);
   mult_213_U236 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n202, Z => mult_213_n239);
   mult_213_U235 : EXOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_6_port, Z => mult_213_n246);
   mult_213_U234 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n240, 
                           B1 => mult_213_n239, B2 => mult_213_n234, Z => 
                           mult_213_n15);
   mult_213_U233 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_5_port, Z => mult_213_n230);
   mult_213_U232 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n201, Z => mult_213_n229);
   mult_213_U231 : EXOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           left_in_mul_reg_4_port, Z => mult_213_n245);
   mult_213_U230 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n230, 
                           B1 => mult_213_n229, B2 => mult_213_n224, Z => 
                           mult_213_n21);
   mult_213_U229 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_3_port, Z => mult_213_n220);
   mult_213_U228 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n199, Z => mult_213_n243);
   mult_213_U227 : EXOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           left_in_mul_reg_2_port, Z => mult_213_n244);
   mult_213_U226 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n220, 
                           B1 => mult_213_n243, B2 => mult_213_n215, Z => 
                           mult_213_n31);
   mult_213_U225 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n202, Z => mult_213_n236);
   mult_213_U224 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n202, Z => mult_213_n232);
   mult_213_U223 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n236, 
                           B1 => mult_213_n232, B2 => mult_213_n234, Z => 
                           mult_213_n241);
   mult_213_U222 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n199, Z => mult_213_n219);
   mult_213_U221 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n243, 
                           B1 => mult_213_n219, B2 => mult_213_n215, Z => 
                           mult_213_n242);
   mult_213_U220 : OR2D1 port map( A1 => mult_213_n241, A2 => mult_213_n242, Z 
                           => mult_213_n37);
   mult_213_U219 : EXNOR2D1 port map( A1 => mult_213_n241, A2 => mult_213_n242,
                           Z => mult_213_n38);
   mult_213_U218 : OAI32D1 port map( A1 => mult_213_n202, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n231, B1 => 
                           mult_213_n202, B2 => mult_213_n234, Z => 
                           mult_213_n57);
   mult_213_U217 : OAI32D1 port map( A1 => mult_213_n201, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n221, B1 => 
                           mult_213_n201, B2 => mult_213_n224, Z => 
                           mult_213_n58);
   mult_213_U216 : OAI32D1 port map( A1 => mult_213_n199, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n212, B1 => 
                           mult_213_n199, B2 => mult_213_n215, Z => 
                           mult_213_n59);
   mult_213_U215 : OAI21D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_213_n197, B => mult_213_n205, Z => mult_213_n60
                           );
   mult_213_U214 : AO21D1 port map( A1 => mult_213_n234, A2 => mult_213_n231, B
                           => mult_213_n240, Z => mult_213_n61);
   mult_213_U213 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n202, Z => mult_213_n238);
   mult_213_U212 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n239, 
                           B1 => mult_213_n238, B2 => mult_213_n234, Z => 
                           mult_213_n62);
   mult_213_U211 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n202, Z => mult_213_n237);
   mult_213_U210 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n238, 
                           B1 => mult_213_n237, B2 => mult_213_n234, Z => 
                           mult_213_n63);
   mult_213_U209 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n202, Z => mult_213_n235);
   mult_213_U208 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n237, 
                           B1 => mult_213_n235, B2 => mult_213_n234, Z => 
                           mult_213_n64);
   mult_213_U207 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n235, 
                           B1 => mult_213_n236, B2 => mult_213_n234, Z => 
                           mult_213_n65);
   mult_213_U206 : EXOR2D1 port map( A1 => mult_213_n202, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n233);
   mult_213_U205 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n232, 
                           B1 => mult_213_n233, B2 => mult_213_n234, Z => 
                           mult_213_n67);
   mult_213_U204 : NOR2D1 port map( A1 => mult_213_n231, A2 => mult_213_n203, Z
                           => mult_213_n68);
   mult_213_U203 : AO21D1 port map( A1 => mult_213_n224, A2 => mult_213_n221, B
                           => mult_213_n230, Z => mult_213_n69);
   mult_213_U202 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n201, Z => mult_213_n228);
   mult_213_U201 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n229, 
                           B1 => mult_213_n228, B2 => mult_213_n224, Z => 
                           mult_213_n70);
   mult_213_U200 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n201, Z => mult_213_n227);
   mult_213_U199 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n228, 
                           B1 => mult_213_n227, B2 => mult_213_n224, Z => 
                           mult_213_n71);
   mult_213_U198 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n201, Z => mult_213_n226);
   mult_213_U197 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n227, 
                           B1 => mult_213_n226, B2 => mult_213_n224, Z => 
                           mult_213_n72);
   mult_213_U196 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n201, Z => mult_213_n225);
   mult_213_U195 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n226, 
                           B1 => mult_213_n225, B2 => mult_213_n224, Z => 
                           mult_213_n73);
   mult_213_U194 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n201, Z => mult_213_n222);
   mult_213_U193 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n225, 
                           B1 => mult_213_n222, B2 => mult_213_n224, Z => 
                           mult_213_n74);
   mult_213_U192 : EXOR2D1 port map( A1 => mult_213_n201, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n223);
   mult_213_U191 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n222, 
                           B1 => mult_213_n223, B2 => mult_213_n224, Z => 
                           mult_213_n75);
   mult_213_U190 : NOR2D1 port map( A1 => mult_213_n221, A2 => mult_213_n203, Z
                           => mult_213_n76);
   mult_213_U189 : AO21D1 port map( A1 => mult_213_n215, A2 => mult_213_n212, B
                           => mult_213_n220, Z => mult_213_n77);
   mult_213_U188 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n199, Z => mult_213_n218);
   mult_213_U187 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n219, 
                           B1 => mult_213_n218, B2 => mult_213_n215, Z => 
                           mult_213_n79);
   mult_213_U186 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n199, Z => mult_213_n217);
   mult_213_U185 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n218, 
                           B1 => mult_213_n217, B2 => mult_213_n215, Z => 
                           mult_213_n80);
   mult_213_U184 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n199, Z => mult_213_n216);
   mult_213_U183 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n217, 
                           B1 => mult_213_n216, B2 => mult_213_n215, Z => 
                           mult_213_n81);
   mult_213_U182 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n199, Z => mult_213_n213);
   mult_213_U181 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n216, 
                           B1 => mult_213_n213, B2 => mult_213_n215, Z => 
                           mult_213_n82);
   mult_213_U180 : EXOR2D1 port map( A1 => mult_213_n199, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n214);
   mult_213_U179 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n213, 
                           B1 => mult_213_n214, B2 => mult_213_n215, Z => 
                           mult_213_n83);
   mult_213_U178 : NOR2D1 port map( A1 => mult_213_n212, A2 => mult_213_n203, Z
                           => mult_213_n84);
   mult_213_U177 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_1_port, Z => mult_213_n211);
   mult_213_U176 : AO21D1 port map( A1 => mult_213_n195, A2 => mult_213_n205, B
                           => mult_213_n211, Z => mult_213_n85);
   mult_213_U175 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n197, Z => mult_213_n210);
   mult_213_U174 : OAI22D1 port map( A1 => mult_213_n211, A2 => mult_213_n195, 
                           B1 => mult_213_n210, B2 => mult_213_n205, Z => 
                           mult_213_n86);
   mult_213_U173 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n197, Z => mult_213_n209);
   mult_213_U172 : OAI22D1 port map( A1 => mult_213_n210, A2 => mult_213_n195, 
                           B1 => mult_213_n209, B2 => mult_213_n205, Z => 
                           mult_213_n87);
   mult_213_U171 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n197, Z => mult_213_n208);
   mult_213_U170 : OAI22D1 port map( A1 => mult_213_n209, A2 => mult_213_n195, 
                           B1 => mult_213_n208, B2 => mult_213_n205, Z => 
                           mult_213_n88);
   mult_213_U169 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n197, Z => mult_213_n207);
   mult_213_U168 : OAI22D1 port map( A1 => mult_213_n208, A2 => mult_213_n195, 
                           B1 => mult_213_n207, B2 => mult_213_n205, Z => 
                           mult_213_n89);
   mult_213_U167 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n197, Z => mult_213_n206);
   mult_213_U166 : OAI22D1 port map( A1 => mult_213_n207, A2 => mult_213_n195, 
                           B1 => mult_213_n206, B2 => mult_213_n205, Z => 
                           mult_213_n90);
   mult_213_U165 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n197, Z => mult_213_n204);
   mult_213_U164 : OAI22D1 port map( A1 => mult_213_n206, A2 => mult_213_n195, 
                           B1 => mult_213_n204, B2 => mult_213_n205, Z => 
                           mult_213_n91);
   mult_213_U163 : OAI22D1 port map( A1 => mult_213_n204, A2 => mult_213_n195, 
                           B1 => right_in_mul_reg_0_port, B2 => mult_213_n205, 
                           Z => mult_213_n92);
   mult_213_U162 : NOR2D1 port map( A1 => mult_213_n195, A2 => mult_213_n203, Z
                           => mult_out_0_port);
   mult_213_U161 : INVD1 port map( A => left_in_mul_reg_7_port, Z => 
                           mult_213_n202);
   mult_213_U160 : INVD1 port map( A => right_in_mul_reg_0_port, Z => 
                           mult_213_n203);
   mult_213_U159 : NAN2D1 port map( A1 => mult_213_n231, A2 => mult_213_n246, Z
                           => mult_213_n234);
   mult_213_U158 : INVD1 port map( A => left_in_mul_reg_5_port, Z => 
                           mult_213_n201);
   mult_213_U157 : EXOR2D1 port map( A1 => left_in_mul_reg_6_port, A2 => 
                           mult_213_n201, Z => mult_213_n231);
   mult_213_U156 : INVD1 port map( A => left_in_mul_reg_0_port, Z => 
                           mult_213_n195);
   mult_213_U155 : NAN2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           mult_213_n195, Z => mult_213_n205);
   mult_213_U154 : INVD1 port map( A => left_in_mul_reg_3_port, Z => 
                           mult_213_n199);
   mult_213_U153 : EXOR2D1 port map( A1 => left_in_mul_reg_4_port, A2 => 
                           mult_213_n199, Z => mult_213_n221);
   mult_213_U152 : NAN2D1 port map( A1 => mult_213_n221, A2 => mult_213_n245, Z
                           => mult_213_n224);
   mult_213_U151 : INVD1 port map( A => left_in_mul_reg_1_port, Z => 
                           mult_213_n197);
   mult_213_U150 : EXOR2D1 port map( A1 => left_in_mul_reg_2_port, A2 => 
                           mult_213_n197, Z => mult_213_n212);
   mult_213_U149 : NAN2D1 port map( A1 => mult_213_n212, A2 => mult_213_n244, Z
                           => mult_213_n215);
   mult_213_U148 : INVD1 port map( A => mult_213_n21, Z => mult_213_n198);
   mult_213_U147 : INVD1 port map( A => mult_213_n31, Z => mult_213_n196);
   mult_213_U146 : INVD1 port map( A => mult_213_n1, Z => mult_out_15_port);
   mult_213_U145 : INVD1 port map( A => mult_213_n15, Z => mult_213_n200);
   mult_213_U37 : ADHALFDL port map( A => mult_213_n83, B => mult_213_n90, CO 
                           => mult_213_n55, S => mult_213_n56);
   mult_213_U36 : ADFULD1 port map( A => mult_213_n89, B => mult_213_n76, CI =>
                           mult_213_n82, CO => mult_213_n53, S => mult_213_n54)
                           ;
   mult_213_U35 : ADHALFDL port map( A => mult_213_n58, B => mult_213_n88, CO 
                           => mult_213_n51, S => mult_213_n52);
   mult_213_U34 : ADFULD1 port map( A => mult_213_n75, B => mult_213_n81, CI =>
                           mult_213_n52, CO => mult_213_n49, S => mult_213_n50)
                           ;
   mult_213_U33 : ADFULD1 port map( A => mult_213_n87, B => mult_213_n68, CI =>
                           mult_213_n80, CO => mult_213_n47, S => mult_213_n48)
                           ;
   mult_213_U32 : ADFULD1 port map( A => mult_213_n51, B => mult_213_n74, CI =>
                           mult_213_n48, CO => mult_213_n45, S => mult_213_n46)
                           ;
   mult_213_U31 : ADHALFDL port map( A => mult_213_n57, B => mult_213_n86, CO 
                           => mult_213_n43, S => mult_213_n44);
   mult_213_U30 : ADFULD1 port map( A => mult_213_n67, B => mult_213_n79, CI =>
                           mult_213_n73, CO => mult_213_n41, S => mult_213_n42)
                           ;
   mult_213_U29 : ADFULD1 port map( A => mult_213_n47, B => mult_213_n44, CI =>
                           mult_213_n42, CO => mult_213_n39, S => mult_213_n40)
                           ;
   mult_213_U26 : ADFULD1 port map( A => mult_213_n85, B => mult_213_n72, CI =>
                           mult_213_n43, CO => mult_213_n35, S => mult_213_n36)
                           ;
   mult_213_U25 : ADFULD1 port map( A => mult_213_n41, B => mult_213_n38, CI =>
                           mult_213_n36, CO => mult_213_n33, S => mult_213_n34)
                           ;
   mult_213_U23 : ADFULD1 port map( A => mult_213_n65, B => mult_213_n71, CI =>
                           mult_213_n196, CO => mult_213_n29, S => mult_213_n30
                           );
   mult_213_U22 : ADFULD1 port map( A => mult_213_n35, B => mult_213_n37, CI =>
                           mult_213_n30, CO => mult_213_n27, S => mult_213_n28)
                           ;
   mult_213_U21 : ADFULD1 port map( A => mult_213_n70, B => mult_213_n31, CI =>
                           mult_213_n64, CO => mult_213_n25, S => mult_213_n26)
                           ;
   mult_213_U20 : ADFULD1 port map( A => mult_213_n29, B => mult_213_n77, CI =>
                           mult_213_n26, CO => mult_213_n23, S => mult_213_n24)
                           ;
   mult_213_U18 : ADFULD1 port map( A => mult_213_n198, B => mult_213_n63, CI 
                           => mult_213_n25, CO => mult_213_n19, S => 
                           mult_213_n20);
   mult_213_U17 : ADFULD1 port map( A => mult_213_n62, B => mult_213_n21, CI =>
                           mult_213_n69, CO => mult_213_n17, S => mult_213_n18)
                           ;
   mult_213_U15 : ADHALFDL port map( A => mult_213_n92, B => mult_213_n60, CO 
                           => mult_213_n14, S => mult_out_1_port);
   mult_213_U14 : ADFULD1 port map( A => mult_213_n91, B => mult_213_n84, CI =>
                           mult_213_n14, CO => mult_213_n13, S => 
                           mult_out_2_port);
   mult_213_U13 : ADFULD1 port map( A => mult_213_n56, B => mult_213_n59, CI =>
                           mult_213_n13, CO => mult_213_n12, S => 
                           mult_out_3_port);
   mult_213_U12 : ADFULD1 port map( A => mult_213_n54, B => mult_213_n55, CI =>
                           mult_213_n12, CO => mult_213_n11, S => 
                           mult_out_4_port);
   mult_213_U11 : ADFULD1 port map( A => mult_213_n50, B => mult_213_n53, CI =>
                           mult_213_n11, CO => mult_213_n10, S => 
                           mult_out_5_port);
   mult_213_U10 : ADFULD1 port map( A => mult_213_n46, B => mult_213_n49, CI =>
                           mult_213_n10, CO => mult_213_n9, S => 
                           mult_out_6_port);
   mult_213_U9 : ADFULD1 port map( A => mult_213_n40, B => mult_213_n45, CI => 
                           mult_213_n9, CO => mult_213_n8, S => mult_out_7_port
                           );
   mult_213_U8 : ADFULD1 port map( A => mult_213_n34, B => mult_213_n39, CI => 
                           mult_213_n8, CO => mult_213_n7, S => mult_out_8_port
                           );
   mult_213_U7 : ADFULD1 port map( A => mult_213_n28, B => mult_213_n33, CI => 
                           mult_213_n7, CO => mult_213_n6, S => mult_out_9_port
                           );
   mult_213_U6 : ADFULD1 port map( A => mult_213_n24, B => mult_213_n27, CI => 
                           mult_213_n6, CO => mult_213_n5, S => 
                           mult_out_10_port);
   mult_213_U5 : ADFULD1 port map( A => mult_213_n20, B => mult_213_n23, CI => 
                           mult_213_n5, CO => mult_213_n4, S => 
                           mult_out_11_port);
   mult_213_U4 : ADFULD1 port map( A => mult_213_n19, B => mult_213_n18, CI => 
                           mult_213_n4, CO => mult_213_n3, S => 
                           mult_out_12_port);
   mult_213_U3 : ADFULD1 port map( A => mult_213_n17, B => mult_213_n200, CI =>
                           mult_213_n3, CO => mult_213_n2, S => 
                           mult_out_13_port);
   mult_213_U2 : ADFULD1 port map( A => mult_213_n61, B => mult_213_n15, CI => 
                           mult_213_n2, CO => mult_213_n1, S => 
                           mult_out_14_port);

end flat_calc_own_8_5;
