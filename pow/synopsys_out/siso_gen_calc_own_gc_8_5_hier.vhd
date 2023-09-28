
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

architecture hier_calc_own_gc_8_5 of siso_gen_DW_mult_tc_0 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17
      , n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n33, 
      n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48
      , n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, 
      n63, n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79
      , n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, 
      n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, 
      n244, n245, n246 : std_logic;

begin
   
   U2 : ADFULD1 port map( A => n61, B => n15, CI => n2, CO => n1, S => 
                           product(14));
   U3 : ADFULD1 port map( A => n17, B => n197, CI => n3, CO => n2, S => 
                           product(13));
   U4 : ADFULD1 port map( A => n19, B => n18, CI => n4, CO => n3, S => 
                           product(12));
   U5 : ADFULD1 port map( A => n20, B => n23, CI => n5, CO => n4, S => 
                           product(11));
   U6 : ADFULD1 port map( A => n24, B => n27, CI => n6, CO => n5, S => 
                           product(10));
   U7 : ADFULD1 port map( A => n28, B => n33, CI => n7, CO => n6, S => 
                           product(9));
   U8 : ADFULD1 port map( A => n34, B => n39, CI => n8, CO => n7, S => 
                           product(8));
   U9 : ADFULD1 port map( A => n40, B => n45, CI => n9, CO => n8, S => 
                           product(7));
   U10 : ADFULD1 port map( A => n46, B => n49, CI => n10, CO => n9, S => 
                           product(6));
   U11 : ADFULD1 port map( A => n50, B => n53, CI => n11, CO => n10, S => 
                           product(5));
   U12 : ADFULD1 port map( A => n54, B => n55, CI => n12, CO => n11, S => 
                           product(4));
   U13 : ADFULD1 port map( A => n56, B => n59, CI => n13, CO => n12, S => 
                           product(3));
   U14 : ADFULD1 port map( A => n91, B => n84, CI => n14, CO => n13, S => 
                           product(2));
   U15 : ADHALFDL port map( A => n92, B => n60, CO => n14, S => product(1));
   U17 : ADFULD1 port map( A => n62, B => n21, CI => n69, CO => n17, S => n18);
   U18 : ADFULD1 port map( A => n196, B => n63, CI => n25, CO => n19, S => n20)
                           ;
   U20 : ADFULD1 port map( A => n29, B => n77, CI => n26, CO => n23, S => n24);
   U21 : ADFULD1 port map( A => n70, B => n31, CI => n64, CO => n25, S => n26);
   U22 : ADFULD1 port map( A => n35, B => n37, CI => n30, CO => n27, S => n28);
   U23 : ADFULD1 port map( A => n65, B => n71, CI => n195, CO => n29, S => n30)
                           ;
   U25 : ADFULD1 port map( A => n41, B => n38, CI => n36, CO => n33, S => n34);
   U26 : ADFULD1 port map( A => n85, B => n72, CI => n43, CO => n35, S => n36);
   U29 : ADFULD1 port map( A => n47, B => n44, CI => n42, CO => n39, S => n40);
   U30 : ADFULD1 port map( A => n67, B => n79, CI => n73, CO => n41, S => n42);
   U31 : ADHALFDL port map( A => n57, B => n86, CO => n43, S => n44);
   U32 : ADFULD1 port map( A => n51, B => n74, CI => n48, CO => n45, S => n46);
   U33 : ADFULD1 port map( A => n87, B => n68, CI => n80, CO => n47, S => n48);
   U34 : ADFULD1 port map( A => n75, B => n81, CI => n52, CO => n49, S => n50);
   U35 : ADHALFDL port map( A => n58, B => n88, CO => n51, S => n52);
   U36 : ADFULD1 port map( A => n89, B => n76, CI => n82, CO => n53, S => n54);
   U37 : ADHALFDL port map( A => n83, B => n90, CO => n55, S => n56);
   U145 : INVD1 port map( A => n15, Z => n197);
   U146 : INVD1 port map( A => n1, Z => product(15));
   U147 : INVD1 port map( A => n31, Z => n195);
   U148 : INVD1 port map( A => n21, Z => n196);
   U149 : NAN2D1 port map( A1 => n212, A2 => n244, Z => n215);
   U150 : EXOR2D1 port map( A1 => a(2), A2 => n202, Z => n212);
   U151 : INVD1 port map( A => a(1), Z => n202);
   U152 : NAN2D1 port map( A1 => n221, A2 => n245, Z => n224);
   U153 : EXOR2D1 port map( A1 => a(4), A2 => n201, Z => n221);
   U154 : INVD1 port map( A => a(3), Z => n201);
   U155 : NAN2D1 port map( A1 => a(1), A2 => n203, Z => n205);
   U156 : INVD1 port map( A => a(0), Z => n203);
   U157 : EXOR2D1 port map( A1 => a(6), A2 => n200, Z => n231);
   U158 : INVD1 port map( A => a(5), Z => n200);
   U159 : NAN2D1 port map( A1 => n231, A2 => n246, Z => n234);
   U160 : INVD1 port map( A => b(0), Z => n198);
   U161 : INVD1 port map( A => a(7), Z => n199);
   U162 : NOR2D1 port map( A1 => n203, A2 => n198, Z => product(0));
   U163 : OAI22D1 port map( A1 => n204, A2 => n203, B1 => b(0), B2 => n205, Z 
                           => n92);
   U164 : OAI22D1 port map( A1 => n206, A2 => n203, B1 => n204, B2 => n205, Z 
                           => n91);
   U165 : EXOR2D1 port map( A1 => b(1), A2 => n202, Z => n204);
   U166 : OAI22D1 port map( A1 => n207, A2 => n203, B1 => n206, B2 => n205, Z 
                           => n90);
   U167 : EXOR2D1 port map( A1 => b(2), A2 => n202, Z => n206);
   U168 : OAI22D1 port map( A1 => n208, A2 => n203, B1 => n207, B2 => n205, Z 
                           => n89);
   U169 : EXOR2D1 port map( A1 => b(3), A2 => n202, Z => n207);
   U170 : OAI22D1 port map( A1 => n209, A2 => n203, B1 => n208, B2 => n205, Z 
                           => n88);
   U171 : EXOR2D1 port map( A1 => b(4), A2 => n202, Z => n208);
   U172 : OAI22D1 port map( A1 => n210, A2 => n203, B1 => n209, B2 => n205, Z 
                           => n87);
   U173 : EXOR2D1 port map( A1 => b(5), A2 => n202, Z => n209);
   U174 : OAI22D1 port map( A1 => n211, A2 => n203, B1 => n210, B2 => n205, Z 
                           => n86);
   U175 : EXOR2D1 port map( A1 => b(6), A2 => n202, Z => n210);
   U176 : AO21D1 port map( A1 => n203, A2 => n205, B => n211, Z => n85);
   U177 : EXNOR2D1 port map( A1 => b(7), A2 => a(1), Z => n211);
   U178 : NOR2D1 port map( A1 => n212, A2 => n198, Z => n84);
   U179 : OAI22D1 port map( A1 => n212, A2 => n213, B1 => n214, B2 => n215, Z 
                           => n83);
   U180 : EXOR2D1 port map( A1 => n201, A2 => b(0), Z => n214);
   U181 : OAI22D1 port map( A1 => n212, A2 => n216, B1 => n213, B2 => n215, Z 
                           => n82);
   U182 : EXOR2D1 port map( A1 => b(1), A2 => n201, Z => n213);
   U183 : OAI22D1 port map( A1 => n212, A2 => n217, B1 => n216, B2 => n215, Z 
                           => n81);
   U184 : EXOR2D1 port map( A1 => b(2), A2 => n201, Z => n216);
   U185 : OAI22D1 port map( A1 => n212, A2 => n218, B1 => n217, B2 => n215, Z 
                           => n80);
   U186 : EXOR2D1 port map( A1 => b(3), A2 => n201, Z => n217);
   U187 : OAI22D1 port map( A1 => n212, A2 => n219, B1 => n218, B2 => n215, Z 
                           => n79);
   U188 : EXOR2D1 port map( A1 => b(4), A2 => n201, Z => n218);
   U189 : AO21D1 port map( A1 => n215, A2 => n212, B => n220, Z => n77);
   U190 : NOR2D1 port map( A1 => n221, A2 => n198, Z => n76);
   U191 : OAI22D1 port map( A1 => n221, A2 => n222, B1 => n223, B2 => n224, Z 
                           => n75);
   U192 : EXOR2D1 port map( A1 => n200, A2 => b(0), Z => n223);
   U193 : OAI22D1 port map( A1 => n221, A2 => n225, B1 => n222, B2 => n224, Z 
                           => n74);
   U194 : EXOR2D1 port map( A1 => b(1), A2 => n200, Z => n222);
   U195 : OAI22D1 port map( A1 => n221, A2 => n226, B1 => n225, B2 => n224, Z 
                           => n73);
   U196 : EXOR2D1 port map( A1 => b(2), A2 => n200, Z => n225);
   U197 : OAI22D1 port map( A1 => n221, A2 => n227, B1 => n226, B2 => n224, Z 
                           => n72);
   U198 : EXOR2D1 port map( A1 => b(3), A2 => n200, Z => n226);
   U199 : OAI22D1 port map( A1 => n221, A2 => n228, B1 => n227, B2 => n224, Z 
                           => n71);
   U200 : EXOR2D1 port map( A1 => b(4), A2 => n200, Z => n227);
   U201 : OAI22D1 port map( A1 => n221, A2 => n229, B1 => n228, B2 => n224, Z 
                           => n70);
   U202 : EXOR2D1 port map( A1 => b(5), A2 => n200, Z => n228);
   U203 : AO21D1 port map( A1 => n224, A2 => n221, B => n230, Z => n69);
   U204 : NOR2D1 port map( A1 => n231, A2 => n198, Z => n68);
   U205 : OAI22D1 port map( A1 => n231, A2 => n232, B1 => n233, B2 => n234, Z 
                           => n67);
   U206 : EXOR2D1 port map( A1 => n199, A2 => b(0), Z => n233);
   U207 : OAI22D1 port map( A1 => n231, A2 => n235, B1 => n236, B2 => n234, Z 
                           => n65);
   U208 : OAI22D1 port map( A1 => n231, A2 => n237, B1 => n235, B2 => n234, Z 
                           => n64);
   U209 : EXOR2D1 port map( A1 => b(3), A2 => n199, Z => n235);
   U210 : OAI22D1 port map( A1 => n231, A2 => n238, B1 => n237, B2 => n234, Z 
                           => n63);
   U211 : EXOR2D1 port map( A1 => b(4), A2 => n199, Z => n237);
   U212 : OAI22D1 port map( A1 => n231, A2 => n239, B1 => n238, B2 => n234, Z 
                           => n62);
   U213 : EXOR2D1 port map( A1 => b(5), A2 => n199, Z => n238);
   U214 : AO21D1 port map( A1 => n234, A2 => n231, B => n240, Z => n61);
   U215 : OAI21D1 port map( A1 => b(0), A2 => n202, B => n205, Z => n60);
   U216 : OAI32D1 port map( A1 => n201, A2 => b(0), A3 => n212, B1 => n201, B2 
                           => n215, Z => n59);
   U217 : OAI32D1 port map( A1 => n200, A2 => b(0), A3 => n221, B1 => n200, B2 
                           => n224, Z => n58);
   U218 : OAI32D1 port map( A1 => n199, A2 => b(0), A3 => n231, B1 => n199, B2 
                           => n234, Z => n57);
   U219 : EXNOR2D1 port map( A1 => n241, A2 => n242, Z => n38);
   U220 : OR2D1 port map( A1 => n241, A2 => n242, Z => n37);
   U221 : OAI22D1 port map( A1 => n212, A2 => n243, B1 => n219, B2 => n215, Z 
                           => n242);
   U222 : EXOR2D1 port map( A1 => b(5), A2 => n201, Z => n219);
   U223 : OAI22D1 port map( A1 => n231, A2 => n236, B1 => n232, B2 => n234, Z 
                           => n241);
   U224 : EXOR2D1 port map( A1 => b(1), A2 => n199, Z => n232);
   U225 : EXOR2D1 port map( A1 => b(2), A2 => n199, Z => n236);
   U226 : OAI22D1 port map( A1 => n212, A2 => n220, B1 => n243, B2 => n215, Z 
                           => n31);
   U227 : EXOR2D1 port map( A1 => a(3), A2 => a(2), Z => n244);
   U228 : EXOR2D1 port map( A1 => b(6), A2 => n201, Z => n243);
   U229 : EXNOR2D1 port map( A1 => b(7), A2 => a(3), Z => n220);
   U230 : OAI22D1 port map( A1 => n221, A2 => n230, B1 => n229, B2 => n224, Z 
                           => n21);
   U231 : EXOR2D1 port map( A1 => a(5), A2 => a(4), Z => n245);
   U232 : EXOR2D1 port map( A1 => b(6), A2 => n200, Z => n229);
   U233 : EXNOR2D1 port map( A1 => b(7), A2 => a(5), Z => n230);
   U234 : OAI22D1 port map( A1 => n231, A2 => n240, B1 => n239, B2 => n234, Z 
                           => n15);
   U235 : EXOR2D1 port map( A1 => a(7), A2 => a(6), Z => n246);
   U236 : EXOR2D1 port map( A1 => b(6), A2 => n199, Z => n239);
   U237 : EXNOR2D1 port map( A1 => b(7), A2 => a(7), Z => n240);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of siso_gen_DW01_add_0 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n1 : std_logic;

begin
   
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_7 : EXOR3D1 port map( A1 => A(7), A2 => B(7), A3 => carry_7_port, Z => 
                           SUM(7));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_5 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_4 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_3 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_2 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_1 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of SNPS_CLOCK_GATE_HIGH_siso_gen_0 is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component LATPQ1
      port( D, GB : in std_logic;  Q : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal net55, net58 : std_logic;

begin
   
   test_or : OR2D1 port map( A1 => EN, A2 => TE, Z => net55);
   latch : LATPQ1 port map( D => net55, GB => CLK, Q => net58);
   main_gate : AND2D1 port map( A1 => net58, A2 => CLK, Z => ENCLK);

end hier_calc_own_gc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_own_gc_8_5 of siso_gen is

   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component AO22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component siso_gen_DW_mult_tc_0
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component siso_gen_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_1
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_2
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_3
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_4
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_5
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component SNPS_CLOCK_GATE_HIGH_siso_gen_0
      port( CLK, EN : in std_logic;  ENCLK : out std_logic;  TE : in std_logic
            );
   end component;
   
   component AOI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31M10D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
      , n42, n43, n44, n_1002 : std_logic;

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
   clk_gate_left_in_add_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_0 port map( CLK
                           => clk, EN => N114, ENCLK => net66, TE => n1);
   clk_gate_right_in_add_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_5 port map( 
                           CLK => clk, EN => N126, ENCLK => net72, TE => n1);
   clk_gate_left_in_mul_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_4 port map( CLK
                           => clk, EN => N141, ENCLK => net77, TE => n1);
   clk_gate_right_in_mul_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_3 port map( 
                           CLK => clk, EN => N145, ENCLK => net82, TE => n1);
   clk_gate_opcode_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_2 port map( CLK => 
                           clk, EN => N148, ENCLK => net87, TE => n1);
   clk_gate_result_reg_reg : SNPS_CLOCK_GATE_HIGH_siso_gen_1 port map( CLK => 
                           clk, EN => N152, ENCLK => net92, TE => n1);
   add_210 : siso_gen_DW01_add_0 port map( A(7) => left_in_add_reg_7_port, A(6)
                           => left_in_add_reg_6_port, A(5) => 
                           left_in_add_reg_5_port, A(4) => 
                           left_in_add_reg_4_port, A(3) => 
                           left_in_add_reg_3_port, A(2) => 
                           left_in_add_reg_2_port, A(1) => 
                           left_in_add_reg_1_port, A(0) => 
                           left_in_add_reg_0_port, B(7) => 
                           right_in_add_reg_7_port, B(6) => 
                           right_in_add_reg_6_port, B(5) => 
                           right_in_add_reg_5_port, B(4) => 
                           right_in_add_reg_4_port, B(3) => 
                           right_in_add_reg_3_port, B(2) => 
                           right_in_add_reg_2_port, B(1) => 
                           right_in_add_reg_1_port, B(0) => 
                           right_in_add_reg_0_port, CI => n1, SUM(7) => 
                           adder_out_7_port, SUM(6) => adder_out_6_port, SUM(5)
                           => adder_out_5_port, SUM(4) => adder_out_4_port, 
                           SUM(3) => adder_out_3_port, SUM(2) => 
                           adder_out_2_port, SUM(1) => adder_out_1_port, SUM(0)
                           => adder_out_0_port, CO => n_1002);
   mult_213 : siso_gen_DW_mult_tc_0 port map( a(7) => left_in_mul_reg_7_port, 
                           a(6) => left_in_mul_reg_6_port, a(5) => 
                           left_in_mul_reg_5_port, a(4) => 
                           left_in_mul_reg_4_port, a(3) => 
                           left_in_mul_reg_3_port, a(2) => 
                           left_in_mul_reg_2_port, a(1) => 
                           left_in_mul_reg_1_port, a(0) => 
                           left_in_mul_reg_0_port, b(7) => 
                           right_in_mul_reg_7_port, b(6) => 
                           right_in_mul_reg_6_port, b(5) => 
                           right_in_mul_reg_5_port, b(4) => 
                           right_in_mul_reg_4_port, b(3) => 
                           right_in_mul_reg_3_port, b(2) => 
                           right_in_mul_reg_2_port, b(1) => 
                           right_in_mul_reg_1_port, b(0) => 
                           right_in_mul_reg_0_port, product(15) => 
                           mult_out_15_port, product(14) => mult_out_14_port, 
                           product(13) => mult_out_13_port, product(12) => 
                           mult_out_12_port, product(11) => mult_out_11_port, 
                           product(10) => mult_out_10_port, product(9) => 
                           mult_out_9_port, product(8) => mult_out_8_port, 
                           product(7) => mult_out_7_port, product(6) => 
                           mult_out_6_port, product(5) => mult_out_5_port, 
                           product(4) => mult_out_4_port, product(3) => 
                           mult_out_3_port, product(2) => mult_out_2_port, 
                           product(1) => mult_out_1_port, product(0) => 
                           mult_out_0_port);
   right_in_add_reg_reg_7_inst : DFFRPQ1 port map( D => data_in(7), CK => net72
                           , RB => n36, Q => right_in_add_reg_7_port);
   left_in_add_reg_reg_7_inst : DFFRPQ1 port map( D => data_in(7), CK => net66,
                           RB => n36, Q => left_in_add_reg_7_port);
   right_in_add_reg_reg_6_inst : DFFRPQ1 port map( D => data_in(6), CK => net72
                           , RB => n35, Q => right_in_add_reg_6_port);
   left_in_add_reg_reg_6_inst : DFFRPQ1 port map( D => data_in(6), CK => net66,
                           RB => n35, Q => left_in_add_reg_6_port);
   right_in_add_reg_reg_5_inst : DFFRPQ1 port map( D => data_in(5), CK => net72
                           , RB => n36, Q => right_in_add_reg_5_port);
   left_in_add_reg_reg_5_inst : DFFRPQ1 port map( D => data_in(5), CK => net66,
                           RB => n35, Q => left_in_add_reg_5_port);
   right_in_add_reg_reg_4_inst : DFFRPQ1 port map( D => data_in(4), CK => net72
                           , RB => n36, Q => right_in_add_reg_4_port);
   left_in_add_reg_reg_4_inst : DFFRPQ1 port map( D => data_in(4), CK => net66,
                           RB => n35, Q => left_in_add_reg_4_port);
   right_in_add_reg_reg_3_inst : DFFRPQ1 port map( D => data_in(3), CK => net72
                           , RB => n35, Q => right_in_add_reg_3_port);
   left_in_add_reg_reg_3_inst : DFFRPQ1 port map( D => data_in(3), CK => net66,
                           RB => n35, Q => left_in_add_reg_3_port);
   right_in_add_reg_reg_2_inst : DFFRPQ1 port map( D => data_in(2), CK => net72
                           , RB => n35, Q => right_in_add_reg_2_port);
   left_in_add_reg_reg_2_inst : DFFRPQ1 port map( D => data_in(2), CK => net66,
                           RB => n35, Q => left_in_add_reg_2_port);
   right_in_add_reg_reg_1_inst : DFFRPQ1 port map( D => data_in(1), CK => net72
                           , RB => n36, Q => right_in_add_reg_1_port);
   left_in_add_reg_reg_1_inst : DFFRPQ1 port map( D => data_in(1), CK => net66,
                           RB => n35, Q => left_in_add_reg_1_port);
   right_in_add_reg_reg_0_inst : DFFRPQ1 port map( D => data_in(0), CK => net72
                           , RB => n35, Q => right_in_add_reg_0_port);
   left_in_add_reg_reg_0_inst : DFFRPQ1 port map( D => data_in(0), CK => net66,
                           RB => n35, Q => left_in_add_reg_0_port);
   right_in_mul_reg_reg_7_inst : DFFRPQ1 port map( D => data_in(7), CK => net82
                           , RB => n36, Q => right_in_mul_reg_7_port);
   left_in_mul_reg_reg_7_inst : DFFRPQ1 port map( D => left_in_mul_nxt_7_port, 
                           CK => net77, RB => n36, Q => left_in_mul_reg_7_port)
                           ;
   right_in_mul_reg_reg_6_inst : DFFRPQ1 port map( D => data_in(6), CK => net82
                           , RB => n36, Q => right_in_mul_reg_6_port);
   left_in_mul_reg_reg_6_inst : DFFRPQ1 port map( D => left_in_mul_nxt_6_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_6_port)
                           ;
   right_in_mul_reg_reg_5_inst : DFFRPQ1 port map( D => data_in(5), CK => net82
                           , RB => n36, Q => right_in_mul_reg_5_port);
   right_in_mul_reg_reg_4_inst : DFFRPQ1 port map( D => data_in(4), CK => net82
                           , RB => n36, Q => right_in_mul_reg_4_port);
   result_reg_reg_15_inst : DFFRPQ1 port map( D => N65, CK => net92, RB => n36,
                           Q => result_reg_15_port);
   result_reg_reg_14_inst : DFFRPQ1 port map( D => N64, CK => net92, RB => n36,
                           Q => result_reg_14_port);
   result_reg_reg_13_inst : DFFRPQ1 port map( D => N63, CK => net92, RB => n35,
                           Q => result_reg_13_port);
   result_reg_reg_12_inst : DFFRPQ1 port map( D => N62, CK => net92, RB => n35,
                           Q => result_reg_12_port);
   result_reg_reg_11_inst : DFFRPQ1 port map( D => N61, CK => net92, RB => n36,
                           Q => result_reg_11_port);
   result_reg_reg_10_inst : DFFRPQ1 port map( D => N60, CK => net92, RB => n35,
                           Q => result_reg_10_port);
   result_reg_reg_9_inst : DFFRPQ1 port map( D => N59, CK => net92, RB => n36, 
                           Q => result_reg_9_port);
   result_reg_reg_8_inst : DFFRPQ1 port map( D => N58, CK => net92, RB => n35, 
                           Q => result_reg_8_port);
   result_reg_reg_7_inst : DFFRPQ1 port map( D => N57, CK => net92, RB => n36, 
                           Q => result_reg_7_port);
   result_reg_reg_6_inst : DFFRPQ1 port map( D => N56, CK => net92, RB => n35, 
                           Q => result_reg_6_port);
   result_reg_reg_5_inst : DFFRPQ1 port map( D => N55, CK => net92, RB => n36, 
                           Q => result_reg_5_port);
   result_reg_reg_4_inst : DFFRPQ1 port map( D => N54, CK => net92, RB => n35, 
                           Q => result_reg_4_port);
   result_reg_reg_3_inst : DFFRPQ1 port map( D => N53, CK => net92, RB => n36, 
                           Q => result_reg_3_port);
   result_reg_reg_2_inst : DFFRPQ1 port map( D => N52, CK => net92, RB => n35, 
                           Q => result_reg_2_port);
   result_reg_reg_1_inst : DFFRPQ1 port map( D => N51, CK => net92, RB => n36, 
                           Q => result_reg_1_port);
   result_reg_reg_0_inst : DFFRPQ1 port map( D => N50, CK => net92, RB => n35, 
                           Q => result_reg_0_port);
   right_in_mul_reg_reg_2_inst : DFFRPQ1 port map( D => data_in(2), CK => net82
                           , RB => n36, Q => right_in_mul_reg_2_port);
   left_in_mul_reg_reg_5_inst : DFFRPQ1 port map( D => left_in_mul_nxt_5_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_5_port)
                           ;
   right_in_mul_reg_reg_3_inst : DFFRPQ1 port map( D => data_in(3), CK => net82
                           , RB => n36, Q => right_in_mul_reg_3_port);
   right_in_mul_reg_reg_0_inst : DFFRPQ1 port map( D => data_in(0), CK => net82
                           , RB => n36, Q => right_in_mul_reg_0_port);
   left_in_mul_reg_reg_4_inst : DFFRPQ1 port map( D => left_in_mul_nxt_4_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_4_port)
                           ;
   left_in_mul_reg_reg_0_inst : DFFRPQ1 port map( D => left_in_mul_nxt_0_port, 
                           CK => net77, RB => n36, Q => left_in_mul_reg_0_port)
                           ;
   right_in_mul_reg_reg_1_inst : DFFRPQ1 port map( D => data_in(1), CK => net82
                           , RB => n36, Q => right_in_mul_reg_1_port);
   left_in_mul_reg_reg_3_inst : DFFRPQ1 port map( D => left_in_mul_nxt_3_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_3_port)
                           ;
   left_in_mul_reg_reg_2_inst : DFFRPQ1 port map( D => left_in_mul_nxt_2_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_2_port)
                           ;
   left_in_mul_reg_reg_1_inst : DFFRPQ1 port map( D => left_in_mul_nxt_1_port, 
                           CK => net77, RB => n35, Q => left_in_mul_reg_1_port)
                           ;
   opcode_reg_reg_2_inst : DFFRPQ1 port map( D => data_in(2), CK => net87, RB 
                           => n36, Q => opcode_reg_2_port);
   opcode_reg_reg_3_inst : DFFRPQ1 port map( D => data_in(3), CK => net87, RB 
                           => n36, Q => opcode_reg_3_port);
   opcode_reg_reg_0_inst : DFFRPQ1 port map( D => data_in(0), CK => net87, RB 
                           => n35, Q => opcode_reg_0_port);
   opcode_reg_reg_1_inst : DFFRPQ1 port map( D => data_in(1), CK => net87, RB 
                           => n36, Q => opcode_reg_1_port);
   cur_state_reg_2_inst : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, 
                           RB => n35, Q => cur_state_2_port);
   cur_state_reg_1_inst : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, 
                           RB => n36, Q => cur_state_1_port);
   cur_state_reg_0_inst : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, 
                           RB => n35, Q => cur_state_0_port);
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

end hier_calc_own_gc_8_5;
