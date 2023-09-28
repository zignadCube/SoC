
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

architecture flat_calc_own_gc_8_5 of siso_gen is

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
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component AO22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4M1D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OA21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31M10D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
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
      left_in_mul_nxt_7_port, left_in_mul_nxt_6_port, left_in_mul_nxt_5_port, 
      left_in_mul_nxt_4_port, left_in_mul_nxt_3_port, left_in_mul_nxt_2_port, 
      left_in_mul_nxt_1_port, left_in_mul_nxt_0_port, ready_nxt, 
      nxt_state_2_port, nxt_state_1_port, nxt_state_0_port, adder_out_7_port, 
      adder_out_6_port, adder_out_5_port, adder_out_4_port, adder_out_3_port, 
      adder_out_2_port, adder_out_1_port, adder_out_0_port, mult_out_15_port, 
      mult_out_14_port, mult_out_13_port, mult_out_12_port, mult_out_11_port, 
      mult_out_10_port, mult_out_9_port, mult_out_8_port, mult_out_7_port, 
      mult_out_6_port, mult_out_5_port, mult_out_4_port, mult_out_3_port, 
      mult_out_2_port, mult_out_1_port, mult_out_0_port, N50, N51, N52, N53, 
      N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N114, N126, 
      N141, N145, N148, N152, net66, n1, net72, net77, net82, net87, net92, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n_1002, clk_gate_left_in_add_reg_reg_net58, 
      clk_gate_left_in_add_reg_reg_net55, clk_gate_right_in_add_reg_reg_net58, 
      clk_gate_right_in_add_reg_reg_net55, clk_gate_left_in_mul_reg_reg_net58, 
      clk_gate_left_in_mul_reg_reg_net55, clk_gate_right_in_mul_reg_reg_net58, 
      clk_gate_right_in_mul_reg_reg_net55, clk_gate_opcode_reg_reg_net58, 
      clk_gate_opcode_reg_reg_net55, clk_gate_result_reg_reg_net58, 
      clk_gate_result_reg_reg_net55, add_210_n1, add_210_carry_2_port, 
      add_210_carry_3_port, add_210_carry_4_port, add_210_carry_5_port, 
      add_210_carry_6_port, add_210_carry_7_port, mult_213_n246, mult_213_n245,
      mult_213_n244, mult_213_n243, mult_213_n242, mult_213_n241, mult_213_n240
      , mult_213_n239, mult_213_n238, mult_213_n237, mult_213_n236, 
      mult_213_n235, mult_213_n234, mult_213_n233, mult_213_n232, mult_213_n231
      , mult_213_n230, mult_213_n229, mult_213_n228, mult_213_n227, 
      mult_213_n226, mult_213_n225, mult_213_n224, mult_213_n223, mult_213_n222
      , mult_213_n221, mult_213_n220, mult_213_n219, mult_213_n218, 
      mult_213_n217, mult_213_n216, mult_213_n215, mult_213_n214, mult_213_n213
      , mult_213_n212, mult_213_n211, mult_213_n210, mult_213_n209, 
      mult_213_n208, mult_213_n207, mult_213_n206, mult_213_n205, mult_213_n204
      , mult_213_n203, mult_213_n202, mult_213_n201, mult_213_n200, 
      mult_213_n199, mult_213_n198, mult_213_n197, mult_213_n196, mult_213_n195
      , mult_213_n92, mult_213_n91, mult_213_n90, mult_213_n89, mult_213_n88, 
      mult_213_n87, mult_213_n86, mult_213_n85, mult_213_n84, mult_213_n83, 
      mult_213_n82, mult_213_n81, mult_213_n80, mult_213_n79, mult_213_n77, 
      mult_213_n76, mult_213_n75, mult_213_n74, mult_213_n73, mult_213_n72, 
      mult_213_n71, mult_213_n70, mult_213_n69, mult_213_n68, mult_213_n67, 
      mult_213_n65, mult_213_n64, mult_213_n63, mult_213_n62, mult_213_n61, 
      mult_213_n60, mult_213_n59, mult_213_n58, mult_213_n57, mult_213_n56, 
      mult_213_n55, mult_213_n54, mult_213_n53, mult_213_n52, mult_213_n51, 
      mult_213_n50, mult_213_n49, mult_213_n48, mult_213_n47, mult_213_n46, 
      mult_213_n45, mult_213_n44, mult_213_n43, mult_213_n42, mult_213_n41, 
      mult_213_n40, mult_213_n39, mult_213_n38, mult_213_n37, mult_213_n36, 
      mult_213_n35, mult_213_n34, mult_213_n33, mult_213_n31, mult_213_n30, 
      mult_213_n29, mult_213_n28, mult_213_n27, mult_213_n26, mult_213_n25, 
      mult_213_n24, mult_213_n23, mult_213_n21, mult_213_n20, mult_213_n19, 
      mult_213_n18, mult_213_n17, mult_213_n15, mult_213_n14, mult_213_n13, 
      mult_213_n12, mult_213_n11, mult_213_n10, mult_213_n9, mult_213_n8, 
      mult_213_n7, mult_213_n6, mult_213_n5, mult_213_n4, mult_213_n3, 
      mult_213_n2, mult_213_n1 : std_logic;

begin
   
   U72 : OR2D1 port map( A1 => n12, A2 => n13, Z => nxt_state_2_port);
   U73 : OAI21D1 port map( A1 => n19, A2 => n44, B => n41, Z => n17);
   U74 : OAI31M10D1 port map( A1 => n27, A2 => n40, A3 => n16, B => n28, Z => 
                           N145);
   U75 : OAI21D1 port map( A1 => n29, A2 => n30, B => n22, Z => n16);
   U76 : OAI31D1 port map( A1 => n32, A2 => n40, A3 => n24, B => n28, Z => N141
                           );
   U77 : AOI31D1 port map( A1 => cur_state_0_port, A2 => n43, A3 => n42, B => 
                           n12, Z => n20);
   right_in_add_reg_reg_7 : DFFRPQ1 port map( D => data_in(7), CK => net72, RB 
                           => n36, Q => right_in_add_reg_7_port);
   left_in_add_reg_reg_7 : DFFRPQ1 port map( D => data_in(7), CK => net66, RB 
                           => n36, Q => left_in_add_reg_7_port);
   right_in_add_reg_reg_6 : DFFRPQ1 port map( D => data_in(6), CK => net72, RB 
                           => n35, Q => right_in_add_reg_6_port);
   left_in_add_reg_reg_6 : DFFRPQ1 port map( D => data_in(6), CK => net66, RB 
                           => n35, Q => left_in_add_reg_6_port);
   right_in_add_reg_reg_5 : DFFRPQ1 port map( D => data_in(5), CK => net72, RB 
                           => n36, Q => right_in_add_reg_5_port);
   left_in_add_reg_reg_5 : DFFRPQ1 port map( D => data_in(5), CK => net66, RB 
                           => n35, Q => left_in_add_reg_5_port);
   right_in_add_reg_reg_4 : DFFRPQ1 port map( D => data_in(4), CK => net72, RB 
                           => n36, Q => right_in_add_reg_4_port);
   left_in_add_reg_reg_4 : DFFRPQ1 port map( D => data_in(4), CK => net66, RB 
                           => n35, Q => left_in_add_reg_4_port);
   right_in_add_reg_reg_3 : DFFRPQ1 port map( D => data_in(3), CK => net72, RB 
                           => n35, Q => right_in_add_reg_3_port);
   left_in_add_reg_reg_3 : DFFRPQ1 port map( D => data_in(3), CK => net66, RB 
                           => n35, Q => left_in_add_reg_3_port);
   right_in_add_reg_reg_2 : DFFRPQ1 port map( D => data_in(2), CK => net72, RB 
                           => n35, Q => right_in_add_reg_2_port);
   left_in_add_reg_reg_2 : DFFRPQ1 port map( D => data_in(2), CK => net66, RB 
                           => n35, Q => left_in_add_reg_2_port);
   right_in_add_reg_reg_1 : DFFRPQ1 port map( D => data_in(1), CK => net72, RB 
                           => n36, Q => right_in_add_reg_1_port);
   left_in_add_reg_reg_1 : DFFRPQ1 port map( D => data_in(1), CK => net66, RB 
                           => n35, Q => left_in_add_reg_1_port);
   right_in_add_reg_reg_0 : DFFRPQ1 port map( D => data_in(0), CK => net72, RB 
                           => n35, Q => right_in_add_reg_0_port);
   left_in_add_reg_reg_0 : DFFRPQ1 port map( D => data_in(0), CK => net66, RB 
                           => n35, Q => left_in_add_reg_0_port);
   right_in_mul_reg_reg_7 : DFFRPQ1 port map( D => data_in(7), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_7_port);
   left_in_mul_reg_reg_7 : DFFRPQ1 port map( D => left_in_mul_nxt_7_port, CK =>
                           net77, RB => n36, Q => left_in_mul_reg_7_port);
   right_in_mul_reg_reg_6 : DFFRPQ1 port map( D => data_in(6), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_6_port);
   left_in_mul_reg_reg_6 : DFFRPQ1 port map( D => left_in_mul_nxt_6_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_6_port);
   right_in_mul_reg_reg_5 : DFFRPQ1 port map( D => data_in(5), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_5_port);
   right_in_mul_reg_reg_4 : DFFRPQ1 port map( D => data_in(4), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_4_port);
   result_reg_reg_15 : DFFRPQ1 port map( D => N65, CK => net92, RB => n36, Q =>
                           result_reg_15_port);
   result_reg_reg_14 : DFFRPQ1 port map( D => N64, CK => net92, RB => n36, Q =>
                           result_reg_14_port);
   result_reg_reg_13 : DFFRPQ1 port map( D => N63, CK => net92, RB => n35, Q =>
                           result_reg_13_port);
   result_reg_reg_12 : DFFRPQ1 port map( D => N62, CK => net92, RB => n35, Q =>
                           result_reg_12_port);
   result_reg_reg_11 : DFFRPQ1 port map( D => N61, CK => net92, RB => n36, Q =>
                           result_reg_11_port);
   result_reg_reg_10 : DFFRPQ1 port map( D => N60, CK => net92, RB => n35, Q =>
                           result_reg_10_port);
   result_reg_reg_9 : DFFRPQ1 port map( D => N59, CK => net92, RB => n36, Q => 
                           result_reg_9_port);
   result_reg_reg_8 : DFFRPQ1 port map( D => N58, CK => net92, RB => n35, Q => 
                           result_reg_8_port);
   result_reg_reg_7 : DFFRPQ1 port map( D => N57, CK => net92, RB => n36, Q => 
                           result_reg_7_port);
   result_reg_reg_6 : DFFRPQ1 port map( D => N56, CK => net92, RB => n35, Q => 
                           result_reg_6_port);
   result_reg_reg_5 : DFFRPQ1 port map( D => N55, CK => net92, RB => n36, Q => 
                           result_reg_5_port);
   result_reg_reg_4 : DFFRPQ1 port map( D => N54, CK => net92, RB => n35, Q => 
                           result_reg_4_port);
   result_reg_reg_3 : DFFRPQ1 port map( D => N53, CK => net92, RB => n36, Q => 
                           result_reg_3_port);
   result_reg_reg_2 : DFFRPQ1 port map( D => N52, CK => net92, RB => n35, Q => 
                           result_reg_2_port);
   result_reg_reg_1 : DFFRPQ1 port map( D => N51, CK => net92, RB => n36, Q => 
                           result_reg_1_port);
   result_reg_reg_0 : DFFRPQ1 port map( D => N50, CK => net92, RB => n35, Q => 
                           result_reg_0_port);
   right_in_mul_reg_reg_2 : DFFRPQ1 port map( D => data_in(2), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_2_port);
   left_in_mul_reg_reg_5 : DFFRPQ1 port map( D => left_in_mul_nxt_5_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_5_port);
   right_in_mul_reg_reg_3 : DFFRPQ1 port map( D => data_in(3), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_3_port);
   right_in_mul_reg_reg_0 : DFFRPQ1 port map( D => data_in(0), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_0_port);
   left_in_mul_reg_reg_4 : DFFRPQ1 port map( D => left_in_mul_nxt_4_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_4_port);
   left_in_mul_reg_reg_0 : DFFRPQ1 port map( D => left_in_mul_nxt_0_port, CK =>
                           net77, RB => n36, Q => left_in_mul_reg_0_port);
   right_in_mul_reg_reg_1 : DFFRPQ1 port map( D => data_in(1), CK => net82, RB 
                           => n36, Q => right_in_mul_reg_1_port);
   left_in_mul_reg_reg_3 : DFFRPQ1 port map( D => left_in_mul_nxt_3_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_3_port);
   left_in_mul_reg_reg_2 : DFFRPQ1 port map( D => left_in_mul_nxt_2_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_2_port);
   left_in_mul_reg_reg_1 : DFFRPQ1 port map( D => left_in_mul_nxt_1_port, CK =>
                           net77, RB => n35, Q => left_in_mul_reg_1_port);
   opcode_reg_reg_2 : DFFRPQ1 port map( D => data_in(2), CK => net87, RB => n36
                           , Q => opcode_reg_2_port);
   opcode_reg_reg_3 : DFFRPQ1 port map( D => data_in(3), CK => net87, RB => n36
                           , Q => opcode_reg_3_port);
   opcode_reg_reg_0 : DFFRPQ1 port map( D => data_in(0), CK => net87, RB => n35
                           , Q => opcode_reg_0_port);
   opcode_reg_reg_1 : DFFRPQ1 port map( D => data_in(1), CK => net87, RB => n36
                           , Q => opcode_reg_1_port);
   cur_state_reg_2 : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, RB => 
                           n35, Q => cur_state_2_port);
   cur_state_reg_1 : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, RB => 
                           n36, Q => cur_state_1_port);
   cur_state_reg_0 : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, RB => 
                           n35, Q => cur_state_0_port);
   ready_reg : DFFRPQ1 port map( D => ready_nxt, CK => clk, RB => n36, Q => 
                           ready);
   U78 : NOR2D1 port map( A1 => n13, A2 => n41, Z => N148);
   U79 : AND2D1 port map( A1 => N148, A2 => n21, Z => N152);
   U80 : AND2D1 port map( A1 => mult_out_14_port, A2 => n14, Z => N64);
   U81 : AND2D1 port map( A1 => mult_out_15_port, A2 => n14, Z => N65);
   U82 : AND2D1 port map( A1 => mult_out_13_port, A2 => n14, Z => N63);
   U83 : AND2D1 port map( A1 => mult_out_12_port, A2 => n14, Z => N62);
   U84 : AND2D1 port map( A1 => mult_out_11_port, A2 => n14, Z => N61);
   U85 : AND2D1 port map( A1 => mult_out_10_port, A2 => n14, Z => N60);
   U86 : AND2D1 port map( A1 => mult_out_9_port, A2 => n14, Z => N59);
   U87 : AND2D1 port map( A1 => mult_out_8_port, A2 => n14, Z => N58);
   U88 : OAI21M20D1 port map( A1 => n14, A2 => n41, B => n15, Z => 
                           nxt_state_1_port);
   U89 : INVD1 port map( A => reset, Z => n35);
   U90 : INVD1 port map( A => reset, Z => n36);
   U91 : NAN2D1 port map( A1 => n18, A2 => n22, Z => n13);
   U92 : NAN2D1 port map( A1 => N152, A2 => n20, Z => n28);
   U93 : NAN2D1 port map( A1 => n20, A2 => n22, Z => ready_nxt);
   U94 : INVD1 port map( A => n30, Z => n41);
   U95 : INVD1 port map( A => n20, Z => n40);
   U96 : NOR3M1D1 port map( A1 => n18, A2 => n19, A3 => n32, Z => n27);
   U97 : NOR2M1D1 port map( A1 => n31, A2 => n25, Z => n29);
   U98 : NAN3D1 port map( A1 => n42, A2 => n43, A3 => n39, Z => n21);
   U99 : NAN2D1 port map( A1 => n26, A2 => n21, Z => n32);
   U100 : INVD1 port map( A => n22, Z => n38);
   U101 : AO22D1 port map( A1 => adder_out_6_port, A2 => n23, B1 => 
                           mult_out_6_port, B2 => n14, Z => N56);
   U102 : AO22D1 port map( A1 => adder_out_5_port, A2 => n23, B1 => 
                           mult_out_5_port, B2 => n14, Z => N55);
   U103 : AO22D1 port map( A1 => adder_out_4_port, A2 => n23, B1 => 
                           mult_out_4_port, B2 => n14, Z => N54);
   U104 : AO22D1 port map( A1 => adder_out_3_port, A2 => n23, B1 => 
                           mult_out_3_port, B2 => n14, Z => N53);
   U105 : AO22D1 port map( A1 => adder_out_2_port, A2 => n23, B1 => 
                           mult_out_2_port, B2 => n14, Z => N52);
   U106 : AO22D1 port map( A1 => adder_out_1_port, A2 => n23, B1 => 
                           mult_out_1_port, B2 => n14, Z => N51);
   U107 : NAN4M1D1 port map( A1 => n16, A2 => n15, A3 => n17, A4 => n18, Z => 
                           nxt_state_0_port);
   U108 : OA21D1 port map( A1 => n12, A2 => n20, B => n21, Z => n15);
   U109 : NOR2M1D1 port map( A1 => n25, A2 => n44, Z => n23);
   U110 : NOR2D1 port map( A1 => n24, A2 => n44, Z => n14);
   U111 : INVD1 port map( A => n26, Z => n44);
   U112 : NAN3D1 port map( A1 => n39, A2 => n42, A3 => cur_state_2_port, Z => 
                           n22);
   U113 : INVD1 port map( A => cur_state_0_port, Z => n39);
   U114 : INVD1 port map( A => cur_state_1_port, Z => n42);
   U115 : NAN2D1 port map( A1 => n33, A2 => n28, Z => N126);
   U116 : NAN4M1D1 port map( A1 => ready_nxt, A2 => n31, A3 => n27, A4 => n24, 
                           Z => n33);
   U117 : NAN2D1 port map( A1 => n34, A2 => n28, Z => N114);
   U118 : NAN4M1D1 port map( A1 => n32, A2 => n25, A3 => n20, A4 => n30, Z => 
                           n34);
   U119 : NAN3D1 port map( A1 => cur_state_0_port, A2 => n43, A3 => 
                           cur_state_1_port, Z => n18);
   U120 : INVD1 port map( A => cur_state_2_port, Z => n43);
   U121 : NOR3D1 port map( A1 => cur_state_0_port, A2 => cur_state_2_port, A3 
                           => n42, Z => n12);
   U122 : NAN3D1 port map( A1 => cur_state_0_port, A2 => n42, A3 => 
                           cur_state_2_port, Z => n30);
   U123 : AO22D1 port map( A1 => result_reg_0_port, A2 => n22, B1 => 
                           result_reg_8_port, B2 => n38, Z => data_out(0));
   U124 : AO22D1 port map( A1 => result_reg_1_port, A2 => n22, B1 => 
                           result_reg_9_port, B2 => n38, Z => data_out(1));
   U125 : AO22D1 port map( A1 => result_reg_2_port, A2 => n22, B1 => 
                           result_reg_10_port, B2 => n38, Z => data_out(2));
   U126 : AO22D1 port map( A1 => result_reg_3_port, A2 => n22, B1 => 
                           result_reg_11_port, B2 => n38, Z => data_out(3));
   U127 : AO22D1 port map( A1 => result_reg_4_port, A2 => n22, B1 => 
                           result_reg_12_port, B2 => n38, Z => data_out(4));
   U128 : AO22D1 port map( A1 => result_reg_5_port, A2 => n22, B1 => 
                           result_reg_13_port, B2 => n38, Z => data_out(5));
   U129 : AO22D1 port map( A1 => result_reg_6_port, A2 => n22, B1 => 
                           result_reg_14_port, B2 => n38, Z => data_out(6));
   U130 : AO22D1 port map( A1 => result_reg_7_port, A2 => n22, B1 => 
                           result_reg_15_port, B2 => n38, Z => data_out(7));
   U131 : NAN2D1 port map( A1 => opcode_reg_0_port, A2 => opcode_reg_1_port, Z 
                           => n31);
   U132 : NOR2D1 port map( A1 => n37, A2 => opcode_reg_1_port, Z => n25);
   U133 : INVD1 port map( A => opcode_reg_0_port, Z => n37);
   U134 : NOR2D1 port map( A1 => opcode_reg_2_port, A2 => opcode_reg_3_port, Z 
                           => n26);
   U135 : NOR2D1 port map( A1 => opcode_reg_1_port, A2 => opcode_reg_0_port, Z 
                           => n19);
   U136 : NAN2D1 port map( A1 => opcode_reg_1_port, A2 => n37, Z => n24);
   U137 : AO22D1 port map( A1 => left_in_add_reg_0_port, A2 => n41, B1 => 
                           data_in(0), B2 => n13, Z => left_in_mul_nxt_0_port);
   U138 : AO22D1 port map( A1 => left_in_add_reg_1_port, A2 => n41, B1 => 
                           data_in(1), B2 => n13, Z => left_in_mul_nxt_1_port);
   U139 : AO22D1 port map( A1 => left_in_add_reg_2_port, A2 => n41, B1 => 
                           data_in(2), B2 => n13, Z => left_in_mul_nxt_2_port);
   U140 : AO22D1 port map( A1 => left_in_add_reg_3_port, A2 => n41, B1 => 
                           data_in(3), B2 => n13, Z => left_in_mul_nxt_3_port);
   U141 : AO22D1 port map( A1 => left_in_add_reg_4_port, A2 => n41, B1 => 
                           data_in(4), B2 => n13, Z => left_in_mul_nxt_4_port);
   U142 : AO22D1 port map( A1 => left_in_add_reg_5_port, A2 => n41, B1 => 
                           data_in(5), B2 => n13, Z => left_in_mul_nxt_5_port);
   U143 : AO22D1 port map( A1 => left_in_add_reg_6_port, A2 => n41, B1 => 
                           data_in(6), B2 => n13, Z => left_in_mul_nxt_6_port);
   U144 : AO22D1 port map( A1 => left_in_add_reg_7_port, A2 => n41, B1 => 
                           data_in(7), B2 => n13, Z => left_in_mul_nxt_7_port);
   U145 : AO22D1 port map( A1 => adder_out_7_port, A2 => n23, B1 => 
                           mult_out_7_port, B2 => n14, Z => N57);
   U146 : AO22D1 port map( A1 => adder_out_0_port, A2 => n23, B1 => 
                           mult_out_0_port, B2 => n14, Z => N50);
   U147 : TIEHI port map( Z => req);
   U148 : TIELO port map( Z => n1);
   clk_gate_left_in_add_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_left_in_add_reg_reg_net58, A2 => clk, Z => 
                           net66);
   clk_gate_left_in_add_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_left_in_add_reg_reg_net55, GB => clk, Q => 
                           clk_gate_left_in_add_reg_reg_net58);
   clk_gate_left_in_add_reg_reg_test_or : OR2D1 port map( A1 => N114, A2 => n1,
                           Z => clk_gate_left_in_add_reg_reg_net55);
   clk_gate_right_in_add_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_right_in_add_reg_reg_net58, A2 => clk, Z =>
                           net72);
   clk_gate_right_in_add_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_right_in_add_reg_reg_net55, GB => clk, Q =>
                           clk_gate_right_in_add_reg_reg_net58);
   clk_gate_right_in_add_reg_reg_test_or : OR2D1 port map( A1 => N126, A2 => n1
                           , Z => clk_gate_right_in_add_reg_reg_net55);
   clk_gate_left_in_mul_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_left_in_mul_reg_reg_net58, A2 => clk, Z => 
                           net77);
   clk_gate_left_in_mul_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_left_in_mul_reg_reg_net55, GB => clk, Q => 
                           clk_gate_left_in_mul_reg_reg_net58);
   clk_gate_left_in_mul_reg_reg_test_or : OR2D1 port map( A1 => N141, A2 => n1,
                           Z => clk_gate_left_in_mul_reg_reg_net55);
   clk_gate_right_in_mul_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_right_in_mul_reg_reg_net58, A2 => clk, Z =>
                           net82);
   clk_gate_right_in_mul_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_right_in_mul_reg_reg_net55, GB => clk, Q =>
                           clk_gate_right_in_mul_reg_reg_net58);
   clk_gate_right_in_mul_reg_reg_test_or : OR2D1 port map( A1 => N145, A2 => n1
                           , Z => clk_gate_right_in_mul_reg_reg_net55);
   clk_gate_opcode_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_opcode_reg_reg_net58, A2 => clk, Z => net87
                           );
   clk_gate_opcode_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_opcode_reg_reg_net55, GB => clk, Q => 
                           clk_gate_opcode_reg_reg_net58);
   clk_gate_opcode_reg_reg_test_or : OR2D1 port map( A1 => N148, A2 => n1, Z =>
                           clk_gate_opcode_reg_reg_net55);
   clk_gate_result_reg_reg_main_gate : AND2D1 port map( A1 => 
                           clk_gate_result_reg_reg_net58, A2 => clk, Z => net92
                           );
   clk_gate_result_reg_reg_latch : LATPQ1 port map( D => 
                           clk_gate_result_reg_reg_net55, GB => clk, Q => 
                           clk_gate_result_reg_reg_net58);
   clk_gate_result_reg_reg_test_or : OR2D1 port map( A1 => N152, A2 => n1, Z =>
                           clk_gate_result_reg_reg_net55);
   add_210_U2 : EXOR2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => adder_out_0_port);
   add_210_U1 : AND2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => add_210_n1);
   add_210_U1_7 : EXOR3D1 port map( A1 => left_in_add_reg_7_port, A2 => 
                           right_in_add_reg_7_port, A3 => add_210_carry_7_port,
                           Z => adder_out_7_port);
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
   mult_213_U237 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_7_port, Z => mult_213_n240);
   mult_213_U236 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n199, Z => mult_213_n239);
   mult_213_U235 : EXOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_6_port, Z => mult_213_n246);
   mult_213_U234 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n240, 
                           B1 => mult_213_n239, B2 => mult_213_n234, Z => 
                           mult_213_n15);
   mult_213_U233 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_5_port, Z => mult_213_n230);
   mult_213_U232 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n200, Z => mult_213_n229);
   mult_213_U231 : EXOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           left_in_mul_reg_4_port, Z => mult_213_n245);
   mult_213_U230 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n230, 
                           B1 => mult_213_n229, B2 => mult_213_n224, Z => 
                           mult_213_n21);
   mult_213_U229 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_3_port, Z => mult_213_n220);
   mult_213_U228 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n201, Z => mult_213_n243);
   mult_213_U227 : EXOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           left_in_mul_reg_2_port, Z => mult_213_n244);
   mult_213_U226 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n220, 
                           B1 => mult_213_n243, B2 => mult_213_n215, Z => 
                           mult_213_n31);
   mult_213_U225 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n199, Z => mult_213_n236);
   mult_213_U224 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n199, Z => mult_213_n232);
   mult_213_U223 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n236, 
                           B1 => mult_213_n232, B2 => mult_213_n234, Z => 
                           mult_213_n241);
   mult_213_U222 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n201, Z => mult_213_n219);
   mult_213_U221 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n243, 
                           B1 => mult_213_n219, B2 => mult_213_n215, Z => 
                           mult_213_n242);
   mult_213_U220 : OR2D1 port map( A1 => mult_213_n241, A2 => mult_213_n242, Z 
                           => mult_213_n37);
   mult_213_U219 : EXNOR2D1 port map( A1 => mult_213_n241, A2 => mult_213_n242,
                           Z => mult_213_n38);
   mult_213_U218 : OAI32D1 port map( A1 => mult_213_n199, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n231, B1 => 
                           mult_213_n199, B2 => mult_213_n234, Z => 
                           mult_213_n57);
   mult_213_U217 : OAI32D1 port map( A1 => mult_213_n200, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n221, B1 => 
                           mult_213_n200, B2 => mult_213_n224, Z => 
                           mult_213_n58);
   mult_213_U216 : OAI32D1 port map( A1 => mult_213_n201, A2 => 
                           right_in_mul_reg_0_port, A3 => mult_213_n212, B1 => 
                           mult_213_n201, B2 => mult_213_n215, Z => 
                           mult_213_n59);
   mult_213_U215 : OAI21D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_213_n202, B => mult_213_n205, Z => mult_213_n60
                           );
   mult_213_U214 : AO21D1 port map( A1 => mult_213_n234, A2 => mult_213_n231, B
                           => mult_213_n240, Z => mult_213_n61);
   mult_213_U213 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n199, Z => mult_213_n238);
   mult_213_U212 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n239, 
                           B1 => mult_213_n238, B2 => mult_213_n234, Z => 
                           mult_213_n62);
   mult_213_U211 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n199, Z => mult_213_n237);
   mult_213_U210 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n238, 
                           B1 => mult_213_n237, B2 => mult_213_n234, Z => 
                           mult_213_n63);
   mult_213_U209 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n199, Z => mult_213_n235);
   mult_213_U208 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n237, 
                           B1 => mult_213_n235, B2 => mult_213_n234, Z => 
                           mult_213_n64);
   mult_213_U207 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n235, 
                           B1 => mult_213_n236, B2 => mult_213_n234, Z => 
                           mult_213_n65);
   mult_213_U206 : EXOR2D1 port map( A1 => mult_213_n199, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n233);
   mult_213_U205 : OAI22D1 port map( A1 => mult_213_n231, A2 => mult_213_n232, 
                           B1 => mult_213_n233, B2 => mult_213_n234, Z => 
                           mult_213_n67);
   mult_213_U204 : NOR2D1 port map( A1 => mult_213_n231, A2 => mult_213_n198, Z
                           => mult_213_n68);
   mult_213_U203 : AO21D1 port map( A1 => mult_213_n224, A2 => mult_213_n221, B
                           => mult_213_n230, Z => mult_213_n69);
   mult_213_U202 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n200, Z => mult_213_n228);
   mult_213_U201 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n229, 
                           B1 => mult_213_n228, B2 => mult_213_n224, Z => 
                           mult_213_n70);
   mult_213_U200 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n200, Z => mult_213_n227);
   mult_213_U199 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n228, 
                           B1 => mult_213_n227, B2 => mult_213_n224, Z => 
                           mult_213_n71);
   mult_213_U198 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n200, Z => mult_213_n226);
   mult_213_U197 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n227, 
                           B1 => mult_213_n226, B2 => mult_213_n224, Z => 
                           mult_213_n72);
   mult_213_U196 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n200, Z => mult_213_n225);
   mult_213_U195 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n226, 
                           B1 => mult_213_n225, B2 => mult_213_n224, Z => 
                           mult_213_n73);
   mult_213_U194 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n200, Z => mult_213_n222);
   mult_213_U193 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n225, 
                           B1 => mult_213_n222, B2 => mult_213_n224, Z => 
                           mult_213_n74);
   mult_213_U192 : EXOR2D1 port map( A1 => mult_213_n200, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n223);
   mult_213_U191 : OAI22D1 port map( A1 => mult_213_n221, A2 => mult_213_n222, 
                           B1 => mult_213_n223, B2 => mult_213_n224, Z => 
                           mult_213_n75);
   mult_213_U190 : NOR2D1 port map( A1 => mult_213_n221, A2 => mult_213_n198, Z
                           => mult_213_n76);
   mult_213_U189 : AO21D1 port map( A1 => mult_213_n215, A2 => mult_213_n212, B
                           => mult_213_n220, Z => mult_213_n77);
   mult_213_U188 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n201, Z => mult_213_n218);
   mult_213_U187 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n219, 
                           B1 => mult_213_n218, B2 => mult_213_n215, Z => 
                           mult_213_n79);
   mult_213_U186 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n201, Z => mult_213_n217);
   mult_213_U185 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n218, 
                           B1 => mult_213_n217, B2 => mult_213_n215, Z => 
                           mult_213_n80);
   mult_213_U184 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n201, Z => mult_213_n216);
   mult_213_U183 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n217, 
                           B1 => mult_213_n216, B2 => mult_213_n215, Z => 
                           mult_213_n81);
   mult_213_U182 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n201, Z => mult_213_n213);
   mult_213_U181 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n216, 
                           B1 => mult_213_n213, B2 => mult_213_n215, Z => 
                           mult_213_n82);
   mult_213_U180 : EXOR2D1 port map( A1 => mult_213_n201, A2 => 
                           right_in_mul_reg_0_port, Z => mult_213_n214);
   mult_213_U179 : OAI22D1 port map( A1 => mult_213_n212, A2 => mult_213_n213, 
                           B1 => mult_213_n214, B2 => mult_213_n215, Z => 
                           mult_213_n83);
   mult_213_U178 : NOR2D1 port map( A1 => mult_213_n212, A2 => mult_213_n198, Z
                           => mult_213_n84);
   mult_213_U177 : EXNOR2D1 port map( A1 => right_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_1_port, Z => mult_213_n211);
   mult_213_U176 : AO21D1 port map( A1 => mult_213_n203, A2 => mult_213_n205, B
                           => mult_213_n211, Z => mult_213_n85);
   mult_213_U175 : EXOR2D1 port map( A1 => right_in_mul_reg_6_port, A2 => 
                           mult_213_n202, Z => mult_213_n210);
   mult_213_U174 : OAI22D1 port map( A1 => mult_213_n211, A2 => mult_213_n203, 
                           B1 => mult_213_n210, B2 => mult_213_n205, Z => 
                           mult_213_n86);
   mult_213_U173 : EXOR2D1 port map( A1 => right_in_mul_reg_5_port, A2 => 
                           mult_213_n202, Z => mult_213_n209);
   mult_213_U172 : OAI22D1 port map( A1 => mult_213_n210, A2 => mult_213_n203, 
                           B1 => mult_213_n209, B2 => mult_213_n205, Z => 
                           mult_213_n87);
   mult_213_U171 : EXOR2D1 port map( A1 => right_in_mul_reg_4_port, A2 => 
                           mult_213_n202, Z => mult_213_n208);
   mult_213_U170 : OAI22D1 port map( A1 => mult_213_n209, A2 => mult_213_n203, 
                           B1 => mult_213_n208, B2 => mult_213_n205, Z => 
                           mult_213_n88);
   mult_213_U169 : EXOR2D1 port map( A1 => right_in_mul_reg_3_port, A2 => 
                           mult_213_n202, Z => mult_213_n207);
   mult_213_U168 : OAI22D1 port map( A1 => mult_213_n208, A2 => mult_213_n203, 
                           B1 => mult_213_n207, B2 => mult_213_n205, Z => 
                           mult_213_n89);
   mult_213_U167 : EXOR2D1 port map( A1 => right_in_mul_reg_2_port, A2 => 
                           mult_213_n202, Z => mult_213_n206);
   mult_213_U166 : OAI22D1 port map( A1 => mult_213_n207, A2 => mult_213_n203, 
                           B1 => mult_213_n206, B2 => mult_213_n205, Z => 
                           mult_213_n90);
   mult_213_U165 : EXOR2D1 port map( A1 => right_in_mul_reg_1_port, A2 => 
                           mult_213_n202, Z => mult_213_n204);
   mult_213_U164 : OAI22D1 port map( A1 => mult_213_n206, A2 => mult_213_n203, 
                           B1 => mult_213_n204, B2 => mult_213_n205, Z => 
                           mult_213_n91);
   mult_213_U163 : OAI22D1 port map( A1 => mult_213_n204, A2 => mult_213_n203, 
                           B1 => right_in_mul_reg_0_port, B2 => mult_213_n205, 
                           Z => mult_213_n92);
   mult_213_U162 : NOR2D1 port map( A1 => mult_213_n203, A2 => mult_213_n198, Z
                           => mult_out_0_port);
   mult_213_U161 : INVD1 port map( A => left_in_mul_reg_7_port, Z => 
                           mult_213_n199);
   mult_213_U160 : INVD1 port map( A => right_in_mul_reg_0_port, Z => 
                           mult_213_n198);
   mult_213_U159 : NAN2D1 port map( A1 => mult_213_n231, A2 => mult_213_n246, Z
                           => mult_213_n234);
   mult_213_U158 : INVD1 port map( A => left_in_mul_reg_5_port, Z => 
                           mult_213_n200);
   mult_213_U157 : EXOR2D1 port map( A1 => left_in_mul_reg_6_port, A2 => 
                           mult_213_n200, Z => mult_213_n231);
   mult_213_U156 : INVD1 port map( A => left_in_mul_reg_0_port, Z => 
                           mult_213_n203);
   mult_213_U155 : NAN2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           mult_213_n203, Z => mult_213_n205);
   mult_213_U154 : INVD1 port map( A => left_in_mul_reg_3_port, Z => 
                           mult_213_n201);
   mult_213_U153 : EXOR2D1 port map( A1 => left_in_mul_reg_4_port, A2 => 
                           mult_213_n201, Z => mult_213_n221);
   mult_213_U152 : NAN2D1 port map( A1 => mult_213_n221, A2 => mult_213_n245, Z
                           => mult_213_n224);
   mult_213_U151 : INVD1 port map( A => left_in_mul_reg_1_port, Z => 
                           mult_213_n202);
   mult_213_U150 : EXOR2D1 port map( A1 => left_in_mul_reg_2_port, A2 => 
                           mult_213_n202, Z => mult_213_n212);
   mult_213_U149 : NAN2D1 port map( A1 => mult_213_n212, A2 => mult_213_n244, Z
                           => mult_213_n215);
   mult_213_U148 : INVD1 port map( A => mult_213_n21, Z => mult_213_n196);
   mult_213_U147 : INVD1 port map( A => mult_213_n31, Z => mult_213_n195);
   mult_213_U146 : INVD1 port map( A => mult_213_n1, Z => mult_out_15_port);
   mult_213_U145 : INVD1 port map( A => mult_213_n15, Z => mult_213_n197);
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
                           mult_213_n195, CO => mult_213_n29, S => mult_213_n30
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
   mult_213_U18 : ADFULD1 port map( A => mult_213_n196, B => mult_213_n63, CI 
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
   mult_213_U3 : ADFULD1 port map( A => mult_213_n17, B => mult_213_n197, CI =>
                           mult_213_n3, CO => mult_213_n2, S => 
                           mult_out_13_port);
   mult_213_U2 : ADFULD1 port map( A => mult_213_n61, B => mult_213_n15, CI => 
                           mult_213_n2, CO => mult_213_n1, S => 
                           mult_out_14_port);

end flat_calc_own_gc_8_5;
