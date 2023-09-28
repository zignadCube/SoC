
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
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
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
   
   component OA21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component OA21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFERPQ1
      port( D, CEB, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
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
      opcode_reg_2_port, opcode_reg_1_port, opcode_reg_0_port, cur_state_2_port
      , cur_state_1_port, cur_state_0_port, nxt_state_2_port, nxt_state_1_port,
      nxt_state_0_port, adder_out_7_port, adder_out_6_port, adder_out_5_port, 
      adder_out_4_port, adder_out_3_port, adder_out_2_port, adder_out_1_port, 
      adder_out_0_port, mult_out_15_port, mult_out_14_port, mult_out_13_port, 
      mult_out_12_port, mult_out_11_port, mult_out_10_port, mult_out_9_port, 
      mult_out_8_port, mult_out_7_port, mult_out_6_port, mult_out_5_port, 
      mult_out_4_port, mult_out_3_port, mult_out_2_port, mult_out_1_port, 
      mult_out_0_port, n1, n16, n17, n19, n24, n27, n28, n30, n31, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, 
      n73, n74, n75, n_1002, add_173_n1, add_173_carry_2_port, 
      add_173_carry_3_port, add_173_carry_4_port, add_173_carry_5_port, 
      add_173_carry_6_port, add_173_carry_7_port, mult_176_n276, mult_176_n274,
      mult_176_n273, mult_176_n272, mult_176_n271, mult_176_n241, mult_176_n227
      , mult_176_n226, mult_176_n224, mult_176_n223, mult_176_n222, 
      mult_176_n221, mult_176_n220, mult_176_n219, mult_176_n218, mult_176_n217
      , mult_176_n216, mult_176_n215, mult_176_n214, mult_176_n205, 
      mult_176_n204, mult_176_n203, mult_176_n202, mult_176_n201, mult_176_n200
      , mult_176_n199, mult_176_n198, mult_176_n197, mult_176_n196, 
      mult_176_n195, mult_176_n194, mult_176_n193, mult_176_n192, mult_176_n191
      , mult_176_n190, mult_176_n189, mult_176_n188, mult_176_n187, 
      mult_176_n186, mult_176_n185, mult_176_n184, mult_176_n183, mult_176_n182
      , mult_176_n181, mult_176_n180, mult_176_n179, mult_176_n178, 
      mult_176_n177, mult_176_n176, mult_176_n175, mult_176_n174, mult_176_n173
      , mult_176_n172, mult_176_n171, mult_176_n170, mult_176_n169, 
      mult_176_n168, mult_176_n167, mult_176_n166, mult_176_n165, mult_176_n164
      , mult_176_n163, mult_176_n162, mult_176_n161, mult_176_n160, 
      mult_176_n159, mult_176_n158, mult_176_n157, mult_176_n156, mult_176_n155
      , mult_176_n154, mult_176_n153, mult_176_n152, mult_176_n151, 
      mult_176_n150, mult_176_n149, mult_176_n148, mult_176_n147, mult_176_n146
      , mult_176_n145, mult_176_n144, mult_176_n143, mult_176_n142, 
      mult_176_n141, mult_176_n140, mult_176_n139, mult_176_n138, mult_176_n137
      , mult_176_n136, mult_176_n135, mult_176_n134, mult_176_n133, 
      mult_176_n132, mult_176_n131, mult_176_n130, mult_176_n129, mult_176_n128
      , mult_176_n127, mult_176_n126, mult_176_n125, mult_176_n124, 
      mult_176_n123, mult_176_n122, mult_176_n121, mult_176_n120, mult_176_n119
      , mult_176_n118, mult_176_n117, mult_176_n116, mult_176_n115, 
      mult_176_n114, mult_176_n113, mult_176_n112, mult_176_n111, mult_176_n110
      , mult_176_n109, mult_176_n108, mult_176_n107, mult_176_n106, 
      mult_176_n105, mult_176_n104, mult_176_n103, mult_176_n102, mult_176_n101
      , mult_176_n100, mult_176_n99, mult_176_n98, mult_176_n97, mult_176_n96, 
      mult_176_n95, mult_176_n94, mult_176_n93, mult_176_n92, mult_176_n90, 
      mult_176_n88, mult_176_n86, mult_176_n85, mult_176_n84, mult_176_n83, 
      mult_176_n82, mult_176_n79, mult_176_n78, mult_176_n76, mult_176_n75, 
      mult_176_n74, mult_176_n73, mult_176_n69, mult_176_n68, mult_176_n67, 
      mult_176_n66, mult_176_n65, mult_176_n61, mult_176_n60, mult_176_n59, 
      mult_176_n58, mult_176_n57, mult_176_n56, mult_176_n55, mult_176_n54, 
      mult_176_n53, mult_176_n52, mult_176_n51, mult_176_n50, mult_176_n49, 
      mult_176_n48, mult_176_n47, mult_176_n46, mult_176_n45, mult_176_n43, 
      mult_176_n42, mult_176_n41, mult_176_n40, mult_176_n39, mult_176_n38, 
      mult_176_n37, mult_176_n36, mult_176_n35, mult_176_n33, mult_176_n31, 
      mult_176_n30, mult_176_n26, mult_176_n25, mult_176_n24, mult_176_n23, 
      mult_176_n22, mult_176_n21, mult_176_n20, mult_176_n19, mult_176_n18, 
      mult_176_n17, mult_176_n16, mult_176_n15, mult_176_n14, mult_176_n12, 
      mult_176_n11, mult_176_n10, mult_176_n9, mult_176_n8, mult_176_n7, 
      mult_176_n6, mult_176_n5, mult_176_n4, mult_176_n3, mult_176_n2, 
      mult_176_n1 : std_logic;

begin
   
   U44 : EXNOR2D1 port map( A1 => opcode_reg_1_port, A2 => n75, Z => n30);
   left_in_add_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_7_port);
   right_in_add_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_7_port);
   opcode_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n31, CK => clk,
                           RB => n50, Q => opcode_reg_1_port);
   opcode_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n31, CK => clk,
                           RB => n50, Q => opcode_reg_0_port);
   opcode_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n31, CK => clk,
                           RB => n50, Q => opcode_reg_2_port);
   opcode_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n31, CK => clk,
                           RB => n50, Q => opcode_reg_3_port);
   left_in_add_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_6_port);
   right_in_add_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_6_port);
   cur_state_reg_0 : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, RB => 
                           n50, Q => cur_state_0_port);
   cur_state_reg_1 : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, RB => 
                           n50, Q => cur_state_1_port);
   cur_state_reg_2 : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, RB => 
                           n50, Q => cur_state_2_port);
   left_in_add_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_5_port);
   right_in_add_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_5_port);
   left_in_add_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_4_port);
   right_in_add_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_4_port);
   left_in_add_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_3_port);
   right_in_add_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_3_port);
   left_in_add_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_2_port);
   right_in_add_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_2_port);
   left_in_add_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_1_port);
   right_in_add_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_1_port);
   right_in_add_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n16, CK 
                           => clk, RB => n50, Q => right_in_add_reg_0_port);
   left_in_add_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n24, CK =>
                           clk, RB => n50, Q => left_in_add_reg_0_port);
   right_in_mul_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_2_port);
   right_in_mul_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_3_port);
   right_in_mul_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_4_port);
   right_in_mul_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_1_port);
   right_in_mul_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_0_port);
   right_in_mul_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_7_port);
   right_in_mul_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_6_port);
   right_in_mul_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n19, CK 
                           => clk, RB => n50, Q => right_in_mul_reg_5_port);
   left_in_mul_reg_reg_0 : DFERPQ1 port map( D => data_in(0), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_0_port);
   left_in_mul_reg_reg_2 : DFERPQ1 port map( D => data_in(2), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_2_port);
   left_in_mul_reg_reg_7 : DFERPQ1 port map( D => data_in(7), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_7_port);
   left_in_mul_reg_reg_4 : DFERPQ1 port map( D => data_in(4), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_4_port);
   left_in_mul_reg_reg_6 : DFERPQ1 port map( D => data_in(6), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_6_port);
   left_in_mul_reg_reg_1 : DFERPQ1 port map( D => data_in(1), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_1_port);
   left_in_mul_reg_reg_5 : DFERPQ1 port map( D => data_in(5), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_5_port);
   left_in_mul_reg_reg_3 : DFERPQ1 port map( D => data_in(3), CEB => n28, CK =>
                           clk, RB => n50, Q => left_in_mul_reg_3_port);
   U54 : INVD1 port map( A => opcode_reg_1_port, Z => n62);
   U55 : AND3D1 port map( A1 => n65, A2 => n64, A3 => n63, Z => n42);
   U56 : OR2D1 port map( A1 => n57, A2 => n17, Z => n58);
   U57 : INVD1 port map( A => n64, Z => n56);
   U58 : INVD1 port map( A => n43, Z => ready);
   U59 : INVD1 port map( A => n27, Z => n63);
   U60 : AND2D1 port map( A1 => n56, A2 => n61, Z => n43);
   U61 : INVD1 port map( A => n52, Z => n65);
   U62 : INVD1 port map( A => n61, Z => n74);
   U63 : AND2D1 port map( A1 => n48, A2 => n27, Z => n17);
   U64 : OA21D1 port map( A1 => n49, A2 => n57, B => n59, Z => n44);
   U65 : AND3D1 port map( A1 => n56, A2 => n59, A3 => n57, Z => n45);
   U66 : AND2D1 port map( A1 => n60, A2 => n61, Z => n46);
   U67 : INVD1 port map( A => reset, Z => n50);
   U68 : AND4D1 port map( A1 => n65, A2 => opcode_reg_0_port, A3 => n64, A4 => 
                           n62, Z => n47);
   U69 : INVD1 port map( A => cur_state_2_port, Z => n53);
   U70 : INVD1 port map( A => cur_state_1_port, Z => n51);
   U71 : INVD1 port map( A => cur_state_0_port, Z => n55);
   U72 : NAN2D1 port map( A1 => opcode_reg_1_port, A2 => n75, Z => n27);
   U73 : INVD1 port map( A => opcode_reg_0_port, Z => n75);
   U74 : AND2D1 port map( A1 => n30, A2 => n65, Z => n48);
   U75 : OA21D1 port map( A1 => opcode_reg_1_port, A2 => n75, B => n48, Z => 
                           n49);
   U76 : TIEHI port map( Z => req);
   U77 : TIELO port map( Z => n1);
   U78 : OR2D1 port map( A1 => opcode_reg_2_port, A2 => opcode_reg_3_port, Z =>
                           n52);
   U79 : NAN3D1 port map( A1 => cur_state_2_port, A2 => cur_state_0_port, A3 =>
                           n51, Z => n57);
   U80 : NAN2D1 port map( A1 => n51, A2 => n53, Z => n59);
   U81 : NAN3D1 port map( A1 => cur_state_0_port, A2 => cur_state_1_port, A3 =>
                           n53, Z => n60);
   U82 : NAN3D1 port map( A1 => cur_state_2_port, A2 => n51, A3 => n55, Z => 
                           n61);
   U83 : NAN2D1 port map( A1 => n44, A2 => n46, Z => nxt_state_0_port);
   U84 : OAI31D1 port map( A1 => n27, A2 => n52, A3 => n57, B => n59, Z => 
                           nxt_state_1_port);
   U85 : NAN3D1 port map( A1 => cur_state_1_port, A2 => n53, A3 => n55, Z => 
                           n54);
   U86 : NAN2D1 port map( A1 => n54, A2 => n46, Z => nxt_state_2_port);
   U87 : NAN2D1 port map( A1 => n57, A2 => n46, Z => n31);
   U88 : OAI21D1 port map( A1 => n59, A2 => n55, B => n54, Z => n64);
   U89 : OAI21D1 port map( A1 => n17, A2 => n46, B => n45, Z => n24);
   U90 : NAN4D1 port map( A1 => n43, A2 => n59, A3 => n58, A4 => n60, Z => n16)
                           ;
   U91 : OAI21D1 port map( A1 => n49, A2 => n46, B => n45, Z => n28);
   U92 : NAN3D1 port map( A1 => n43, A2 => n44, A3 => n60, Z => n19);
   U93 : AOI22D1 port map( A1 => adder_out_0_port, A2 => n47, B1 => 
                           mult_out_8_port, B2 => n42, Z => n66);
   U94 : OAI21M20D1 port map( A1 => mult_out_0_port, A2 => n74, B => n66, Z => 
                           data_out(0));
   U95 : AOI22D1 port map( A1 => adder_out_1_port, A2 => n47, B1 => 
                           mult_out_9_port, B2 => n42, Z => n67);
   U96 : OAI21M20D1 port map( A1 => mult_out_1_port, A2 => n74, B => n67, Z => 
                           data_out(1));
   U97 : AOI22D1 port map( A1 => adder_out_2_port, A2 => n47, B1 => 
                           mult_out_10_port, B2 => n42, Z => n68);
   U98 : OAI21M20D1 port map( A1 => mult_out_2_port, A2 => n74, B => n68, Z => 
                           data_out(2));
   U99 : AOI22D1 port map( A1 => adder_out_3_port, A2 => n47, B1 => 
                           mult_out_11_port, B2 => n42, Z => n69);
   U100 : OAI21M20D1 port map( A1 => mult_out_3_port, A2 => n74, B => n69, Z =>
                           data_out(3));
   U101 : AOI22D1 port map( A1 => adder_out_4_port, A2 => n47, B1 => 
                           mult_out_12_port, B2 => n42, Z => n70);
   U102 : OAI21M20D1 port map( A1 => mult_out_4_port, A2 => n74, B => n70, Z =>
                           data_out(4));
   U103 : AOI22D1 port map( A1 => adder_out_5_port, A2 => n47, B1 => 
                           mult_out_13_port, B2 => n42, Z => n71);
   U104 : OAI21M20D1 port map( A1 => mult_out_5_port, A2 => n74, B => n71, Z =>
                           data_out(5));
   U105 : AOI22D1 port map( A1 => adder_out_6_port, A2 => n47, B1 => 
                           mult_out_14_port, B2 => n42, Z => n72);
   U106 : OAI21M20D1 port map( A1 => mult_out_6_port, A2 => n74, B => n72, Z =>
                           data_out(6));
   U107 : AOI22D1 port map( A1 => adder_out_7_port, A2 => n47, B1 => 
                           mult_out_15_port, B2 => n42, Z => n73);
   U108 : OAI21M20D1 port map( A1 => mult_out_7_port, A2 => n74, B => n73, Z =>
                           data_out(7));
   add_173_U2 : EXOR2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => adder_out_0_port);
   add_173_U1 : AND2D1 port map( A1 => right_in_add_reg_0_port, A2 => 
                           left_in_add_reg_0_port, Z => add_173_n1);
   add_173_U1_7 : EXOR3D1 port map( A1 => left_in_add_reg_7_port, A2 => 
                           right_in_add_reg_7_port, A3 => add_173_carry_7_port,
                           Z => adder_out_7_port);
   add_173_U1_1 : ADFULD1 port map( A => left_in_add_reg_1_port, B => 
                           right_in_add_reg_1_port, CI => add_173_n1, CO => 
                           add_173_carry_2_port, S => adder_out_1_port);
   add_173_U1_2 : ADFULD1 port map( A => left_in_add_reg_2_port, B => 
                           right_in_add_reg_2_port, CI => add_173_carry_2_port,
                           CO => add_173_carry_3_port, S => adder_out_2_port);
   add_173_U1_3 : ADFULD1 port map( A => left_in_add_reg_3_port, B => 
                           right_in_add_reg_3_port, CI => add_173_carry_3_port,
                           CO => add_173_carry_4_port, S => adder_out_3_port);
   add_173_U1_4 : ADFULD1 port map( A => left_in_add_reg_4_port, B => 
                           right_in_add_reg_4_port, CI => add_173_carry_4_port,
                           CO => add_173_carry_5_port, S => adder_out_4_port);
   add_173_U1_5 : ADFULD1 port map( A => left_in_add_reg_5_port, B => 
                           right_in_add_reg_5_port, CI => add_173_carry_5_port,
                           CO => add_173_carry_6_port, S => adder_out_5_port);
   add_173_U1_6 : ADFULD1 port map( A => left_in_add_reg_6_port, B => 
                           right_in_add_reg_6_port, CI => add_173_carry_6_port,
                           CO => add_173_carry_7_port, S => adder_out_6_port);
   mult_176_U321 : INVD1 port map( A => left_in_mul_reg_0_port, Z => 
                           mult_176_n241);
   mult_176_U320 : OAI22M10D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           mult_176_n221, B1 => mult_176_n205, B2 => 
                           mult_176_n241, Z => mult_176_n137);
   mult_176_U319 : OAI22M10D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           mult_176_n220, B1 => mult_176_n224, B2 => 
                           mult_176_n196, Z => mult_176_n136);
   mult_176_U318 : NAN2D1 port map( A1 => mult_176_n217, A2 => mult_176_n241, Z
                           => mult_176_n221);
   mult_176_U317 : ADHALFDL port map( A => mult_176_n160, B => mult_176_n167, 
                           CO => mult_176_n132, S => mult_176_n133);
   mult_176_U316 : NAN2D1 port map( A1 => mult_176_n216, A2 => mult_176_n224, Z
                           => mult_176_n220);
   mult_176_U315 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           left_in_mul_reg_2_port, Z => mult_176_n224);
   mult_176_U314 : NAN2D1 port map( A1 => mult_176_n214, A2 => mult_176_n222, Z
                           => mult_176_n218);
   mult_176_U313 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           left_in_mul_reg_6_port, Z => mult_176_n222);
   mult_176_U312 : INVD1 port map( A => left_in_mul_reg_7_port, Z => 
                           mult_176_n226);
   mult_176_U311 : ADHALFDL port map( A => mult_176_n134, B => mult_176_n163, 
                           CO => mult_176_n120, S => mult_176_n121);
   mult_176_U310 : INVD1 port map( A => left_in_mul_reg_5_port, Z => 
                           mult_176_n227);
   mult_176_U309 : ADHALFDL port map( A => mult_176_n135, B => mult_176_n165, 
                           CO => mult_176_n128, S => mult_176_n129);
   mult_176_U308 : NAN2D1 port map( A1 => mult_176_n215, A2 => mult_176_n223, Z
                           => mult_176_n219);
   mult_176_U307 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           left_in_mul_reg_4_port, Z => mult_176_n223);
   mult_176_U306 : OR2D1 port map( A1 => mult_176_n169, A2 => mult_176_n137, Z 
                           => mult_176_n276);
   mult_176_U305 : NAN2D1 port map( A1 => mult_176_n168, A2 => mult_176_n161, Z
                           => mult_176_n76);
   mult_176_U304 : NOR2D1 port map( A1 => mult_176_n168, A2 => mult_176_n161, Z
                           => mult_176_n75);
   mult_176_U303 : NAN2D1 port map( A1 => mult_176_n169, A2 => mult_176_n137, Z
                           => mult_176_n78);
   mult_176_U302 : AO21D1 port map( A1 => mult_176_n219, A2 => mult_176_n223, B
                           => mult_176_n179, Z => mult_176_n146);
   mult_176_U301 : AND2D1 port map( A1 => mult_176_n276, A2 => mult_176_n78, Z 
                           => mult_out_1_port);
   mult_176_U300 : NAN2D1 port map( A1 => mult_176_n131, A2 => mult_176_n132, Z
                           => mult_176_n68);
   mult_176_U299 : INVD1 port map( A => mult_176_n98, Z => mult_176_n99);
   mult_176_U298 : NAN2D1 port map( A1 => mult_176_n274, A2 => mult_176_n73, Z 
                           => mult_176_n11);
   mult_176_U297 : NAN2D1 port map( A1 => mult_176_n123, A2 => mult_176_n126, Z
                           => mult_176_n60);
   mult_176_U296 : NAN2D1 port map( A1 => mult_176_n85, A2 => mult_176_n56, Z 
                           => mult_176_n7);
   mult_176_U295 : NOR2D1 port map( A1 => mult_176_n131, A2 => mult_176_n132, Z
                           => mult_176_n67);
   mult_176_U294 : NAN2D1 port map( A1 => mult_176_n133, A2 => mult_176_n136, Z
                           => mult_176_n73);
   mult_176_U293 : AO21D1 port map( A1 => mult_176_n220, A2 => mult_176_n224, B
                           => mult_176_n188, Z => mult_176_n154);
   mult_176_U292 : NAN2D1 port map( A1 => mult_176_n90, A2 => mult_176_n76, Z 
                           => mult_176_n12);
   mult_176_U291 : NOR2D1 port map( A1 => mult_176_n123, A2 => mult_176_n126, Z
                           => mult_176_n59);
   mult_176_U290 : INVD1 port map( A => mult_176_n108, Z => mult_176_n109);
   mult_176_U289 : NAN2D1 port map( A1 => mult_176_n86, A2 => mult_176_n60, Z 
                           => mult_176_n8);
   mult_176_U288 : NAN2D1 port map( A1 => mult_176_n39, A2 => mult_176_n18, Z 
                           => mult_176_n16);
   mult_176_U287 : AO21D1 port map( A1 => mult_176_n218, A2 => mult_176_n222, B
                           => mult_176_n170, Z => mult_176_n138);
   mult_176_U286 : OR2D1 port map( A1 => mult_176_n133, A2 => mult_176_n136, Z 
                           => mult_176_n274);
   mult_176_U285 : NAN2D1 port map( A1 => mult_176_n127, A2 => mult_176_n130, Z
                           => mult_176_n65);
   mult_176_U284 : AO21D1 port map( A1 => mult_176_n221, A2 => mult_176_n241, B
                           => mult_176_n197, Z => mult_176_n162);
   mult_176_U283 : NAN2D1 port map( A1 => mult_176_n273, A2 => mult_176_n65, Z 
                           => mult_176_n9);
   mult_176_U282 : NAN2D1 port map( A1 => mult_176_n88, A2 => mult_176_n68, Z 
                           => mult_176_n10);
   mult_176_U281 : OR2D1 port map( A1 => mult_176_n127, A2 => mult_176_n130, Z 
                           => mult_176_n273);
   mult_176_U280 : INVD1 port map( A => mult_176_n75, Z => mult_176_n90);
   mult_176_U279 : INVD1 port map( A => mult_176_n67, Z => mult_176_n88);
   mult_176_U278 : INVD1 port map( A => mult_176_n92, Z => mult_176_n93);
   mult_176_U277 : NAN2D1 port map( A1 => mult_176_n94, A2 => mult_176_n93, Z 
                           => mult_176_n21);
   mult_176_U276 : INVD1 port map( A => mult_176_n59, Z => mult_176_n86);
   mult_176_U275 : NOR2D1 port map( A1 => mult_176_n94, A2 => mult_176_n93, Z 
                           => mult_176_n20);
   mult_176_U274 : NAN2D1 port map( A1 => mult_176_n96, A2 => mult_176_n95, Z 
                           => mult_176_n30);
   mult_176_U273 : OR2D1 port map( A1 => mult_176_n96, A2 => mult_176_n95, Z =>
                           mult_176_n272);
   mult_176_U272 : NAN2D1 port map( A1 => mult_176_n101, A2 => mult_176_n104, Z
                           => mult_176_n42);
   mult_176_U271 : OR2D1 port map( A1 => mult_176_n97, A2 => mult_176_n100, Z 
                           => mult_176_n271);
   mult_176_U270 : INVD1 port map( A => mult_176_n14, Z => mult_out_15_port);
   mult_176_U269 : NAN2D1 port map( A1 => mult_176_n117, A2 => mult_176_n122, Z
                           => mult_176_n56);
   mult_176_U268 : NAN2D1 port map( A1 => mult_176_n97, A2 => mult_176_n100, Z 
                           => mult_176_n35);
   mult_176_U267 : NOR2D1 port map( A1 => mult_176_n101, A2 => mult_176_n104, Z
                           => mult_176_n41);
   mult_176_U266 : NAN2D1 port map( A1 => mult_176_n111, A2 => mult_176_n116, Z
                           => mult_176_n53);
   mult_176_U265 : NOR2D1 port map( A1 => mult_176_n117, A2 => mult_176_n122, Z
                           => mult_176_n55);
   mult_176_U264 : OA21M20D1 port map( A1 => mult_176_n274, A2 => mult_176_n74,
                           B => mult_176_n73, Z => mult_176_n69);
   mult_176_U263 : EXNOR2D1 port map( A1 => mult_176_n155, A2 => mult_176_n143,
                           Z => mult_176_n115);
   mult_176_U262 : NOR2D1 port map( A1 => mult_176_n111, A2 => mult_176_n116, Z
                           => mult_176_n52);
   mult_176_U261 : OA21M20D1 port map( A1 => mult_176_n273, A2 => mult_176_n66,
                           B => mult_176_n65, Z => mult_176_n61);
   mult_176_U260 : INVD1 port map( A => mult_176_n55, Z => mult_176_n85);
   mult_176_U259 : INVD1 port map( A => mult_176_n52, Z => mult_176_n84);
   mult_176_U258 : NAN2D1 port map( A1 => mult_176_n84, A2 => mult_176_n53, Z 
                           => mult_176_n6);
   mult_176_U257 : INVD1 port map( A => mult_176_n58, Z => mult_176_n57);
   mult_176_U256 : NAN2D1 port map( A1 => mult_176_n271, A2 => mult_176_n272, Z
                           => mult_176_n25);
   mult_176_U255 : NOR2D1 port map( A1 => mult_176_n25, A2 => mult_176_n20, Z 
                           => mult_176_n18);
   mult_176_U254 : NAN2D1 port map( A1 => mult_176_n271, A2 => mult_176_n35, Z 
                           => mult_176_n3);
   mult_176_U253 : NOR2D1 port map( A1 => mult_176_n46, A2 => mult_176_n41, Z 
                           => mult_176_n39);
   mult_176_U252 : NOR2D1 port map( A1 => mult_176_n105, A2 => mult_176_n110, Z
                           => mult_176_n46);
   mult_176_U251 : INVD1 port map( A => mult_176_n35, Z => mult_176_n33);
   mult_176_U250 : OA21M20D1 port map( A1 => mult_176_n33, A2 => mult_176_n272,
                           B => mult_176_n30, Z => mult_176_n26);
   mult_176_U249 : INVD1 port map( A => mult_176_n41, Z => mult_176_n82);
   mult_176_U248 : NAN2D1 port map( A1 => mult_176_n82, A2 => mult_176_n42, Z 
                           => mult_176_n4);
   mult_176_U247 : NAN2D1 port map( A1 => mult_176_n105, A2 => mult_176_n110, Z
                           => mult_176_n47);
   mult_176_U246 : INVD1 port map( A => mult_176_n20, Z => mult_176_n79);
   mult_176_U245 : NAN2D1 port map( A1 => mult_176_n79, A2 => mult_176_n21, Z 
                           => mult_176_n1);
   mult_176_U244 : NAN2D1 port map( A1 => mult_176_n272, A2 => mult_176_n30, Z 
                           => mult_176_n2);
   mult_176_U243 : NOR2D1 port map( A1 => mult_176_n52, A2 => mult_176_n55, Z 
                           => mult_176_n50);
   mult_176_U242 : INVD1 port map( A => mult_176_n47, Z => mult_176_n45);
   mult_176_U241 : INVD1 port map( A => mult_176_n25, Z => mult_176_n23);
   mult_176_U240 : INVD1 port map( A => mult_176_n46, Z => mult_176_n83);
   mult_176_U239 : INVD1 port map( A => mult_176_n26, Z => mult_176_n24);
   mult_176_U238 : NAN2D1 port map( A1 => mult_176_n83, A2 => mult_176_n47, Z 
                           => mult_176_n5);
   mult_176_U237 : INVD1 port map( A => mult_176_n49, Z => mult_176_n48);
   mult_176_U236 : INVD1 port map( A => mult_176_n40, Z => mult_176_n38);
   mult_176_U235 : INVD1 port map( A => mult_176_n39, Z => mult_176_n37);
   mult_176_U231 : EXOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           left_in_mul_reg_0_port, Z => mult_176_n217);
   mult_176_U228 : EXOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           left_in_mul_reg_2_port, Z => mult_176_n216);
   mult_176_U225 : EXOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           left_in_mul_reg_4_port, Z => mult_176_n215);
   mult_176_U222 : EXOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           left_in_mul_reg_6_port, Z => mult_176_n214);
   mult_176_U203 : NAN2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           left_in_mul_reg_1_port, Z => mult_176_n205);
   mult_176_U202 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_0_port, Z => mult_176_n204);
   mult_176_U201 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_1_port, Z => mult_176_n203);
   mult_176_U200 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_2_port, Z => mult_176_n202);
   mult_176_U199 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_3_port, Z => mult_176_n201);
   mult_176_U198 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_4_port, Z => mult_176_n200);
   mult_176_U197 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_5_port, Z => mult_176_n199);
   mult_176_U196 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_6_port, Z => mult_176_n198);
   mult_176_U195 : EXNOR2D1 port map( A1 => left_in_mul_reg_1_port, A2 => 
                           right_in_mul_reg_7_port, Z => mult_176_n197);
   mult_176_U194 : NOR2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_176_n241, Z => mult_out_0_port);
   mult_176_U193 : OAI22D1 port map( A1 => mult_176_n203, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n204, Z => 
                           mult_176_n169);
   mult_176_U192 : OAI22D1 port map( A1 => mult_176_n202, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n203, Z => 
                           mult_176_n168);
   mult_176_U191 : OAI22D1 port map( A1 => mult_176_n201, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n202, Z => 
                           mult_176_n167);
   mult_176_U190 : OAI22D1 port map( A1 => mult_176_n200, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n201, Z => 
                           mult_176_n166);
   mult_176_U189 : OAI22D1 port map( A1 => mult_176_n199, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n200, Z => 
                           mult_176_n165);
   mult_176_U188 : OAI22D1 port map( A1 => mult_176_n198, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n199, Z => 
                           mult_176_n164);
   mult_176_U187 : OAI22D1 port map( A1 => mult_176_n197, A2 => mult_176_n241, 
                           B1 => mult_176_n221, B2 => mult_176_n198, Z => 
                           mult_176_n163);
   mult_176_U184 : NAN2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           left_in_mul_reg_3_port, Z => mult_176_n196);
   mult_176_U183 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_0_port, Z => mult_176_n195);
   mult_176_U182 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_1_port, Z => mult_176_n194);
   mult_176_U181 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_2_port, Z => mult_176_n193);
   mult_176_U180 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_3_port, Z => mult_176_n192);
   mult_176_U179 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_4_port, Z => mult_176_n191);
   mult_176_U178 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_5_port, Z => mult_176_n190);
   mult_176_U177 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_6_port, Z => mult_176_n189);
   mult_176_U176 : EXNOR2D1 port map( A1 => left_in_mul_reg_3_port, A2 => 
                           right_in_mul_reg_7_port, Z => mult_176_n188);
   mult_176_U175 : NOR2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_176_n224, Z => mult_176_n161);
   mult_176_U174 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n194, 
                           B1 => mult_176_n220, B2 => mult_176_n195, Z => 
                           mult_176_n160);
   mult_176_U173 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n193, 
                           B1 => mult_176_n220, B2 => mult_176_n194, Z => 
                           mult_176_n159);
   mult_176_U172 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n192, 
                           B1 => mult_176_n220, B2 => mult_176_n193, Z => 
                           mult_176_n158);
   mult_176_U171 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n191, 
                           B1 => mult_176_n220, B2 => mult_176_n192, Z => 
                           mult_176_n157);
   mult_176_U170 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n190, 
                           B1 => mult_176_n220, B2 => mult_176_n191, Z => 
                           mult_176_n156);
   mult_176_U169 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n189, 
                           B1 => mult_176_n220, B2 => mult_176_n190, Z => 
                           mult_176_n155);
   mult_176_U168 : OAI22D1 port map( A1 => mult_176_n224, A2 => mult_176_n188, 
                           B1 => mult_176_n220, B2 => mult_176_n189, Z => 
                           mult_176_n108);
   mult_176_U165 : NAN2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           left_in_mul_reg_5_port, Z => mult_176_n187);
   mult_176_U164 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_0_port, Z => mult_176_n186);
   mult_176_U163 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_1_port, Z => mult_176_n185);
   mult_176_U162 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_2_port, Z => mult_176_n184);
   mult_176_U161 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_3_port, Z => mult_176_n183);
   mult_176_U160 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_4_port, Z => mult_176_n182);
   mult_176_U159 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_5_port, Z => mult_176_n181);
   mult_176_U158 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_6_port, Z => mult_176_n180);
   mult_176_U157 : EXNOR2D1 port map( A1 => left_in_mul_reg_5_port, A2 => 
                           right_in_mul_reg_7_port, Z => mult_176_n179);
   mult_176_U156 : NOR2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_176_n223, Z => mult_176_n153);
   mult_176_U155 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n185, 
                           B1 => mult_176_n219, B2 => mult_176_n186, Z => 
                           mult_176_n152);
   mult_176_U154 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n184, 
                           B1 => mult_176_n219, B2 => mult_176_n185, Z => 
                           mult_176_n151);
   mult_176_U153 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n183, 
                           B1 => mult_176_n219, B2 => mult_176_n184, Z => 
                           mult_176_n150);
   mult_176_U152 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n182, 
                           B1 => mult_176_n219, B2 => mult_176_n183, Z => 
                           mult_176_n149);
   mult_176_U151 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n181, 
                           B1 => mult_176_n219, B2 => mult_176_n182, Z => 
                           mult_176_n148);
   mult_176_U150 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n180, 
                           B1 => mult_176_n219, B2 => mult_176_n181, Z => 
                           mult_176_n147);
   mult_176_U149 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n179, 
                           B1 => mult_176_n219, B2 => mult_176_n180, Z => 
                           mult_176_n98);
   mult_176_U147 : OAI22D1 port map( A1 => mult_176_n223, A2 => mult_176_n187, 
                           B1 => mult_176_n219, B2 => mult_176_n227, Z => 
                           mult_176_n135);
   mult_176_U146 : NAN2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           left_in_mul_reg_7_port, Z => mult_176_n178);
   mult_176_U145 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_0_port, Z => mult_176_n177);
   mult_176_U144 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_1_port, Z => mult_176_n176);
   mult_176_U143 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_2_port, Z => mult_176_n175);
   mult_176_U142 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_3_port, Z => mult_176_n174);
   mult_176_U141 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_4_port, Z => mult_176_n173);
   mult_176_U140 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_5_port, Z => mult_176_n172);
   mult_176_U139 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_6_port, Z => mult_176_n171);
   mult_176_U138 : EXNOR2D1 port map( A1 => left_in_mul_reg_7_port, A2 => 
                           right_in_mul_reg_7_port, Z => mult_176_n170);
   mult_176_U137 : NOR2M1D1 port map( A1 => right_in_mul_reg_0_port, A2 => 
                           mult_176_n222, Z => mult_176_n145);
   mult_176_U136 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n176, 
                           B1 => mult_176_n218, B2 => mult_176_n177, Z => 
                           mult_176_n144);
   mult_176_U135 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n175, 
                           B1 => mult_176_n218, B2 => mult_176_n176, Z => 
                           mult_176_n143);
   mult_176_U134 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n174, 
                           B1 => mult_176_n218, B2 => mult_176_n175, Z => 
                           mult_176_n142);
   mult_176_U133 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n173, 
                           B1 => mult_176_n218, B2 => mult_176_n174, Z => 
                           mult_176_n141);
   mult_176_U132 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n172, 
                           B1 => mult_176_n218, B2 => mult_176_n173, Z => 
                           mult_176_n140);
   mult_176_U131 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n171, 
                           B1 => mult_176_n218, B2 => mult_176_n172, Z => 
                           mult_176_n139);
   mult_176_U130 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n170, 
                           B1 => mult_176_n218, B2 => mult_176_n171, Z => 
                           mult_176_n92);
   mult_176_U128 : OAI22D1 port map( A1 => mult_176_n222, A2 => mult_176_n178, 
                           B1 => mult_176_n218, B2 => mult_176_n226, Z => 
                           mult_176_n134);
   mult_176_U126 : ADFULD1 port map( A => mult_176_n166, B => mult_176_n153, CI
                           => mult_176_n159, CO => mult_176_n130, S => 
                           mult_176_n131);
   mult_176_U124 : ADFULD1 port map( A => mult_176_n152, B => mult_176_n158, CI
                           => mult_176_n129, CO => mult_176_n126, S => 
                           mult_176_n127);
   mult_176_U123 : ADFULD1 port map( A => mult_176_n164, B => mult_176_n145, CI
                           => mult_176_n157, CO => mult_176_n124, S => 
                           mult_176_n125);
   mult_176_U122 : ADFULD1 port map( A => mult_176_n128, B => mult_176_n151, CI
                           => mult_176_n125, CO => mult_176_n122, S => 
                           mult_176_n123);
   mult_176_U120 : ADFULD1 port map( A => mult_176_n144, B => mult_176_n156, CI
                           => mult_176_n150, CO => mult_176_n118, S => 
                           mult_176_n119);
   mult_176_U119 : ADFULD1 port map( A => mult_176_n124, B => mult_176_n121, CI
                           => mult_176_n119, CO => mult_176_n116, S => 
                           mult_176_n117);
   mult_176_U118 : OR2D1 port map( A1 => mult_176_n155, A2 => mult_176_n143, Z 
                           => mult_176_n114);
   mult_176_U116 : ADFULD1 port map( A => mult_176_n162, B => mult_176_n149, CI
                           => mult_176_n120, CO => mult_176_n112, S => 
                           mult_176_n113);
   mult_176_U115 : ADFULD1 port map( A => mult_176_n118, B => mult_176_n115, CI
                           => mult_176_n113, CO => mult_176_n110, S => 
                           mult_176_n111);
   mult_176_U113 : ADFULD1 port map( A => mult_176_n142, B => mult_176_n148, CI
                           => mult_176_n109, CO => mult_176_n106, S => 
                           mult_176_n107);
   mult_176_U112 : ADFULD1 port map( A => mult_176_n112, B => mult_176_n114, CI
                           => mult_176_n107, CO => mult_176_n104, S => 
                           mult_176_n105);
   mult_176_U111 : ADFULD1 port map( A => mult_176_n147, B => mult_176_n108, CI
                           => mult_176_n141, CO => mult_176_n102, S => 
                           mult_176_n103);
   mult_176_U110 : ADFULD1 port map( A => mult_176_n106, B => mult_176_n154, CI
                           => mult_176_n103, CO => mult_176_n100, S => 
                           mult_176_n101);
   mult_176_U108 : ADFULD1 port map( A => mult_176_n99, B => mult_176_n140, CI 
                           => mult_176_n102, CO => mult_176_n96, S => 
                           mult_176_n97);
   mult_176_U107 : ADFULD1 port map( A => mult_176_n139, B => mult_176_n98, CI 
                           => mult_176_n146, CO => mult_176_n94, S => 
                           mult_176_n95);
   mult_176_U96 : OAI21D1 port map( A1 => mult_176_n75, A2 => mult_176_n78, B 
                           => mult_176_n76, Z => mult_176_n74);
   mult_176_U95 : EXOR2D1 port map( A1 => mult_176_n12, A2 => mult_176_n78, Z 
                           => mult_out_2_port);
   mult_176_U87 : EXNOR2D1 port map( A1 => mult_176_n11, A2 => mult_176_n74, Z 
                           => mult_out_3_port);
   mult_176_U82 : OAI21D1 port map( A1 => mult_176_n69, A2 => mult_176_n67, B 
                           => mult_176_n68, Z => mult_176_n66);
   mult_176_U81 : EXOR2D1 port map( A1 => mult_176_n10, A2 => mult_176_n69, Z 
                           => mult_out_4_port);
   mult_176_U73 : EXNOR2D1 port map( A1 => mult_176_n9, A2 => mult_176_n66, Z 
                           => mult_out_5_port);
   mult_176_U68 : OAI21D1 port map( A1 => mult_176_n61, A2 => mult_176_n59, B 
                           => mult_176_n60, Z => mult_176_n58);
   mult_176_U66 : EXOR2D1 port map( A1 => mult_176_n8, A2 => mult_176_n61, Z =>
                           mult_out_6_port);
   mult_176_U61 : OAI21D1 port map( A1 => mult_176_n57, A2 => mult_176_n55, B 
                           => mult_176_n56, Z => mult_176_n54);
   mult_176_U60 : EXOR2D1 port map( A1 => mult_176_n57, A2 => mult_176_n7, Z =>
                           mult_out_7_port);
   mult_176_U55 : OAI21D1 port map( A1 => mult_176_n52, A2 => mult_176_n56, B 
                           => mult_176_n53, Z => mult_176_n51);
   mult_176_U53 : AOI21D1 port map( A1 => mult_176_n50, A2 => mult_176_n58, B 
                           => mult_176_n51, Z => mult_176_n49);
   mult_176_U51 : EXNOR2D1 port map( A1 => mult_176_n54, A2 => mult_176_n6, Z 
                           => mult_out_8_port);
   mult_176_U44 : AOI21D1 port map( A1 => mult_176_n48, A2 => mult_176_n83, B 
                           => mult_176_n45, Z => mult_176_n43);
   mult_176_U43 : EXNOR2D1 port map( A1 => mult_176_n48, A2 => mult_176_n5, Z 
                           => mult_out_9_port);
   mult_176_U38 : OAI21D1 port map( A1 => mult_176_n41, A2 => mult_176_n47, B 
                           => mult_176_n42, Z => mult_176_n40);
   mult_176_U34 : OAI21D1 port map( A1 => mult_176_n49, A2 => mult_176_n37, B 
                           => mult_176_n38, Z => mult_176_n36);
   mult_176_U33 : EXOR2D1 port map( A1 => mult_176_n43, A2 => mult_176_n4, Z =>
                           mult_out_10_port);
   mult_176_U26 : AOI21D1 port map( A1 => mult_176_n36, A2 => mult_176_n271, B 
                           => mult_176_n33, Z => mult_176_n31);
   mult_176_U25 : EXNOR2D1 port map( A1 => mult_176_n36, A2 => mult_176_n3, Z 
                           => mult_out_11_port);
   mult_176_U14 : AOI21D1 port map( A1 => mult_176_n36, A2 => mult_176_n23, B 
                           => mult_176_n24, Z => mult_176_n22);
   mult_176_U13 : EXOR2D1 port map( A1 => mult_176_n31, A2 => mult_176_n2, Z =>
                           mult_out_12_port);
   mult_176_U8 : OAI21D1 port map( A1 => mult_176_n26, A2 => mult_176_n20, B =>
                           mult_176_n21, Z => mult_176_n19);
   mult_176_U6 : AOI21D1 port map( A1 => mult_176_n18, A2 => mult_176_n40, B =>
                           mult_176_n19, Z => mult_176_n17);
   mult_176_U4 : OAI21D1 port map( A1 => mult_176_n49, A2 => mult_176_n16, B =>
                           mult_176_n17, Z => mult_176_n15);
   mult_176_U3 : EXOR2D1 port map( A1 => mult_176_n22, A2 => mult_176_n1, Z => 
                           mult_out_13_port);
   mult_176_U2 : ADFULD1 port map( A => mult_176_n138, B => mult_176_n92, CI =>
                           mult_176_n15, CO => mult_176_n14, S => 
                           mult_out_14_port);

end flat_calc_8_5;
