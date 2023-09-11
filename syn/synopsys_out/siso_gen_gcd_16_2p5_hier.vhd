
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

architecture hier_gcd_16_2p5 of siso_gen_DW01_sub_3 is

   component INVDL
      port( A : in std_logic;  Z : out std_logic);
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
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17
      , n18, n19, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n32, n33, 
      n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48
      , n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, 
      n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n76, n77, n78, n79
      , n80, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, 
      n95, n96, n97, n98, n99, n100, n156, n157 : std_logic;

begin
   
   U7 : EXNOR2D1 port map( A1 => n21, A2 => n2, Z => DIFF(11));
   U10 : OAI21D1 port map( A1 => n23, A2 => n19, B => n20, Z => n18);
   U15 : EXNOR2D1 port map( A1 => n28, A2 => n3, Z => DIFF(10));
   U16 : OAI21D1 port map( A1 => n38, A2 => n22, B => n23, Z => n21);
   U18 : AOI21D1 port map( A1 => n32, A2 => n157, B => n25, Z => n23);
   U25 : EXNOR2D1 port map( A1 => n35, A2 => n4, Z => DIFF(9));
   U26 : OAI21D1 port map( A1 => n38, A2 => n29, B => n30, Z => n28);
   U30 : OAI21D1 port map( A1 => n33, A2 => n37, B => n34, Z => n32);
   U35 : EXOR2D1 port map( A1 => n38, A2 => n5, Z => DIFF(8));
   U36 : OAI21D1 port map( A1 => n38, A2 => n36, B => n37, Z => n35);
   U41 : EXNOR2D1 port map( A1 => n46, A2 => n6, Z => DIFF(7));
   U43 : OAI21D1 port map( A1 => n60, A2 => n40, B => n41, Z => n39);
   U45 : AOI21D1 port map( A1 => n42, A2 => n51, B => n43, Z => n41);
   U47 : OAI21D1 port map( A1 => n44, A2 => n48, B => n45, Z => n43);
   U52 : EXOR2D1 port map( A1 => n49, A2 => n7, Z => DIFF(6));
   U53 : OAI21D1 port map( A1 => n49, A2 => n47, B => n48, Z => n46);
   U58 : EXOR2D1 port map( A1 => n54, A2 => n8, Z => DIFF(5));
   U59 : AOI21D1 port map( A1 => n59, A2 => n50, B => n51, Z => n49);
   U61 : OAI21D1 port map( A1 => n52, A2 => n58, B => n53, Z => n51);
   U66 : EXNOR2D1 port map( A1 => n59, A2 => n9, Z => DIFF(4));
   U67 : AOI21D1 port map( A1 => n59, A2 => n55, B => n56, Z => n54);
   U74 : EXNOR2D1 port map( A1 => n65, A2 => n10, Z => DIFF(3));
   U76 : AOI21D1 port map( A1 => n61, A2 => n69, B => n62, Z => n60);
   U78 : OAI21D1 port map( A1 => n63, A2 => n67, B => n64, Z => n62);
   U83 : EXOR2D1 port map( A1 => n68, A2 => n11, Z => DIFF(2));
   U84 : OAI21D1 port map( A1 => n68, A2 => n66, B => n67, Z => n65);
   U89 : EXOR2D1 port map( A1 => n12, A2 => n72, Z => DIFF(1));
   U91 : OAI21D1 port map( A1 => n70, A2 => n72, B => n71, Z => n69);
   U96 : EXNOR2D1 port map( A1 => n100, A2 => A(0), Z => DIFF(0));
   U117 : AO21D1 port map( A1 => n39, A2 => n17, B => n18, Z => n156);
   U118 : OR2D1 port map( A1 => n90, A2 => A(10), Z => n157);
   U119 : INVD1 port map( A => B(14), Z => n86);
   U120 : EXOR2D1 port map( A1 => n85, A2 => A(15), Z => n1);
   U121 : INVD1 port map( A => B(15), Z => n85);
   U122 : INVD1 port map( A => B(13), Z => n87);
   U123 : INVD1 port map( A => B(12), Z => n88);
   U124 : NAN2D1 port map( A1 => n74, A2 => n20, Z => n2);
   U125 : INVD1 port map( A => n19, Z => n74);
   U126 : NAN2D1 port map( A1 => n89, A2 => A(11), Z => n20);
   U127 : NOR2D1 port map( A1 => n89, A2 => A(11), Z => n19);
   U128 : INVD1 port map( A => B(11), Z => n89);
   U129 : NAN2D1 port map( A1 => n157, A2 => n27, Z => n3);
   U130 : INVD1 port map( A => n27, Z => n25);
   U131 : NAN2D1 port map( A1 => n90, A2 => A(10), Z => n27);
   U132 : INVD1 port map( A => B(10), Z => n90);
   U133 : NAN2D1 port map( A1 => n77, A2 => n37, Z => n5);
   U134 : NAN2D1 port map( A1 => n92, A2 => A(8), Z => n37);
   U135 : INVD1 port map( A => B(8), Z => n92);
   U136 : NOR2D1 port map( A1 => n22, A2 => n19, Z => n17);
   U137 : NAN2D1 port map( A1 => n79, A2 => n48, Z => n7);
   U138 : INVD1 port map( A => n47, Z => n79);
   U139 : NAN2D1 port map( A1 => n94, A2 => A(6), Z => n48);
   U140 : NOR2D1 port map( A1 => n94, A2 => A(6), Z => n47);
   U141 : INVD1 port map( A => B(6), Z => n94);
   U142 : NAN2D1 port map( A1 => n76, A2 => n34, Z => n4);
   U143 : INVD1 port map( A => n33, Z => n76);
   U144 : NOR2D1 port map( A1 => n91, A2 => A(9), Z => n33);
   U145 : INVD1 port map( A => B(9), Z => n91);
   U146 : NAN2D1 port map( A1 => n78, A2 => n45, Z => n6);
   U147 : INVD1 port map( A => n44, Z => n78);
   U148 : NOR2D1 port map( A1 => n47, A2 => n44, Z => n42);
   U149 : NAN2D1 port map( A1 => n93, A2 => A(7), Z => n45);
   U150 : NOR2D1 port map( A1 => n93, A2 => A(7), Z => n44);
   U151 : INVD1 port map( A => B(7), Z => n93);
   U152 : INVD1 port map( A => B(0), Z => n100);
   U153 : NOR2D1 port map( A1 => n100, A2 => A(0), Z => n72);
   U154 : NAN2D1 port map( A1 => n83, A2 => n67, Z => n11);
   U155 : INVD1 port map( A => n66, Z => n83);
   U156 : NAN2D1 port map( A1 => n98, A2 => A(2), Z => n67);
   U157 : NOR2D1 port map( A1 => n98, A2 => A(2), Z => n66);
   U158 : INVD1 port map( A => B(2), Z => n98);
   U159 : NAN2D1 port map( A1 => n80, A2 => n53, Z => n8);
   U160 : NAN2D1 port map( A1 => n95, A2 => A(5), Z => n53);
   U161 : INVD1 port map( A => B(5), Z => n95);
   U162 : INVD1 port map( A => n52, Z => n80);
   U163 : NOR2D1 port map( A1 => n95, A2 => A(5), Z => n52);
   U164 : NAN2D1 port map( A1 => n82, A2 => n64, Z => n10);
   U165 : INVD1 port map( A => n63, Z => n82);
   U166 : NOR2D1 port map( A1 => n66, A2 => n63, Z => n61);
   U167 : NAN2D1 port map( A1 => n97, A2 => A(3), Z => n64);
   U168 : NOR2D1 port map( A1 => n97, A2 => A(3), Z => n63);
   U169 : INVD1 port map( A => B(3), Z => n97);
   U170 : INVD1 port map( A => n70, Z => n84);
   U171 : NAN2D1 port map( A1 => n99, A2 => A(1), Z => n71);
   U172 : NOR2D1 port map( A1 => n99, A2 => A(1), Z => n70);
   U173 : INVD1 port map( A => B(1), Z => n99);
   U174 : NAN2D1 port map( A1 => n31, A2 => n157, Z => n22);
   U175 : INVD1 port map( A => n31, Z => n29);
   U176 : INVD1 port map( A => n36, Z => n77);
   U177 : NOR2D1 port map( A1 => n36, A2 => n33, Z => n31);
   U178 : NOR2D1 port map( A1 => n92, A2 => A(8), Z => n36);
   U179 : NAN2D1 port map( A1 => n55, A2 => n58, Z => n9);
   U180 : INVD1 port map( A => n58, Z => n56);
   U181 : INVD1 port map( A => n57, Z => n55);
   U182 : NAN2D1 port map( A1 => n96, A2 => A(4), Z => n58);
   U183 : NOR2D1 port map( A1 => n96, A2 => A(4), Z => n57);
   U184 : INVD1 port map( A => B(4), Z => n96);
   U185 : EXOR2D1 port map( A1 => n13, A2 => n1, Z => DIFF(15));
   U186 : ADFULD1 port map( A => n86, B => A(14), CI => n14, CO => n13, S => 
                           DIFF(14));
   U187 : ADFULD1 port map( A => n87, B => A(13), CI => n15, CO => n14, S => 
                           DIFF(13));
   U188 : ADFULD1 port map( A => n88, B => A(12), CI => n156, CO => n15, S => 
                           DIFF(12));
   U189 : NOR2D1 port map( A1 => n57, A2 => n52, Z => n50);
   U190 : NAN2D1 port map( A1 => n50, A2 => n42, Z => n40);
   U191 : INVD1 port map( A => n32, Z => n30);
   U192 : NAN2D1 port map( A1 => n91, A2 => A(9), Z => n34);
   U193 : NAN2D1 port map( A1 => n84, A2 => n71, Z => n12);
   U194 : INVD1 port map( A => n69, Z => n68);
   U195 : INVDL port map( A => n60, Z => n59);
   U196 : INVDL port map( A => n39, Z => n38);

end hier_gcd_16_2p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_2p5 of siso_gen_DW01_inc_2 is

   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n7, n8, n11, n12, n13, n14, n16, n17, n19, n20, 
      n21, n23, n24, n26, n27, n28, n30, n31, n32, n34, n35, n37, n38, n39, n40
      , n41, n43, n44, n45, n46, n48, n49 : std_logic;

begin
   
   U4 : EXOR2D1 port map( A1 => n7, A2 => n6, Z => SUM(14));
   U10 : EXOR2D1 port map( A1 => n12, A2 => n11, Z => SUM(13));
   U16 : EXOR2D1 port map( A1 => n17, A2 => n16, Z => SUM(12));
   U22 : EXNOR2D1 port map( A1 => n1, A2 => n19, Z => SUM(11));
   U26 : EXOR2D1 port map( A1 => n24, A2 => n23, Z => SUM(10));
   U31 : EXNOR2D1 port map( A1 => n26, A2 => n27, Z => SUM(9));
   U35 : EXNOR2D1 port map( A1 => n30, A2 => n31, Z => SUM(8));
   U40 : EXOR2D1 port map( A1 => n35, A2 => n34, Z => SUM(7));
   U45 : EXOR2D1 port map( A1 => n38, A2 => n37, Z => SUM(6));
   U49 : EXOR2D1 port map( A1 => n40, A2 => n41, Z => SUM(5));
   U53 : EXNOR2D1 port map( A1 => n43, A2 => n44, Z => SUM(4));
   U57 : EXOR2D1 port map( A1 => n45, A2 => n46, Z => SUM(3));
   U60 : EXNOR2D1 port map( A1 => n48, A2 => n49, Z => SUM(2));
   U69 : INVD1 port map( A => n39, Z => n38);
   U70 : INVD1 port map( A => n28, Z => n27);
   U71 : NOR2D1 port map( A1 => n40, A2 => n41, Z => n39);
   U72 : BUFD1 port map( A => n20, Z => n1);
   U73 : NOR2D1 port map( A1 => n21, A2 => n28, Z => n20);
   U74 : NAN2D1 port map( A1 => A(9), A2 => A(10), Z => n21);
   U75 : NAN2M1D1 port map( A1 => n30, A2 => n31, Z => n28);
   U76 : NOR2D1 port map( A1 => n45, A2 => n46, Z => n44);
   U77 : NOR2D1 port map( A1 => n32, A2 => n38, Z => n31);
   U78 : NAN2D1 port map( A1 => A(7), A2 => A(6), Z => n32);
   U79 : NAN2M1D1 port map( A1 => n48, A2 => n49, Z => n46);
   U80 : NAN2M1D1 port map( A1 => n43, A2 => n44, Z => n41);
   U81 : NOR2D1 port map( A1 => n14, A2 => n11, Z => n8);
   U82 : INVD1 port map( A => n14, Z => n13);
   U83 : NAN2D1 port map( A1 => n3, A2 => n1, Z => n2);
   U84 : NOR2D1 port map( A1 => n4, A2 => n14, Z => n3);
   U85 : NAN2D1 port map( A1 => A(13), A2 => A(14), Z => n4);
   U86 : INVD1 port map( A => A(2), Z => n48);
   U87 : INVD1 port map( A => A(5), Z => n40);
   U88 : ADHALFDL port map( A => A(1), B => A(0), CO => n49, S => SUM(1));
   U89 : INVD1 port map( A => A(4), Z => n43);
   U90 : INVD1 port map( A => A(3), Z => n45);
   U91 : INVD1 port map( A => A(7), Z => n34);
   U92 : INVD1 port map( A => A(6), Z => n37);
   U93 : INVD1 port map( A => A(8), Z => n30);
   U94 : INVD1 port map( A => A(10), Z => n23);
   U95 : INVD1 port map( A => A(9), Z => n26);
   U96 : NAN2D1 port map( A1 => A(11), A2 => A(12), Z => n14);
   U97 : INVD1 port map( A => A(11), Z => n19);
   U98 : INVD1 port map( A => A(0), Z => SUM(0));
   U99 : INVD1 port map( A => A(14), Z => n6);
   U100 : INVD1 port map( A => A(13), Z => n11);
   U101 : INVD1 port map( A => A(12), Z => n16);
   U102 : EXNOR2D1 port map( A1 => n2, A2 => A(15), Z => SUM(15));
   U103 : NAN2D1 port map( A1 => n8, A2 => n1, Z => n7);
   U104 : NAN2D1 port map( A1 => n1, A2 => n13, Z => n12);
   U105 : NAN2D1 port map( A1 => n1, A2 => A(11), Z => n17);
   U106 : NAN2D1 port map( A1 => n39, A2 => A(6), Z => n35);
   U107 : NAN2D1 port map( A1 => A(9), A2 => n27, Z => n24);

end hier_gcd_16_2p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_2p5 of siso_gen is

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
   
   component siso_gen_DW01_inc_2
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
   
   add_0_root_add_80_ni : siso_gen_DW01_inc_2 port map( A(15) => N660, A(14) =>
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
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n940, Q => 
                           req_port);
   num2_reg_14_inst : DFFRPQ1 port map( D => n57, CK => clk, RB => n940, Q => 
                           num2_14_port);
   num1_reg_15_inst : DFFRPQ1 port map( D => n72, CK => clk, RB => n940, Q => 
                           data_out_15_port);
   num1_reg_14_inst : DFFRPQ1 port map( D => n73, CK => clk, RB => n940, Q => 
                           data_out_14_port);
   num1_reg_13_inst : DFFRPQ1 port map( D => n74, CK => clk, RB => n940, Q => 
                           data_out_13_port);
   num2_reg_13_inst : DFFRPQ1 port map( D => n58, CK => clk, RB => n940, Q => 
                           num2_13_port);
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
   num1_reg_8_inst : DFFRPQ1 port map( D => n79, CK => clk, RB => n940, Q => 
                           data_out_8_port);
   num1_reg_4_inst : DFFRPQ1 port map( D => n830, CK => clk, RB => n940, Q => 
                           data_out_4_port);
   num1_reg_6_inst : DFFRPQ1 port map( D => n81, CK => clk, RB => n940, Q => 
                           data_out_6_port);
   num1_reg_7_inst : DFFRPQ1 port map( D => n80, CK => clk, RB => n940, Q => 
                           data_out_7_port);
   num1_reg_9_inst : DFFRPQ1 port map( D => n78, CK => clk, RB => n940, Q => 
                           data_out_9_port);
   num1_reg_2_inst : DFFRPQ1 port map( D => n850, CK => clk, RB => n940, Q => 
                           data_out_2_port);
   num2_reg_8_inst : DFFRPQ1 port map( D => n63, CK => clk, RB => n940, Q => 
                           num2_8_port);
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
   num2_reg_9_inst : DFFRPQ1 port map( D => n62, CK => clk, RB => n940, Q => 
                           num2_9_port);
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
   U87 : INVD1 port map( A => sub_res_2_port, Z => N790);
   U88 : INVD1 port map( A => sub_res_5_port, Z => N760);
   U89 : INVD1 port map( A => sub_res_1_port, Z => N800);
   U90 : INVD1 port map( A => sub_res_4_port, Z => N770);
   U91 : INVD1 port map( A => sub_res_3_port, Z => N780);
   U92 : INVD1 port map( A => sub_res_7_port, Z => N740);
   U93 : INVD1 port map( A => sub_res_6_port, Z => N750);
   U94 : INVD1 port map( A => sub_res_8_port, Z => N730);
   U95 : INVD1 port map( A => sub_res_10_port, Z => N710);
   U96 : INVD1 port map( A => sub_res_11_port, Z => N700);
   U97 : INVD1 port map( A => sub_res_9_port, Z => N720);
   U98 : AND2D1 port map( A1 => n120, A2 => N660, Z => n900);
   U99 : INVD1 port map( A => n156, Z => n120);
   U100 : NAN2D1 port map( A1 => n101, A2 => n154, Z => n116);
   U101 : INVD1 port map( A => n155, Z => n100);
   U102 : INVD1 port map( A => sub_res_15_port, Z => N660);
   U103 : INVD1 port map( A => sub_res_14_port, Z => N670);
   U104 : INVD1 port map( A => sub_res_0_port, Z => N810);
   U105 : INVD1 port map( A => sub_res_13_port, Z => N680);
   U106 : INVD1 port map( A => sub_res_12_port, Z => N690);
   U107 : OAI21D1 port map( A1 => sub_res_15_port, A2 => n119, B => n920, Z => 
                           n151);
   U108 : AND2D1 port map( A1 => n120, A2 => sub_res_15_port, Z => n910);
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

end hier_gcd_16_2p5;
