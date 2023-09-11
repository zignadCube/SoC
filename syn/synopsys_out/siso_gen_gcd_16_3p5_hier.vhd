
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

architecture hier_gcd_16_3p5 of siso_gen_DW01_inc_0 is

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
   
   U1_1_1 : ADHALFDL port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1_1_2 : ADHALFDL port map( A => A(2), B => carry_2_port, CO => carry_3_port
                           , S => SUM(2));
   U1_1_3 : ADHALFDL port map( A => A(3), B => carry_3_port, CO => carry_4_port
                           , S => SUM(3));
   U1_1_4 : ADHALFDL port map( A => A(4), B => carry_4_port, CO => carry_5_port
                           , S => SUM(4));
   U1_1_5 : ADHALFDL port map( A => A(5), B => carry_5_port, CO => carry_6_port
                           , S => SUM(5));
   U1_1_6 : ADHALFDL port map( A => A(6), B => carry_6_port, CO => carry_7_port
                           , S => SUM(6));
   U1_1_7 : ADHALFDL port map( A => A(7), B => carry_7_port, CO => carry_8_port
                           , S => SUM(7));
   U1_1_8 : ADHALFDL port map( A => A(8), B => carry_8_port, CO => carry_9_port
                           , S => SUM(8));
   U1_1_9 : ADHALFDL port map( A => A(9), B => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_1_10 : ADHALFDL port map( A => A(10), B => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_1_11 : ADHALFDL port map( A => A(11), B => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_1_12 : ADHALFDL port map( A => A(12), B => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_1_13 : ADHALFDL port map( A => A(13), B => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_1_14 : ADHALFDL port map( A => A(14), B => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1 : INVD1 port map( A => A(0), Z => SUM(0));
   U2 : EXOR2D1 port map( A1 => carry_15_port, A2 => A(15), Z => SUM(15));

end hier_gcd_16_3p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_3p5 of siso_gen_DW01_sub_0 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14
      , n15, n16, n17 : std_logic;

begin
   
   U2_14 : ADFULD1 port map( A => A(14), B => n3, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF(14));
   U2_13 : ADFULD1 port map( A => A(13), B => n4, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF(13));
   U2_12 : ADFULD1 port map( A => A(12), B => n5, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF(12));
   U2_11 : ADFULD1 port map( A => A(11), B => n6, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF(11));
   U2_10 : ADFULD1 port map( A => A(10), B => n7, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF(10));
   U2_9 : ADFULD1 port map( A => A(9), B => n8, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF(9));
   U2_8 : ADFULD1 port map( A => A(8), B => n9, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF(8));
   U2_7 : ADFULD1 port map( A => A(7), B => n10, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF(7));
   U2_6 : ADFULD1 port map( A => A(6), B => n11, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF(6));
   U2_5 : ADFULD1 port map( A => A(5), B => n12, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF(5));
   U2_4 : ADFULD1 port map( A => A(4), B => n13, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF(4));
   U2_3 : ADFULD1 port map( A => A(3), B => n14, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF(3));
   U2_2 : ADFULD1 port map( A => A(2), B => n15, CI => carry_2_port, CO => 
                           carry_3_port, S => DIFF(2));
   U2_1 : ADFULD1 port map( A => A(1), B => n16, CI => carry_1_port, CO => 
                           carry_2_port, S => DIFF(1));
   U2_15 : EXOR3D1 port map( A1 => A(15), A2 => n2, A3 => carry_15_port, Z => 
                           DIFF(15));
   U1 : INVD1 port map( A => B(15), Z => n2);
   U2 : INVD1 port map( A => B(13), Z => n4);
   U3 : INVD1 port map( A => B(14), Z => n3);
   U4 : INVD1 port map( A => B(1), Z => n16);
   U5 : NAN2D1 port map( A1 => B(0), A2 => n1, Z => carry_1_port);
   U6 : INVD1 port map( A => A(0), Z => n1);
   U7 : INVD1 port map( A => B(12), Z => n5);
   U8 : INVD1 port map( A => B(11), Z => n6);
   U9 : INVD1 port map( A => B(10), Z => n7);
   U10 : INVD1 port map( A => B(9), Z => n8);
   U11 : INVD1 port map( A => B(8), Z => n9);
   U12 : INVD1 port map( A => B(7), Z => n10);
   U13 : INVD1 port map( A => B(6), Z => n11);
   U14 : INVD1 port map( A => B(5), Z => n12);
   U15 : INVD1 port map( A => B(4), Z => n13);
   U16 : INVD1 port map( A => B(3), Z => n14);
   U17 : INVD1 port map( A => B(2), Z => n15);
   U18 : INVD1 port map( A => B(0), Z => n17);
   U19 : EXNOR2D1 port map( A1 => n17, A2 => A(0), Z => DIFF(0));

end hier_gcd_16_3p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_3p5 of siso_gen is

   component OAI21M20DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22DL
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component NOR3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPB1
      port( D, CK, RB : in std_logic;  Q, QB : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSPQ1
      port( D, CK, SB : in std_logic;  Q : out std_logic);
   end component;
   
   component siso_gen_DW01_inc_0
      port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component siso_gen_DW01_sub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal req_port, data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, num2_15_port, num2_14_port, num2_13_port, num2_12_port, 
      num2_11_port, num2_10_port, num2_9_port, num2_8_port, num2_7_port, 
      num2_6_port, num2_5_port, num2_4_port, num2_3_port, num2_2_port, 
      num2_1_port, odd, sub_res_15_port, sub_res_14_port, sub_res_13_port, 
      sub_res_12_port, sub_res_11_port, sub_res_10_port, sub_res_9_port, 
      sub_res_8_port, sub_res_7_port, sub_res_6_port, sub_res_5_port, 
      sub_res_4_port, sub_res_3_port, sub_res_2_port, sub_res_1_port, 
      sub_res_0_port, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, 
      N93, N94, N95, N96, N97, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20,
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, 
      n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64
      , n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, 
      n79, n80, n81, n820, n830, n840, n850, n860, n870, n880, n890, N810, N800
      , N790, N780, N770, N760, N750, N740, N730, N720, N710, N700, N690, N680,
      N670, N660, n900, n910, n920, n930, n940, n950, n960, n_1003, n_1004 : 
      std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   U70 : AOI22D1 port map( A1 => n940, A2 => data_in(14), B1 => sub_res_14_port
                           , B2 => n33, Z => n32);
   U71 : AOI22D1 port map( A1 => n940, A2 => data_in(13), B1 => sub_res_13_port
                           , B2 => n33, Z => n34);
   U72 : AOI22D1 port map( A1 => n940, A2 => data_in(12), B1 => sub_res_12_port
                           , B2 => n33, Z => n35);
   U73 : AOI22D1 port map( A1 => n940, A2 => data_in(11), B1 => sub_res_11_port
                           , B2 => n33, Z => n36);
   U74 : AOI22D1 port map( A1 => n940, A2 => data_in(10), B1 => sub_res_10_port
                           , B2 => n33, Z => n37);
   U75 : AOI22D1 port map( A1 => n940, A2 => data_in(9), B1 => sub_res_9_port, 
                           B2 => n33, Z => n38);
   U76 : AOI22D1 port map( A1 => n940, A2 => data_in(8), B1 => sub_res_8_port, 
                           B2 => n33, Z => n39);
   U77 : AOI22D1 port map( A1 => n940, A2 => data_in(7), B1 => sub_res_7_port, 
                           B2 => n33, Z => n40);
   U78 : AOI22D1 port map( A1 => n940, A2 => data_in(6), B1 => sub_res_6_port, 
                           B2 => n33, Z => n41);
   U85 : OAI21D1 port map( A1 => n50, A2 => sub_res_15_port, B => n30, Z => n48
                           );
   U86 : OAI21D1 port map( A1 => n950, A2 => n960, B => n30, Z => n880);
   sub_63 : siso_gen_DW01_sub_0 port map( A(15) => data_out_15_port, A(14) => 
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
                           num2_2_port, B(1) => num2_1_port, B(0) => n900, CI 
                           => n1, DIFF(15) => sub_res_15_port, DIFF(14) => 
                           sub_res_14_port, DIFF(13) => sub_res_13_port, 
                           DIFF(12) => sub_res_12_port, DIFF(11) => 
                           sub_res_11_port, DIFF(10) => sub_res_10_port, 
                           DIFF(9) => sub_res_9_port, DIFF(8) => sub_res_8_port
                           , DIFF(7) => sub_res_7_port, DIFF(6) => 
                           sub_res_6_port, DIFF(5) => sub_res_5_port, DIFF(4) 
                           => sub_res_4_port, DIFF(3) => sub_res_3_port, 
                           DIFF(2) => sub_res_2_port, DIFF(1) => sub_res_1_port
                           , DIFF(0) => sub_res_0_port, CO => n_1003);
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
   odd_reg : DFFRPQ1 port map( D => n880, CK => clk, RB => n920, Q => odd);
   num2_reg_15_inst : DFFRPQ1 port map( D => n56, CK => clk, RB => n920, Q => 
                           num2_15_port);
   num2_reg_14_inst : DFFRPQ1 port map( D => n57, CK => clk, RB => n920, Q => 
                           num2_14_port);
   num2_reg_13_inst : DFFRPQ1 port map( D => n58, CK => clk, RB => n920, Q => 
                           num2_13_port);
   num2_reg_12_inst : DFFRPQ1 port map( D => n59, CK => clk, RB => n920, Q => 
                           num2_12_port);
   num2_reg_11_inst : DFFRPQ1 port map( D => n60, CK => clk, RB => n920, Q => 
                           num2_11_port);
   num2_reg_10_inst : DFFRPQ1 port map( D => n61, CK => clk, RB => n920, Q => 
                           num2_10_port);
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n920, Q => 
                           req_port);
   num1_reg_14_inst : DFFRPQ1 port map( D => n73, CK => clk, RB => n920, Q => 
                           data_out_14_port);
   num1_reg_13_inst : DFFRPQ1 port map( D => n74, CK => clk, RB => n920, Q => 
                           data_out_13_port);
   num1_reg_12_inst : DFFRPQ1 port map( D => n75, CK => clk, RB => n920, Q => 
                           data_out_12_port);
   num1_reg_11_inst : DFFRPQ1 port map( D => n76, CK => clk, RB => n920, Q => 
                           data_out_11_port);
   num1_reg_10_inst : DFFRPQ1 port map( D => n77, CK => clk, RB => n920, Q => 
                           data_out_10_port);
   num1_reg_15_inst : DFFRPQ1 port map( D => n72, CK => clk, RB => n920, Q => 
                           data_out_15_port);
   num1_reg_9_inst : DFFRPQ1 port map( D => n78, CK => clk, RB => n920, Q => 
                           data_out_9_port);
   num2_reg_9_inst : DFFRPQ1 port map( D => n62, CK => clk, RB => n920, Q => 
                           num2_9_port);
   num1_reg_8_inst : DFFRPQ1 port map( D => n79, CK => clk, RB => n920, Q => 
                           data_out_8_port);
   num2_reg_8_inst : DFFRPQ1 port map( D => n63, CK => clk, RB => n920, Q => 
                           num2_8_port);
   num1_reg_7_inst : DFFRPQ1 port map( D => n80, CK => clk, RB => n920, Q => 
                           data_out_7_port);
   num2_reg_7_inst : DFFRPQ1 port map( D => n64, CK => clk, RB => n920, Q => 
                           num2_7_port);
   num1_reg_6_inst : DFFRPQ1 port map( D => n81, CK => clk, RB => n920, Q => 
                           data_out_6_port);
   num2_reg_6_inst : DFFRPQ1 port map( D => n65, CK => clk, RB => n920, Q => 
                           num2_6_port);
   num1_reg_5_inst : DFFRPQ1 port map( D => n820, CK => clk, RB => n920, Q => 
                           data_out_5_port);
   num2_reg_5_inst : DFFRPQ1 port map( D => n66, CK => clk, RB => n920, Q => 
                           num2_5_port);
   num1_reg_4_inst : DFFRPQ1 port map( D => n830, CK => clk, RB => n920, Q => 
                           data_out_4_port);
   num2_reg_4_inst : DFFRPQ1 port map( D => n67, CK => clk, RB => n920, Q => 
                           num2_4_port);
   num1_reg_3_inst : DFFRPQ1 port map( D => n840, CK => clk, RB => n920, Q => 
                           data_out_3_port);
   num2_reg_3_inst : DFFRPQ1 port map( D => n68, CK => clk, RB => n920, Q => 
                           num2_3_port);
   num1_reg_2_inst : DFFRPQ1 port map( D => n850, CK => clk, RB => n920, Q => 
                           data_out_2_port);
   num2_reg_2_inst : DFFRPQ1 port map( D => n69, CK => clk, RB => n920, Q => 
                           num2_2_port);
   num1_reg_1_inst : DFFRPQ1 port map( D => n860, CK => clk, RB => n920, Q => 
                           data_out_1_port);
   num2_reg_1_inst : DFFRPQ1 port map( D => n70, CK => clk, RB => n920, Q => 
                           num2_1_port);
   num1_reg_0_inst : DFFRPQ1 port map( D => n870, CK => clk, RB => n920, Q => 
                           data_out_0_port);
   ready_reg : DFFRPQ1 port map( D => n930, CK => clk, RB => n920, Q => ready);
   num2_reg_0_inst : DFFRPB1 port map( D => n71, CK => clk, RB => n920, Q => 
                           n900, QB => n_1004);
   U87 : OAI21DL port map( A1 => sub_res_15_port, A2 => n950, B => n30, Z => 
                           n14);
   U88 : INVDL port map( A => sub_res_15_port, Z => N660);
   U89 : AOI22DL port map( A1 => n940, A2 => data_in(0), B1 => sub_res_0_port, 
                           B2 => n33, Z => n47);
   U90 : AOI22DL port map( A1 => n940, A2 => data_in(1), B1 => sub_res_1_port, 
                           B2 => n33, Z => n46);
   U91 : AOI22DL port map( A1 => n940, A2 => data_in(2), B1 => sub_res_2_port, 
                           B2 => n33, Z => n45);
   U92 : AOI22DL port map( A1 => n940, A2 => data_in(3), B1 => sub_res_3_port, 
                           B2 => n33, Z => n44);
   U93 : AOI22DL port map( A1 => n940, A2 => data_in(4), B1 => sub_res_4_port, 
                           B2 => n33, Z => n43);
   U94 : AOI22DL port map( A1 => n940, A2 => data_in(5), B1 => sub_res_5_port, 
                           B2 => n33, Z => n42);
   U95 : INVD1 port map( A => n51, Z => n930);
   U96 : NAN2D1 port map( A1 => n48, A2 => n49, Z => n31);
   U97 : NOR4D1 port map( A1 => sub_res_5_port, A2 => sub_res_4_port, A3 => 
                           sub_res_3_port, A4 => sub_res_2_port, Z => n54);
   U98 : NOR4D1 port map( A1 => sub_res_9_port, A2 => sub_res_8_port, A3 => 
                           sub_res_7_port, A4 => sub_res_6_port, Z => n55);
   U99 : NOR4D1 port map( A1 => sub_res_12_port, A2 => sub_res_11_port, A3 => 
                           sub_res_10_port, A4 => sub_res_0_port, Z => n52);
   U100 : OR3D1 port map( A1 => sub_res_14_port, A2 => sub_res_1_port, A3 => 
                           sub_res_13_port, Z => n910);
   U101 : NOR3M1D1 port map( A1 => sub_res_15_port, A2 => n940, A3 => n950, Z 
                           => n13);
   U102 : NOR3D1 port map( A1 => n950, A2 => sub_res_15_port, A3 => n940, Z => 
                           n33);
   U103 : NAN3D1 port map( A1 => n30, A2 => n49, A3 => n50, Z => n51);
   U104 : NAN2D1 port map( A1 => n30, A2 => n51, Z => n890);
   U105 : INVD1 port map( A => sub_res_14_port, Z => N670);
   U106 : INVD1 port map( A => sub_res_13_port, Z => N680);
   U107 : INVD1 port map( A => sub_res_12_port, Z => N690);
   U108 : INVD1 port map( A => sub_res_11_port, Z => N700);
   U109 : INVD1 port map( A => sub_res_10_port, Z => N710);
   U110 : INVD1 port map( A => sub_res_9_port, Z => N720);
   U111 : INVD1 port map( A => sub_res_8_port, Z => N730);
   U112 : INVD1 port map( A => sub_res_7_port, Z => N740);
   U113 : INVD1 port map( A => sub_res_6_port, Z => N750);
   U114 : INVD1 port map( A => sub_res_5_port, Z => N760);
   U115 : INVD1 port map( A => sub_res_4_port, Z => N770);
   U116 : INVD1 port map( A => sub_res_3_port, Z => N780);
   U117 : INVD1 port map( A => sub_res_2_port, Z => N790);
   U118 : INVD1 port map( A => sub_res_1_port, Z => N800);
   U119 : INVD1 port map( A => sub_res_0_port, Z => N810);
   U120 : INVD1 port map( A => n30, Z => n940);
   U121 : INVD1 port map( A => n49, Z => n950);
   U122 : INVD1 port map( A => reset, Z => n920);
   U123 : AO22D1 port map( A1 => data_out_15_port, A2 => n31, B1 => data_in(15)
                           , B2 => n940, Z => n72);
   U124 : OAI21M20D1 port map( A1 => n950, A2 => data_in(1), B => n28, Z => n70
                           );
   U125 : OAI21M20D1 port map( A1 => n950, A2 => data_in(2), B => n27, Z => n69
                           );
   U126 : OAI21M20D1 port map( A1 => n950, A2 => data_in(3), B => n26, Z => n68
                           );
   U127 : OAI21M20D1 port map( A1 => n950, A2 => data_in(4), B => n25, Z => n67
                           );
   U128 : OAI21M20D1 port map( A1 => n950, A2 => data_in(5), B => n24, Z => n66
                           );
   U129 : OAI21M20D1 port map( A1 => n950, A2 => data_in(6), B => n23, Z => n65
                           );
   U130 : OAI21M20D1 port map( A1 => n950, A2 => data_in(7), B => n22, Z => n64
                           );
   U131 : OAI21M20D1 port map( A1 => n950, A2 => data_in(8), B => n21, Z => n63
                           );
   U132 : OAI21M20D1 port map( A1 => n950, A2 => data_in(9), B => n20, Z => n62
                           );
   U133 : OAI21M20D1 port map( A1 => n950, A2 => data_in(10), B => n19, Z => 
                           n61);
   U134 : OAI21M20D1 port map( A1 => n950, A2 => data_in(11), B => n18, Z => 
                           n60);
   U135 : OAI21M20D1 port map( A1 => n950, A2 => data_in(12), B => n17, Z => 
                           n59);
   U136 : OAI21M20D1 port map( A1 => n950, A2 => data_in(13), B => n16, Z => 
                           n58);
   U137 : OAI21M20D1 port map( A1 => n950, A2 => data_in(14), B => n15, Z => 
                           n57);
   U138 : OAI21M20D1 port map( A1 => n950, A2 => data_in(15), B => n12, Z => 
                           n56);
   U139 : NAN2D1 port map( A1 => req_port, A2 => n960, Z => n30);
   U140 : INVD1 port map( A => odd, Z => n960);
   U141 : NAN2D1 port map( A1 => req_port, A2 => odd, Z => n49);
   U142 : TIELO port map( Z => n1);
   U143 : AND4D1 port map( A1 => n53, A2 => n52, A3 => n54, A4 => n55, Z => n50
                           );
   U144 : NOR2D1 port map( A1 => sub_res_15_port, A2 => n910, Z => n53);
   U145 : AOI22D1 port map( A1 => N82, A2 => n13, B1 => n900, B2 => n14, Z => 
                           n29);
   U146 : OAI21M20D1 port map( A1 => n950, A2 => data_in(0), B => n29, Z => n71
                           );
   U147 : AOI22DL port map( A1 => N97, A2 => n13, B1 => num2_15_port, B2 => n14
                           , Z => n12);
   U148 : AOI22DL port map( A1 => N96, A2 => n13, B1 => num2_14_port, B2 => n14
                           , Z => n15);
   U149 : AOI22DL port map( A1 => N95, A2 => n13, B1 => num2_13_port, B2 => n14
                           , Z => n16);
   U150 : AOI22DL port map( A1 => N94, A2 => n13, B1 => num2_12_port, B2 => n14
                           , Z => n17);
   U151 : AOI22DL port map( A1 => N93, A2 => n13, B1 => num2_11_port, B2 => n14
                           , Z => n18);
   U152 : AOI22DL port map( A1 => N92, A2 => n13, B1 => num2_10_port, B2 => n14
                           , Z => n19);
   U153 : AOI22DL port map( A1 => N91, A2 => n13, B1 => num2_9_port, B2 => n14,
                           Z => n20);
   U154 : AOI22DL port map( A1 => N90, A2 => n13, B1 => num2_8_port, B2 => n14,
                           Z => n21);
   U155 : AOI22DL port map( A1 => N89, A2 => n13, B1 => num2_7_port, B2 => n14,
                           Z => n22);
   U156 : AOI22DL port map( A1 => N88, A2 => n13, B1 => num2_6_port, B2 => n14,
                           Z => n23);
   U157 : AOI22DL port map( A1 => N87, A2 => n13, B1 => num2_5_port, B2 => n14,
                           Z => n24);
   U158 : AOI22DL port map( A1 => N86, A2 => n13, B1 => num2_4_port, B2 => n14,
                           Z => n25);
   U159 : AOI22DL port map( A1 => N85, A2 => n13, B1 => num2_3_port, B2 => n14,
                           Z => n26);
   U160 : AOI22DL port map( A1 => N84, A2 => n13, B1 => num2_2_port, B2 => n14,
                           Z => n27);
   U161 : AOI22DL port map( A1 => N83, A2 => n13, B1 => num2_1_port, B2 => n14,
                           Z => n28);
   U162 : OAI21M20DL port map( A1 => data_out_14_port, A2 => n31, B => n32, Z 
                           => n73);
   U163 : OAI21M20DL port map( A1 => data_out_13_port, A2 => n31, B => n34, Z 
                           => n74);
   U164 : OAI21M20DL port map( A1 => data_out_12_port, A2 => n31, B => n35, Z 
                           => n75);
   U165 : OAI21M20DL port map( A1 => data_out_11_port, A2 => n31, B => n36, Z 
                           => n76);
   U166 : OAI21M20DL port map( A1 => data_out_10_port, A2 => n31, B => n37, Z 
                           => n77);
   U167 : OAI21M20DL port map( A1 => data_out_9_port, A2 => n31, B => n38, Z =>
                           n78);
   U168 : OAI21M20DL port map( A1 => data_out_8_port, A2 => n31, B => n39, Z =>
                           n79);
   U169 : OAI21M20DL port map( A1 => data_out_7_port, A2 => n31, B => n40, Z =>
                           n80);
   U170 : OAI21M20DL port map( A1 => data_out_6_port, A2 => n31, B => n41, Z =>
                           n81);
   U171 : OAI21M20DL port map( A1 => data_out_5_port, A2 => n31, B => n42, Z =>
                           n820);
   U172 : OAI21M20DL port map( A1 => data_out_4_port, A2 => n31, B => n43, Z =>
                           n830);
   U173 : OAI21M20DL port map( A1 => data_out_3_port, A2 => n31, B => n44, Z =>
                           n840);
   U174 : OAI21M20DL port map( A1 => data_out_2_port, A2 => n31, B => n45, Z =>
                           n850);
   U175 : OAI21M20DL port map( A1 => data_out_1_port, A2 => n31, B => n46, Z =>
                           n860);
   U176 : OAI21M20DL port map( A1 => data_out_0_port, A2 => n31, B => n47, Z =>
                           n870);

end hier_gcd_16_3p5;
