
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

architecture flat_calc_8_5 of siso_gen is

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
   
   component NOR4M1D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component OA21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
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
   
   component AOI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M10D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal left_in_reg_7_port, left_in_reg_6_port, left_in_reg_5_port, 
      left_in_reg_4_port, left_in_reg_3_port, left_in_reg_2_port, 
      left_in_reg_1_port, left_in_reg_0_port, right_in_reg_7_port, 
      right_in_reg_6_port, right_in_reg_5_port, right_in_reg_4_port, 
      right_in_reg_3_port, right_in_reg_2_port, right_in_reg_1_port, 
      right_in_reg_0_port, opcode_reg_3_port, opcode_reg_2_port, 
      opcode_reg_1_port, opcode_reg_0_port, result_reg_15_port, 
      result_reg_14_port, result_reg_13_port, result_reg_12_port, 
      result_reg_11_port, result_reg_10_port, result_reg_9_port, 
      result_reg_8_port, result_reg_7_port, result_reg_6_port, 
      result_reg_5_port, result_reg_4_port, result_reg_3_port, 
      result_reg_2_port, result_reg_1_port, result_reg_0_port, cur_state_2_port
      , cur_state_1_port, cur_state_0_port, ready_nxt, nxt_state_2_port, 
      nxt_state_1_port, nxt_state_0_port, adder_out_7_port, adder_out_6_port, 
      adder_out_5_port, adder_out_4_port, adder_out_3_port, adder_out_2_port, 
      adder_out_1_port, adder_out_0_port, mult_out_15_port, mult_out_14_port, 
      mult_out_13_port, mult_out_12_port, mult_out_11_port, mult_out_10_port, 
      mult_out_9_port, mult_out_8_port, mult_out_7_port, mult_out_6_port, 
      mult_out_5_port, mult_out_4_port, mult_out_3_port, mult_out_2_port, 
      mult_out_1_port, mult_out_0_port, n1, n25, n26, n27, n28, n29, n30, n31, 
      n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n_1003, 
      add_139_n_1002, add_139_n1, add_139_carry_2_port, add_139_carry_3_port, 
      add_139_carry_4_port, add_139_carry_5_port, add_139_carry_6_port, 
      add_139_carry_7_port, mult_142_n246, mult_142_n245, mult_142_n244, 
      mult_142_n243, mult_142_n242, mult_142_n241, mult_142_n240, mult_142_n239
      , mult_142_n238, mult_142_n237, mult_142_n236, mult_142_n235, 
      mult_142_n234, mult_142_n233, mult_142_n232, mult_142_n231, mult_142_n230
      , mult_142_n229, mult_142_n228, mult_142_n227, mult_142_n226, 
      mult_142_n225, mult_142_n224, mult_142_n223, mult_142_n222, mult_142_n221
      , mult_142_n220, mult_142_n219, mult_142_n218, mult_142_n217, 
      mult_142_n216, mult_142_n215, mult_142_n214, mult_142_n213, mult_142_n212
      , mult_142_n211, mult_142_n210, mult_142_n209, mult_142_n208, 
      mult_142_n207, mult_142_n206, mult_142_n205, mult_142_n204, mult_142_n203
      , mult_142_n202, mult_142_n201, mult_142_n200, mult_142_n199, 
      mult_142_n198, mult_142_n197, mult_142_n196, mult_142_n195, mult_142_n92,
      mult_142_n91, mult_142_n90, mult_142_n89, mult_142_n88, mult_142_n87, 
      mult_142_n86, mult_142_n85, mult_142_n84, mult_142_n83, mult_142_n82, 
      mult_142_n81, mult_142_n80, mult_142_n79, mult_142_n77, mult_142_n76, 
      mult_142_n75, mult_142_n74, mult_142_n73, mult_142_n72, mult_142_n71, 
      mult_142_n70, mult_142_n69, mult_142_n68, mult_142_n67, mult_142_n65, 
      mult_142_n64, mult_142_n63, mult_142_n62, mult_142_n61, mult_142_n60, 
      mult_142_n59, mult_142_n58, mult_142_n57, mult_142_n56, mult_142_n55, 
      mult_142_n54, mult_142_n53, mult_142_n52, mult_142_n51, mult_142_n50, 
      mult_142_n49, mult_142_n48, mult_142_n47, mult_142_n46, mult_142_n45, 
      mult_142_n44, mult_142_n43, mult_142_n42, mult_142_n41, mult_142_n40, 
      mult_142_n39, mult_142_n38, mult_142_n37, mult_142_n36, mult_142_n35, 
      mult_142_n34, mult_142_n33, mult_142_n31, mult_142_n30, mult_142_n29, 
      mult_142_n28, mult_142_n27, mult_142_n26, mult_142_n25, mult_142_n24, 
      mult_142_n23, mult_142_n21, mult_142_n20, mult_142_n19, mult_142_n18, 
      mult_142_n17, mult_142_n15, mult_142_n14, mult_142_n13, mult_142_n12, 
      mult_142_n11, mult_142_n10, mult_142_n9, mult_142_n8, mult_142_n7, 
      mult_142_n6, mult_142_n5, mult_142_n4, mult_142_n3, mult_142_n2, 
      mult_142_n1 : std_logic;

begin
   
   U40 : NAN3M1D1 port map( A1 => n25, A2 => n68, A3 => n26, Z => 
                           nxt_state_2_port);
   U41 : OAI21M10D1 port map( A1 => n27, A2 => n28, B => n29, Z => 
                           nxt_state_1_port);
   U42 : OR2D1 port map( A1 => n28, A2 => n27, Z => n30);
   U43 : OAI21D1 port map( A1 => n33, A2 => n86, B => n34, Z => n49);
   U44 : AOI22D1 port map( A1 => adder_out_0_port, A2 => n35, B1 => 
                           mult_out_0_port, B2 => n67, Z => n34);
   U45 : OAI21D1 port map( A1 => n33, A2 => n85, B => n36, Z => n50);
   U46 : AOI22D1 port map( A1 => adder_out_1_port, A2 => n35, B1 => 
                           mult_out_1_port, B2 => n67, Z => n36);
   U47 : OAI21D1 port map( A1 => n33, A2 => n84, B => n37, Z => n51);
   U48 : AOI22D1 port map( A1 => adder_out_2_port, A2 => n35, B1 => 
                           mult_out_2_port, B2 => n67, Z => n37);
   U49 : OAI21D1 port map( A1 => n33, A2 => n83, B => n38, Z => n52);
   U50 : AOI22D1 port map( A1 => adder_out_3_port, A2 => n35, B1 => 
                           mult_out_3_port, B2 => n67, Z => n38);
   U51 : OAI21D1 port map( A1 => n33, A2 => n82, B => n39, Z => n53);
   U52 : AOI22D1 port map( A1 => adder_out_4_port, A2 => n35, B1 => 
                           mult_out_4_port, B2 => n67, Z => n39);
   U53 : OAI21D1 port map( A1 => n33, A2 => n81, B => n40, Z => n54);
   U54 : AOI22D1 port map( A1 => adder_out_5_port, A2 => n35, B1 => 
                           mult_out_5_port, B2 => n67, Z => n40);
   U55 : OAI21D1 port map( A1 => n33, A2 => n80, B => n41, Z => n55);
   U56 : AOI22D1 port map( A1 => adder_out_6_port, A2 => n35, B1 => 
                           mult_out_6_port, B2 => n67, Z => n41);
   U57 : OAI21D1 port map( A1 => n33, A2 => n79, B => n42, Z => n56);
   U58 : AOI22D1 port map( A1 => adder_out_7_port, A2 => n35, B1 => 
                           mult_out_7_port, B2 => n67, Z => n42);
   U59 : OAI22M10D1 port map( A1 => mult_out_8_port, A2 => n43, B1 => n33, B2 
                           => n78, Z => n57);
   U60 : OAI22M10D1 port map( A1 => mult_out_9_port, A2 => n43, B1 => n33, B2 
                           => n77, Z => n58);
   U61 : OAI22M10D1 port map( A1 => mult_out_10_port, A2 => n43, B1 => n33, B2 
                           => n76, Z => n59);
   U62 : OAI22M10D1 port map( A1 => mult_out_11_port, A2 => n43, B1 => n33, B2 
                           => n75, Z => n60);
   U63 : OAI22M10D1 port map( A1 => mult_out_12_port, A2 => n43, B1 => n33, B2 
                           => n74, Z => n61);
   U64 : OAI22M10D1 port map( A1 => mult_out_13_port, A2 => n43, B1 => n33, B2 
                           => n73, Z => n62);
   U65 : OAI22M10D1 port map( A1 => mult_out_14_port, A2 => n43, B1 => n33, B2 
                           => n72, Z => n63);
   U66 : OAI22M10D1 port map( A1 => mult_out_15_port, A2 => n43, B1 => n33, B2 
                           => n71, Z => n64);
   U67 : NAN3M1D1 port map( A1 => ready_nxt, A2 => n26, A3 => n32, Z => n46);
   U68 : NAN3M1D1 port map( A1 => cur_state_0_port, A2 => n70, A3 => n69, Z => 
                           n32);
   U69 : AOI31D1 port map( A1 => cur_state_0_port, A2 => n69, A3 => n70, B => 
                           n25, Z => n31);
   U70 : OAI22D1 port map( A1 => n48, A2 => n79, B1 => n71, B2 => n68, Z => 
                           data_out(7));
   U71 : OAI22D1 port map( A1 => n48, A2 => n80, B1 => n72, B2 => n68, Z => 
                           data_out(6));
   U72 : OAI22D1 port map( A1 => n48, A2 => n81, B1 => n73, B2 => n68, Z => 
                           data_out(5));
   U73 : OAI22D1 port map( A1 => n48, A2 => n82, B1 => n74, B2 => n68, Z => 
                           data_out(4));
   U74 : OAI22D1 port map( A1 => n48, A2 => n83, B1 => n75, B2 => n68, Z => 
                           data_out(3));
   U75 : OAI22D1 port map( A1 => n48, A2 => n84, B1 => n76, B2 => n68, Z => 
                           data_out(2));
   U76 : OAI22D1 port map( A1 => n48, A2 => n85, B1 => n77, B2 => n68, Z => 
                           data_out(1));
   U77 : OAI22D1 port map( A1 => n48, A2 => n86, B1 => n78, B2 => n68, Z => 
                           data_out(0));
   opcode_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n47, CK => clk,
                           RB => n65, Q => opcode_reg_3_port);
   opcode_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n47, CK => clk,
                           RB => n66, Q => opcode_reg_2_port);
   opcode_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n47, CK => clk,
                           RB => n65, Q => opcode_reg_0_port);
   opcode_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n47, CK => clk,
                           RB => n66, Q => opcode_reg_1_port);
   right_in_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_7_port);
   left_in_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_7_port);
   right_in_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_6_port);
   left_in_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_6_port);
   result_reg_reg_15 : DFFRPQ1 port map( D => n64, CK => clk, RB => n66, Q => 
                           result_reg_15_port);
   result_reg_reg_14 : DFFRPQ1 port map( D => n63, CK => clk, RB => n65, Q => 
                           result_reg_14_port);
   result_reg_reg_13 : DFFRPQ1 port map( D => n62, CK => clk, RB => n66, Q => 
                           result_reg_13_port);
   result_reg_reg_12 : DFFRPQ1 port map( D => n61, CK => clk, RB => n65, Q => 
                           result_reg_12_port);
   result_reg_reg_11 : DFFRPQ1 port map( D => n60, CK => clk, RB => n66, Q => 
                           result_reg_11_port);
   result_reg_reg_10 : DFFRPQ1 port map( D => n59, CK => clk, RB => n65, Q => 
                           result_reg_10_port);
   result_reg_reg_9 : DFFRPQ1 port map( D => n58, CK => clk, RB => n66, Q => 
                           result_reg_9_port);
   result_reg_reg_8 : DFFRPQ1 port map( D => n57, CK => clk, RB => n66, Q => 
                           result_reg_8_port);
   right_in_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_5_port);
   result_reg_reg_7 : DFFRPQ1 port map( D => n56, CK => clk, RB => n66, Q => 
                           result_reg_7_port);
   result_reg_reg_6 : DFFRPQ1 port map( D => n55, CK => clk, RB => n66, Q => 
                           result_reg_6_port);
   result_reg_reg_5 : DFFRPQ1 port map( D => n54, CK => clk, RB => n66, Q => 
                           result_reg_5_port);
   result_reg_reg_4 : DFFRPQ1 port map( D => n53, CK => clk, RB => n66, Q => 
                           result_reg_4_port);
   result_reg_reg_3 : DFFRPQ1 port map( D => n52, CK => clk, RB => n66, Q => 
                           result_reg_3_port);
   result_reg_reg_2 : DFFRPQ1 port map( D => n51, CK => clk, RB => n66, Q => 
                           result_reg_2_port);
   result_reg_reg_1 : DFFRPQ1 port map( D => n50, CK => clk, RB => n66, Q => 
                           result_reg_1_port);
   result_reg_reg_0 : DFFRPQ1 port map( D => n49, CK => clk, RB => n66, Q => 
                           result_reg_0_port);
   right_in_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_4_port);
   right_in_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_2_port);
   left_in_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_5_port);
   right_in_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_3_port);
   right_in_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n46, CK => 
                           clk, RB => n65, Q => right_in_reg_0_port);
   left_in_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_4_port);
   right_in_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n46, CK => 
                           clk, RB => n66, Q => right_in_reg_1_port);
   left_in_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_0_port);
   left_in_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_3_port);
   left_in_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_2_port);
   cur_state_reg_1 : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, RB => 
                           n66, Q => cur_state_1_port);
   cur_state_reg_0 : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, RB => 
                           n66, Q => cur_state_0_port);
   cur_state_reg_2 : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, RB => 
                           n66, Q => cur_state_2_port);
   left_in_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n45, CK => clk
                           , RB => n65, Q => left_in_reg_1_port);
   ready_reg : DFFRPQ1 port map( D => ready_nxt, CK => clk, RB => n66, Q => 
                           ready);
   U78 : INVD1 port map( A => n43, Z => n67);
   U79 : INVD1 port map( A => reset, Z => n66);
   U80 : INVD1 port map( A => n48, Z => n68);
   U81 : NAN2D1 port map( A1 => n33, A2 => n27, Z => n43);
   U82 : NOR2M1D1 port map( A1 => n32, A2 => n47, Z => n33);
   U83 : NAN3D1 port map( A1 => n26, A2 => n68, A3 => n28, Z => n47);
   U84 : NAN2D1 port map( A1 => n31, A2 => n68, Z => ready_nxt);
   U85 : OA21D1 port map( A1 => n25, A2 => n31, B => n32, Z => n29);
   U86 : NAN3D1 port map( A1 => n32, A2 => n28, A3 => n31, Z => n45);
   U87 : NAN4D1 port map( A1 => n29, A2 => n30, A3 => n26, A4 => n68, Z => 
                           nxt_state_0_port);
   U88 : INVD1 port map( A => reset, Z => n65);
   U89 : NOR3D1 port map( A1 => cur_state_0_port, A2 => cur_state_1_port, A3 =>
                           n69, Z => n48);
   U90 : INVD1 port map( A => cur_state_2_port, Z => n69);
   U91 : INVD1 port map( A => result_reg_0_port, Z => n86);
   U92 : INVD1 port map( A => result_reg_1_port, Z => n85);
   U93 : INVD1 port map( A => result_reg_2_port, Z => n84);
   U94 : INVD1 port map( A => result_reg_3_port, Z => n83);
   U95 : INVD1 port map( A => result_reg_4_port, Z => n82);
   U96 : INVD1 port map( A => result_reg_5_port, Z => n81);
   U97 : INVD1 port map( A => result_reg_6_port, Z => n80);
   U98 : INVD1 port map( A => result_reg_7_port, Z => n79);
   U99 : INVD1 port map( A => result_reg_8_port, Z => n78);
   U100 : INVD1 port map( A => result_reg_9_port, Z => n77);
   U101 : INVD1 port map( A => result_reg_10_port, Z => n76);
   U102 : INVD1 port map( A => result_reg_11_port, Z => n75);
   U103 : INVD1 port map( A => result_reg_12_port, Z => n74);
   U104 : INVD1 port map( A => result_reg_13_port, Z => n73);
   U105 : INVD1 port map( A => result_reg_14_port, Z => n72);
   U106 : INVD1 port map( A => result_reg_15_port, Z => n71);
   U107 : AND3D1 port map( A1 => opcode_reg_0_port, A2 => n33, A3 => n44, Z => 
                           n35);
   U108 : NOR3D1 port map( A1 => opcode_reg_1_port, A2 => opcode_reg_3_port, A3
                           => opcode_reg_2_port, Z => n44);
   U109 : NAN3D1 port map( A1 => cur_state_2_port, A2 => n70, A3 => 
                           cur_state_0_port, Z => n28);
   U110 : INVD1 port map( A => cur_state_1_port, Z => n70);
   U111 : NAN3D1 port map( A1 => cur_state_0_port, A2 => n69, A3 => 
                           cur_state_1_port, Z => n26);
   U112 : NOR3D1 port map( A1 => cur_state_0_port, A2 => cur_state_2_port, A3 
                           => n70, Z => n25);
   U113 : NOR4M1D1 port map( A1 => opcode_reg_1_port, A2 => opcode_reg_0_port, 
                           A3 => opcode_reg_2_port, A4 => opcode_reg_3_port, Z 
                           => n27);
   U114 : TIEHI port map( Z => req);
   U115 : TIELO port map( Z => n1);
   add_139_U2 : EXOR2D1 port map( A1 => right_in_reg_0_port, A2 => 
                           left_in_reg_0_port, Z => adder_out_0_port);
   add_139_U1 : AND2D1 port map( A1 => right_in_reg_0_port, A2 => 
                           left_in_reg_0_port, Z => add_139_n1);
   add_139_U1_1 : ADFULD1 port map( A => left_in_reg_1_port, B => 
                           right_in_reg_1_port, CI => add_139_n1, CO => 
                           add_139_carry_2_port, S => adder_out_1_port);
   add_139_U1_2 : ADFULD1 port map( A => left_in_reg_2_port, B => 
                           right_in_reg_2_port, CI => add_139_carry_2_port, CO 
                           => add_139_carry_3_port, S => adder_out_2_port);
   add_139_U1_3 : ADFULD1 port map( A => left_in_reg_3_port, B => 
                           right_in_reg_3_port, CI => add_139_carry_3_port, CO 
                           => add_139_carry_4_port, S => adder_out_3_port);
   add_139_U1_4 : ADFULD1 port map( A => left_in_reg_4_port, B => 
                           right_in_reg_4_port, CI => add_139_carry_4_port, CO 
                           => add_139_carry_5_port, S => adder_out_4_port);
   add_139_U1_5 : ADFULD1 port map( A => left_in_reg_5_port, B => 
                           right_in_reg_5_port, CI => add_139_carry_5_port, CO 
                           => add_139_carry_6_port, S => adder_out_5_port);
   add_139_U1_6 : ADFULD1 port map( A => left_in_reg_6_port, B => 
                           right_in_reg_6_port, CI => add_139_carry_6_port, CO 
                           => add_139_carry_7_port, S => adder_out_6_port);
   add_139_U1_7 : ADFULD1 port map( A => left_in_reg_7_port, B => 
                           right_in_reg_7_port, CI => add_139_carry_7_port, CO 
                           => add_139_n_1002, S => adder_out_7_port);
   mult_142_U237 : EXNOR2D1 port map( A1 => right_in_reg_7_port, A2 => 
                           left_in_reg_7_port, Z => mult_142_n240);
   mult_142_U236 : EXOR2D1 port map( A1 => right_in_reg_6_port, A2 => 
                           mult_142_n202, Z => mult_142_n239);
   mult_142_U235 : EXOR2D1 port map( A1 => left_in_reg_7_port, A2 => 
                           left_in_reg_6_port, Z => mult_142_n246);
   mult_142_U234 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n240, 
                           B1 => mult_142_n239, B2 => mult_142_n234, Z => 
                           mult_142_n15);
   mult_142_U233 : EXNOR2D1 port map( A1 => right_in_reg_7_port, A2 => 
                           left_in_reg_5_port, Z => mult_142_n230);
   mult_142_U232 : EXOR2D1 port map( A1 => right_in_reg_6_port, A2 => 
                           mult_142_n201, Z => mult_142_n229);
   mult_142_U231 : EXOR2D1 port map( A1 => left_in_reg_5_port, A2 => 
                           left_in_reg_4_port, Z => mult_142_n245);
   mult_142_U230 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n230, 
                           B1 => mult_142_n229, B2 => mult_142_n224, Z => 
                           mult_142_n21);
   mult_142_U229 : EXNOR2D1 port map( A1 => right_in_reg_7_port, A2 => 
                           left_in_reg_3_port, Z => mult_142_n220);
   mult_142_U228 : EXOR2D1 port map( A1 => right_in_reg_6_port, A2 => 
                           mult_142_n199, Z => mult_142_n243);
   mult_142_U227 : EXOR2D1 port map( A1 => left_in_reg_3_port, A2 => 
                           left_in_reg_2_port, Z => mult_142_n244);
   mult_142_U226 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n220, 
                           B1 => mult_142_n243, B2 => mult_142_n215, Z => 
                           mult_142_n31);
   mult_142_U225 : EXOR2D1 port map( A1 => right_in_reg_2_port, A2 => 
                           mult_142_n202, Z => mult_142_n236);
   mult_142_U224 : EXOR2D1 port map( A1 => right_in_reg_1_port, A2 => 
                           mult_142_n202, Z => mult_142_n232);
   mult_142_U223 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n236, 
                           B1 => mult_142_n232, B2 => mult_142_n234, Z => 
                           mult_142_n241);
   mult_142_U222 : EXOR2D1 port map( A1 => right_in_reg_5_port, A2 => 
                           mult_142_n199, Z => mult_142_n219);
   mult_142_U221 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n243, 
                           B1 => mult_142_n219, B2 => mult_142_n215, Z => 
                           mult_142_n242);
   mult_142_U220 : OR2D1 port map( A1 => mult_142_n241, A2 => mult_142_n242, Z 
                           => mult_142_n37);
   mult_142_U219 : EXNOR2D1 port map( A1 => mult_142_n241, A2 => mult_142_n242,
                           Z => mult_142_n38);
   mult_142_U218 : OAI32D1 port map( A1 => mult_142_n202, A2 => 
                           right_in_reg_0_port, A3 => mult_142_n231, B1 => 
                           mult_142_n202, B2 => mult_142_n234, Z => 
                           mult_142_n57);
   mult_142_U217 : OAI32D1 port map( A1 => mult_142_n201, A2 => 
                           right_in_reg_0_port, A3 => mult_142_n221, B1 => 
                           mult_142_n201, B2 => mult_142_n224, Z => 
                           mult_142_n58);
   mult_142_U216 : OAI32D1 port map( A1 => mult_142_n199, A2 => 
                           right_in_reg_0_port, A3 => mult_142_n212, B1 => 
                           mult_142_n199, B2 => mult_142_n215, Z => 
                           mult_142_n59);
   mult_142_U215 : OAI21D1 port map( A1 => right_in_reg_0_port, A2 => 
                           mult_142_n197, B => mult_142_n205, Z => mult_142_n60
                           );
   mult_142_U214 : AO21D1 port map( A1 => mult_142_n234, A2 => mult_142_n231, B
                           => mult_142_n240, Z => mult_142_n61);
   mult_142_U213 : EXOR2D1 port map( A1 => right_in_reg_5_port, A2 => 
                           mult_142_n202, Z => mult_142_n238);
   mult_142_U212 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n239, 
                           B1 => mult_142_n238, B2 => mult_142_n234, Z => 
                           mult_142_n62);
   mult_142_U211 : EXOR2D1 port map( A1 => right_in_reg_4_port, A2 => 
                           mult_142_n202, Z => mult_142_n237);
   mult_142_U210 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n238, 
                           B1 => mult_142_n237, B2 => mult_142_n234, Z => 
                           mult_142_n63);
   mult_142_U209 : EXOR2D1 port map( A1 => right_in_reg_3_port, A2 => 
                           mult_142_n202, Z => mult_142_n235);
   mult_142_U208 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n237, 
                           B1 => mult_142_n235, B2 => mult_142_n234, Z => 
                           mult_142_n64);
   mult_142_U207 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n235, 
                           B1 => mult_142_n236, B2 => mult_142_n234, Z => 
                           mult_142_n65);
   mult_142_U206 : EXOR2D1 port map( A1 => mult_142_n202, A2 => 
                           right_in_reg_0_port, Z => mult_142_n233);
   mult_142_U205 : OAI22D1 port map( A1 => mult_142_n231, A2 => mult_142_n232, 
                           B1 => mult_142_n233, B2 => mult_142_n234, Z => 
                           mult_142_n67);
   mult_142_U204 : NOR2D1 port map( A1 => mult_142_n231, A2 => mult_142_n203, Z
                           => mult_142_n68);
   mult_142_U203 : AO21D1 port map( A1 => mult_142_n224, A2 => mult_142_n221, B
                           => mult_142_n230, Z => mult_142_n69);
   mult_142_U202 : EXOR2D1 port map( A1 => right_in_reg_5_port, A2 => 
                           mult_142_n201, Z => mult_142_n228);
   mult_142_U201 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n229, 
                           B1 => mult_142_n228, B2 => mult_142_n224, Z => 
                           mult_142_n70);
   mult_142_U200 : EXOR2D1 port map( A1 => right_in_reg_4_port, A2 => 
                           mult_142_n201, Z => mult_142_n227);
   mult_142_U199 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n228, 
                           B1 => mult_142_n227, B2 => mult_142_n224, Z => 
                           mult_142_n71);
   mult_142_U198 : EXOR2D1 port map( A1 => right_in_reg_3_port, A2 => 
                           mult_142_n201, Z => mult_142_n226);
   mult_142_U197 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n227, 
                           B1 => mult_142_n226, B2 => mult_142_n224, Z => 
                           mult_142_n72);
   mult_142_U196 : EXOR2D1 port map( A1 => right_in_reg_2_port, A2 => 
                           mult_142_n201, Z => mult_142_n225);
   mult_142_U195 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n226, 
                           B1 => mult_142_n225, B2 => mult_142_n224, Z => 
                           mult_142_n73);
   mult_142_U194 : EXOR2D1 port map( A1 => right_in_reg_1_port, A2 => 
                           mult_142_n201, Z => mult_142_n222);
   mult_142_U193 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n225, 
                           B1 => mult_142_n222, B2 => mult_142_n224, Z => 
                           mult_142_n74);
   mult_142_U192 : EXOR2D1 port map( A1 => mult_142_n201, A2 => 
                           right_in_reg_0_port, Z => mult_142_n223);
   mult_142_U191 : OAI22D1 port map( A1 => mult_142_n221, A2 => mult_142_n222, 
                           B1 => mult_142_n223, B2 => mult_142_n224, Z => 
                           mult_142_n75);
   mult_142_U190 : NOR2D1 port map( A1 => mult_142_n221, A2 => mult_142_n203, Z
                           => mult_142_n76);
   mult_142_U189 : AO21D1 port map( A1 => mult_142_n215, A2 => mult_142_n212, B
                           => mult_142_n220, Z => mult_142_n77);
   mult_142_U188 : EXOR2D1 port map( A1 => right_in_reg_4_port, A2 => 
                           mult_142_n199, Z => mult_142_n218);
   mult_142_U187 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n219, 
                           B1 => mult_142_n218, B2 => mult_142_n215, Z => 
                           mult_142_n79);
   mult_142_U186 : EXOR2D1 port map( A1 => right_in_reg_3_port, A2 => 
                           mult_142_n199, Z => mult_142_n217);
   mult_142_U185 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n218, 
                           B1 => mult_142_n217, B2 => mult_142_n215, Z => 
                           mult_142_n80);
   mult_142_U184 : EXOR2D1 port map( A1 => right_in_reg_2_port, A2 => 
                           mult_142_n199, Z => mult_142_n216);
   mult_142_U183 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n217, 
                           B1 => mult_142_n216, B2 => mult_142_n215, Z => 
                           mult_142_n81);
   mult_142_U182 : EXOR2D1 port map( A1 => right_in_reg_1_port, A2 => 
                           mult_142_n199, Z => mult_142_n213);
   mult_142_U181 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n216, 
                           B1 => mult_142_n213, B2 => mult_142_n215, Z => 
                           mult_142_n82);
   mult_142_U180 : EXOR2D1 port map( A1 => mult_142_n199, A2 => 
                           right_in_reg_0_port, Z => mult_142_n214);
   mult_142_U179 : OAI22D1 port map( A1 => mult_142_n212, A2 => mult_142_n213, 
                           B1 => mult_142_n214, B2 => mult_142_n215, Z => 
                           mult_142_n83);
   mult_142_U178 : NOR2D1 port map( A1 => mult_142_n212, A2 => mult_142_n203, Z
                           => mult_142_n84);
   mult_142_U177 : EXNOR2D1 port map( A1 => right_in_reg_7_port, A2 => 
                           left_in_reg_1_port, Z => mult_142_n211);
   mult_142_U176 : AO21D1 port map( A1 => mult_142_n195, A2 => mult_142_n205, B
                           => mult_142_n211, Z => mult_142_n85);
   mult_142_U175 : EXOR2D1 port map( A1 => right_in_reg_6_port, A2 => 
                           mult_142_n197, Z => mult_142_n210);
   mult_142_U174 : OAI22D1 port map( A1 => mult_142_n211, A2 => mult_142_n195, 
                           B1 => mult_142_n210, B2 => mult_142_n205, Z => 
                           mult_142_n86);
   mult_142_U173 : EXOR2D1 port map( A1 => right_in_reg_5_port, A2 => 
                           mult_142_n197, Z => mult_142_n209);
   mult_142_U172 : OAI22D1 port map( A1 => mult_142_n210, A2 => mult_142_n195, 
                           B1 => mult_142_n209, B2 => mult_142_n205, Z => 
                           mult_142_n87);
   mult_142_U171 : EXOR2D1 port map( A1 => right_in_reg_4_port, A2 => 
                           mult_142_n197, Z => mult_142_n208);
   mult_142_U170 : OAI22D1 port map( A1 => mult_142_n209, A2 => mult_142_n195, 
                           B1 => mult_142_n208, B2 => mult_142_n205, Z => 
                           mult_142_n88);
   mult_142_U169 : EXOR2D1 port map( A1 => right_in_reg_3_port, A2 => 
                           mult_142_n197, Z => mult_142_n207);
   mult_142_U168 : OAI22D1 port map( A1 => mult_142_n208, A2 => mult_142_n195, 
                           B1 => mult_142_n207, B2 => mult_142_n205, Z => 
                           mult_142_n89);
   mult_142_U167 : EXOR2D1 port map( A1 => right_in_reg_2_port, A2 => 
                           mult_142_n197, Z => mult_142_n206);
   mult_142_U166 : OAI22D1 port map( A1 => mult_142_n207, A2 => mult_142_n195, 
                           B1 => mult_142_n206, B2 => mult_142_n205, Z => 
                           mult_142_n90);
   mult_142_U165 : EXOR2D1 port map( A1 => right_in_reg_1_port, A2 => 
                           mult_142_n197, Z => mult_142_n204);
   mult_142_U164 : OAI22D1 port map( A1 => mult_142_n206, A2 => mult_142_n195, 
                           B1 => mult_142_n204, B2 => mult_142_n205, Z => 
                           mult_142_n91);
   mult_142_U163 : OAI22D1 port map( A1 => mult_142_n204, A2 => mult_142_n195, 
                           B1 => right_in_reg_0_port, B2 => mult_142_n205, Z =>
                           mult_142_n92);
   mult_142_U162 : NOR2D1 port map( A1 => mult_142_n195, A2 => mult_142_n203, Z
                           => mult_out_0_port);
   mult_142_U161 : INVD1 port map( A => left_in_reg_7_port, Z => mult_142_n202)
                           ;
   mult_142_U160 : INVD1 port map( A => right_in_reg_0_port, Z => mult_142_n203
                           );
   mult_142_U159 : NAN2D1 port map( A1 => mult_142_n231, A2 => mult_142_n246, Z
                           => mult_142_n234);
   mult_142_U158 : INVD1 port map( A => left_in_reg_5_port, Z => mult_142_n201)
                           ;
   mult_142_U157 : EXOR2D1 port map( A1 => left_in_reg_6_port, A2 => 
                           mult_142_n201, Z => mult_142_n231);
   mult_142_U156 : INVD1 port map( A => left_in_reg_0_port, Z => mult_142_n195)
                           ;
   mult_142_U155 : NAN2D1 port map( A1 => left_in_reg_1_port, A2 => 
                           mult_142_n195, Z => mult_142_n205);
   mult_142_U154 : INVD1 port map( A => left_in_reg_3_port, Z => mult_142_n199)
                           ;
   mult_142_U153 : EXOR2D1 port map( A1 => left_in_reg_4_port, A2 => 
                           mult_142_n199, Z => mult_142_n221);
   mult_142_U152 : NAN2D1 port map( A1 => mult_142_n221, A2 => mult_142_n245, Z
                           => mult_142_n224);
   mult_142_U151 : INVD1 port map( A => left_in_reg_1_port, Z => mult_142_n197)
                           ;
   mult_142_U150 : EXOR2D1 port map( A1 => left_in_reg_2_port, A2 => 
                           mult_142_n197, Z => mult_142_n212);
   mult_142_U149 : NAN2D1 port map( A1 => mult_142_n212, A2 => mult_142_n244, Z
                           => mult_142_n215);
   mult_142_U148 : INVD1 port map( A => mult_142_n21, Z => mult_142_n198);
   mult_142_U147 : INVD1 port map( A => mult_142_n31, Z => mult_142_n196);
   mult_142_U146 : INVD1 port map( A => mult_142_n1, Z => mult_out_15_port);
   mult_142_U145 : INVD1 port map( A => mult_142_n15, Z => mult_142_n200);
   mult_142_U37 : ADHALFDL port map( A => mult_142_n83, B => mult_142_n90, CO 
                           => mult_142_n55, S => mult_142_n56);
   mult_142_U36 : ADFULD1 port map( A => mult_142_n89, B => mult_142_n76, CI =>
                           mult_142_n82, CO => mult_142_n53, S => mult_142_n54)
                           ;
   mult_142_U35 : ADHALFDL port map( A => mult_142_n58, B => mult_142_n88, CO 
                           => mult_142_n51, S => mult_142_n52);
   mult_142_U34 : ADFULD1 port map( A => mult_142_n75, B => mult_142_n81, CI =>
                           mult_142_n52, CO => mult_142_n49, S => mult_142_n50)
                           ;
   mult_142_U33 : ADFULD1 port map( A => mult_142_n87, B => mult_142_n68, CI =>
                           mult_142_n80, CO => mult_142_n47, S => mult_142_n48)
                           ;
   mult_142_U32 : ADFULD1 port map( A => mult_142_n51, B => mult_142_n74, CI =>
                           mult_142_n48, CO => mult_142_n45, S => mult_142_n46)
                           ;
   mult_142_U31 : ADHALFDL port map( A => mult_142_n57, B => mult_142_n86, CO 
                           => mult_142_n43, S => mult_142_n44);
   mult_142_U30 : ADFULD1 port map( A => mult_142_n67, B => mult_142_n79, CI =>
                           mult_142_n73, CO => mult_142_n41, S => mult_142_n42)
                           ;
   mult_142_U29 : ADFULD1 port map( A => mult_142_n47, B => mult_142_n44, CI =>
                           mult_142_n42, CO => mult_142_n39, S => mult_142_n40)
                           ;
   mult_142_U26 : ADFULD1 port map( A => mult_142_n85, B => mult_142_n72, CI =>
                           mult_142_n43, CO => mult_142_n35, S => mult_142_n36)
                           ;
   mult_142_U25 : ADFULD1 port map( A => mult_142_n41, B => mult_142_n38, CI =>
                           mult_142_n36, CO => mult_142_n33, S => mult_142_n34)
                           ;
   mult_142_U23 : ADFULD1 port map( A => mult_142_n65, B => mult_142_n71, CI =>
                           mult_142_n196, CO => mult_142_n29, S => mult_142_n30
                           );
   mult_142_U22 : ADFULD1 port map( A => mult_142_n35, B => mult_142_n37, CI =>
                           mult_142_n30, CO => mult_142_n27, S => mult_142_n28)
                           ;
   mult_142_U21 : ADFULD1 port map( A => mult_142_n70, B => mult_142_n31, CI =>
                           mult_142_n64, CO => mult_142_n25, S => mult_142_n26)
                           ;
   mult_142_U20 : ADFULD1 port map( A => mult_142_n29, B => mult_142_n77, CI =>
                           mult_142_n26, CO => mult_142_n23, S => mult_142_n24)
                           ;
   mult_142_U18 : ADFULD1 port map( A => mult_142_n198, B => mult_142_n63, CI 
                           => mult_142_n25, CO => mult_142_n19, S => 
                           mult_142_n20);
   mult_142_U17 : ADFULD1 port map( A => mult_142_n62, B => mult_142_n21, CI =>
                           mult_142_n69, CO => mult_142_n17, S => mult_142_n18)
                           ;
   mult_142_U15 : ADHALFDL port map( A => mult_142_n92, B => mult_142_n60, CO 
                           => mult_142_n14, S => mult_out_1_port);
   mult_142_U14 : ADFULD1 port map( A => mult_142_n91, B => mult_142_n84, CI =>
                           mult_142_n14, CO => mult_142_n13, S => 
                           mult_out_2_port);
   mult_142_U13 : ADFULD1 port map( A => mult_142_n56, B => mult_142_n59, CI =>
                           mult_142_n13, CO => mult_142_n12, S => 
                           mult_out_3_port);
   mult_142_U12 : ADFULD1 port map( A => mult_142_n54, B => mult_142_n55, CI =>
                           mult_142_n12, CO => mult_142_n11, S => 
                           mult_out_4_port);
   mult_142_U11 : ADFULD1 port map( A => mult_142_n50, B => mult_142_n53, CI =>
                           mult_142_n11, CO => mult_142_n10, S => 
                           mult_out_5_port);
   mult_142_U10 : ADFULD1 port map( A => mult_142_n46, B => mult_142_n49, CI =>
                           mult_142_n10, CO => mult_142_n9, S => 
                           mult_out_6_port);
   mult_142_U9 : ADFULD1 port map( A => mult_142_n40, B => mult_142_n45, CI => 
                           mult_142_n9, CO => mult_142_n8, S => mult_out_7_port
                           );
   mult_142_U8 : ADFULD1 port map( A => mult_142_n34, B => mult_142_n39, CI => 
                           mult_142_n8, CO => mult_142_n7, S => mult_out_8_port
                           );
   mult_142_U7 : ADFULD1 port map( A => mult_142_n28, B => mult_142_n33, CI => 
                           mult_142_n7, CO => mult_142_n6, S => mult_out_9_port
                           );
   mult_142_U6 : ADFULD1 port map( A => mult_142_n24, B => mult_142_n27, CI => 
                           mult_142_n6, CO => mult_142_n5, S => 
                           mult_out_10_port);
   mult_142_U5 : ADFULD1 port map( A => mult_142_n20, B => mult_142_n23, CI => 
                           mult_142_n5, CO => mult_142_n4, S => 
                           mult_out_11_port);
   mult_142_U4 : ADFULD1 port map( A => mult_142_n19, B => mult_142_n18, CI => 
                           mult_142_n4, CO => mult_142_n3, S => 
                           mult_out_12_port);
   mult_142_U3 : ADFULD1 port map( A => mult_142_n17, B => mult_142_n200, CI =>
                           mult_142_n3, CO => mult_142_n2, S => 
                           mult_out_13_port);
   mult_142_U2 : ADFULD1 port map( A => mult_142_n61, B => mult_142_n15, CI => 
                           mult_142_n2, CO => mult_142_n1, S => 
                           mult_out_14_port);

end flat_calc_8_5;
