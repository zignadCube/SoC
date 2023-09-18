
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

architecture flat_gcd_scan_16_5 of siso_gen is

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
   
   component SDFRPQL
      port( D, SD, SE, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component SDFSPQL
      port( D, SD, SE, CK, SB : in std_logic;  Q : out std_logic);
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
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI31M10D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   signal req_port, data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, ready_port, num2_15_port, num2_14_port, num2_13_port, 
      num2_12_port, num2_11_port, num2_10_port, num2_9_port, num2_8_port, 
      num2_7_port, num2_6_port, num2_5_port, num2_4_port, num2_3_port, 
      num2_2_port, num2_1_port, num2_0_port, odd, N44, N46, N48, N49, N50, N51,
      N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N65, N67, N68
      , N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, 
      n4, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
      n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n440, n45, n460, n47, n480, n490, n500, n510, n520, n530, n540, n550, 
      n560, n570, n580, n590, n600, n610, n620, n630, n64, n650, n66, n670, 
      n680, n690, n700, n710, n720, n730, n740, n750, n760, n770, n780, n790, 
      n800, n810, n820, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, 
      n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, 
      n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, 
      n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, 
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181, n182, n183, n_1004, n_1005, sub_70_n17, sub_70_n16, 
      sub_70_n15, sub_70_n14, sub_70_n13, sub_70_n12, sub_70_n11, sub_70_n10, 
      sub_70_n9, sub_70_n8, sub_70_n7, sub_70_n6, sub_70_n5, sub_70_n4, 
      sub_70_n3, sub_70_n2, sub_70_n1, sub_70_carry_1_port, sub_70_carry_2_port
      , sub_70_carry_3_port, sub_70_carry_4_port, sub_70_carry_5_port, 
      sub_70_carry_6_port, sub_70_carry_7_port, sub_70_carry_8_port, 
      sub_70_carry_9_port, sub_70_carry_10_port, sub_70_carry_11_port, 
      sub_70_carry_12_port, sub_70_carry_13_port, sub_70_carry_14_port, 
      sub_70_carry_15_port, sub_63_n17, sub_63_n16, sub_63_n15, sub_63_n14, 
      sub_63_n13, sub_63_n12, sub_63_n11, sub_63_n10, sub_63_n9, sub_63_n8, 
      sub_63_n7, sub_63_n6, sub_63_n5, sub_63_n4, sub_63_n3, sub_63_n2, 
      sub_63_n1, sub_63_carry_1_port, sub_63_carry_2_port, sub_63_carry_3_port,
      sub_63_carry_4_port, sub_63_carry_5_port, sub_63_carry_6_port, 
      sub_63_carry_7_port, sub_63_carry_8_port, sub_63_carry_9_port, 
      sub_63_carry_10_port, sub_63_carry_11_port, sub_63_carry_12_port, 
      sub_63_carry_13_port, sub_63_carry_14_port, sub_63_carry_15_port : 
      std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   ready <= ready_port;
   scan_out <= req_port;
   
   U50 : AOI22D1 port map( A1 => N48, A2 => n18, B1 => data_in(0), B2 => n182, 
                           Z => n17);
   U51 : AOI22D1 port map( A1 => N49, A2 => n18, B1 => data_in(1), B2 => n182, 
                           Z => n19);
   U52 : AOI22D1 port map( A1 => N50, A2 => n18, B1 => data_in(2), B2 => n182, 
                           Z => n20);
   U53 : AOI22D1 port map( A1 => N51, A2 => n18, B1 => data_in(3), B2 => n182, 
                           Z => n21);
   U54 : AOI22D1 port map( A1 => N52, A2 => n18, B1 => data_in(4), B2 => n182, 
                           Z => n22);
   U55 : AOI22D1 port map( A1 => N53, A2 => n18, B1 => data_in(5), B2 => n182, 
                           Z => n23);
   U56 : AOI22D1 port map( A1 => N54, A2 => n18, B1 => data_in(6), B2 => n182, 
                           Z => n24);
   U57 : AOI22D1 port map( A1 => N55, A2 => n18, B1 => data_in(7), B2 => n182, 
                           Z => n25);
   U58 : AOI22D1 port map( A1 => N56, A2 => n18, B1 => data_in(8), B2 => n182, 
                           Z => n26);
   U59 : AOI22D1 port map( A1 => N57, A2 => n18, B1 => data_in(9), B2 => n182, 
                           Z => n27);
   U60 : AOI22D1 port map( A1 => N58, A2 => n18, B1 => data_in(10), B2 => n182,
                           Z => n28);
   U61 : AOI22D1 port map( A1 => N59, A2 => n18, B1 => data_in(11), B2 => n182,
                           Z => n29);
   U62 : AOI22D1 port map( A1 => N60, A2 => n18, B1 => data_in(12), B2 => n182,
                           Z => n30);
   U63 : AOI22D1 port map( A1 => N61, A2 => n18, B1 => data_in(13), B2 => n182,
                           Z => n31);
   U64 : AOI22D1 port map( A1 => N62, A2 => n18, B1 => data_in(14), B2 => n182,
                           Z => n32);
   U65 : AOI22D1 port map( A1 => N67, A2 => n35, B1 => n36, B2 => data_in(0), Z
                           => n34);
   U66 : AOI22D1 port map( A1 => N81, A2 => n35, B1 => n90, B2 => data_in(14), 
                           Z => n37);
   U67 : AOI22D1 port map( A1 => N80, A2 => n35, B1 => n89, B2 => data_in(13), 
                           Z => n38);
   U68 : AOI22D1 port map( A1 => N79, A2 => n35, B1 => n36, B2 => data_in(12), 
                           Z => n39);
   U69 : AOI22D1 port map( A1 => N78, A2 => n35, B1 => n90, B2 => data_in(11), 
                           Z => n40);
   U70 : AOI22D1 port map( A1 => N77, A2 => n35, B1 => n89, B2 => data_in(10), 
                           Z => n41);
   U71 : AOI22D1 port map( A1 => N76, A2 => n35, B1 => n36, B2 => data_in(9), Z
                           => n42);
   U72 : AOI22D1 port map( A1 => N75, A2 => n35, B1 => n90, B2 => data_in(8), Z
                           => n43);
   U73 : AOI22D1 port map( A1 => N74, A2 => n35, B1 => n89, B2 => data_in(7), Z
                           => n440);
   U74 : AOI22D1 port map( A1 => N73, A2 => n35, B1 => n36, B2 => data_in(6), Z
                           => n45);
   U75 : AOI22D1 port map( A1 => N72, A2 => n35, B1 => n90, B2 => data_in(5), Z
                           => n460);
   U76 : AOI22D1 port map( A1 => N71, A2 => n35, B1 => n89, B2 => data_in(4), Z
                           => n47);
   U77 : AOI22D1 port map( A1 => N70, A2 => n35, B1 => n36, B2 => data_in(3), Z
                           => n480);
   U78 : AOI22D1 port map( A1 => N69, A2 => n35, B1 => n90, B2 => data_in(2), Z
                           => n490);
   U79 : AOI22D1 port map( A1 => N68, A2 => n35, B1 => n89, B2 => data_in(1), Z
                           => n500);
   U80 : AOI22D1 port map( A1 => N82, A2 => n35, B1 => data_in(15), B2 => n90, 
                           Z => n510);
   U82 : AOI22D1 port map( A1 => N63, A2 => n18, B1 => data_in(15), B2 => n182,
                           Z => n530);
   U84 : OAI21D1 port map( A1 => n89, A2 => n183, B => n520, Z => n87);
   U85 : OR2D1 port map( A1 => N44, A2 => n182, Z => n88);
   U86 : NOR2D1 port map( A1 => n16, A2 => n182, Z => n18);
   U87 : NOR2M1D1 port map( A1 => n540, A2 => N65, Z => N44);
   U88 : OR2D1 port map( A1 => n540, A2 => n89, Z => n16);
   U89 : NOR3D1 port map( A1 => n36, A2 => N46, A3 => n182, Z => n540);
   U90 : NOR2D1 port map( A1 => n33, A2 => n36, Z => n35);
   U91 : AOI31M10D1 port map( A1 => N46, A2 => N65, A3 => n520, B => n90, Z => 
                           n33);
   U92 : INVD1 port map( A => n520, Z => n182);
   U93 : INVD1 port map( A => reset, Z => n91);
   U94 : OAI21M20D1 port map( A1 => num2_15_port, A2 => n33, B => n510, Z => 
                           n85);
   U95 : OAI21M20D1 port map( A1 => data_out_15_port, A2 => n16, B => n530, Z 
                           => n86);
   U96 : OAI21M20D1 port map( A1 => num2_14_port, A2 => n33, B => n37, Z => 
                           n710);
   U97 : OAI21M20D1 port map( A1 => data_out_14_port, A2 => n16, B => n32, Z =>
                           n690);
   U98 : OAI21M20D1 port map( A1 => num2_13_port, A2 => n33, B => n38, Z => 
                           n720);
   U99 : OAI21M20D1 port map( A1 => data_out_13_port, A2 => n16, B => n31, Z =>
                           n680);
   U100 : OAI21M20D1 port map( A1 => num2_1_port, A2 => n33, B => n500, Z => 
                           n84);
   U101 : OAI21M20D1 port map( A1 => num2_2_port, A2 => n33, B => n490, Z => 
                           n83);
   U102 : OAI21M20D1 port map( A1 => num2_3_port, A2 => n33, B => n480, Z => 
                           n820);
   U103 : OAI21M20D1 port map( A1 => num2_4_port, A2 => n33, B => n47, Z => 
                           n810);
   U104 : OAI21M20D1 port map( A1 => num2_5_port, A2 => n33, B => n460, Z => 
                           n800);
   U105 : OAI21M20D1 port map( A1 => num2_6_port, A2 => n33, B => n45, Z => 
                           n790);
   U106 : OAI21M20D1 port map( A1 => num2_7_port, A2 => n33, B => n440, Z => 
                           n780);
   U107 : OAI21M20D1 port map( A1 => num2_8_port, A2 => n33, B => n43, Z => 
                           n770);
   U108 : OAI21M20D1 port map( A1 => num2_9_port, A2 => n33, B => n42, Z => 
                           n760);
   U109 : OAI21M20D1 port map( A1 => num2_10_port, A2 => n33, B => n41, Z => 
                           n750);
   U110 : OAI21M20D1 port map( A1 => num2_11_port, A2 => n33, B => n40, Z => 
                           n740);
   U111 : OAI21M20D1 port map( A1 => num2_12_port, A2 => n33, B => n39, Z => 
                           n730);
   U112 : OAI21M20D1 port map( A1 => num2_0_port, A2 => n33, B => n34, Z => 
                           n700);
   U113 : OAI21M20D1 port map( A1 => data_out_12_port, A2 => n16, B => n30, Z 
                           => n670);
   U114 : OAI21M20D1 port map( A1 => data_out_11_port, A2 => n16, B => n29, Z 
                           => n66);
   U115 : OAI21M20D1 port map( A1 => data_out_10_port, A2 => n16, B => n28, Z 
                           => n650);
   U116 : OAI21M20D1 port map( A1 => data_out_9_port, A2 => n16, B => n27, Z =>
                           n64);
   U117 : OAI21M20D1 port map( A1 => data_out_8_port, A2 => n16, B => n26, Z =>
                           n630);
   U118 : OAI21M20D1 port map( A1 => data_out_7_port, A2 => n16, B => n25, Z =>
                           n620);
   U119 : OAI21M20D1 port map( A1 => data_out_6_port, A2 => n16, B => n24, Z =>
                           n610);
   U120 : OAI21M20D1 port map( A1 => data_out_5_port, A2 => n16, B => n23, Z =>
                           n600);
   U121 : OAI21M20D1 port map( A1 => data_out_4_port, A2 => n16, B => n22, Z =>
                           n590);
   U122 : OAI21M20D1 port map( A1 => data_out_3_port, A2 => n16, B => n21, Z =>
                           n580);
   U123 : OAI21M20D1 port map( A1 => data_out_2_port, A2 => n16, B => n20, Z =>
                           n570);
   U124 : OAI21M20D1 port map( A1 => data_out_1_port, A2 => n16, B => n19, Z =>
                           n560);
   U125 : OAI21M20D1 port map( A1 => data_out_0_port, A2 => n16, B => n17, Z =>
                           n550);
   U126 : INVD1 port map( A => data_out_3_port, Z => n128);
   U127 : INVD1 port map( A => num2_11_port, Z => n134);
   U128 : INVD1 port map( A => num2_3_port, Z => n174);
   U129 : INVD1 port map( A => num2_15_port, Z => n136);
   U130 : INVD1 port map( A => data_out_13_port, Z => n122);
   U131 : INVD1 port map( A => data_out_11_port, Z => n168);
   U132 : INVD1 port map( A => data_out_15_port, Z => n181);
   U133 : INVD1 port map( A => num2_13_port, Z => n180);
   U134 : INVD1 port map( A => num2_9_port, Z => n132);
   U135 : INVD1 port map( A => data_out_7_port, Z => n124);
   U136 : INVD1 port map( A => num2_7_port, Z => n178);
   U137 : INVD1 port map( A => data_out_9_port, Z => n170);
   U138 : INVD1 port map( A => data_out_2_port, Z => n129);
   U139 : INVD1 port map( A => num2_2_port, Z => n173);
   U140 : INVD1 port map( A => num2_10_port, Z => n133);
   U141 : INVD1 port map( A => data_out_12_port, Z => n123);
   U142 : INVD1 port map( A => num2_12_port, Z => n179);
   U143 : INVD1 port map( A => data_out_5_port, Z => n126);
   U144 : INVD1 port map( A => num2_5_port, Z => n176);
   U145 : INVD1 port map( A => num2_14_port, Z => n135);
   U146 : INVD1 port map( A => data_out_1_port, Z => n130);
   U147 : INVD1 port map( A => data_out_10_port, Z => n169);
   U148 : INVD1 port map( A => num2_1_port, Z => n172);
   U149 : INVD1 port map( A => num2_8_port, Z => n131);
   U150 : INVD1 port map( A => data_out_6_port, Z => n125);
   U151 : INVD1 port map( A => data_out_14_port, Z => n167);
   U152 : INVD1 port map( A => num2_6_port, Z => n177);
   U153 : INVD1 port map( A => data_out_4_port, Z => n127);
   U154 : INVD1 port map( A => data_out_8_port, Z => n171);
   U155 : INVD1 port map( A => num2_4_port, Z => n175);
   U156 : NAN2D1 port map( A1 => req_port, A2 => n183, Z => n520);
   U157 : INVD1 port map( A => odd, Z => n183);
   U158 : NOR2M1D1 port map( A1 => req_port, A2 => n183, Z => n36);
   U159 : NOR2M1D1 port map( A1 => req_port, A2 => n183, Z => n90);
   U160 : NOR2M1D1 port map( A1 => req_port, A2 => n183, Z => n89);
   U161 : TIELO port map( Z => n4);
   U162 : OR2D1 port map( A1 => num2_13_port, A2 => n122, Z => n96);
   U163 : NOR2M1D1 port map( A1 => data_out_15_port, A2 => num2_15_port, Z => 
                           n95);
   U164 : AOI21D1 port map( A1 => n135, A2 => data_out_14_port, B => n95, Z => 
                           n99);
   U165 : OAI211D1 port map( A1 => num2_12_port, A2 => n123, B => n96, C => n99
                           , Z => n114);
   U166 : NOR2M1D1 port map( A1 => data_out_11_port, A2 => num2_11_port, Z => 
                           n92);
   U167 : AOI21D1 port map( A1 => n133, A2 => data_out_10_port, B => n92, Z => 
                           n117);
   U168 : OAI32D1 port map( A1 => n133, A2 => data_out_10_port, A3 => n92, B1 
                           => data_out_11_port, B2 => n134, Z => n94);
   U169 : AND2D1 port map( A1 => data_out_9_port, A2 => n132, Z => n115);
   U170 : OAI32D1 port map( A1 => n131, A2 => data_out_8_port, A3 => n115, B1 
                           => data_out_9_port, B2 => n132, Z => n93);
   U171 : OAI22D1 port map( A1 => n117, A2 => n94, B1 => n94, B2 => n93, Z => 
                           n101);
   U172 : OAI32D1 port map( A1 => n135, A2 => data_out_14_port, A3 => n95, B1 
                           => data_out_15_port, B2 => n136, Z => n98);
   U173 : AO32D1 port map( A1 => num2_12_port, A2 => n123, A3 => n96, B1 => 
                           n122, B2 => num2_13_port, Z => n97);
   U174 : OAI22D1 port map( A1 => n99, A2 => n98, B1 => n98, B2 => n97, Z => 
                           n100);
   U175 : OAI21D1 port map( A1 => n114, A2 => n101, B => n100, Z => n121);
   U176 : NAN2M1D1 port map( A1 => num2_5_port, A2 => data_out_5_port, Z => 
                           n110);
   U177 : AOI32D1 port map( A1 => n110, A2 => n127, A3 => num2_4_port, B1 => 
                           num2_5_port, B2 => n126, Z => n104);
   U178 : OR2D1 port map( A1 => num2_7_port, A2 => n124, Z => n102);
   U179 : AOI32D1 port map( A1 => num2_6_port, A2 => n125, A3 => n102, B1 => 
                           n124, B2 => num2_7_port, Z => n103);
   U180 : OAI21D1 port map( A1 => num2_6_port, A2 => n125, B => n102, Z => n111
                           );
   U181 : AOI22D1 port map( A1 => n104, A2 => n103, B1 => n103, B2 => n111, Z 
                           => n120);
   U182 : OR2D1 port map( A1 => num2_3_port, A2 => n128, Z => n106);
   U183 : AOI32D1 port map( A1 => num2_2_port, A2 => n129, A3 => n106, B1 => 
                           n128, B2 => num2_3_port, Z => n108);
   U184 : OAI22M10D1 port map( A1 => data_out_0_port, A2 => num2_0_port, B1 => 
                           n130, B2 => num2_1_port, Z => n105);
   U185 : OAI211D1 port map( A1 => n172, A2 => data_out_1_port, B => n108, C =>
                           n105, Z => n113);
   U186 : OAI21D1 port map( A1 => num2_2_port, A2 => n129, B => n106, Z => n107
                           );
   U187 : NAN2D1 port map( A1 => n108, A2 => n107, Z => n109);
   U188 : OAI211D1 port map( A1 => num2_4_port, A2 => n127, B => n110, C => 
                           n109, Z => n112);
   U189 : NOR3M1D1 port map( A1 => n113, A2 => n112, A3 => n111, Z => n119);
   U190 : AND2D1 port map( A1 => data_out_8_port, A2 => n131, Z => n116);
   U191 : NOR4M1D1 port map( A1 => n117, A2 => n116, A3 => n115, A4 => n114, Z 
                           => n118);
   U192 : OAI32D1 port map( A1 => n121, A2 => n120, A3 => n119, B1 => n118, B2 
                           => n121, Z => N46);
   U193 : OR2D1 port map( A1 => data_out_13_port, A2 => n180, Z => n141);
   U194 : NOR2M1D1 port map( A1 => num2_15_port, A2 => data_out_15_port, Z => 
                           n140);
   U195 : AOI21D1 port map( A1 => n167, A2 => num2_14_port, B => n140, Z => 
                           n144);
   U196 : OAI211D1 port map( A1 => data_out_12_port, A2 => n179, B => n141, C 
                           => n144, Z => n159);
   U197 : NOR2M1D1 port map( A1 => num2_11_port, A2 => data_out_11_port, Z => 
                           n137);
   U198 : AOI21D1 port map( A1 => n169, A2 => num2_10_port, B => n137, Z => 
                           n162);
   U199 : OAI32D1 port map( A1 => n169, A2 => num2_10_port, A3 => n137, B1 => 
                           num2_11_port, B2 => n168, Z => n139);
   U200 : AND2D1 port map( A1 => num2_9_port, A2 => n170, Z => n160);
   U201 : OAI32D1 port map( A1 => n171, A2 => num2_8_port, A3 => n160, B1 => 
                           num2_9_port, B2 => n170, Z => n138);
   U202 : OAI22D1 port map( A1 => n162, A2 => n139, B1 => n139, B2 => n138, Z 
                           => n146);
   U203 : OAI32D1 port map( A1 => n167, A2 => num2_14_port, A3 => n140, B1 => 
                           num2_15_port, B2 => n181, Z => n143);
   U204 : AO32D1 port map( A1 => data_out_12_port, A2 => n179, A3 => n141, B1 
                           => n180, B2 => data_out_13_port, Z => n142);
   U205 : OAI22D1 port map( A1 => n144, A2 => n143, B1 => n143, B2 => n142, Z 
                           => n145);
   U206 : OAI21D1 port map( A1 => n159, A2 => n146, B => n145, Z => n166);
   U207 : NAN2M1D1 port map( A1 => data_out_5_port, A2 => num2_5_port, Z => 
                           n155);
   U208 : AOI32D1 port map( A1 => n155, A2 => n175, A3 => data_out_4_port, B1 
                           => data_out_5_port, B2 => n176, Z => n149);
   U209 : OR2D1 port map( A1 => data_out_7_port, A2 => n178, Z => n147);
   U210 : AOI32D1 port map( A1 => data_out_6_port, A2 => n177, A3 => n147, B1 
                           => n178, B2 => data_out_7_port, Z => n148);
   U211 : OAI21D1 port map( A1 => data_out_6_port, A2 => n177, B => n147, Z => 
                           n156);
   U212 : AOI22D1 port map( A1 => n149, A2 => n148, B1 => n148, B2 => n156, Z 
                           => n165);
   U213 : OR2D1 port map( A1 => data_out_3_port, A2 => n174, Z => n151);
   U214 : AOI32D1 port map( A1 => data_out_2_port, A2 => n173, A3 => n151, B1 
                           => n174, B2 => data_out_3_port, Z => n153);
   U215 : OAI22M10D1 port map( A1 => num2_0_port, A2 => data_out_0_port, B1 => 
                           n172, B2 => data_out_1_port, Z => n150);
   U216 : OAI211D1 port map( A1 => n130, A2 => num2_1_port, B => n153, C => 
                           n150, Z => n158);
   U217 : OAI21D1 port map( A1 => data_out_2_port, A2 => n173, B => n151, Z => 
                           n152);
   U218 : NAN2D1 port map( A1 => n153, A2 => n152, Z => n154);
   U219 : OAI211D1 port map( A1 => data_out_4_port, A2 => n175, B => n155, C =>
                           n154, Z => n157);
   U220 : NOR3M1D1 port map( A1 => n158, A2 => n157, A3 => n156, Z => n164);
   U221 : AND2D1 port map( A1 => num2_8_port, A2 => n171, Z => n161);
   U222 : NOR4M1D1 port map( A1 => n162, A2 => n161, A3 => n160, A4 => n159, Z 
                           => n163);
   U223 : OAI32D1 port map( A1 => n166, A2 => n165, A3 => n164, B1 => n163, B2 
                           => n166, Z => N65);
   odd_reg : SDFRPQL port map( D => n87, SD => num2_15_port, SE => scan_shift, 
                           CK => clk, RB => n91, Q => odd);
   num2_reg_14 : SDFRPQL port map( D => n710, SD => num2_13_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_14_port)
                           ;
   num2_reg_12 : SDFRPQL port map( D => n730, SD => num2_11_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_12_port)
                           ;
   num2_reg_15 : SDFRPQL port map( D => n85, SD => num2_14_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_15_port)
                           ;
   num2_reg_10 : SDFRPQL port map( D => n750, SD => num2_9_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_10_port)
                           ;
   num2_reg_13 : SDFRPQL port map( D => n720, SD => num2_12_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_13_port)
                           ;
   num2_reg_11 : SDFRPQL port map( D => n740, SD => num2_10_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_11_port)
                           ;
   num2_reg_9 : SDFRPQL port map( D => n760, SD => num2_8_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_9_port);
   num2_reg_8 : SDFRPQL port map( D => n770, SD => num2_7_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_8_port);
   num2_reg_7 : SDFRPQL port map( D => n780, SD => num2_6_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_7_port);
   num2_reg_6 : SDFRPQL port map( D => n790, SD => num2_5_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_6_port);
   num2_reg_5 : SDFRPQL port map( D => n800, SD => num2_4_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_5_port);
   num2_reg_4 : SDFRPQL port map( D => n810, SD => num2_3_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_4_port);
   req_i_reg : SDFSPQL port map( D => n88, SD => ready_port, SE => scan_shift, 
                           CK => clk, SB => n91, Q => req_port);
   num2_reg_3 : SDFRPQL port map( D => n820, SD => num2_2_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_3_port);
   num1_reg_13 : SDFRPQL port map( D => n680, SD => data_out_12_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_13_port);
   num1_reg_12 : SDFRPQL port map( D => n670, SD => data_out_11_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_12_port);
   num1_reg_8 : SDFRPQL port map( D => n630, SD => data_out_7_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_8_port);
   num1_reg_9 : SDFRPQL port map( D => n64, SD => data_out_8_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_9_port);
   num1_reg_3 : SDFRPQL port map( D => n580, SD => data_out_2_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_3_port);
   num1_reg_7 : SDFRPQL port map( D => n620, SD => data_out_6_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_7_port);
   num1_reg_10 : SDFRPQL port map( D => n650, SD => data_out_9_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_10_port);
   num1_reg_14 : SDFRPQL port map( D => n690, SD => data_out_13_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_14_port);
   num1_reg_4 : SDFRPQL port map( D => n590, SD => data_out_3_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_4_port);
   num1_reg_6 : SDFRPQL port map( D => n610, SD => data_out_5_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_6_port);
   num1_reg_5 : SDFRPQL port map( D => n600, SD => data_out_4_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_5_port);
   num1_reg_15 : SDFRPQL port map( D => n86, SD => data_out_14_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_15_port);
   num1_reg_11 : SDFRPQL port map( D => n66, SD => data_out_10_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_11_port);
   num2_reg_2 : SDFRPQL port map( D => n83, SD => num2_1_port, SE => scan_shift
                           , CK => clk, RB => n91, Q => num2_2_port);
   num1_reg_2 : SDFRPQL port map( D => n570, SD => data_out_1_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_2_port);
   num2_reg_0 : SDFRPQL port map( D => n700, SD => data_out_15_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => num2_0_port);
   num1_reg_0 : SDFRPQL port map( D => n550, SD => scan_in, SE => scan_shift, 
                           CK => clk, RB => n91, Q => data_out_0_port);
   num2_reg_1 : SDFRPQL port map( D => n84, SD => num2_0_port, SE => scan_shift
                           , CK => clk, RB => n91, Q => num2_1_port);
   num1_reg_1 : SDFRPQL port map( D => n560, SD => data_out_0_port, SE => 
                           scan_shift, CK => clk, RB => n91, Q => 
                           data_out_1_port);
   ready_reg : SDFRPQL port map( D => N44, SD => odd, SE => scan_shift, CK => 
                           clk, RB => n91, Q => ready_port);
   sub_70_U19 : EXNOR2D1 port map( A1 => sub_70_n3, A2 => num2_0_port, Z => N67
                           );
   sub_70_U18 : INVD1 port map( A => data_out_0_port, Z => sub_70_n3);
   sub_70_U17 : INVD1 port map( A => data_out_14_port, Z => sub_70_n17);
   sub_70_U16 : INVD1 port map( A => data_out_13_port, Z => sub_70_n16);
   sub_70_U15 : INVD1 port map( A => data_out_12_port, Z => sub_70_n15);
   sub_70_U14 : INVD1 port map( A => data_out_11_port, Z => sub_70_n14);
   sub_70_U13 : INVD1 port map( A => data_out_10_port, Z => sub_70_n13);
   sub_70_U12 : INVD1 port map( A => data_out_9_port, Z => sub_70_n12);
   sub_70_U11 : INVD1 port map( A => data_out_8_port, Z => sub_70_n11);
   sub_70_U10 : INVD1 port map( A => data_out_7_port, Z => sub_70_n10);
   sub_70_U9 : INVD1 port map( A => data_out_6_port, Z => sub_70_n9);
   sub_70_U8 : INVD1 port map( A => data_out_5_port, Z => sub_70_n8);
   sub_70_U7 : INVD1 port map( A => data_out_4_port, Z => sub_70_n7);
   sub_70_U6 : INVD1 port map( A => data_out_3_port, Z => sub_70_n6);
   sub_70_U5 : INVD1 port map( A => data_out_2_port, Z => sub_70_n5);
   sub_70_U4 : INVD1 port map( A => num2_0_port, Z => sub_70_n1);
   sub_70_U3 : INVD1 port map( A => data_out_1_port, Z => sub_70_n4);
   sub_70_U2 : NAN2D1 port map( A1 => data_out_0_port, A2 => sub_70_n1, Z => 
                           sub_70_carry_1_port);
   sub_70_U1 : INVD1 port map( A => data_out_15_port, Z => sub_70_n2);
   sub_70_U2_15 : EXOR3D1 port map( A1 => num2_15_port, A2 => sub_70_n2, A3 => 
                           sub_70_carry_15_port, Z => N82);
   sub_70_U2_1 : ADFULD1 port map( A => num2_1_port, B => sub_70_n4, CI => 
                           sub_70_carry_1_port, CO => sub_70_carry_2_port, S =>
                           N68);
   sub_70_U2_2 : ADFULD1 port map( A => num2_2_port, B => sub_70_n5, CI => 
                           sub_70_carry_2_port, CO => sub_70_carry_3_port, S =>
                           N69);
   sub_70_U2_3 : ADFULD1 port map( A => num2_3_port, B => sub_70_n6, CI => 
                           sub_70_carry_3_port, CO => sub_70_carry_4_port, S =>
                           N70);
   sub_70_U2_4 : ADFULD1 port map( A => num2_4_port, B => sub_70_n7, CI => 
                           sub_70_carry_4_port, CO => sub_70_carry_5_port, S =>
                           N71);
   sub_70_U2_5 : ADFULD1 port map( A => num2_5_port, B => sub_70_n8, CI => 
                           sub_70_carry_5_port, CO => sub_70_carry_6_port, S =>
                           N72);
   sub_70_U2_6 : ADFULD1 port map( A => num2_6_port, B => sub_70_n9, CI => 
                           sub_70_carry_6_port, CO => sub_70_carry_7_port, S =>
                           N73);
   sub_70_U2_7 : ADFULD1 port map( A => num2_7_port, B => sub_70_n10, CI => 
                           sub_70_carry_7_port, CO => sub_70_carry_8_port, S =>
                           N74);
   sub_70_U2_8 : ADFULD1 port map( A => num2_8_port, B => sub_70_n11, CI => 
                           sub_70_carry_8_port, CO => sub_70_carry_9_port, S =>
                           N75);
   sub_70_U2_9 : ADFULD1 port map( A => num2_9_port, B => sub_70_n12, CI => 
                           sub_70_carry_9_port, CO => sub_70_carry_10_port, S 
                           => N76);
   sub_70_U2_10 : ADFULD1 port map( A => num2_10_port, B => sub_70_n13, CI => 
                           sub_70_carry_10_port, CO => sub_70_carry_11_port, S 
                           => N77);
   sub_70_U2_11 : ADFULD1 port map( A => num2_11_port, B => sub_70_n14, CI => 
                           sub_70_carry_11_port, CO => sub_70_carry_12_port, S 
                           => N78);
   sub_70_U2_12 : ADFULD1 port map( A => num2_12_port, B => sub_70_n15, CI => 
                           sub_70_carry_12_port, CO => sub_70_carry_13_port, S 
                           => N79);
   sub_70_U2_13 : ADFULD1 port map( A => num2_13_port, B => sub_70_n16, CI => 
                           sub_70_carry_13_port, CO => sub_70_carry_14_port, S 
                           => N80);
   sub_70_U2_14 : ADFULD1 port map( A => num2_14_port, B => sub_70_n17, CI => 
                           sub_70_carry_14_port, CO => sub_70_carry_15_port, S 
                           => N81);
   sub_63_U19 : EXNOR2D1 port map( A1 => sub_63_n3, A2 => data_out_0_port, Z =>
                           N48);
   sub_63_U18 : INVD1 port map( A => num2_0_port, Z => sub_63_n3);
   sub_63_U17 : INVD1 port map( A => num2_14_port, Z => sub_63_n4);
   sub_63_U16 : INVD1 port map( A => num2_13_port, Z => sub_63_n5);
   sub_63_U15 : INVD1 port map( A => num2_12_port, Z => sub_63_n6);
   sub_63_U14 : INVD1 port map( A => num2_11_port, Z => sub_63_n7);
   sub_63_U13 : INVD1 port map( A => num2_10_port, Z => sub_63_n8);
   sub_63_U12 : INVD1 port map( A => num2_9_port, Z => sub_63_n9);
   sub_63_U11 : INVD1 port map( A => num2_8_port, Z => sub_63_n10);
   sub_63_U10 : INVD1 port map( A => num2_7_port, Z => sub_63_n11);
   sub_63_U9 : INVD1 port map( A => num2_6_port, Z => sub_63_n12);
   sub_63_U8 : INVD1 port map( A => num2_5_port, Z => sub_63_n13);
   sub_63_U7 : INVD1 port map( A => num2_4_port, Z => sub_63_n14);
   sub_63_U6 : INVD1 port map( A => num2_3_port, Z => sub_63_n15);
   sub_63_U5 : INVD1 port map( A => num2_2_port, Z => sub_63_n16);
   sub_63_U4 : INVD1 port map( A => data_out_0_port, Z => sub_63_n1);
   sub_63_U3 : INVD1 port map( A => num2_1_port, Z => sub_63_n17);
   sub_63_U2 : NAN2D1 port map( A1 => num2_0_port, A2 => sub_63_n1, Z => 
                           sub_63_carry_1_port);
   sub_63_U1 : INVD1 port map( A => num2_15_port, Z => sub_63_n2);
   sub_63_U2_15 : EXOR3D1 port map( A1 => data_out_15_port, A2 => sub_63_n2, A3
                           => sub_63_carry_15_port, Z => N63);
   sub_63_U2_1 : ADFULD1 port map( A => data_out_1_port, B => sub_63_n17, CI =>
                           sub_63_carry_1_port, CO => sub_63_carry_2_port, S =>
                           N49);
   sub_63_U2_2 : ADFULD1 port map( A => data_out_2_port, B => sub_63_n16, CI =>
                           sub_63_carry_2_port, CO => sub_63_carry_3_port, S =>
                           N50);
   sub_63_U2_3 : ADFULD1 port map( A => data_out_3_port, B => sub_63_n15, CI =>
                           sub_63_carry_3_port, CO => sub_63_carry_4_port, S =>
                           N51);
   sub_63_U2_4 : ADFULD1 port map( A => data_out_4_port, B => sub_63_n14, CI =>
                           sub_63_carry_4_port, CO => sub_63_carry_5_port, S =>
                           N52);
   sub_63_U2_5 : ADFULD1 port map( A => data_out_5_port, B => sub_63_n13, CI =>
                           sub_63_carry_5_port, CO => sub_63_carry_6_port, S =>
                           N53);
   sub_63_U2_6 : ADFULD1 port map( A => data_out_6_port, B => sub_63_n12, CI =>
                           sub_63_carry_6_port, CO => sub_63_carry_7_port, S =>
                           N54);
   sub_63_U2_7 : ADFULD1 port map( A => data_out_7_port, B => sub_63_n11, CI =>
                           sub_63_carry_7_port, CO => sub_63_carry_8_port, S =>
                           N55);
   sub_63_U2_8 : ADFULD1 port map( A => data_out_8_port, B => sub_63_n10, CI =>
                           sub_63_carry_8_port, CO => sub_63_carry_9_port, S =>
                           N56);
   sub_63_U2_9 : ADFULD1 port map( A => data_out_9_port, B => sub_63_n9, CI => 
                           sub_63_carry_9_port, CO => sub_63_carry_10_port, S 
                           => N57);
   sub_63_U2_10 : ADFULD1 port map( A => data_out_10_port, B => sub_63_n8, CI 
                           => sub_63_carry_10_port, CO => sub_63_carry_11_port,
                           S => N58);
   sub_63_U2_11 : ADFULD1 port map( A => data_out_11_port, B => sub_63_n7, CI 
                           => sub_63_carry_11_port, CO => sub_63_carry_12_port,
                           S => N59);
   sub_63_U2_12 : ADFULD1 port map( A => data_out_12_port, B => sub_63_n6, CI 
                           => sub_63_carry_12_port, CO => sub_63_carry_13_port,
                           S => N60);
   sub_63_U2_13 : ADFULD1 port map( A => data_out_13_port, B => sub_63_n5, CI 
                           => sub_63_carry_13_port, CO => sub_63_carry_14_port,
                           S => N61);
   sub_63_U2_14 : ADFULD1 port map( A => data_out_14_port, B => sub_63_n4, CI 
                           => sub_63_carry_14_port, CO => sub_63_carry_15_port,
                           S => N62);

end flat_gcd_scan_16_5;
