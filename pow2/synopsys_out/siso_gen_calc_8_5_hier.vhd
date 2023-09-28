
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

architecture hier_calc_8_5 of siso_gen_DW_mult_tc_1 is

   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OA21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17
      , n18, n19, n20, n21, n22, n23, n24, n25, n26, n30, n31, n33, n35, n36, 
      n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51, n52
      , n53, n54, n55, n56, n57, n58, n59, n60, n61, n65, n66, n67, n68, n69, 
      n73, n74, n75, n76, n78, n79, n82, n83, n84, n85, n86, n88, n90, n92, n93
      , n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
      n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, 
      n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, 
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, 
      n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, 
      n203, n204, n205, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n226, n227, n241, n271, n272, n273, n274, n276 : std_logic;

begin
   
   U2 : ADFULD1 port map( A => n138, B => n92, CI => n15, CO => n14, S => 
                           product(14));
   U3 : EXOR2D1 port map( A1 => n22, A2 => n1, Z => product(13));
   U4 : OAI21D1 port map( A1 => n49, A2 => n16, B => n17, Z => n15);
   U6 : AOI21D1 port map( A1 => n18, A2 => n40, B => n19, Z => n17);
   U8 : OAI21D1 port map( A1 => n26, A2 => n20, B => n21, Z => n19);
   U13 : EXOR2D1 port map( A1 => n31, A2 => n2, Z => product(12));
   U14 : AOI21D1 port map( A1 => n36, A2 => n23, B => n24, Z => n22);
   U25 : EXNOR2D1 port map( A1 => n36, A2 => n3, Z => product(11));
   U26 : AOI21D1 port map( A1 => n36, A2 => n271, B => n33, Z => n31);
   U33 : EXOR2D1 port map( A1 => n43, A2 => n4, Z => product(10));
   U34 : OAI21D1 port map( A1 => n49, A2 => n37, B => n38, Z => n36);
   U38 : OAI21D1 port map( A1 => n41, A2 => n47, B => n42, Z => n40);
   U43 : EXNOR2D1 port map( A1 => n48, A2 => n5, Z => product(9));
   U44 : AOI21D1 port map( A1 => n48, A2 => n83, B => n45, Z => n43);
   U51 : EXNOR2D1 port map( A1 => n54, A2 => n6, Z => product(8));
   U53 : AOI21D1 port map( A1 => n50, A2 => n58, B => n51, Z => n49);
   U55 : OAI21D1 port map( A1 => n52, A2 => n56, B => n53, Z => n51);
   U60 : EXOR2D1 port map( A1 => n57, A2 => n7, Z => product(7));
   U61 : OAI21D1 port map( A1 => n57, A2 => n55, B => n56, Z => n54);
   U66 : EXOR2D1 port map( A1 => n8, A2 => n61, Z => product(6));
   U68 : OAI21D1 port map( A1 => n61, A2 => n59, B => n60, Z => n58);
   U73 : EXNOR2D1 port map( A1 => n9, A2 => n66, Z => product(5));
   U81 : EXOR2D1 port map( A1 => n10, A2 => n69, Z => product(4));
   U82 : OAI21D1 port map( A1 => n69, A2 => n67, B => n68, Z => n66);
   U87 : EXNOR2D1 port map( A1 => n11, A2 => n74, Z => product(3));
   U95 : EXOR2D1 port map( A1 => n12, A2 => n78, Z => product(2));
   U96 : OAI21D1 port map( A1 => n75, A2 => n78, B => n76, Z => n74);
   U107 : ADFULD1 port map( A => n139, B => n98, CI => n146, CO => n94, S => 
                           n95);
   U108 : ADFULD1 port map( A => n99, B => n140, CI => n102, CO => n96, S => 
                           n97);
   U110 : ADFULD1 port map( A => n106, B => n154, CI => n103, CO => n100, S => 
                           n101);
   U111 : ADFULD1 port map( A => n147, B => n108, CI => n141, CO => n102, S => 
                           n103);
   U112 : ADFULD1 port map( A => n112, B => n114, CI => n107, CO => n104, S => 
                           n105);
   U113 : ADFULD1 port map( A => n142, B => n148, CI => n109, CO => n106, S => 
                           n107);
   U115 : ADFULD1 port map( A => n118, B => n115, CI => n113, CO => n110, S => 
                           n111);
   U116 : ADFULD1 port map( A => n162, B => n149, CI => n120, CO => n112, S => 
                           n113);
   U118 : OR2D1 port map( A1 => n155, A2 => n143, Z => n114);
   U119 : ADFULD1 port map( A => n124, B => n121, CI => n119, CO => n116, S => 
                           n117);
   U120 : ADFULD1 port map( A => n144, B => n156, CI => n150, CO => n118, S => 
                           n119);
   U122 : ADFULD1 port map( A => n128, B => n151, CI => n125, CO => n122, S => 
                           n123);
   U123 : ADFULD1 port map( A => n164, B => n145, CI => n157, CO => n124, S => 
                           n125);
   U124 : ADFULD1 port map( A => n152, B => n158, CI => n129, CO => n126, S => 
                           n127);
   U126 : ADFULD1 port map( A => n166, B => n153, CI => n159, CO => n130, S => 
                           n131);
   U128 : OAI22D1 port map( A1 => n222, A2 => n178, B1 => n218, B2 => n226, Z 
                           => n134);
   U130 : OAI22D1 port map( A1 => n222, A2 => n170, B1 => n218, B2 => n171, Z 
                           => n92);
   U131 : OAI22D1 port map( A1 => n222, A2 => n171, B1 => n218, B2 => n172, Z 
                           => n139);
   U132 : OAI22D1 port map( A1 => n222, A2 => n172, B1 => n218, B2 => n173, Z 
                           => n140);
   U133 : OAI22D1 port map( A1 => n222, A2 => n173, B1 => n218, B2 => n174, Z 
                           => n141);
   U134 : OAI22D1 port map( A1 => n222, A2 => n174, B1 => n218, B2 => n175, Z 
                           => n142);
   U135 : OAI22D1 port map( A1 => n222, A2 => n175, B1 => n218, B2 => n176, Z 
                           => n143);
   U136 : OAI22D1 port map( A1 => n222, A2 => n176, B1 => n218, B2 => n177, Z 
                           => n144);
   U137 : NOR2M1D1 port map( A1 => b(0), A2 => n222, Z => n145);
   U138 : EXNOR2D1 port map( A1 => a(7), A2 => b(7), Z => n170);
   U139 : EXNOR2D1 port map( A1 => a(7), A2 => b(6), Z => n171);
   U140 : EXNOR2D1 port map( A1 => a(7), A2 => b(5), Z => n172);
   U141 : EXNOR2D1 port map( A1 => a(7), A2 => b(4), Z => n173);
   U142 : EXNOR2D1 port map( A1 => a(7), A2 => b(3), Z => n174);
   U143 : EXNOR2D1 port map( A1 => a(7), A2 => b(2), Z => n175);
   U144 : EXNOR2D1 port map( A1 => a(7), A2 => b(1), Z => n176);
   U145 : EXNOR2D1 port map( A1 => a(7), A2 => b(0), Z => n177);
   U146 : NAN2M1D1 port map( A1 => b(0), A2 => a(7), Z => n178);
   U147 : OAI22D1 port map( A1 => n223, A2 => n187, B1 => n219, B2 => n227, Z 
                           => n135);
   U149 : OAI22D1 port map( A1 => n223, A2 => n179, B1 => n219, B2 => n180, Z 
                           => n98);
   U150 : OAI22D1 port map( A1 => n223, A2 => n180, B1 => n219, B2 => n181, Z 
                           => n147);
   U151 : OAI22D1 port map( A1 => n223, A2 => n181, B1 => n219, B2 => n182, Z 
                           => n148);
   U152 : OAI22D1 port map( A1 => n223, A2 => n182, B1 => n219, B2 => n183, Z 
                           => n149);
   U153 : OAI22D1 port map( A1 => n223, A2 => n183, B1 => n219, B2 => n184, Z 
                           => n150);
   U154 : OAI22D1 port map( A1 => n223, A2 => n184, B1 => n219, B2 => n185, Z 
                           => n151);
   U155 : OAI22D1 port map( A1 => n223, A2 => n185, B1 => n219, B2 => n186, Z 
                           => n152);
   U156 : NOR2M1D1 port map( A1 => b(0), A2 => n223, Z => n153);
   U157 : EXNOR2D1 port map( A1 => a(5), A2 => b(7), Z => n179);
   U158 : EXNOR2D1 port map( A1 => a(5), A2 => b(6), Z => n180);
   U159 : EXNOR2D1 port map( A1 => a(5), A2 => b(5), Z => n181);
   U160 : EXNOR2D1 port map( A1 => a(5), A2 => b(4), Z => n182);
   U161 : EXNOR2D1 port map( A1 => a(5), A2 => b(3), Z => n183);
   U162 : EXNOR2D1 port map( A1 => a(5), A2 => b(2), Z => n184);
   U163 : EXNOR2D1 port map( A1 => a(5), A2 => b(1), Z => n185);
   U164 : EXNOR2D1 port map( A1 => a(5), A2 => b(0), Z => n186);
   U165 : NAN2M1D1 port map( A1 => b(0), A2 => a(5), Z => n187);
   U168 : OAI22D1 port map( A1 => n224, A2 => n188, B1 => n220, B2 => n189, Z 
                           => n108);
   U169 : OAI22D1 port map( A1 => n224, A2 => n189, B1 => n220, B2 => n190, Z 
                           => n155);
   U170 : OAI22D1 port map( A1 => n224, A2 => n190, B1 => n220, B2 => n191, Z 
                           => n156);
   U171 : OAI22D1 port map( A1 => n224, A2 => n191, B1 => n220, B2 => n192, Z 
                           => n157);
   U172 : OAI22D1 port map( A1 => n224, A2 => n192, B1 => n220, B2 => n193, Z 
                           => n158);
   U173 : OAI22D1 port map( A1 => n224, A2 => n193, B1 => n220, B2 => n194, Z 
                           => n159);
   U174 : OAI22D1 port map( A1 => n224, A2 => n194, B1 => n220, B2 => n195, Z 
                           => n160);
   U175 : NOR2M1D1 port map( A1 => b(0), A2 => n224, Z => n161);
   U176 : EXNOR2D1 port map( A1 => a(3), A2 => b(7), Z => n188);
   U177 : EXNOR2D1 port map( A1 => a(3), A2 => b(6), Z => n189);
   U178 : EXNOR2D1 port map( A1 => a(3), A2 => b(5), Z => n190);
   U179 : EXNOR2D1 port map( A1 => a(3), A2 => b(4), Z => n191);
   U180 : EXNOR2D1 port map( A1 => a(3), A2 => b(3), Z => n192);
   U181 : EXNOR2D1 port map( A1 => a(3), A2 => b(2), Z => n193);
   U182 : EXNOR2D1 port map( A1 => a(3), A2 => b(1), Z => n194);
   U183 : EXNOR2D1 port map( A1 => a(3), A2 => b(0), Z => n195);
   U184 : NAN2M1D1 port map( A1 => b(0), A2 => a(3), Z => n196);
   U187 : OAI22D1 port map( A1 => n197, A2 => n241, B1 => n221, B2 => n198, Z 
                           => n163);
   U188 : OAI22D1 port map( A1 => n198, A2 => n241, B1 => n221, B2 => n199, Z 
                           => n164);
   U189 : OAI22D1 port map( A1 => n199, A2 => n241, B1 => n221, B2 => n200, Z 
                           => n165);
   U190 : OAI22D1 port map( A1 => n200, A2 => n241, B1 => n221, B2 => n201, Z 
                           => n166);
   U191 : OAI22D1 port map( A1 => n201, A2 => n241, B1 => n221, B2 => n202, Z 
                           => n167);
   U192 : OAI22D1 port map( A1 => n202, A2 => n241, B1 => n221, B2 => n203, Z 
                           => n168);
   U193 : OAI22D1 port map( A1 => n203, A2 => n241, B1 => n221, B2 => n204, Z 
                           => n169);
   U194 : NOR2M1D1 port map( A1 => b(0), A2 => n241, Z => product(0));
   U195 : EXNOR2D1 port map( A1 => a(1), A2 => b(7), Z => n197);
   U196 : EXNOR2D1 port map( A1 => a(1), A2 => b(6), Z => n198);
   U197 : EXNOR2D1 port map( A1 => a(1), A2 => b(5), Z => n199);
   U198 : EXNOR2D1 port map( A1 => a(1), A2 => b(4), Z => n200);
   U199 : EXNOR2D1 port map( A1 => a(1), A2 => b(3), Z => n201);
   U200 : EXNOR2D1 port map( A1 => a(1), A2 => b(2), Z => n202);
   U201 : EXNOR2D1 port map( A1 => a(1), A2 => b(1), Z => n203);
   U202 : EXNOR2D1 port map( A1 => a(1), A2 => b(0), Z => n204);
   U203 : NAN2M1D1 port map( A1 => b(0), A2 => a(1), Z => n205);
   U222 : EXOR2D1 port map( A1 => a(7), A2 => a(6), Z => n214);
   U225 : EXOR2D1 port map( A1 => a(5), A2 => a(4), Z => n215);
   U228 : EXOR2D1 port map( A1 => a(3), A2 => a(2), Z => n216);
   U231 : EXOR2D1 port map( A1 => a(1), A2 => a(0), Z => n217);
   U235 : INVD1 port map( A => n39, Z => n37);
   U236 : INVD1 port map( A => n40, Z => n38);
   U237 : INVD1 port map( A => n49, Z => n48);
   U238 : NAN2D1 port map( A1 => n83, A2 => n47, Z => n5);
   U239 : INVD1 port map( A => n26, Z => n24);
   U240 : INVD1 port map( A => n46, Z => n83);
   U241 : INVD1 port map( A => n25, Z => n23);
   U242 : INVD1 port map( A => n47, Z => n45);
   U243 : NOR2D1 port map( A1 => n52, A2 => n55, Z => n50);
   U244 : NAN2D1 port map( A1 => n272, A2 => n30, Z => n2);
   U245 : NAN2D1 port map( A1 => n79, A2 => n21, Z => n1);
   U246 : INVD1 port map( A => n20, Z => n79);
   U247 : NAN2D1 port map( A1 => n105, A2 => n110, Z => n47);
   U248 : NAN2D1 port map( A1 => n82, A2 => n42, Z => n4);
   U249 : INVD1 port map( A => n41, Z => n82);
   U250 : OA21M20D1 port map( A1 => n33, A2 => n272, B => n30, Z => n26);
   U251 : INVD1 port map( A => n35, Z => n33);
   U252 : NOR2D1 port map( A1 => n105, A2 => n110, Z => n46);
   U253 : NOR2D1 port map( A1 => n46, A2 => n41, Z => n39);
   U254 : NAN2D1 port map( A1 => n271, A2 => n35, Z => n3);
   U255 : NOR2D1 port map( A1 => n25, A2 => n20, Z => n18);
   U256 : NAN2D1 port map( A1 => n271, A2 => n272, Z => n25);
   U257 : INVD1 port map( A => n58, Z => n57);
   U258 : NAN2D1 port map( A1 => n84, A2 => n53, Z => n6);
   U259 : INVD1 port map( A => n52, Z => n84);
   U260 : INVD1 port map( A => n55, Z => n85);
   U261 : OA21M20D1 port map( A1 => n273, A2 => n66, B => n65, Z => n61);
   U262 : NOR2D1 port map( A1 => n111, A2 => n116, Z => n52);
   U263 : EXNOR2D1 port map( A1 => n155, A2 => n143, Z => n115);
   U264 : OA21M20D1 port map( A1 => n274, A2 => n74, B => n73, Z => n69);
   U265 : NOR2D1 port map( A1 => n117, A2 => n122, Z => n55);
   U266 : NAN2D1 port map( A1 => n111, A2 => n116, Z => n53);
   U267 : NOR2D1 port map( A1 => n101, A2 => n104, Z => n41);
   U268 : NAN2D1 port map( A1 => n97, A2 => n100, Z => n35);
   U269 : NAN2D1 port map( A1 => n117, A2 => n122, Z => n56);
   U270 : INVD1 port map( A => n14, Z => product(15));
   U271 : OR2D1 port map( A1 => n97, A2 => n100, Z => n271);
   U272 : NAN2D1 port map( A1 => n101, A2 => n104, Z => n42);
   U273 : OR2D1 port map( A1 => n96, A2 => n95, Z => n272);
   U274 : NAN2D1 port map( A1 => n96, A2 => n95, Z => n30);
   U275 : NOR2D1 port map( A1 => n94, A2 => n93, Z => n20);
   U276 : INVD1 port map( A => n59, Z => n86);
   U277 : NAN2D1 port map( A1 => n94, A2 => n93, Z => n21);
   U278 : INVD1 port map( A => n92, Z => n93);
   U279 : INVD1 port map( A => n67, Z => n88);
   U280 : INVD1 port map( A => n75, Z => n90);
   U281 : OR2D1 port map( A1 => n127, A2 => n130, Z => n273);
   U282 : NAN2D1 port map( A1 => n88, A2 => n68, Z => n10);
   U283 : NAN2D1 port map( A1 => n273, A2 => n65, Z => n9);
   U284 : AO21D1 port map( A1 => n221, A2 => n241, B => n197, Z => n162);
   U285 : NAN2D1 port map( A1 => n127, A2 => n130, Z => n65);
   U286 : OR2D1 port map( A1 => n133, A2 => n136, Z => n274);
   U287 : AO21D1 port map( A1 => n218, A2 => n222, B => n170, Z => n138);
   U288 : NAN2D1 port map( A1 => n39, A2 => n18, Z => n16);
   U289 : NAN2D1 port map( A1 => n86, A2 => n60, Z => n8);
   U290 : INVD1 port map( A => n108, Z => n109);
   U291 : NOR2D1 port map( A1 => n123, A2 => n126, Z => n59);
   U292 : NAN2D1 port map( A1 => n90, A2 => n76, Z => n12);
   U293 : AO21D1 port map( A1 => n220, A2 => n224, B => n188, Z => n154);
   U294 : NAN2D1 port map( A1 => n133, A2 => n136, Z => n73);
   U295 : NOR2D1 port map( A1 => n131, A2 => n132, Z => n67);
   U296 : NAN2D1 port map( A1 => n85, A2 => n56, Z => n7);
   U297 : NAN2D1 port map( A1 => n123, A2 => n126, Z => n60);
   U298 : NAN2D1 port map( A1 => n274, A2 => n73, Z => n11);
   U299 : INVD1 port map( A => n98, Z => n99);
   U300 : NAN2D1 port map( A1 => n131, A2 => n132, Z => n68);
   U301 : AND2D1 port map( A1 => n276, A2 => n78, Z => product(1));
   U302 : AO21D1 port map( A1 => n219, A2 => n223, B => n179, Z => n146);
   U303 : NAN2D1 port map( A1 => n169, A2 => n137, Z => n78);
   U304 : NOR2D1 port map( A1 => n168, A2 => n161, Z => n75);
   U305 : NAN2D1 port map( A1 => n168, A2 => n161, Z => n76);
   U306 : OR2D1 port map( A1 => n169, A2 => n137, Z => n276);
   U307 : EXNOR2D1 port map( A1 => a(3), A2 => a(4), Z => n223);
   U308 : NAN2D1 port map( A1 => n215, A2 => n223, Z => n219);
   U309 : ADHALFDL port map( A => n135, B => n165, CO => n128, S => n129);
   U310 : INVD1 port map( A => a(5), Z => n227);
   U311 : ADHALFDL port map( A => n134, B => n163, CO => n120, S => n121);
   U312 : INVD1 port map( A => a(7), Z => n226);
   U313 : EXNOR2D1 port map( A1 => a(5), A2 => a(6), Z => n222);
   U314 : NAN2D1 port map( A1 => n214, A2 => n222, Z => n218);
   U315 : EXNOR2D1 port map( A1 => a(1), A2 => a(2), Z => n224);
   U316 : NAN2D1 port map( A1 => n216, A2 => n224, Z => n220);
   U317 : ADHALFDL port map( A => n160, B => n167, CO => n132, S => n133);
   U318 : NAN2D1 port map( A1 => n217, A2 => n241, Z => n221);
   U319 : OAI22M10D1 port map( A1 => a(3), A2 => n220, B1 => n224, B2 => n196, 
                           Z => n136);
   U320 : OAI22M10D1 port map( A1 => a(1), A2 => n221, B1 => n205, B2 => n241, 
                           Z => n137);
   U321 : INVD1 port map( A => a(0), Z => n241);

end hier_calc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_8_5 of siso_gen_DW01_add_0 is

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

end hier_calc_8_5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_calc_8_5 of siso_gen is

   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
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
   
   component siso_gen_DW_mult_tc_1
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component siso_gen_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component EXNOR2D1
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
      n73, n74, n75, n_1002 : std_logic;

begin
   
   U44 : EXNOR2D1 port map( A1 => opcode_reg_1_port, A2 => n75, Z => n30);
   add_173 : siso_gen_DW01_add_0 port map( A(7) => left_in_add_reg_7_port, A(6)
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
   mult_176 : siso_gen_DW_mult_tc_1 port map( a(7) => left_in_mul_reg_7_port, 
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
   left_in_add_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_7_port);
   right_in_add_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_7_port);
   opcode_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n31, CK =>
                           clk, RB => n50, Q => opcode_reg_1_port);
   opcode_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n31, CK =>
                           clk, RB => n50, Q => opcode_reg_0_port);
   opcode_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n31, CK =>
                           clk, RB => n50, Q => opcode_reg_2_port);
   opcode_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n31, CK =>
                           clk, RB => n50, Q => opcode_reg_3_port);
   left_in_add_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_6_port);
   right_in_add_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_6_port);
   cur_state_reg_0_inst : DFFRPQ1 port map( D => nxt_state_0_port, CK => clk, 
                           RB => n50, Q => cur_state_0_port);
   cur_state_reg_1_inst : DFFRPQ1 port map( D => nxt_state_1_port, CK => clk, 
                           RB => n50, Q => cur_state_1_port);
   cur_state_reg_2_inst : DFFRPQ1 port map( D => nxt_state_2_port, CK => clk, 
                           RB => n50, Q => cur_state_2_port);
   left_in_add_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_5_port);
   right_in_add_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_5_port);
   left_in_add_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_4_port);
   right_in_add_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_4_port);
   left_in_add_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_3_port);
   right_in_add_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_3_port);
   left_in_add_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_2_port);
   right_in_add_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_2_port);
   left_in_add_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_1_port);
   right_in_add_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_1_port);
   right_in_add_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n16,
                           CK => clk, RB => n50, Q => right_in_add_reg_0_port);
   left_in_add_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n24, 
                           CK => clk, RB => n50, Q => left_in_add_reg_0_port);
   right_in_mul_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_2_port);
   right_in_mul_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_3_port);
   right_in_mul_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_4_port);
   right_in_mul_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_1_port);
   right_in_mul_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_0_port);
   right_in_mul_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_7_port);
   right_in_mul_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_6_port);
   right_in_mul_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n19,
                           CK => clk, RB => n50, Q => right_in_mul_reg_5_port);
   left_in_mul_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_0_port);
   left_in_mul_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_2_port);
   left_in_mul_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_7_port);
   left_in_mul_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_4_port);
   left_in_mul_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_6_port);
   left_in_mul_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_1_port);
   left_in_mul_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_5_port);
   left_in_mul_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n28, 
                           CK => clk, RB => n50, Q => left_in_mul_reg_3_port);
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

end hier_calc_8_5;
