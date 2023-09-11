
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_siso_gen is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type VHDLOUT_TYPE is array (0 downto 0) of std_logic;

end CONV_PACK_siso_gen;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_3 of siso_gen_DW01_sub_3 is

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
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72 : std_logic;

begin
   
   U3 : ADFULD1 port map( A => n58, B => A(14), CI => n10, CO => n9, S => 
                           DIFF(14));
   U4 : ADFULD1 port map( A => n59, B => A(13), CI => n11, CO => n10, S => 
                           DIFF(13));
   U5 : ADFULD1 port map( A => n60, B => A(12), CI => n12, CO => n11, S => 
                           DIFF(12));
   U6 : ADFULD1 port map( A => n61, B => A(11), CI => n13, CO => n12, S => 
                           DIFF(11));
   U7 : ADFULD1 port map( A => n62, B => A(10), CI => n14, CO => n13, S => 
                           DIFF(10));
   U8 : ADFULD1 port map( A => n63, B => A(9), CI => n15, CO => n14, S => 
                           DIFF(9));
   U9 : ADFULD1 port map( A => n64, B => A(8), CI => n16, CO => n15, S => 
                           DIFF(8));
   U10 : EXNOR2D1 port map( A1 => n23, A2 => n2, Z => DIFF(7));
   U11 : OAI21D1 port map( A1 => n37, A2 => n17, B => n18, Z => n16);
   U13 : AOI21D1 port map( A1 => n19, A2 => n28, B => n20, Z => n18);
   U15 : OAI21D1 port map( A1 => n21, A2 => n25, B => n22, Z => n20);
   U20 : EXOR2D1 port map( A1 => n26, A2 => n3, Z => DIFF(6));
   U21 : OAI21D1 port map( A1 => n26, A2 => n24, B => n25, Z => n23);
   U26 : EXOR2D1 port map( A1 => n31, A2 => n4, Z => DIFF(5));
   U27 : AOI21D1 port map( A1 => n36, A2 => n27, B => n28, Z => n26);
   U29 : OAI21D1 port map( A1 => n29, A2 => n35, B => n30, Z => n28);
   U34 : EXNOR2D1 port map( A1 => n36, A2 => n5, Z => DIFF(4));
   U35 : AOI21D1 port map( A1 => n36, A2 => n32, B => n33, Z => n31);
   U42 : EXNOR2D1 port map( A1 => n42, A2 => n6, Z => DIFF(3));
   U44 : AOI21D1 port map( A1 => n38, A2 => n46, B => n39, Z => n37);
   U46 : OAI21D1 port map( A1 => n40, A2 => n44, B => n41, Z => n39);
   U51 : EXOR2D1 port map( A1 => n45, A2 => n7, Z => DIFF(2));
   U52 : OAI21D1 port map( A1 => n45, A2 => n43, B => n44, Z => n42);
   U57 : EXOR2D1 port map( A1 => n8, A2 => n49, Z => DIFF(1));
   U59 : OAI21D1 port map( A1 => n47, A2 => n49, B => n48, Z => n46);
   U64 : EXNOR2D1 port map( A1 => n72, A2 => A(0), Z => DIFF(0));
   U85 : EXOR2D1 port map( A1 => n57, A2 => A(15), Z => n1);
   U86 : INVD1 port map( A => B(15), Z => n57);
   U87 : INVD1 port map( A => B(14), Z => n58);
   U88 : EXOR2DL port map( A1 => n9, A2 => n1, Z => DIFF(15));
   U89 : INVD1 port map( A => B(13), Z => n59);
   U90 : INVD1 port map( A => B(12), Z => n60);
   U91 : INVD1 port map( A => B(11), Z => n61);
   U92 : INVD1 port map( A => B(10), Z => n62);
   U93 : INVD1 port map( A => B(9), Z => n63);
   U94 : INVD1 port map( A => B(8), Z => n64);
   U95 : NAN2D1 port map( A1 => n51, A2 => n25, Z => n3);
   U96 : INVD1 port map( A => n24, Z => n51);
   U97 : NAN2D1 port map( A1 => n66, A2 => A(6), Z => n25);
   U98 : NOR2D1 port map( A1 => n66, A2 => A(6), Z => n24);
   U99 : INVD1 port map( A => B(6), Z => n66);
   U100 : NAN2D1 port map( A1 => n50, A2 => n22, Z => n2);
   U101 : NOR2D1 port map( A1 => n72, A2 => A(0), Z => n49);
   U102 : INVD1 port map( A => B(0), Z => n72);
   U103 : NAN2D1 port map( A1 => n27, A2 => n19, Z => n17);
   U104 : INVD1 port map( A => n21, Z => n50);
   U105 : NOR2D1 port map( A1 => n24, A2 => n21, Z => n19);
   U106 : NAN2D1 port map( A1 => n65, A2 => A(7), Z => n22);
   U107 : NOR2D1 port map( A1 => n65, A2 => A(7), Z => n21);
   U108 : INVD1 port map( A => B(7), Z => n65);
   U109 : NAN2D1 port map( A1 => n55, A2 => n44, Z => n7);
   U110 : NAN2D1 port map( A1 => n52, A2 => n30, Z => n4);
   U111 : INVD1 port map( A => n43, Z => n55);
   U112 : NAN2D1 port map( A1 => n70, A2 => A(2), Z => n44);
   U113 : NOR2D1 port map( A1 => n70, A2 => A(2), Z => n43);
   U114 : INVD1 port map( A => B(2), Z => n70);
   U115 : NAN2D1 port map( A1 => n67, A2 => A(5), Z => n30);
   U116 : INVD1 port map( A => B(5), Z => n67);
   U117 : INVD1 port map( A => n29, Z => n52);
   U118 : NOR2D1 port map( A1 => n67, A2 => A(5), Z => n29);
   U119 : NAN2D1 port map( A1 => n54, A2 => n41, Z => n6);
   U120 : INVD1 port map( A => n40, Z => n54);
   U121 : NOR2D1 port map( A1 => n43, A2 => n40, Z => n38);
   U122 : NAN2D1 port map( A1 => n69, A2 => A(3), Z => n41);
   U123 : NOR2D1 port map( A1 => n69, A2 => A(3), Z => n40);
   U124 : INVD1 port map( A => B(3), Z => n69);
   U125 : INVD1 port map( A => n47, Z => n56);
   U126 : NAN2D1 port map( A1 => n71, A2 => A(1), Z => n48);
   U127 : NOR2D1 port map( A1 => n71, A2 => A(1), Z => n47);
   U128 : INVD1 port map( A => B(1), Z => n71);
   U129 : NAN2D1 port map( A1 => n32, A2 => n35, Z => n5);
   U130 : INVD1 port map( A => n35, Z => n33);
   U131 : NOR2D1 port map( A1 => n34, A2 => n29, Z => n27);
   U132 : INVD1 port map( A => n34, Z => n32);
   U133 : NAN2D1 port map( A1 => n68, A2 => A(4), Z => n35);
   U134 : NOR2D1 port map( A1 => n68, A2 => A(4), Z => n34);
   U135 : INVD1 port map( A => B(4), Z => n68);
   U136 : NAN2D1 port map( A1 => n56, A2 => n48, Z => n8);
   U137 : INVD1 port map( A => n46, Z => n45);
   U138 : INVD1 port map( A => n37, Z => n36);

end hier_gcd_16_3;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_3 of siso_gen_DW01_inc_0 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port : 
      std_logic;

begin
   
   U1_1_13 : ADHALFDL port map( A => A(13), B => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_1_12 : ADHALFDL port map( A => A(12), B => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_1_11 : ADHALFDL port map( A => A(11), B => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_1_10 : ADHALFDL port map( A => A(10), B => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_1_9 : ADHALFDL port map( A => A(9), B => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_1_8 : ADHALFDL port map( A => A(8), B => carry_8_port, CO => carry_9_port
                           , S => SUM(8));
   U1_1_1 : ADHALFDL port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1_1_14 : ADHALFDL port map( A => A(14), B => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_1_7 : ADHALFDL port map( A => A(7), B => carry_7_port, CO => carry_8_port
                           , S => SUM(7));
   U1_1_6 : ADHALFDL port map( A => A(6), B => carry_6_port, CO => carry_7_port
                           , S => SUM(6));
   U1_1_5 : ADHALFDL port map( A => A(5), B => carry_5_port, CO => carry_6_port
                           , S => SUM(5));
   U1_1_4 : ADHALFDL port map( A => A(4), B => carry_4_port, CO => carry_5_port
                           , S => SUM(4));
   U1_1_3 : ADHALFDL port map( A => A(3), B => carry_3_port, CO => carry_4_port
                           , S => SUM(3));
   U1_1_2 : ADHALFDL port map( A => A(2), B => carry_2_port, CO => carry_3_port
                           , S => SUM(2));
   U1 : INVD1 port map( A => A(0), Z => SUM(0));
   U2 : EXOR2D1 port map( A1 => carry_15_port, A2 => A(15), Z => SUM(15));

end hier_gcd_16_3;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_3 of siso_gen is

   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component siso_gen_DW01_sub_3
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component siso_gen_DW01_inc_0
      port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector 
            (15 downto 0));
   end component;
   
   signal req_port, data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, num2_15_port, num2_14_port, num2_13_port, num2_12_port, 
      num2_11_port, num2_10_port, num2_9_port, num2_8_port, num2_7_port, 
      num2_6_port, num2_5_port, num2_4_port, num2_3_port, num2_2_port, 
      num2_1_port, num2_0_port, odd, sub_res_15_port, sub_res_14_port, 
      sub_res_13_port, sub_res_12_port, sub_res_11_port, sub_res_10_port, 
      sub_res_9_port, sub_res_8_port, sub_res_7_port, sub_res_6_port, 
      sub_res_5_port, sub_res_4_port, sub_res_3_port, sub_res_2_port, 
      sub_res_1_port, sub_res_0_port, N82, N83, N84, N85, N86, N87, N88, N89, 
      N90, N91, N92, N93, N94, N95, N96, N97, n1, n56, n57, n58, n59, n60, n61,
      n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76
      , n77, n78, n79, n80, n81, n820, n830, n840, n850, n860, n870, n880, n890
      , N810, N800, N790, N780, N770, N760, N750, N740, N730, N720, N710, N700,
      N690, N680, N670, N660, n900, n910, n920, n930, n940, n950, n960, n970, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n_1003 : std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   add_0_root_add_80_ni : siso_gen_DW01_inc_0 port map( A(15) => N660, A(14) =>
                           N670, A(13) => N680, A(12) => N690, A(11) => N700, 
                           A(10) => N710, A(9) => N720, A(8) => N730, A(7) => 
                           N740, A(6) => N750, A(5) => N760, A(4) => N770, A(3)
                           => N780, A(2) => N790, A(1) => N800, A(0) => N810, 
                           SUM(15) => N97, SUM(14) => N96, SUM(13) => N95, 
                           SUM(12) => N94, SUM(11) => N93, SUM(10) => N92, 
                           SUM(9) => N91, SUM(8) => N90, SUM(7) => N89, SUM(6) 
                           => N88, SUM(5) => N87, SUM(4) => N86, SUM(3) => N85,
                           SUM(2) => N84, SUM(1) => N83, SUM(0) => N82);
   sub_63 : siso_gen_DW01_sub_3 port map( A(15) => data_out_15_port, A(14) => 
                           data_out_14_port, A(13) => data_out_13_port, A(12) 
                           => data_out_12_port, A(11) => data_out_11_port, 
                           A(10) => data_out_10_port, A(9) => data_out_9_port, 
                           A(8) => data_out_8_port, A(7) => data_out_7_port, 
                           A(6) => data_out_6_port, A(5) => data_out_5_port, 
                           A(4) => data_out_4_port, A(3) => data_out_3_port, 
                           A(2) => data_out_2_port, A(1) => data_out_1_port, 
                           A(0) => data_out_0_port, B(15) => num2_15_port, 
                           B(14) => num2_14_port, B(13) => num2_13_port, B(12) 
                           => num2_12_port, B(11) => num2_11_port, B(10) => 
                           num2_10_port, B(9) => num2_9_port, B(8) => 
                           num2_8_port, B(7) => num2_7_port, B(6) => 
                           num2_6_port, B(5) => num2_5_port, B(4) => 
                           num2_4_port, B(3) => num2_3_port, B(2) => 
                           num2_2_port, B(1) => num2_1_port, B(0) => 
                           num2_0_port, CI => n1, DIFF(15) => sub_res_15_port, 
                           DIFF(14) => sub_res_14_port, DIFF(13) => 
                           sub_res_13_port, DIFF(12) => sub_res_12_port, 
                           DIFF(11) => sub_res_11_port, DIFF(10) => 
                           sub_res_10_port, DIFF(9) => sub_res_9_port, DIFF(8) 
                           => sub_res_8_port, DIFF(7) => sub_res_7_port, 
                           DIFF(6) => sub_res_6_port, DIFF(5) => sub_res_5_port
                           , DIFF(4) => sub_res_4_port, DIFF(3) => 
                           sub_res_3_port, DIFF(2) => sub_res_2_port, DIFF(1) 
                           => sub_res_1_port, DIFF(0) => sub_res_0_port, CO => 
                           n_1003);
   odd_reg : DFFRPQ1 port map( D => n880, CK => clk, RB => n940, Q => odd);
   num2_reg_15_inst : DFFRPQ1 port map( D => n56, CK => clk, RB => n940, Q => 
                           num2_15_port);
   num2_reg_14_inst : DFFRPQ1 port map( D => n57, CK => clk, RB => n940, Q => 
                           num2_14_port);
   num2_reg_13_inst : DFFRPQ1 port map( D => n58, CK => clk, RB => n940, Q => 
                           num2_13_port);
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n940, Q => 
                           req_port);
   num1_reg_15_inst : DFFRPQ1 port map( D => n72, CK => clk, RB => n940, Q => 
                           data_out_15_port);
   num1_reg_14_inst : DFFRPQ1 port map( D => n73, CK => clk, RB => n940, Q => 
                           data_out_14_port);
   num1_reg_13_inst : DFFRPQ1 port map( D => n74, CK => clk, RB => n940, Q => 
                           data_out_13_port);
   num1_reg_12_inst : DFFRPQ1 port map( D => n75, CK => clk, RB => n940, Q => 
                           data_out_12_port);
   num2_reg_12_inst : DFFRPQ1 port map( D => n59, CK => clk, RB => n940, Q => 
                           num2_12_port);
   num1_reg_11_inst : DFFRPQ1 port map( D => n76, CK => clk, RB => n940, Q => 
                           data_out_11_port);
   num2_reg_11_inst : DFFRPQ1 port map( D => n60, CK => clk, RB => n940, Q => 
                           num2_11_port);
   num1_reg_10_inst : DFFRPQ1 port map( D => n77, CK => clk, RB => n940, Q => 
                           data_out_10_port);
   num2_reg_10_inst : DFFRPQ1 port map( D => n61, CK => clk, RB => n940, Q => 
                           num2_10_port);
   num1_reg_9_inst : DFFRPQ1 port map( D => n78, CK => clk, RB => n940, Q => 
                           data_out_9_port);
   num2_reg_9_inst : DFFRPQ1 port map( D => n62, CK => clk, RB => n940, Q => 
                           num2_9_port);
   num1_reg_8_inst : DFFRPQ1 port map( D => n79, CK => clk, RB => n940, Q => 
                           data_out_8_port);
   num2_reg_8_inst : DFFRPQ1 port map( D => n63, CK => clk, RB => n940, Q => 
                           num2_8_port);
   num1_reg_4_inst : DFFRPQ1 port map( D => n830, CK => clk, RB => n940, Q => 
                           data_out_4_port);
   num1_reg_6_inst : DFFRPQ1 port map( D => n81, CK => clk, RB => n940, Q => 
                           data_out_6_port);
   num1_reg_7_inst : DFFRPQ1 port map( D => n80, CK => clk, RB => n940, Q => 
                           data_out_7_port);
   num1_reg_2_inst : DFFRPQ1 port map( D => n850, CK => clk, RB => n940, Q => 
                           data_out_2_port);
   num1_reg_5_inst : DFFRPQ1 port map( D => n820, CK => clk, RB => n940, Q => 
                           data_out_5_port);
   num2_reg_4_inst : DFFRPQ1 port map( D => n67, CK => clk, RB => n940, Q => 
                           num2_4_port);
   num2_reg_6_inst : DFFRPQ1 port map( D => n65, CK => clk, RB => n940, Q => 
                           num2_6_port);
   num1_reg_1_inst : DFFRPQ1 port map( D => n860, CK => clk, RB => n940, Q => 
                           data_out_1_port);
   num1_reg_3_inst : DFFRPQ1 port map( D => n840, CK => clk, RB => n940, Q => 
                           data_out_3_port);
   num2_reg_7_inst : DFFRPQ1 port map( D => n64, CK => clk, RB => n940, Q => 
                           num2_7_port);
   num1_reg_0_inst : DFFRPQ1 port map( D => n870, CK => clk, RB => n940, Q => 
                           data_out_0_port);
   num2_reg_2_inst : DFFRPQ1 port map( D => n69, CK => clk, RB => n940, Q => 
                           num2_2_port);
   num2_reg_5_inst : DFFRPQ1 port map( D => n66, CK => clk, RB => n940, Q => 
                           num2_5_port);
   num2_reg_1_inst : DFFRPQ1 port map( D => n70, CK => clk, RB => n940, Q => 
                           num2_1_port);
   num2_reg_3_inst : DFFRPQ1 port map( D => n68, CK => clk, RB => n940, Q => 
                           num2_3_port);
   num2_reg_0_inst : DFFRPQ1 port map( D => n71, CK => clk, RB => n940, Q => 
                           num2_0_port);
   ready_reg : DFFRPQ1 port map( D => n157, CK => clk, RB => n940, Q => ready);
   U87 : INVD1 port map( A => sub_res_1_port, Z => N800);
   U88 : INVD1 port map( A => sub_res_2_port, Z => N790);
   U89 : AND2D1 port map( A1 => n120, A2 => N660, Z => n900);
   U90 : INVD1 port map( A => sub_res_3_port, Z => N780);
   U91 : INVD1 port map( A => sub_res_4_port, Z => N770);
   U92 : INVD1 port map( A => sub_res_5_port, Z => N760);
   U93 : INVD1 port map( A => sub_res_6_port, Z => N750);
   U94 : INVD1 port map( A => sub_res_7_port, Z => N740);
   U95 : INVD1 port map( A => n156, Z => n120);
   U96 : NAN2D1 port map( A1 => n101, A2 => n154, Z => n116);
   U97 : INVD1 port map( A => n155, Z => n100);
   U98 : INVD1 port map( A => sub_res_15_port, Z => N660);
   U99 : INVD1 port map( A => sub_res_14_port, Z => N670);
   U100 : INVD1 port map( A => sub_res_13_port, Z => N680);
   U101 : OAI21D1 port map( A1 => sub_res_15_port, A2 => n119, B => n920, Z => 
                           n151);
   U102 : INVD1 port map( A => sub_res_12_port, Z => N690);
   U103 : AND2D1 port map( A1 => n120, A2 => sub_res_15_port, Z => n910);
   U104 : INVD1 port map( A => sub_res_0_port, Z => N810);
   U105 : INVD1 port map( A => sub_res_11_port, Z => N700);
   U106 : INVD1 port map( A => sub_res_10_port, Z => N710);
   U107 : INVD1 port map( A => sub_res_9_port, Z => N720);
   U108 : INVD1 port map( A => sub_res_8_port, Z => N730);
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
   U141 : OAI21D1 port map( A1 => sub_res_15_port, A2 => n100, B => n118, Z => 
                           n101);
   U142 : NAN2D1 port map( A1 => n154, A2 => n930, Z => n156);
   U143 : AOI22D1 port map( A1 => n900, A2 => sub_res_14_port, B1 => 
                           data_out_14_port, B2 => n116, Z => n102);
   U144 : OAI21D1 port map( A1 => n124, A2 => n118, B => n102, Z => n73);
   U145 : AOI22D1 port map( A1 => n900, A2 => sub_res_13_port, B1 => 
                           data_out_13_port, B2 => n116, Z => n103);
   U146 : OAI21D1 port map( A1 => n126, A2 => n920, B => n103, Z => n74);
   U147 : AOI22D1 port map( A1 => n900, A2 => sub_res_12_port, B1 => 
                           data_out_12_port, B2 => n116, Z => n104);
   U148 : OAI21D1 port map( A1 => n128, A2 => n930, B => n104, Z => n75);
   U149 : AOI22D1 port map( A1 => n900, A2 => sub_res_11_port, B1 => 
                           data_out_11_port, B2 => n116, Z => n105);
   U150 : OAI21D1 port map( A1 => n130, A2 => n118, B => n105, Z => n76);
   U151 : AOI22D1 port map( A1 => n900, A2 => sub_res_10_port, B1 => 
                           data_out_10_port, B2 => n116, Z => n106);
   U152 : OAI21D1 port map( A1 => n132, A2 => n920, B => n106, Z => n77);
   U153 : AOI22D1 port map( A1 => n900, A2 => sub_res_9_port, B1 => 
                           data_out_9_port, B2 => n116, Z => n107);
   U154 : OAI21D1 port map( A1 => n134, A2 => n930, B => n107, Z => n78);
   U155 : AOI22D1 port map( A1 => n900, A2 => sub_res_8_port, B1 => 
                           data_out_8_port, B2 => n116, Z => n108);
   U156 : OAI21D1 port map( A1 => n136, A2 => n118, B => n108, Z => n79);
   U157 : AOI22D1 port map( A1 => n900, A2 => sub_res_7_port, B1 => 
                           data_out_7_port, B2 => n116, Z => n109);
   U158 : OAI21D1 port map( A1 => n138, A2 => n920, B => n109, Z => n80);
   U159 : AOI22D1 port map( A1 => n900, A2 => sub_res_6_port, B1 => 
                           data_out_6_port, B2 => n116, Z => n110);
   U160 : OAI21D1 port map( A1 => n140, A2 => n930, B => n110, Z => n81);
   U161 : AOI22D1 port map( A1 => n900, A2 => sub_res_5_port, B1 => 
                           data_out_5_port, B2 => n116, Z => n111);
   U162 : OAI21D1 port map( A1 => n142, A2 => n118, B => n111, Z => n820);
   U163 : AOI22D1 port map( A1 => n900, A2 => sub_res_4_port, B1 => 
                           data_out_4_port, B2 => n116, Z => n112);
   U164 : OAI21D1 port map( A1 => n144, A2 => n920, B => n112, Z => n830);
   U165 : AOI22D1 port map( A1 => n900, A2 => sub_res_3_port, B1 => 
                           data_out_3_port, B2 => n116, Z => n113);
   U166 : OAI21D1 port map( A1 => n146, A2 => n930, B => n113, Z => n840);
   U167 : AOI22D1 port map( A1 => n900, A2 => sub_res_2_port, B1 => 
                           data_out_2_port, B2 => n116, Z => n114);
   U168 : OAI21D1 port map( A1 => n148, A2 => n118, B => n114, Z => n850);
   U169 : AOI22D1 port map( A1 => n900, A2 => sub_res_1_port, B1 => 
                           data_out_1_port, B2 => n116, Z => n115);
   U170 : OAI21D1 port map( A1 => n150, A2 => n920, B => n115, Z => n860);
   U171 : AOI22D1 port map( A1 => n900, A2 => sub_res_0_port, B1 => 
                           data_out_0_port, B2 => n116, Z => n117);
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

end hier_gcd_16_3;
