
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

architecture hier_gcd_16_1p5 of siso_gen_DW01_sub_3 is

   component AOI21DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D2
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INVDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OA21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M10DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D2
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n6, n11, n12, n14, n15, n16, n17, n18, n20, n21, n22,
      n23, n24, n25, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40
      , n41, n42, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n59, 
      n60, n61, n62, n67, n68, n69, n70, n72, n73, n75, n76, n77, n78, n79, n80
      , n81, n82, n83, n84, n87, n88, n89, n90, n96, n97, n98, n99, n100, n101,
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n118, n119, n120, n121, n122, n125, n131, n132, n133, n134, 
      n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, 
      n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
      n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224 : 
      std_logic;

begin
   
   U8 : AOI21D1 port map( A1 => n1, A2 => n22, B => n23, Z => n21);
   U19 : EXOR2D1 port map( A1 => n6, A2 => n39, Z => DIFF(13));
   U26 : OAI21D1 port map( A1 => n37, A2 => n45, B => n38, Z => n36);
   U46 : AOI21D1 port map( A1 => n49, A2 => n62, B => n50, Z => n2);
   U48 : OAI21D1 port map( A1 => n51, A2 => n59, B => n52, Z => n50);
   U54 : AOI21D1 port map( A1 => n212, A2 => n54, B => n55, Z => n53);
   U64 : AOI21D1 port map( A1 => n212, A2 => n61, B => n214, Z => n60);
   U70 : OAI21D1 port map( A1 => n67, A2 => n73, B => n68, Z => n62);
   U83 : EXOR2D1 port map( A1 => n81, A2 => n12, Z => DIFF(7));
   U86 : AOI21D1 port map( A1 => n77, A2 => n90, B => n78, Z => n76);
   U88 : OAI21D1 port map( A1 => n79, A2 => n87, B => n80, Z => n78);
   U94 : AOI21D1 port map( A1 => n102, A2 => n82, B => n83, Z => n81);
   U101 : NOR2D2 port map( A1 => n140, A2 => A(6), Z => n84);
   U103 : EXOR2D1 port map( A1 => n97, A2 => n14, Z => DIFF(5));
   U110 : OAI21D1 port map( A1 => n219, A2 => n101, B => n96, Z => n90);
   U116 : AOI21D1 port map( A1 => n102, A2 => n98, B => n99, Z => n97);
   U123 : EXNOR2D1 port map( A1 => n108, A2 => n16, Z => DIFF(3));
   U125 : AOI21D1 port map( A1 => n104, A2 => n112, B => n105, Z => n103);
   U127 : OAI21D1 port map( A1 => n106, A2 => n110, B => n107, Z => n105);
   U132 : EXOR2D1 port map( A1 => n111, A2 => n17, Z => DIFF(2));
   U140 : OAI21D1 port map( A1 => n115, A2 => n113, B => n114, Z => n112);
   U166 : EXNOR2DL port map( A1 => n88, A2 => n203, Z => DIFF(6));
   U167 : NOR2D1 port map( A1 => n100, A2 => n218, Z => n89);
   U168 : INVD1 port map( A => B(5), Z => n141);
   U169 : NOR2D1 port map( A1 => n137, A2 => A(9), Z => n67);
   U170 : NOR2D1 port map( A1 => n139, A2 => A(7), Z => n79);
   U171 : NOR2D1 port map( A1 => n135, A2 => A(11), Z => n51);
   U172 : OAI21D1 port map( A1 => n2, A2 => n24, B => n25, Z => n23);
   U173 : INVDL port map( A => n56, Z => n121);
   U174 : OAI21M10DL port map( A1 => n214, A2 => n56, B => n59, Z => n55);
   U175 : NOR2M1DL port map( A1 => n61, A2 => n56, Z => n54);
   U176 : EXNOR2DL port map( A1 => n102, A2 => n15, Z => DIFF(4));
   U177 : AOI21DL port map( A1 => n102, A2 => n89, B => n213, Z => n88);
   U178 : INVDL port map( A => B(1), Z => n202);
   U179 : OAI21D1 port map( A1 => n75, A2 => n103, B => n76, Z => n1);
   U180 : AOI21DL port map( A1 => n104, A2 => n112, B => n105, Z => n206);
   U181 : INVDL port map( A => B(1), Z => n145);
   U182 : INVDL port map( A => B(0), Z => n146);
   U183 : INVDL port map( A => B(3), Z => n143);
   U184 : INVDL port map( A => B(2), Z => n144);
   U185 : INVD1 port map( A => B(4), Z => n142);
   U186 : AND2DL port map( A1 => n121, A2 => n59, Z => n205);
   U187 : INVD1 port map( A => B(10), Z => n136);
   U188 : INVD1 port map( A => B(9), Z => n137);
   U189 : NAN2D1 port map( A1 => n134, A2 => A(12), Z => n45);
   U190 : INVD1 port map( A => B(8), Z => n138);
   U191 : NOR2D1 port map( A1 => n136, A2 => A(10), Z => n56);
   U192 : NOR2DL port map( A1 => n3, A2 => n33, Z => n31);
   U193 : INVDL port map( A => n3, Z => n47);
   U194 : INVDL port map( A => n36, Z => n34);
   U195 : INVDL port map( A => n35, Z => n33);
   U196 : NAN2M1DL port map( A1 => n79, A2 => n80, Z => n12);
   U197 : NAN2M1DL port map( A1 => n218, A2 => n96, Z => n14);
   U198 : AND2DL port map( A1 => n125, A2 => n87, Z => n203);
   U199 : INVDL port map( A => n67, Z => n122);
   U200 : EXNOR2D1 port map( A1 => n53, A2 => n204, Z => DIFF(11));
   U201 : AND2D1 port map( A1 => n120, A2 => n52, Z => n204);
   U202 : NAN2DL port map( A1 => n70, A2 => n73, Z => n11);
   U203 : NOR2DL port map( A1 => n3, A2 => n42, Z => n40);
   U204 : EXNOR2D1 port map( A1 => n60, A2 => n205, Z => DIFF(10));
   U205 : OAI21M10DL port map( A1 => n213, A2 => n84, B => n87, Z => n83);
   U206 : NOR2M1DL port map( A1 => n89, A2 => n84, Z => n82);
   U207 : NAN2M1DL port map( A1 => n217, A2 => n110, Z => n17);
   U208 : NAN2M1DL port map( A1 => n106, A2 => n107, Z => n16);
   U209 : INVDL port map( A => n100, Z => n98);
   U210 : INVDL port map( A => n72, Z => n70);
   U211 : INVDL port map( A => n73, Z => n224);
   U212 : INVDL port map( A => n42, Z => n119);
   U213 : INVDL port map( A => n51, Z => n120);
   U214 : INVDL port map( A => n37, Z => n118);
   U215 : NAN2DL port map( A1 => n143, A2 => A(3), Z => n107);
   U216 : INVDL port map( A => B(12), Z => n134);
   U217 : INVDL port map( A => B(13), Z => n133);
   U218 : NAN2DL port map( A1 => n136, A2 => A(10), Z => n59);
   U219 : NAN2DL port map( A1 => n139, A2 => A(7), Z => n80);
   U220 : NAN2DL port map( A1 => n135, A2 => A(11), Z => n52);
   U221 : NAN2DL port map( A1 => n133, A2 => A(13), Z => n38);
   U222 : NAN2D1 port map( A1 => n61, A2 => n49, Z => n3);
   U223 : NOR2D1 port map( A1 => n3, A2 => n24, Z => n22);
   U224 : NOR2D1 port map( A1 => n84, A2 => n79, Z => n77);
   U225 : OA21M20D1 port map( A1 => n36, A2 => n209, B => n29, Z => n25);
   U226 : NAN2D1 port map( A1 => n118, A2 => n38, Z => n6);
   U227 : EXNOR2D1 port map( A1 => n207, A2 => n208, Z => DIFF(12));
   U228 : AOI21DL port map( A1 => n212, A2 => n47, B => n48, Z => n207);
   U229 : AND2D1 port map( A1 => n119, A2 => n45, Z => n208);
   U230 : NOR2D1 port map( A1 => n72, A2 => n67, Z => n61);
   U231 : NAN2D1 port map( A1 => n89, A2 => n77, Z => n75);
   U232 : NOR2D1 port map( A1 => n42, A2 => n37, Z => n35);
   U233 : NAN2D1 port map( A1 => n35, A2 => n209, Z => n24);
   U234 : NAN2D1 port map( A1 => n98, A2 => n220, Z => n15);
   U235 : INVD1 port map( A => n220, Z => n99);
   U236 : INVD1 port map( A => B(7), Z => n139);
   U237 : NOR2D1 port map( A1 => n202, A2 => A(1), Z => n113);
   U238 : NOR2D1 port map( A1 => n146, A2 => A(0), Z => n115);
   U239 : NAN2D1 port map( A1 => n210, A2 => n20, Z => n4);
   U240 : NAN2D1 port map( A1 => n131, A2 => A(15), Z => n20);
   U241 : INVDL port map( A => B(11), Z => n135);
   U242 : NOR2D1 port map( A1 => n143, A2 => A(3), Z => n106);
   U243 : NAN2D1 port map( A1 => n144, A2 => A(2), Z => n110);
   U244 : INVD1 port map( A => B(6), Z => n140);
   U245 : NAN2D1 port map( A1 => n138, A2 => A(8), Z => n73);
   U246 : NOR2D1 port map( A1 => n142, A2 => A(4), Z => n100);
   U247 : NOR2D1 port map( A1 => n133, A2 => A(13), Z => n37);
   U248 : NAN2D1 port map( A1 => n141, A2 => A(5), Z => n96);
   U249 : NOR2D1 port map( A1 => n134, A2 => A(12), Z => n42);
   U250 : NAN2D1 port map( A1 => n140, A2 => A(6), Z => n87);
   U251 : NOR2D1 port map( A1 => n138, A2 => A(8), Z => n72);
   U252 : NAN2D1 port map( A1 => n137, A2 => A(9), Z => n68);
   U253 : INVD1 port map( A => B(14), Z => n132);
   U254 : OR2D1 port map( A1 => n132, A2 => A(14), Z => n209);
   U255 : NAN2D1 port map( A1 => n132, A2 => A(14), Z => n29);
   U256 : INVD1 port map( A => B(15), Z => n131);
   U257 : OR2D1 port map( A1 => n131, A2 => A(15), Z => n210);
   U258 : NOR2D1 port map( A1 => n56, A2 => n51, Z => n49);
   U259 : BUFDL port map( A => n212, Z => n211);
   U260 : OAI21D1 port map( A1 => n206, A2 => n75, B => n76, Z => n212);
   U261 : INVD1 port map( A => n84, Z => n125);
   U262 : OAI21DL port map( A1 => n219, A2 => n101, B => n96, Z => n213);
   U263 : NOR2D1 port map( A1 => n141, A2 => A(5), Z => n219);
   U264 : INVD1 port map( A => n103, Z => n102);
   U265 : OAI21DL port map( A1 => n67, A2 => n73, B => n68, Z => n214);
   U266 : OR2DL port map( A1 => n145, A2 => A(1), Z => n215);
   U267 : BUFDL port map( A => n146, Z => n216);
   U268 : NOR2DL port map( A1 => n144, A2 => A(2), Z => n217);
   U269 : NOR2D1 port map( A1 => n144, A2 => A(2), Z => n109);
   U270 : NOR2D1 port map( A1 => n141, A2 => A(5), Z => n218);
   U271 : NAN2DL port map( A1 => n142, A2 => A(4), Z => n220);
   U272 : NAN2D1 port map( A1 => n142, A2 => A(4), Z => n101);
   U273 : INVDL port map( A => n112, Z => n111);
   U274 : OAI21DL port map( A1 => n111, A2 => n217, B => n110, Z => n108);
   U275 : EXNOR2D1 port map( A1 => n221, A2 => n69, Z => DIFF(9));
   U276 : AND2D1 port map( A1 => n122, A2 => n68, Z => n221);
   U277 : NOR2DL port map( A1 => n216, A2 => A(0), Z => n222);
   U278 : EXNOR2D1 port map( A1 => n223, A2 => n30, Z => DIFF(14));
   U279 : AND2D1 port map( A1 => n209, A2 => n29, Z => n223);
   U280 : NOR2D1 port map( A1 => n106, A2 => n109, Z => n104);
   U281 : INVDL port map( A => n2, Z => n48);
   U282 : OAI21DL port map( A1 => n2, A2 => n42, B => n45, Z => n41);
   U283 : OAI21DL port map( A1 => n2, A2 => n33, B => n34, Z => n32);
   U284 : EXNOR2DL port map( A1 => n216, A2 => A(0), Z => DIFF(0));
   U285 : EXOR2DL port map( A1 => n18, A2 => n222, Z => DIFF(1));
   U286 : AOI21DL port map( A1 => n1, A2 => n70, B => n224, Z => n69);
   U287 : NAN2DL port map( A1 => n215, A2 => n114, Z => n18);
   U288 : NAN2D1 port map( A1 => n145, A2 => A(1), Z => n114);
   U289 : EXOR2D2 port map( A1 => n21, A2 => n4, Z => DIFF(15));
   U290 : EXNOR2DL port map( A1 => n211, A2 => n11, Z => DIFF(8));
   U291 : AOI21DL port map( A1 => n1, A2 => n40, B => n41, Z => n39);
   U292 : AOI21DL port map( A1 => n1, A2 => n31, B => n32, Z => n30);

end hier_gcd_16_1p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_1p5 of siso_gen_DW01_inc_2 is

   component NAN2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D2
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D2
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1, n3, n6, n7, n8, n9, n10, n13, n14, n17, n18, n19, n23, n26, n27, 
      n28, n29, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n50, n51, SUM_0_port, SUM_1_port, SUM_2_port, SUM_3_port, 
      SUM_4_port, SUM_5_port, SUM_6_port, SUM_7_port, SUM_8_port, SUM_9_port, 
      SUM_10_port, SUM_11_port, SUM_12_port, SUM_13_port, SUM_14_port, 
      SUM_15_port, n88, n89 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port );
   
   U3 : EXNOR2D1 port map( A1 => n7, A2 => n6, Z => SUM_14_port);
   U8 : EXOR2D1 port map( A1 => n8, A2 => n1, Z => SUM_13_port);
   U29 : EXOR2D1 port map( A1 => n89, A2 => n26, Z => SUM_9_port);
   U36 : NOR2D2 port map( A1 => n29, A2 => n39, Z => n28);
   U44 : EXNOR2D1 port map( A1 => n38, A2 => n37, Z => SUM_6_port);
   U53 : EXOR2D1 port map( A1 => n43, A2 => n44, Z => SUM_4_port);
   U56 : EXOR2D1 port map( A1 => n46, A2 => n47, Z => SUM_3_port);
   U70 : OR2D1 port map( A1 => n8, A2 => n6, Z => n88);
   U71 : NAN2D2 port map( A1 => n40, A2 => n45, Z => n39);
   U72 : NOR2D2 port map( A1 => n41, A2 => n43, Z => n40);
   U73 : AND2D1 port map( A1 => A(6), A2 => A(7), Z => n33);
   U74 : EXOR2D1 port map( A1 => n17, A2 => A(11), Z => SUM_11_port);
   U75 : NOR2D1 port map( A1 => n1, A2 => n8, Z => n7);
   U76 : BUFDL port map( A => n27, Z => n89);
   U77 : INVD2 port map( A => n28, Z => n27);
   U78 : EXOR2DL port map( A1 => n23, A2 => A(10), Z => SUM_10_port);
   U79 : EXOR2DL port map( A1 => n13, A2 => A(12), Z => SUM_12_port);
   U80 : INVDL port map( A => n39, Z => n38);
   U81 : INVDL port map( A => n45, Z => n44);
   U82 : NAN2DL port map( A1 => n38, A2 => n33, Z => n32);
   U83 : INVDL port map( A => A(7), Z => n34);
   U84 : INVDL port map( A => A(5), Z => n41);
   U85 : INVDL port map( A => n18, Z => n19);
   U86 : INVDL port map( A => A(1), Z => n51);
   U87 : EXOR2DL port map( A1 => A(2), A2 => n50, Z => SUM_2_port);
   U88 : NOR2DL port map( A1 => n43, A2 => n44, Z => n42);
   U89 : EXNOR2DL port map( A1 => n41, A2 => n42, Z => SUM_5_port);
   U90 : NAN2DL port map( A1 => n38, A2 => A(6), Z => n35);
   U91 : EXOR2DL port map( A1 => n35, A2 => n34, Z => SUM_7_port);
   U92 : EXNOR2DL port map( A1 => n32, A2 => A(8), Z => SUM_8_port);
   U93 : EXOR2DL port map( A1 => n51, A2 => SUM_0_port, Z => SUM_1_port);
   U94 : NOR2D1 port map( A1 => n46, A2 => n47, Z => n45);
   U95 : NOR2D1 port map( A1 => n1, A2 => n88, Z => n3);
   U96 : NOR2D1 port map( A1 => n18, A2 => n27, Z => n17);
   U97 : NAN2D1 port map( A1 => A(2), A2 => n50, Z => n47);
   U98 : INVD1 port map( A => A(4), Z => n43);
   U99 : INVD1 port map( A => A(3), Z => n46);
   U100 : NAN2D1 port map( A1 => A(8), A2 => n33, Z => n29);
   U101 : NOR2D1 port map( A1 => n14, A2 => n27, Z => n13);
   U102 : NAN2D1 port map( A1 => n9, A2 => n28, Z => n1);
   U103 : NOR2D1 port map( A1 => n18, A2 => n10, Z => n9);
   U104 : INVD1 port map( A => A(6), Z => n37);
   U105 : NOR2D1 port map( A1 => n51, A2 => SUM_0_port, Z => n50);
   U106 : INVD1 port map( A => A(13), Z => n8);
   U107 : INVD1 port map( A => A(0), Z => SUM_0_port);
   U108 : EXOR2D1 port map( A1 => n3, A2 => A(15), Z => SUM_15_port);
   U109 : NOR2D1 port map( A1 => n27, A2 => n26, Z => n23);
   U110 : INVDL port map( A => A(14), Z => n6);
   U111 : NAN2D1 port map( A1 => A(9), A2 => A(10), Z => n18);
   U112 : INVDL port map( A => A(9), Z => n26);
   U113 : NAN2DL port map( A1 => n19, A2 => A(11), Z => n14);
   U114 : NAN2DL port map( A1 => A(11), A2 => A(12), Z => n10);

end hier_gcd_16_1p5;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_gcd_16_1p5 of siso_gen is

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
   
   component INVDL
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22DL
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component AND2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4DL
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22M10DL
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22M10D1
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2DL
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21DL
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M20DL
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4M2D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFRPB1
      port( D, CK, RB : in std_logic;  Q, QB : out std_logic);
   end component;
   
   component DFFRPQL
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSPQ1
      port( D, CK, SB : in std_logic;  Q : out std_logic);
   end component;
   
   component siso_gen_DW01_inc_2
      port( A : in std_logic_vector (15 downto 0);  SUM : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component siso_gen_DW01_sub_3
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   signal req_port, data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, num2_15_port, num2_14_port, num2_13_port, num2_12_port, 
      num2_11_port, num2_10_port, num2_9_port, num2_8_port, num2_7_port, 
      num2_6_port, num2_5_port, num2_4_port, num2_2_port, num2_0_port, odd, 
      sub_res_15_port, sub_res_14_port, sub_res_13_port, sub_res_12_port, 
      sub_res_11_port, sub_res_10_port, sub_res_9_port, sub_res_8_port, 
      sub_res_7_port, sub_res_6_port, sub_res_5_port, sub_res_4_port, 
      sub_res_3_port, sub_res_2_port, sub_res_1_port, sub_res_0_port, N82, N83,
      N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, n1,
      n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70
      , n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n820, n830, n840
      , n850, n860, n870, n880, n890, N810, N800, N790, N780, N770, N760, N750,
      N740, N730, N720, N710, N700, N690, N680, N670, N660, n900, n910, n920, 
      n930, n940, n950, n960, n970, n98, n99, n100, n101, n102, n103, n104, 
      n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, 
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, 
      n_1003 : std_logic;

begin
   req <= req_port;
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
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
                           num2_4_port, B(3) => n104, B(2) => num2_2_port, B(1)
                           => n98, B(0) => num2_0_port, CI => n1, DIFF(15) => 
                           sub_res_15_port, DIFF(14) => sub_res_14_port, 
                           DIFF(13) => sub_res_13_port, DIFF(12) => 
                           sub_res_12_port, DIFF(11) => sub_res_11_port, 
                           DIFF(10) => sub_res_10_port, DIFF(9) => 
                           sub_res_9_port, DIFF(8) => sub_res_8_port, DIFF(7) 
                           => sub_res_7_port, DIFF(6) => sub_res_6_port, 
                           DIFF(5) => sub_res_5_port, DIFF(4) => sub_res_4_port
                           , DIFF(3) => sub_res_3_port, DIFF(2) => 
                           sub_res_2_port, DIFF(1) => sub_res_1_port, DIFF(0) 
                           => sub_res_0_port, CO => n_1003);
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
   req_i_reg : DFFSPQ1 port map( D => n890, CK => clk, SB => n175, Q => 
                           req_port);
   odd_reg : DFFRPQ1 port map( D => n880, CK => clk, RB => n175, Q => odd);
   num2_reg_15_inst : DFFRPQ1 port map( D => n56, CK => clk, RB => n175, Q => 
                           num2_15_port);
   num1_reg_14_inst : DFFRPQ1 port map( D => n73, CK => clk, RB => n175, Q => 
                           data_out_14_port);
   num2_reg_14_inst : DFFRPQ1 port map( D => n57, CK => clk, RB => n175, Q => 
                           num2_14_port);
   num1_reg_12_inst : DFFRPQ1 port map( D => n75, CK => clk, RB => n175, Q => 
                           data_out_12_port);
   num2_reg_12_inst : DFFRPQ1 port map( D => n59, CK => clk, RB => n175, Q => 
                           num2_12_port);
   num1_reg_13_inst : DFFRPQ1 port map( D => n74, CK => clk, RB => n175, Q => 
                           data_out_13_port);
   num2_reg_13_inst : DFFRPQ1 port map( D => n58, CK => clk, RB => n175, Q => 
                           num2_13_port);
   num1_reg_4_inst : DFFRPQ1 port map( D => n830, CK => clk, RB => n175, Q => 
                           data_out_4_port);
   num2_reg_4_inst : DFFRPQ1 port map( D => n67, CK => clk, RB => n175, Q => 
                           num2_4_port);
   num1_reg_10_inst : DFFRPQ1 port map( D => n77, CK => clk, RB => n175, Q => 
                           data_out_10_port);
   num1_reg_8_inst : DFFRPQ1 port map( D => n79, CK => clk, RB => n175, Q => 
                           data_out_8_port);
   num1_reg_6_inst : DFFRPQ1 port map( D => n81, CK => clk, RB => n175, Q => 
                           data_out_6_port);
   num2_reg_8_inst : DFFRPQ1 port map( D => n63, CK => clk, RB => n175, Q => 
                           num2_8_port);
   num1_reg_2_inst : DFFRPQ1 port map( D => n850, CK => clk, RB => n175, Q => 
                           data_out_2_port);
   num2_reg_6_inst : DFFRPQ1 port map( D => n65, CK => clk, RB => n175, Q => 
                           num2_6_port);
   num1_reg_9_inst : DFFRPQ1 port map( D => n78, CK => clk, RB => n175, Q => 
                           data_out_9_port);
   num2_reg_10_inst : DFFRPQ1 port map( D => n61, CK => clk, RB => n175, Q => 
                           num2_10_port);
   num1_reg_11_inst : DFFRPQ1 port map( D => n76, CK => clk, RB => n175, Q => 
                           data_out_11_port);
   num2_reg_2_inst : DFFRPQ1 port map( D => n69, CK => clk, RB => n175, Q => 
                           num2_2_port);
   num1_reg_3_inst : DFFRPQ1 port map( D => n840, CK => clk, RB => n175, Q => 
                           data_out_3_port);
   num1_reg_7_inst : DFFRPQ1 port map( D => n80, CK => clk, RB => n175, Q => 
                           data_out_7_port);
   num1_reg_5_inst : DFFRPQ1 port map( D => n820, CK => clk, RB => n175, Q => 
                           data_out_5_port);
   num1_reg_0_inst : DFFRPQ1 port map( D => n870, CK => clk, RB => n175, Q => 
                           data_out_0_port);
   num2_reg_9_inst : DFFRPQ1 port map( D => n62, CK => clk, RB => n175, Q => 
                           num2_9_port);
   num2_reg_5_inst : DFFRPQ1 port map( D => n66, CK => clk, RB => n175, Q => 
                           num2_5_port);
   num2_reg_11_inst : DFFRPQ1 port map( D => n60, CK => clk, RB => n175, Q => 
                           num2_11_port);
   num2_reg_0_inst : DFFRPQ1 port map( D => n71, CK => clk, RB => n175, Q => 
                           num2_0_port);
   num2_reg_7_inst : DFFRPQ1 port map( D => n64, CK => clk, RB => n175, Q => 
                           num2_7_port);
   ready_reg : DFFRPQ1 port map( D => n176, CK => clk, RB => n175, Q => ready);
   num1_reg_15_inst : DFFRPQL port map( D => n72, CK => clk, RB => n175, Q => 
                           data_out_15_port);
   num2_reg_1_inst : DFFRPB1 port map( D => n70, CK => clk, RB => n175, Q => 
                           n98, QB => n970);
   num2_reg_3_inst : DFFRPQ1 port map( D => n68, CK => clk, RB => n175, Q => 
                           n104);
   num1_reg_1_inst : DFFRPQ1 port map( D => n860, CK => clk, RB => n175, Q => 
                           data_out_1_port);
   U87 : NAN4M2D1 port map( A1 => sub_res_9_port, A2 => sub_res_8_port, A3 => 
                           N700, A4 => N710, Z => n115);
   U88 : INVD2 port map( A => sub_res_15_port, Z => N660);
   U89 : INVD1 port map( A => n173, Z => n119);
   U90 : INVD1 port map( A => sub_res_6_port, Z => N750);
   U91 : OAI21D1 port map( A1 => sub_res_15_port, A2 => n138, B => n110, Z => 
                           n169);
   U92 : OAI22M20DL port map( B1 => n140, B2 => n137, A1 => n910, A2 => 
                           data_out_15_port, Z => n72);
   U93 : OAI21DL port map( A1 => n148, A2 => n137, B => n124, Z => n76);
   U94 : OAI21DL port map( A1 => n160, A2 => n137, B => n129, Z => n820);
   U95 : OAI21DL port map( A1 => n150, A2 => n110, B => n125, Z => n77);
   U96 : OAI21DL port map( A1 => n146, A2 => n111, B => n123, Z => n75);
   U97 : OAI21DL port map( A1 => n142, A2 => n137, B => n121, Z => n73);
   U98 : OAI21DL port map( A1 => n144, A2 => n110, B => n122, Z => n74);
   U99 : OAI21DL port map( A1 => n152, A2 => n111, B => n126, Z => n78);
   U100 : OAI21DL port map( A1 => n154, A2 => n137, B => n127, Z => n79);
   U101 : OAI21DL port map( A1 => n162, A2 => n110, B => n130, Z => n830);
   U102 : OAI21DL port map( A1 => n166, A2 => n137, B => n132, Z => n850);
   U103 : INVD1 port map( A => sub_res_11_port, Z => N700);
   U104 : INVD1 port map( A => sub_res_10_port, Z => N710);
   U105 : INVD1 port map( A => sub_res_12_port, Z => N690);
   U106 : INVD1 port map( A => sub_res_13_port, Z => N680);
   U107 : INVD1 port map( A => n110, Z => n920);
   U108 : NAN2D1 port map( A1 => n120, A2 => n172, Z => n900);
   U109 : NAN2D1 port map( A1 => n120, A2 => n172, Z => n910);
   U110 : NAN2D1 port map( A1 => n120, A2 => n172, Z => n134);
   U111 : NAN2D1 port map( A1 => data_out_7_port, A2 => n134, Z => n101);
   U112 : AO21D1 port map( A1 => data_in(7), A2 => n920, B => n930, Z => n80);
   U113 : NAN2D1 port map( A1 => n100, A2 => n101, Z => n930);
   U114 : OR2D1 port map( A1 => n172, A2 => n148, Z => n940);
   U115 : NAN2D1 port map( A1 => n940, A2 => n147, Z => n60);
   U116 : AOI22D1 port map( A1 => num2_11_port, A2 => n169, B1 => N93, B2 => 
                           n107, Z => n147);
   U117 : INVDL port map( A => sub_res_8_port, Z => N730);
   U118 : OAI21M20D1 port map( A1 => n138, A2 => data_in(14), B => n141, Z => 
                           n57);
   U119 : NAN2D1 port map( A1 => N96, A2 => n107, Z => n950);
   U120 : INVD1 port map( A => num2_15_port, Z => n103);
   U121 : NAN2DL port map( A1 => num2_14_port, A2 => n169, Z => n960);
   U122 : AND2D1 port map( A1 => n950, A2 => n960, Z => n141);
   U123 : INVD1 port map( A => n970, Z => n99);
   U124 : NAN4DL port map( A1 => N760, A2 => N770, A3 => N740, A4 => N750, Z =>
                           n114);
   U125 : NAN2D1 port map( A1 => odd, A2 => req_port, Z => n172);
   U126 : NAN2DL port map( A1 => n106, A2 => sub_res_7_port, Z => n100);
   U127 : OR2D1 port map( A1 => n172, A2 => n140, Z => n102);
   U128 : NAN2D1 port map( A1 => n102, A2 => n139, Z => n56);
   U129 : AOI22M10D1 port map( B1 => N97, B2 => n107, A1 => n103, A2 => n169, Z
                           => n139);
   U130 : AOI22DL port map( A1 => num2_10_port, A2 => n169, B1 => N92, B2 => 
                           n107, Z => n149);
   U131 : INVD1 port map( A => num2_12_port, Z => n105);
   U132 : AOI22M10DL port map( B1 => N94, B2 => n107, A1 => n105, A2 => n169, Z
                           => n145);
   U133 : AOI22M10DL port map( B1 => data_out_6_port, B2 => n900, A1 => N750, 
                           A2 => n106, Z => n128);
   U134 : AOI22M10DL port map( B1 => data_out_1_port, B2 => n910, A1 => N800, 
                           A2 => n106, Z => n133);
   U135 : AOI22DL port map( A1 => n106, A2 => sub_res_2_port, B1 => 
                           data_out_2_port, B2 => n910, Z => n132);
   U136 : AOI22DL port map( A1 => n106, A2 => sub_res_5_port, B1 => 
                           data_out_5_port, B2 => n910, Z => n129);
   U137 : AOI22DL port map( A1 => n106, A2 => sub_res_8_port, B1 => 
                           data_out_8_port, B2 => n900, Z => n127);
   U138 : AOI22DL port map( A1 => n106, A2 => sub_res_11_port, B1 => 
                           data_out_11_port, B2 => n900, Z => n124);
   U139 : AOI22DL port map( A1 => n106, A2 => sub_res_14_port, B1 => 
                           data_out_14_port, B2 => n900, Z => n121);
   U140 : AOI22DL port map( A1 => n106, A2 => sub_res_3_port, B1 => 
                           data_out_3_port, B2 => n134, Z => n131);
   U141 : AOI22DL port map( A1 => n106, A2 => n109, B1 => data_out_9_port, B2 
                           => n910, Z => n126);
   U142 : AOI22DL port map( A1 => n106, A2 => sub_res_12_port, B1 => 
                           data_out_12_port, B2 => n910, Z => n123);
   U143 : AOI22DL port map( A1 => n106, A2 => sub_res_4_port, B1 => 
                           data_out_4_port, B2 => n900, Z => n130);
   U144 : AOI22DL port map( A1 => n106, A2 => sub_res_10_port, B1 => 
                           data_out_10_port, B2 => n900, Z => n125);
   U145 : AOI22DL port map( A1 => n106, A2 => sub_res_13_port, B1 => 
                           data_out_13_port, B2 => n910, Z => n122);
   U146 : NAN4DL port map( A1 => N800, A2 => N810, A3 => N780, A4 => N790, Z =>
                           n113);
   U147 : AOI22DL port map( A1 => n106, A2 => sub_res_0_port, B1 => 
                           data_out_0_port, B2 => n900, Z => n135);
   U148 : AOI22DL port map( A1 => n99, A2 => n169, B1 => N83, B2 => n107, Z => 
                           n167);
   U149 : NAN2D1 port map( A1 => n117, A2 => n118, Z => n173);
   U150 : NOR2D1 port map( A1 => n114, A2 => n113, Z => n118);
   U151 : NOR2D1 port map( A1 => n116, A2 => n115, Z => n117);
   U152 : NAN4D1 port map( A1 => N680, A2 => N690, A3 => N660, A4 => N670, Z =>
                           n116);
   U153 : INVD1 port map( A => sub_res_7_port, Z => N740);
   U154 : INVD1 port map( A => sub_res_5_port, Z => N760);
   U155 : INVD1 port map( A => sub_res_2_port, Z => N790);
   U156 : INVD1 port map( A => sub_res_4_port, Z => N770);
   U157 : INVD1 port map( A => sub_res_3_port, Z => N780);
   U158 : AND2D1 port map( A1 => n136, A2 => N660, Z => n106);
   U159 : INVD1 port map( A => n174, Z => n136);
   U160 : INVD1 port map( A => sub_res_14_port, Z => N670);
   U161 : AND2DL port map( A1 => n136, A2 => sub_res_15_port, Z => n107);
   U162 : INVD1 port map( A => sub_res_0_port, Z => N810);
   U163 : INVD1 port map( A => n172, Z => n138);
   U164 : AOI22DL port map( A1 => n169, A2 => num2_0_port, B1 => N82, B2 => 
                           n107, Z => n170);
   U165 : INVD1 port map( A => odd, Z => n112);
   U166 : INVD1 port map( A => data_in(15), Z => n140);
   U167 : INVD1 port map( A => data_in(3), Z => n164);
   U168 : INVD1 port map( A => data_in(1), Z => n168);
   U169 : INVD1 port map( A => data_in(2), Z => n166);
   U170 : INVD1 port map( A => data_in(4), Z => n162);
   U171 : INVD1 port map( A => data_in(5), Z => n160);
   U172 : INVD1 port map( A => data_in(6), Z => n158);
   U173 : INVD1 port map( A => data_in(7), Z => n156);
   U174 : INVD1 port map( A => data_in(8), Z => n154);
   U175 : INVD1 port map( A => data_in(9), Z => n152);
   U176 : INVD1 port map( A => data_in(10), Z => n150);
   U177 : INVD1 port map( A => data_in(11), Z => n148);
   U178 : INVD1 port map( A => data_in(12), Z => n146);
   U179 : INVD1 port map( A => data_in(13), Z => n144);
   U180 : INVD1 port map( A => data_in(14), Z => n142);
   U181 : INVD1 port map( A => reset, Z => n175);
   U182 : TIELO port map( Z => n1);
   U183 : INVDL port map( A => sub_res_9_port, Z => N720);
   U184 : INVDL port map( A => n119, Z => n108);
   U185 : INVD1 port map( A => sub_res_1_port, Z => N800);
   U186 : AOI22DL port map( A1 => num2_2_port, A2 => n169, B1 => N84, B2 => 
                           n107, Z => n165);
   U187 : AOI22DL port map( A1 => num2_4_port, A2 => n169, B1 => N86, B2 => 
                           n107, Z => n161);
   U188 : AOI22DL port map( A1 => num2_6_port, A2 => n169, B1 => N88, B2 => 
                           n107, Z => n157);
   U189 : AOI22DL port map( A1 => num2_7_port, A2 => n169, B1 => N89, B2 => 
                           n107, Z => n155);
   U190 : AOI22DL port map( A1 => num2_8_port, A2 => n169, B1 => N90, B2 => 
                           n107, Z => n153);
   U191 : OAI21M20DL port map( A1 => data_in(0), A2 => n920, B => n135, Z => 
                           n870);
   U192 : INVD1 port map( A => data_in(0), Z => n171);
   U193 : AOI22DL port map( A1 => n104, A2 => n169, B1 => N85, B2 => n107, Z =>
                           n163);
   U194 : AOI22DL port map( A1 => num2_5_port, A2 => n169, B1 => N87, B2 => 
                           n107, Z => n159);
   U195 : INVDL port map( A => N720, Z => n109);
   U196 : NAN2D1 port map( A1 => req_port, A2 => n112, Z => n110);
   U197 : NAN2D1 port map( A1 => req_port, A2 => n112, Z => n111);
   U198 : NAN2D1 port map( A1 => req_port, A2 => n112, Z => n137);
   U199 : OAI21D1 port map( A1 => n138, A2 => n112, B => n110, Z => n880);
   U200 : OAI21D1 port map( A1 => n138, A2 => n108, B => n111, Z => n890);
   U201 : OAI21D1 port map( A1 => n119, A2 => sub_res_15_port, B => n137, Z => 
                           n120);
   U202 : NAN2D1 port map( A1 => n172, A2 => n111, Z => n174);
   U203 : OAI21D1 port map( A1 => n158, A2 => n111, B => n128, Z => n81);
   U204 : OAI21D1 port map( A1 => n164, A2 => n111, B => n131, Z => n840);
   U205 : OAI21D1 port map( A1 => n168, A2 => n110, B => n133, Z => n860);
   U206 : AOI22D1 port map( A1 => N95, A2 => n107, B1 => num2_13_port, B2 => 
                           n169, Z => n143);
   U207 : OAI21D1 port map( A1 => n172, A2 => n144, B => n143, Z => n58);
   U208 : OAI21D1 port map( A1 => n172, A2 => n146, B => n145, Z => n59);
   U209 : OAI21D1 port map( A1 => n172, A2 => n150, B => n149, Z => n61);
   U210 : AOI22D1 port map( A1 => num2_9_port, A2 => n169, B1 => N91, B2 => 
                           n107, Z => n151);
   U211 : OAI21D1 port map( A1 => n172, A2 => n152, B => n151, Z => n62);
   U212 : OAI21D1 port map( A1 => n172, A2 => n154, B => n153, Z => n63);
   U213 : OAI21D1 port map( A1 => n172, A2 => n156, B => n155, Z => n64);
   U214 : OAI21D1 port map( A1 => n172, A2 => n158, B => n157, Z => n65);
   U215 : OAI21D1 port map( A1 => n172, A2 => n160, B => n159, Z => n66);
   U216 : OAI21D1 port map( A1 => n172, A2 => n162, B => n161, Z => n67);
   U217 : OAI21D1 port map( A1 => n172, A2 => n164, B => n163, Z => n68);
   U218 : OAI21D1 port map( A1 => n172, A2 => n166, B => n165, Z => n69);
   U219 : OAI21D1 port map( A1 => n172, A2 => n168, B => n167, Z => n70);
   U220 : OAI21D1 port map( A1 => n172, A2 => n171, B => n170, Z => n71);
   U221 : NOR2D1 port map( A1 => n174, A2 => n108, Z => n176);

end hier_gcd_16_1p5;
