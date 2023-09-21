
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

architecture hier_dpctrl_gcd_16_10 of cmp_add_dp_word_length16_DW01_add_0 is

   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port : std_logic;

begin
   
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : ADFULD1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port,
                           S => SUM(0));
   U1_15 : EXOR3D1 port map( A1 => A(15), A2 => B(15), A3 => carry_15_port, Z 
                           => SUM(15));

end hier_dpctrl_gcd_16_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_dpctrl_gcd_16_10 of cmp_add_ctrl is

   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSPQ1
      port( D, CK, SB : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   signal cmp_l_sel_port, cmp_r_sel_port, rd_addr_0_port, wr_addr_0_port, 
      current_state_3_port, current_state_2_port, current_state_1_port, 
      current_state_0_port, next_state_2_port, next_state_1_port, 
      next_state_0_port, N21, n15, n16, n17, n18, n19, n20, n210, n22, n23, n24
      , n25, n26, n27, n28, n29, n30, wr_addr_1_port, add_l_sel_port, n2, n3, 
      n6, n7, n8, n9, rd_addr_1_port, n11, n12, n13, n14, n31, n32 : std_logic;

begin
   add_l_sel <= add_l_sel_port;
   cmp_l_sel <= add_l_sel_port;
   cmp_r_sel <= cmp_r_sel_port;
   rd_addr <= ( rd_addr_1_port, rd_addr_0_port );
   wr_addr <= ( wr_addr_1_port, wr_addr_0_port );
   
   U39 : AOI211D1 port map( A1 => next_state_0_port, A2 => n16, B => 
                           cmp_r_sel_port, C => add_l_sel_port, Z => n19);
   U40 : OAI211D1 port map( A1 => n20, A2 => n210, B => n22, C => n23, Z => 
                           next_state_2_port);
   U41 : OAI211D1 port map( A1 => n25, A2 => n13, B => n26, C => n23, Z => 
                           next_state_1_port);
   U42 : NAN3M1D1 port map( A1 => equal, A2 => n11, A3 => greater, Z => n26);
   U43 : EXNOR2D1 port map( A1 => current_state_0_port, A2 => 
                           current_state_1_port, Z => n25);
   U44 : AOI22D1 port map( A1 => n24, A2 => n9, B1 => equal, B2 => n11, Z => 
                           n28);
   U45 : OAI21D1 port map( A1 => n15, A2 => n29, B => n12, Z => n210);
   current_state_reg_3_inst : DFFRPQ1 port map( D => rd_addr_1_port, CK => clk,
                           RB => n32, Q => current_state_3_port);
   current_state_reg_0_inst : DFFRPQ1 port map( D => next_state_0_port, CK => 
                           clk, RB => n32, Q => current_state_0_port);
   current_state_reg_2_inst : DFFRPQ1 port map( D => next_state_2_port, CK => 
                           clk, RB => n32, Q => current_state_2_port);
   current_state_reg_1_inst : DFFRPQ1 port map( D => next_state_1_port, CK => 
                           clk, RB => n32, Q => current_state_1_port);
   req_reg : DFFSPQ1 port map( D => N21, CK => clk, SB => n32, Q => req);
   ready_reg : DFFRPQ1 port map( D => n30, CK => clk, RB => n32, Q => ready);
   U3 : INVD1 port map( A => n17, Z => rd_addr_1_port);
   U4 : NAN2D1 port map( A1 => n3, A2 => n17, Z => add_r_sel);
   U5 : NAN2D1 port map( A1 => n20, A2 => n11, Z => n17);
   U6 : INVD1 port map( A => cmp_r_sel_port, Z => n3);
   U7 : NAN2D1 port map( A1 => n18, A2 => n17, Z => add_r_en);
   U8 : INVD1 port map( A => n18, Z => cmp_r_en);
   U9 : NOR2D1 port map( A1 => greater, A2 => equal, Z => n20);
   U10 : INVD1 port map( A => n210, Z => n11);
   U11 : NOR3D1 port map( A1 => n7, A2 => n8, A3 => n6, Z => cmp_r_sel_port);
   U12 : OAI21M20D1 port map( A1 => n6, A2 => n16, B => n3, Z => wr_addr_0_port
                           );
   U13 : AO211D1 port map( A1 => n8, A2 => N21, B => add_l_sel_port, C => 
                           wr_addr_0_port, Z => wr_sel_en(0));
   U14 : NAN2D1 port map( A1 => n19, A2 => n17, Z => add_l_en);
   U15 : INVD1 port map( A => n19, Z => cmp_l_en);
   U16 : NOR2D1 port map( A1 => cmp_r_sel_port, A2 => rd_addr_0_port, Z => n18)
                           ;
   U17 : NOR3D1 port map( A1 => next_state_0_port, A2 => next_state_1_port, A3 
                           => n8, Z => rd_addr_0_port);
   U18 : INVD1 port map( A => next_state_2_port, Z => n8);
   U19 : NOR2D1 port map( A1 => n31, A2 => n14, Z => n29);
   U20 : INVD1 port map( A => next_state_1_port, Z => n7);
   U21 : INVD1 port map( A => n2, Z => add_l_sel_port);
   U22 : INVD1 port map( A => cmp_l_sel_port, Z => n2);
   U23 : NOR3D1 port map( A1 => n8, A2 => next_state_0_port, A3 => n7, Z => 
                           cmp_l_sel_port);
   U24 : NOR2D1 port map( A1 => n7, A2 => next_state_2_port, Z => n16);
   U25 : INVD1 port map( A => next_state_0_port, Z => n6);
   U26 : NOR2D1 port map( A1 => n6, A2 => next_state_1_port, Z => N21);
   U27 : AND2D1 port map( A1 => N21, A2 => next_state_2_port, Z => n30);
   U28 : NAN3D1 port map( A1 => current_state_0_port, A2 => n24, A3 => 
                           current_state_1_port, Z => n22);
   U29 : INVD1 port map( A => n24, Z => n13);
   U30 : INVD1 port map( A => current_state_1_port, Z => n14);
   U31 : NOR2D1 port map( A1 => n31, A2 => current_state_0_port, Z => n15);
   U32 : INVD1 port map( A => current_state_2_port, Z => n31);
   U33 : NAN3D1 port map( A1 => n27, A2 => n23, A3 => n28, Z => 
                           next_state_0_port);
   U34 : NAN4D1 port map( A1 => current_state_0_port, A2 => 
                           current_state_2_port, A3 => n14, A4 => n12, Z => n27
                           );
   U35 : INVD1 port map( A => current_state_3_port, Z => n12);
   U36 : NAN4D1 port map( A1 => current_state_3_port, A2 => n9, A3 => n14, A4 
                           => n31, Z => n23);
   U37 : INVD1 port map( A => current_state_0_port, Z => n9);
   U38 : NOR2D1 port map( A1 => current_state_2_port, A2 => 
                           current_state_3_port, Z => n24);
   U46 : NOR3D1 port map( A1 => n15, A2 => current_state_3_port, A3 => 
                           current_state_1_port, Z => wr_sel_en(1));
   U47 : INVD1 port map( A => reset, Z => n32);
   U48 : TIELO port map( Z => wr_addr_1_port);
   U49 : TIEHI port map( Z => sub);

end hier_dpctrl_gcd_16_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_dpctrl_gcd_16_10 of cmp_add_dp_word_length16 is

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
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
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
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFERPQ1
      port( D, CEB, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component cmp_add_dp_word_length16_DW01_add_0
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, mem_63_port, mem_62_port, mem_61_port, mem_60_port, 
      mem_59_port, mem_58_port, mem_57_port, mem_56_port, mem_55_port, 
      mem_54_port, mem_53_port, mem_52_port, mem_51_port, mem_50_port, 
      mem_49_port, mem_48_port, mem_47_port, mem_46_port, mem_45_port, 
      mem_44_port, mem_43_port, mem_42_port, mem_41_port, mem_40_port, 
      mem_39_port, mem_38_port, mem_37_port, mem_36_port, mem_35_port, 
      mem_34_port, mem_33_port, mem_32_port, mem_31_port, mem_30_port, 
      mem_29_port, mem_28_port, mem_27_port, mem_26_port, mem_25_port, 
      mem_24_port, mem_23_port, mem_22_port, mem_21_port, mem_20_port, 
      mem_19_port, mem_18_port, mem_17_port, mem_16_port, mem_15_port, 
      mem_14_port, mem_13_port, mem_12_port, mem_11_port, mem_10_port, 
      mem_9_port, mem_8_port, mem_7_port, mem_6_port, mem_5_port, mem_4_port, 
      mem_3_port, mem_2_port, mem_1_port, mem_0_port, add_l_15_port, 
      add_l_14_port, add_l_13_port, add_l_12_port, add_l_11_port, add_l_10_port
      , add_l_9_port, add_l_8_port, add_l_7_port, add_l_6_port, add_l_5_port, 
      add_l_4_port, add_l_3_port, add_l_2_port, add_l_1_port, add_l_0_port, 
      add_r_15_port, add_r_14_port, add_r_13_port, add_r_12_port, add_r_11_port
      , add_r_10_port, add_r_9_port, add_r_8_port, add_r_7_port, add_r_6_port, 
      add_r_5_port, add_r_4_port, add_r_3_port, add_r_2_port, add_r_1_port, 
      add_r_0_port, cmp_l_15_port, cmp_l_14_port, cmp_l_13_port, cmp_l_12_port,
      cmp_l_11_port, cmp_l_10_port, cmp_l_9_port, cmp_l_8_port, cmp_l_7_port, 
      cmp_l_6_port, cmp_l_5_port, cmp_l_4_port, cmp_l_3_port, cmp_l_2_port, 
      cmp_l_1_port, cmp_l_0_port, cmp_r_15_port, cmp_r_14_port, cmp_r_13_port, 
      cmp_r_12_port, cmp_r_11_port, cmp_r_10_port, cmp_r_9_port, cmp_r_8_port, 
      cmp_r_7_port, cmp_r_6_port, cmp_r_5_port, cmp_r_4_port, cmp_r_3_port, 
      cmp_r_2_port, cmp_r_1_port, cmp_r_0_port, add_out_15_port, 
      add_out_14_port, add_out_13_port, add_out_12_port, add_out_11_port, 
      add_out_10_port, add_out_9_port, add_out_8_port, add_out_7_port, 
      add_out_6_port, add_out_5_port, add_out_4_port, add_out_3_port, 
      add_out_2_port, add_out_1_port, add_out_0_port, N101, N102, N103, N104, 
      N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, 
      N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, 
      N130, N131, N132, N133, N135, N136, N137, N138, N139, N140, N141, N142, 
      N143, N144, N145, N146, N147, N148, N149, N150, N152, N153, N154, N155, 
      N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167, 
      add_r_in_15_port, add_r_in_14_port, add_r_in_13_port, add_r_in_12_port, 
      add_r_in_11_port, add_r_in_10_port, add_r_in_9_port, add_r_in_8_port, 
      add_r_in_7_port, add_r_in_6_port, add_r_in_5_port, add_r_in_4_port, 
      add_r_in_3_port, add_r_in_2_port, add_r_in_1_port, add_r_in_0_port, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n1010, n1020
      , n1030, n1040, n1050, n1060, n1070, n1080, n1090, n1100, n1110, n1120, 
      n1130, n1140, n1150, n1160, n117, n1180, n1, n2, n3, n4, n5, n6, n7, n8, 
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n1800, n1900, n20, n21, n22, 
      n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37
      , n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, 
      n52, n53, n54, n55, n56, n57, n58, n1190, n1200, n1210, n1220, n1230, 
      n1240, n1250, n1260, n1270, n1280, n1290, n1300, n1310, n1320, n1330, 
      n134, n1350, n1360, n1370, n1380, n1390, n1400, n1410, n1420, n1430, 
      n1440, n1450, n1460, n1470, n1480, n1490, n1500, n151, n1520, n1530, 
      n1540, n1550, n1560, n1570, n1580, n1590, n1600, n1610, n1620, n1630, 
      n1640, n1650, n1660, n1670, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n1801, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n1901, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n2010, n2020, n_1001 : std_logic;

begin
   data_out <= ( data_out_15_port, data_out_14_port, data_out_13_port, 
      data_out_12_port, data_out_11_port, data_out_10_port, data_out_9_port, 
      data_out_8_port, data_out_7_port, data_out_6_port, data_out_5_port, 
      data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port );
   
   U60 : OAI21D1 port map( A1 => n80, A2 => n187, B => n81, Z => n60);
   U61 : AOI22D1 port map( A1 => data_in(15), A2 => n1630, B1 => 
                           data_out_15_port, B2 => n82, Z => n81);
   U62 : OAI21D1 port map( A1 => n80, A2 => n188, B => n83, Z => n61);
   U63 : AOI22D1 port map( A1 => data_in(14), A2 => n1630, B1 => 
                           data_out_14_port, B2 => n82, Z => n83);
   U64 : OAI21D1 port map( A1 => n80, A2 => n189, B => n84, Z => n62);
   U65 : AOI22D1 port map( A1 => data_in(13), A2 => n1630, B1 => 
                           data_out_13_port, B2 => n82, Z => n84);
   U66 : OAI21D1 port map( A1 => n80, A2 => n1901, B => n85, Z => n63);
   U67 : AOI22D1 port map( A1 => data_in(12), A2 => n1630, B1 => 
                           data_out_12_port, B2 => n82, Z => n85);
   U68 : OAI21D1 port map( A1 => n80, A2 => n191, B => n86, Z => n64);
   U69 : AOI22D1 port map( A1 => data_in(11), A2 => n1630, B1 => 
                           data_out_11_port, B2 => n82, Z => n86);
   U70 : OAI21D1 port map( A1 => n80, A2 => n192, B => n87, Z => n65);
   U71 : AOI22D1 port map( A1 => data_in(10), A2 => n1630, B1 => 
                           data_out_10_port, B2 => n82, Z => n87);
   U72 : OAI21D1 port map( A1 => n80, A2 => n193, B => n88, Z => n66);
   U73 : AOI22D1 port map( A1 => data_in(9), A2 => n1630, B1 => data_out_9_port
                           , B2 => n82, Z => n88);
   U74 : OAI21D1 port map( A1 => n80, A2 => n194, B => n89, Z => n67);
   U75 : AOI22D1 port map( A1 => data_in(8), A2 => n1630, B1 => data_out_8_port
                           , B2 => n82, Z => n89);
   U76 : OAI21D1 port map( A1 => n80, A2 => n195, B => n90, Z => n68);
   U77 : AOI22D1 port map( A1 => data_in(7), A2 => n1630, B1 => data_out_7_port
                           , B2 => n82, Z => n90);
   U78 : OAI21D1 port map( A1 => n80, A2 => n196, B => n91, Z => n69);
   U79 : AOI22D1 port map( A1 => data_in(6), A2 => n1630, B1 => data_out_6_port
                           , B2 => n82, Z => n91);
   U80 : OAI21D1 port map( A1 => n80, A2 => n197, B => n92, Z => n70);
   U81 : AOI22D1 port map( A1 => data_in(5), A2 => n1630, B1 => data_out_5_port
                           , B2 => n82, Z => n92);
   U82 : OAI21D1 port map( A1 => n80, A2 => n198, B => n93, Z => n71);
   U83 : AOI22D1 port map( A1 => data_in(4), A2 => n1630, B1 => data_out_4_port
                           , B2 => n82, Z => n93);
   U84 : OAI21D1 port map( A1 => n80, A2 => n199, B => n94, Z => n72);
   U85 : AOI22D1 port map( A1 => data_in(3), A2 => n1630, B1 => data_out_3_port
                           , B2 => n82, Z => n94);
   U86 : OAI21D1 port map( A1 => n80, A2 => n200, B => n95, Z => n73);
   U87 : AOI22D1 port map( A1 => data_in(2), A2 => n1630, B1 => data_out_2_port
                           , B2 => n82, Z => n95);
   U88 : OAI21D1 port map( A1 => n80, A2 => n2010, B => n96, Z => n74);
   U89 : AOI22D1 port map( A1 => data_in(1), A2 => n1630, B1 => data_out_1_port
                           , B2 => n82, Z => n96);
   U90 : OAI21D1 port map( A1 => n80, A2 => n2020, B => n97, Z => n75);
   U91 : AOI22D1 port map( A1 => data_in(0), A2 => n1630, B1 => data_out_0_port
                           , B2 => n82, Z => n97);
   U92 : NAN3M1D1 port map( A1 => n82, A2 => n80, A3 => n98, Z => n76);
   U93 : EXOR2D1 port map( A1 => sub, A2 => add_r_9_port, Z => add_r_in_9_port)
                           ;
   U94 : EXOR2D1 port map( A1 => sub, A2 => add_r_8_port, Z => add_r_in_8_port)
                           ;
   U95 : EXOR2D1 port map( A1 => sub, A2 => add_r_7_port, Z => add_r_in_7_port)
                           ;
   U96 : EXOR2D1 port map( A1 => sub, A2 => add_r_6_port, Z => add_r_in_6_port)
                           ;
   U97 : EXOR2D1 port map( A1 => sub, A2 => add_r_5_port, Z => add_r_in_5_port)
                           ;
   U98 : EXOR2D1 port map( A1 => sub, A2 => add_r_4_port, Z => add_r_in_4_port)
                           ;
   U99 : EXOR2D1 port map( A1 => sub, A2 => add_r_3_port, Z => add_r_in_3_port)
                           ;
   U100 : EXOR2D1 port map( A1 => sub, A2 => add_r_2_port, Z => add_r_in_2_port
                           );
   U101 : EXOR2D1 port map( A1 => sub, A2 => add_r_1_port, Z => add_r_in_1_port
                           );
   U102 : EXOR2D1 port map( A1 => sub, A2 => add_r_15_port, Z => 
                           add_r_in_15_port);
   U103 : EXOR2D1 port map( A1 => sub, A2 => add_r_14_port, Z => 
                           add_r_in_14_port);
   U104 : EXOR2D1 port map( A1 => sub, A2 => add_r_13_port, Z => 
                           add_r_in_13_port);
   U105 : EXOR2D1 port map( A1 => sub, A2 => add_r_12_port, Z => 
                           add_r_in_12_port);
   U106 : EXOR2D1 port map( A1 => sub, A2 => add_r_11_port, Z => 
                           add_r_in_11_port);
   U107 : EXOR2D1 port map( A1 => sub, A2 => add_r_10_port, Z => 
                           add_r_in_10_port);
   U108 : EXOR2D1 port map( A1 => sub, A2 => add_r_0_port, Z => add_r_in_0_port
                           );
   U109 : EXNOR2D1 port map( A1 => cmp_r_15_port, A2 => cmp_l_15_port, Z => 
                           n1060);
   U110 : EXNOR2D1 port map( A1 => cmp_r_14_port, A2 => cmp_l_14_port, Z => 
                           n1050);
   U111 : EXNOR2D1 port map( A1 => cmp_r_13_port, A2 => cmp_l_13_port, Z => 
                           n1040);
   U112 : EXNOR2D1 port map( A1 => cmp_r_12_port, A2 => cmp_l_12_port, Z => 
                           n1030);
   U113 : EXNOR2D1 port map( A1 => cmp_r_11_port, A2 => cmp_l_11_port, Z => 
                           n1100);
   U114 : EXNOR2D1 port map( A1 => cmp_r_10_port, A2 => cmp_l_10_port, Z => 
                           n1090);
   U115 : EXNOR2D1 port map( A1 => cmp_r_9_port, A2 => cmp_l_9_port, Z => n1080
                           );
   U116 : EXNOR2D1 port map( A1 => cmp_r_8_port, A2 => cmp_l_8_port, Z => n1070
                           );
   U117 : EXNOR2D1 port map( A1 => cmp_r_7_port, A2 => cmp_l_7_port, Z => n1140
                           );
   U118 : EXNOR2D1 port map( A1 => cmp_r_6_port, A2 => cmp_l_6_port, Z => n1130
                           );
   U119 : EXNOR2D1 port map( A1 => cmp_r_5_port, A2 => cmp_l_5_port, Z => n1120
                           );
   U120 : EXNOR2D1 port map( A1 => cmp_r_4_port, A2 => cmp_l_4_port, Z => n1110
                           );
   U121 : EXNOR2D1 port map( A1 => cmp_r_3_port, A2 => cmp_l_3_port, Z => n1180
                           );
   U122 : EXNOR2D1 port map( A1 => cmp_r_2_port, A2 => cmp_l_2_port, Z => n117)
                           ;
   U123 : EXNOR2D1 port map( A1 => cmp_r_1_port, A2 => cmp_l_1_port, Z => n1160
                           );
   U124 : EXNOR2D1 port map( A1 => cmp_r_0_port, A2 => cmp_l_0_port, Z => n1150
                           );
   U125 : OAI22D1 port map( A1 => n39, A2 => n185, B1 => n187, B2 => n1640, Z 
                           => N167);
   U126 : OAI22D1 port map( A1 => n39, A2 => n184, B1 => n188, B2 => n1640, Z 
                           => N166);
   U127 : OAI22D1 port map( A1 => n39, A2 => n183, B1 => n189, B2 => n1640, Z 
                           => N165);
   U128 : OAI22D1 port map( A1 => n39, A2 => n182, B1 => n1901, B2 => n1640, Z 
                           => N164);
   U129 : OAI22D1 port map( A1 => n39, A2 => n181, B1 => n191, B2 => n1640, Z 
                           => N163);
   U130 : OAI22D1 port map( A1 => n39, A2 => n1801, B1 => n192, B2 => n1640, Z 
                           => N162);
   U131 : OAI22D1 port map( A1 => n39, A2 => n179, B1 => n193, B2 => n1640, Z 
                           => N161);
   U132 : OAI22D1 port map( A1 => n39, A2 => n178, B1 => n194, B2 => n1640, Z 
                           => N160);
   U133 : OAI22D1 port map( A1 => n39, A2 => n177, B1 => n195, B2 => n1640, Z 
                           => N159);
   U134 : OAI22D1 port map( A1 => n39, A2 => n176, B1 => n196, B2 => n1640, Z 
                           => N158);
   U135 : OAI22D1 port map( A1 => n39, A2 => n175, B1 => n197, B2 => n1640, Z 
                           => N157);
   U136 : OAI22D1 port map( A1 => n39, A2 => n174, B1 => n198, B2 => n1640, Z 
                           => N156);
   U137 : OAI22D1 port map( A1 => n39, A2 => n173, B1 => n199, B2 => n1640, Z 
                           => N155);
   U138 : OAI22D1 port map( A1 => n39, A2 => n172, B1 => n200, B2 => n1640, Z 
                           => N154);
   U139 : OAI22D1 port map( A1 => n39, A2 => n171, B1 => n2010, B2 => n1640, Z 
                           => N153);
   U140 : OAI22D1 port map( A1 => n39, A2 => n170, B1 => n2020, B2 => n1640, Z 
                           => N152);
   U141 : OAI22D1 port map( A1 => n50, A2 => n185, B1 => n187, B2 => n53, Z => 
                           N150);
   U142 : OAI22D1 port map( A1 => n50, A2 => n184, B1 => n188, B2 => n53, Z => 
                           N149);
   U143 : OAI22D1 port map( A1 => n50, A2 => n183, B1 => n189, B2 => n53, Z => 
                           N148);
   U144 : OAI22D1 port map( A1 => n51, A2 => n182, B1 => n1901, B2 => n53, Z =>
                           N147);
   U145 : OAI22D1 port map( A1 => n51, A2 => n181, B1 => n191, B2 => n53, Z => 
                           N146);
   U146 : OAI22D1 port map( A1 => n51, A2 => n1801, B1 => n192, B2 => n53, Z =>
                           N145);
   U147 : OAI22D1 port map( A1 => n51, A2 => n179, B1 => n193, B2 => n53, Z => 
                           N144);
   U148 : OAI22D1 port map( A1 => n51, A2 => n178, B1 => n194, B2 => n53, Z => 
                           N143);
   U149 : OAI22D1 port map( A1 => n51, A2 => n177, B1 => n195, B2 => n53, Z => 
                           N142);
   U150 : OAI22D1 port map( A1 => n51, A2 => n176, B1 => n196, B2 => n53, Z => 
                           N141);
   U151 : OAI22D1 port map( A1 => n51, A2 => n175, B1 => n197, B2 => n53, Z => 
                           N140);
   U152 : OAI22D1 port map( A1 => n51, A2 => n174, B1 => n198, B2 => n53, Z => 
                           N139);
   U153 : OAI22D1 port map( A1 => n51, A2 => n173, B1 => n199, B2 => n53, Z => 
                           N138);
   U154 : OAI22D1 port map( A1 => n51, A2 => n172, B1 => n200, B2 => n52, Z => 
                           N137);
   U155 : OAI22D1 port map( A1 => n51, A2 => n171, B1 => n2010, B2 => n52, Z =>
                           N136);
   U156 : OAI22D1 port map( A1 => n51, A2 => n170, B1 => n2020, B2 => n53, Z =>
                           N135);
   U157 : OAI22D1 port map( A1 => add_r_sel, A2 => n185, B1 => n187, B2 => 
                           n1650, Z => N133);
   U158 : OAI22D1 port map( A1 => add_r_sel, A2 => n184, B1 => n188, B2 => 
                           n1650, Z => N132);
   U159 : OAI22D1 port map( A1 => add_r_sel, A2 => n183, B1 => n189, B2 => 
                           n1650, Z => N131);
   U160 : OAI22D1 port map( A1 => add_r_sel, A2 => n182, B1 => n1901, B2 => 
                           n1650, Z => N130);
   U161 : OAI22D1 port map( A1 => add_r_sel, A2 => n181, B1 => n191, B2 => 
                           n1650, Z => N129);
   U162 : OAI22D1 port map( A1 => add_r_sel, A2 => n1801, B1 => n192, B2 => 
                           n1650, Z => N128);
   U163 : OAI22D1 port map( A1 => add_r_sel, A2 => n179, B1 => n193, B2 => 
                           n1650, Z => N127);
   U164 : OAI22D1 port map( A1 => add_r_sel, A2 => n178, B1 => n194, B2 => 
                           n1650, Z => N126);
   U165 : OAI22D1 port map( A1 => add_r_sel, A2 => n177, B1 => n195, B2 => 
                           n1650, Z => N125);
   U166 : OAI22D1 port map( A1 => add_r_sel, A2 => n176, B1 => n196, B2 => 
                           n1650, Z => N124);
   U167 : OAI22D1 port map( A1 => add_r_sel, A2 => n175, B1 => n197, B2 => 
                           n1650, Z => N123);
   U168 : OAI22D1 port map( A1 => add_r_sel, A2 => n174, B1 => n198, B2 => 
                           n1650, Z => N122);
   U169 : OAI22D1 port map( A1 => add_r_sel, A2 => n173, B1 => n199, B2 => 
                           n1650, Z => N121);
   U170 : OAI22D1 port map( A1 => add_r_sel, A2 => n172, B1 => n200, B2 => 
                           n1650, Z => N120);
   U171 : OAI22D1 port map( A1 => add_r_sel, A2 => n171, B1 => n2010, B2 => 
                           n1650, Z => N119);
   U172 : OAI22D1 port map( A1 => add_r_sel, A2 => n170, B1 => n2020, B2 => 
                           n1650, Z => N118);
   U173 : OAI22D1 port map( A1 => n187, A2 => n55, B1 => n54, B2 => n185, Z => 
                           N116);
   U174 : OAI22D1 port map( A1 => n188, A2 => n55, B1 => n54, B2 => n184, Z => 
                           N115);
   U175 : OAI22D1 port map( A1 => n189, A2 => n55, B1 => n54, B2 => n183, Z => 
                           N114);
   U176 : OAI22D1 port map( A1 => n1901, A2 => n55, B1 => n54, B2 => n182, Z =>
                           N113);
   U177 : OAI22D1 port map( A1 => n191, A2 => n55, B1 => n54, B2 => n181, Z => 
                           N112);
   U178 : OAI22D1 port map( A1 => n192, A2 => n55, B1 => n54, B2 => n1801, Z =>
                           N111);
   U179 : OAI22D1 port map( A1 => n193, A2 => n55, B1 => n54, B2 => n179, Z => 
                           N110);
   U180 : OAI22D1 port map( A1 => n194, A2 => n55, B1 => n54, B2 => n178, Z => 
                           N109);
   U181 : OAI22D1 port map( A1 => n195, A2 => n55, B1 => n54, B2 => n177, Z => 
                           N108);
   U182 : OAI22D1 port map( A1 => n196, A2 => n55, B1 => n54, B2 => n176, Z => 
                           N107);
   U183 : OAI22D1 port map( A1 => n197, A2 => n55, B1 => n54, B2 => n175, Z => 
                           N106);
   U184 : OAI22D1 port map( A1 => n198, A2 => n55, B1 => n54, B2 => n174, Z => 
                           N105);
   U185 : OAI22D1 port map( A1 => n199, A2 => n55, B1 => add_l_sel, B2 => n173,
                           Z => N104);
   U186 : OAI22D1 port map( A1 => n200, A2 => n55, B1 => add_l_sel, B2 => n172,
                           Z => N103);
   U187 : OAI22D1 port map( A1 => n2010, A2 => n55, B1 => add_l_sel, B2 => n171
                           , Z => N102);
   U188 : OAI22D1 port map( A1 => n2020, A2 => n55, B1 => n54, B2 => n170, Z =>
                           N101);
   add_1_root_add_129_2 : cmp_add_dp_word_length16_DW01_add_0 port map( A(15) 
                           => add_l_15_port, A(14) => add_l_14_port, A(13) => 
                           add_l_13_port, A(12) => add_l_12_port, A(11) => 
                           add_l_11_port, A(10) => add_l_10_port, A(9) => 
                           add_l_9_port, A(8) => add_l_8_port, A(7) => 
                           add_l_7_port, A(6) => add_l_6_port, A(5) => 
                           add_l_5_port, A(4) => add_l_4_port, A(3) => 
                           add_l_3_port, A(2) => add_l_2_port, A(1) => 
                           add_l_1_port, A(0) => add_l_0_port, B(15) => 
                           add_r_in_15_port, B(14) => add_r_in_14_port, B(13) 
                           => add_r_in_13_port, B(12) => add_r_in_12_port, 
                           B(11) => add_r_in_11_port, B(10) => add_r_in_10_port
                           , B(9) => add_r_in_9_port, B(8) => add_r_in_8_port, 
                           B(7) => add_r_in_7_port, B(6) => add_r_in_6_port, 
                           B(5) => add_r_in_5_port, B(4) => add_r_in_4_port, 
                           B(3) => add_r_in_3_port, B(2) => add_r_in_2_port, 
                           B(1) => add_r_in_1_port, B(0) => add_r_in_0_port, CI
                           => sub, SUM(15) => add_out_15_port, SUM(14) => 
                           add_out_14_port, SUM(13) => add_out_13_port, SUM(12)
                           => add_out_12_port, SUM(11) => add_out_11_port, 
                           SUM(10) => add_out_10_port, SUM(9) => add_out_9_port
                           , SUM(8) => add_out_8_port, SUM(7) => add_out_7_port
                           , SUM(6) => add_out_6_port, SUM(5) => add_out_5_port
                           , SUM(4) => add_out_4_port, SUM(3) => add_out_3_port
                           , SUM(2) => add_out_2_port, SUM(1) => add_out_1_port
                           , SUM(0) => add_out_0_port, CO => n_1001);
   add_l_reg_15_inst : DFERPQ1 port map( D => N116, CEB => n169, CK => clk, RB 
                           => n42, Q => add_l_15_port);
   add_l_reg_14_inst : DFERPQ1 port map( D => N115, CEB => n169, CK => clk, RB 
                           => n43, Q => add_l_14_port);
   add_r_reg_15_inst : DFERPQ1 port map( D => N133, CEB => n1670, CK => clk, RB
                           => n42, Q => add_r_15_port);
   add_l_reg_13_inst : DFERPQ1 port map( D => N114, CEB => n169, CK => clk, RB 
                           => n43, Q => add_l_13_port);
   add_r_reg_14_inst : DFERPQ1 port map( D => N132, CEB => n1670, CK => clk, RB
                           => n43, Q => add_r_14_port);
   add_l_reg_12_inst : DFERPQ1 port map( D => N113, CEB => n169, CK => clk, RB 
                           => n44, Q => add_l_12_port);
   add_r_reg_13_inst : DFERPQ1 port map( D => N131, CEB => n1670, CK => clk, RB
                           => n43, Q => add_r_13_port);
   add_l_reg_11_inst : DFERPQ1 port map( D => N112, CEB => n169, CK => clk, RB 
                           => n44, Q => add_l_11_port);
   add_r_reg_12_inst : DFERPQ1 port map( D => N130, CEB => n1670, CK => clk, RB
                           => n44, Q => add_r_12_port);
   add_l_reg_10_inst : DFERPQ1 port map( D => N111, CEB => n169, CK => clk, RB 
                           => n45, Q => add_l_10_port);
   add_r_reg_11_inst : DFERPQ1 port map( D => N129, CEB => n1670, CK => clk, RB
                           => n44, Q => add_r_11_port);
   add_l_reg_9_inst : DFERPQ1 port map( D => N110, CEB => n169, CK => clk, RB 
                           => n45, Q => add_l_9_port);
   add_r_reg_10_inst : DFERPQ1 port map( D => N128, CEB => n1670, CK => clk, RB
                           => n45, Q => add_r_10_port);
   add_l_reg_8_inst : DFERPQ1 port map( D => N109, CEB => n169, CK => clk, RB 
                           => n46, Q => add_l_8_port);
   add_r_reg_9_inst : DFERPQ1 port map( D => N127, CEB => n1670, CK => clk, RB 
                           => n45, Q => add_r_9_port);
   add_l_reg_7_inst : DFERPQ1 port map( D => N108, CEB => n169, CK => clk, RB 
                           => n46, Q => add_l_7_port);
   add_r_reg_8_inst : DFERPQ1 port map( D => N126, CEB => n1670, CK => clk, RB 
                           => n46, Q => add_r_8_port);
   add_l_reg_6_inst : DFERPQ1 port map( D => N107, CEB => n169, CK => clk, RB 
                           => n47, Q => add_l_6_port);
   add_r_reg_7_inst : DFERPQ1 port map( D => N125, CEB => n1670, CK => clk, RB 
                           => n46, Q => add_r_7_port);
   add_l_reg_5_inst : DFERPQ1 port map( D => N106, CEB => n169, CK => clk, RB 
                           => n47, Q => add_l_5_port);
   add_r_reg_6_inst : DFERPQ1 port map( D => N124, CEB => n1670, CK => clk, RB 
                           => n46, Q => add_r_6_port);
   add_l_reg_4_inst : DFERPQ1 port map( D => N105, CEB => n169, CK => clk, RB 
                           => n47, Q => add_l_4_port);
   add_r_reg_5_inst : DFERPQ1 port map( D => N123, CEB => n1670, CK => clk, RB 
                           => n47, Q => add_r_5_port);
   add_l_reg_3_inst : DFERPQ1 port map( D => N104, CEB => n169, CK => clk, RB 
                           => n48, Q => add_l_3_port);
   add_r_reg_4_inst : DFERPQ1 port map( D => N122, CEB => n1670, CK => clk, RB 
                           => n47, Q => add_r_4_port);
   add_l_reg_2_inst : DFERPQ1 port map( D => N103, CEB => n169, CK => clk, RB 
                           => n48, Q => add_l_2_port);
   add_r_reg_3_inst : DFERPQ1 port map( D => N121, CEB => n1670, CK => clk, RB 
                           => n48, Q => add_r_3_port);
   add_l_reg_1_inst : DFERPQ1 port map( D => N102, CEB => n169, CK => clk, RB 
                           => n49, Q => add_l_1_port);
   add_r_reg_2_inst : DFERPQ1 port map( D => N120, CEB => n1670, CK => clk, RB 
                           => n48, Q => add_r_2_port);
   add_l_reg_0_inst : DFERPQ1 port map( D => N101, CEB => n169, CK => clk, RB 
                           => n49, Q => add_l_0_port);
   add_r_reg_1_inst : DFERPQ1 port map( D => N119, CEB => n1670, CK => clk, RB 
                           => n49, Q => add_r_1_port);
   add_r_reg_0_inst : DFERPQ1 port map( D => N118, CEB => n1670, CK => clk, RB 
                           => n49, Q => add_r_0_port);
   mem_reg_3_0_inst : DFERPQ1 port map( D => n75, CEB => n79, CK => clk, RB => 
                           n49, Q => mem_0_port);
   mem_reg_3_1_inst : DFERPQ1 port map( D => n74, CEB => n79, CK => clk, RB => 
                           n48, Q => mem_1_port);
   mem_reg_3_2_inst : DFERPQ1 port map( D => n73, CEB => n79, CK => clk, RB => 
                           n48, Q => mem_2_port);
   mem_reg_3_3_inst : DFERPQ1 port map( D => n72, CEB => n79, CK => clk, RB => 
                           n48, Q => mem_3_port);
   mem_reg_3_4_inst : DFERPQ1 port map( D => n71, CEB => n79, CK => clk, RB => 
                           n47, Q => mem_4_port);
   mem_reg_3_5_inst : DFERPQ1 port map( D => n70, CEB => n79, CK => clk, RB => 
                           n47, Q => mem_5_port);
   mem_reg_3_6_inst : DFERPQ1 port map( D => n69, CEB => n79, CK => clk, RB => 
                           n46, Q => mem_6_port);
   mem_reg_3_7_inst : DFERPQ1 port map( D => n68, CEB => n79, CK => clk, RB => 
                           n46, Q => mem_7_port);
   mem_reg_3_8_inst : DFERPQ1 port map( D => n67, CEB => n79, CK => clk, RB => 
                           n45, Q => mem_8_port);
   mem_reg_3_9_inst : DFERPQ1 port map( D => n66, CEB => n79, CK => clk, RB => 
                           n45, Q => mem_9_port);
   mem_reg_3_10_inst : DFERPQ1 port map( D => n65, CEB => n79, CK => clk, RB =>
                           n44, Q => mem_10_port);
   mem_reg_3_11_inst : DFERPQ1 port map( D => n64, CEB => n79, CK => clk, RB =>
                           n44, Q => mem_11_port);
   mem_reg_3_12_inst : DFERPQ1 port map( D => n63, CEB => n79, CK => clk, RB =>
                           n43, Q => mem_12_port);
   mem_reg_3_13_inst : DFERPQ1 port map( D => n62, CEB => n79, CK => clk, RB =>
                           n43, Q => mem_13_port);
   mem_reg_3_14_inst : DFERPQ1 port map( D => n61, CEB => n79, CK => clk, RB =>
                           n42, Q => mem_14_port);
   mem_reg_3_15_inst : DFERPQ1 port map( D => n60, CEB => n79, CK => clk, RB =>
                           n42, Q => mem_15_port);
   mem_reg_1_0_inst : DFERPQ1 port map( D => n75, CEB => n77, CK => clk, RB => 
                           n49, Q => mem_32_port);
   mem_reg_1_1_inst : DFERPQ1 port map( D => n74, CEB => n77, CK => clk, RB => 
                           n49, Q => mem_33_port);
   mem_reg_1_2_inst : DFERPQ1 port map( D => n73, CEB => n77, CK => clk, RB => 
                           n48, Q => mem_34_port);
   mem_reg_1_3_inst : DFERPQ1 port map( D => n72, CEB => n77, CK => clk, RB => 
                           n48, Q => mem_35_port);
   mem_reg_1_4_inst : DFERPQ1 port map( D => n71, CEB => n77, CK => clk, RB => 
                           n47, Q => mem_36_port);
   mem_reg_1_5_inst : DFERPQ1 port map( D => n70, CEB => n77, CK => clk, RB => 
                           n47, Q => mem_37_port);
   mem_reg_1_6_inst : DFERPQ1 port map( D => n69, CEB => n77, CK => clk, RB => 
                           n46, Q => mem_38_port);
   mem_reg_1_7_inst : DFERPQ1 port map( D => n68, CEB => n77, CK => clk, RB => 
                           n46, Q => mem_39_port);
   mem_reg_1_8_inst : DFERPQ1 port map( D => n67, CEB => n77, CK => clk, RB => 
                           n45, Q => mem_40_port);
   mem_reg_1_9_inst : DFERPQ1 port map( D => n66, CEB => n77, CK => clk, RB => 
                           n45, Q => mem_41_port);
   mem_reg_1_10_inst : DFERPQ1 port map( D => n65, CEB => n77, CK => clk, RB =>
                           n44, Q => mem_42_port);
   mem_reg_1_11_inst : DFERPQ1 port map( D => n64, CEB => n77, CK => clk, RB =>
                           n44, Q => mem_43_port);
   mem_reg_1_12_inst : DFERPQ1 port map( D => n63, CEB => n77, CK => clk, RB =>
                           n44, Q => mem_44_port);
   mem_reg_1_13_inst : DFERPQ1 port map( D => n62, CEB => n77, CK => clk, RB =>
                           n43, Q => mem_45_port);
   mem_reg_1_14_inst : DFERPQ1 port map( D => n61, CEB => n77, CK => clk, RB =>
                           n43, Q => mem_46_port);
   mem_reg_1_15_inst : DFERPQ1 port map( D => n60, CEB => n77, CK => clk, RB =>
                           n42, Q => mem_47_port);
   mem_reg_2_0_inst : DFERPQ1 port map( D => n75, CEB => n78, CK => clk, RB => 
                           n49, Q => mem_16_port);
   mem_reg_2_1_inst : DFERPQ1 port map( D => n74, CEB => n78, CK => clk, RB => 
                           n49, Q => mem_17_port);
   mem_reg_2_2_inst : DFERPQ1 port map( D => n73, CEB => n78, CK => clk, RB => 
                           n48, Q => mem_18_port);
   mem_reg_2_3_inst : DFERPQ1 port map( D => n72, CEB => n78, CK => clk, RB => 
                           n48, Q => mem_19_port);
   mem_reg_2_4_inst : DFERPQ1 port map( D => n71, CEB => n78, CK => clk, RB => 
                           n47, Q => mem_20_port);
   mem_reg_2_5_inst : DFERPQ1 port map( D => n70, CEB => n78, CK => clk, RB => 
                           n47, Q => mem_21_port);
   mem_reg_2_6_inst : DFERPQ1 port map( D => n69, CEB => n78, CK => clk, RB => 
                           n46, Q => mem_22_port);
   mem_reg_2_7_inst : DFERPQ1 port map( D => n68, CEB => n78, CK => clk, RB => 
                           n46, Q => mem_23_port);
   mem_reg_2_8_inst : DFERPQ1 port map( D => n67, CEB => n78, CK => clk, RB => 
                           n45, Q => mem_24_port);
   mem_reg_2_9_inst : DFERPQ1 port map( D => n66, CEB => n78, CK => clk, RB => 
                           n45, Q => mem_25_port);
   mem_reg_2_10_inst : DFERPQ1 port map( D => n65, CEB => n78, CK => clk, RB =>
                           n44, Q => mem_26_port);
   mem_reg_2_11_inst : DFERPQ1 port map( D => n64, CEB => n78, CK => clk, RB =>
                           n44, Q => mem_27_port);
   mem_reg_2_12_inst : DFERPQ1 port map( D => n63, CEB => n78, CK => clk, RB =>
                           n43, Q => mem_28_port);
   mem_reg_2_13_inst : DFERPQ1 port map( D => n62, CEB => n78, CK => clk, RB =>
                           n43, Q => mem_29_port);
   mem_reg_2_14_inst : DFERPQ1 port map( D => n61, CEB => n78, CK => clk, RB =>
                           n43, Q => mem_30_port);
   mem_reg_2_15_inst : DFERPQ1 port map( D => n60, CEB => n78, CK => clk, RB =>
                           n42, Q => mem_31_port);
   mem_reg_0_0_inst : DFERPQ1 port map( D => n75, CEB => n59, CK => clk, RB => 
                           n49, Q => mem_48_port);
   mem_reg_0_1_inst : DFERPQ1 port map( D => n74, CEB => n59, CK => clk, RB => 
                           n49, Q => mem_49_port);
   mem_reg_0_2_inst : DFERPQ1 port map( D => n73, CEB => n59, CK => clk, RB => 
                           n48, Q => mem_50_port);
   mem_reg_0_3_inst : DFERPQ1 port map( D => n72, CEB => n59, CK => clk, RB => 
                           n48, Q => mem_51_port);
   mem_reg_0_4_inst : DFERPQ1 port map( D => n71, CEB => n59, CK => clk, RB => 
                           n47, Q => mem_52_port);
   mem_reg_0_5_inst : DFERPQ1 port map( D => n70, CEB => n59, CK => clk, RB => 
                           n47, Q => mem_53_port);
   mem_reg_0_6_inst : DFERPQ1 port map( D => n69, CEB => n59, CK => clk, RB => 
                           n46, Q => mem_54_port);
   mem_reg_0_7_inst : DFERPQ1 port map( D => n68, CEB => n59, CK => clk, RB => 
                           n46, Q => mem_55_port);
   mem_reg_0_8_inst : DFERPQ1 port map( D => n67, CEB => n59, CK => clk, RB => 
                           n45, Q => mem_56_port);
   mem_reg_0_9_inst : DFERPQ1 port map( D => n66, CEB => n59, CK => clk, RB => 
                           n45, Q => mem_57_port);
   mem_reg_0_10_inst : DFERPQ1 port map( D => n65, CEB => n59, CK => clk, RB =>
                           n45, Q => mem_58_port);
   mem_reg_0_11_inst : DFERPQ1 port map( D => n64, CEB => n59, CK => clk, RB =>
                           n44, Q => mem_59_port);
   mem_reg_0_12_inst : DFERPQ1 port map( D => n63, CEB => n59, CK => clk, RB =>
                           n44, Q => mem_60_port);
   mem_reg_0_13_inst : DFERPQ1 port map( D => n62, CEB => n59, CK => clk, RB =>
                           n43, Q => mem_61_port);
   mem_reg_0_14_inst : DFERPQ1 port map( D => n61, CEB => n59, CK => clk, RB =>
                           n43, Q => mem_62_port);
   mem_reg_0_15_inst : DFERPQ1 port map( D => n60, CEB => n59, CK => clk, RB =>
                           n42, Q => mem_63_port);
   cmp_r_reg_4_inst : DFERPQ1 port map( D => N156, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_4_port);
   cmp_r_reg_6_inst : DFERPQ1 port map( D => N158, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_6_port);
   cmp_l_reg_8_inst : DFERPQ1 port map( D => N143, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_8_port);
   cmp_l_reg_4_inst : DFERPQ1 port map( D => N139, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_4_port);
   cmp_r_reg_8_inst : DFERPQ1 port map( D => N160, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_8_port);
   cmp_l_reg_14_inst : DFERPQ1 port map( D => N149, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_14_port);
   cmp_l_reg_5_inst : DFERPQ1 port map( D => N140, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_5_port);
   cmp_l_reg_6_inst : DFERPQ1 port map( D => N141, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_6_port);
   cmp_r_reg_1_inst : DFERPQ1 port map( D => N153, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_1_port);
   cmp_r_reg_14_inst : DFERPQ1 port map( D => N166, CEB => n1660, CK => clk, RB
                           => n41, Q => cmp_r_14_port);
   cmp_r_reg_0_inst : DFERPQ1 port map( D => N152, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_0_port);
   cmp_r_reg_12_inst : DFERPQ1 port map( D => N164, CEB => n1660, CK => clk, RB
                           => n40, Q => cmp_r_12_port);
   cmp_l_reg_10_inst : DFERPQ1 port map( D => N145, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_10_port);
   cmp_l_reg_1_inst : DFERPQ1 port map( D => N136, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_1_port);
   cmp_l_reg_0_inst : DFERPQ1 port map( D => N135, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_0_port);
   cmp_r_reg_10_inst : DFERPQ1 port map( D => N162, CEB => n1660, CK => clk, RB
                           => n40, Q => cmp_r_10_port);
   cmp_r_reg_5_inst : DFERPQ1 port map( D => N157, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_5_port);
   cmp_r_reg_2_inst : DFERPQ1 port map( D => N154, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_2_port);
   cmp_l_reg_12_inst : DFERPQ1 port map( D => N147, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_12_port);
   cmp_l_reg_9_inst : DFERPQ1 port map( D => N144, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_9_port);
   cmp_r_reg_7_inst : DFERPQ1 port map( D => N159, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_7_port);
   cmp_l_reg_2_inst : DFERPQ1 port map( D => N137, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_2_port);
   cmp_l_reg_15_inst : DFERPQ1 port map( D => N150, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_15_port);
   cmp_r_reg_9_inst : DFERPQ1 port map( D => N161, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_9_port);
   cmp_r_reg_11_inst : DFERPQ1 port map( D => N163, CEB => n1660, CK => clk, RB
                           => n40, Q => cmp_r_11_port);
   cmp_l_reg_7_inst : DFERPQ1 port map( D => N142, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_7_port);
   cmp_r_reg_13_inst : DFERPQ1 port map( D => N165, CEB => n1660, CK => clk, RB
                           => n41, Q => cmp_r_13_port);
   cmp_r_reg_15_inst : DFERPQ1 port map( D => N167, CEB => n1660, CK => clk, RB
                           => n41, Q => cmp_r_15_port);
   cmp_l_reg_11_inst : DFERPQ1 port map( D => N146, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_11_port);
   cmp_r_reg_3_inst : DFERPQ1 port map( D => N155, CEB => n1660, CK => clk, RB 
                           => n40, Q => cmp_r_3_port);
   cmp_l_reg_13_inst : DFERPQ1 port map( D => N148, CEB => n168, CK => clk, RB 
                           => n42, Q => cmp_l_13_port);
   cmp_l_reg_3_inst : DFERPQ1 port map( D => N138, CEB => n168, CK => clk, RB 
                           => n41, Q => cmp_l_3_port);
   U2 : INVD1 port map( A => rd_addr(1), Z => n37);
   U3 : INVD1 port map( A => add_r_sel, Z => n1650);
   U4 : INVD1 port map( A => n50, Z => n53);
   U5 : INVD1 port map( A => n39, Z => n1640);
   U6 : NOR2D1 port map( A1 => n37, A2 => n38, Z => n31);
   U7 : NOR2D1 port map( A1 => n38, A2 => rd_addr(1), Z => n33);
   U8 : INVD1 port map( A => n52, Z => n50);
   U9 : INVD1 port map( A => n52, Z => n51);
   U10 : INVD1 port map( A => n55, Z => n54);
   U11 : INVD1 port map( A => wr_addr(0), Z => n1620);
   U12 : BUFD1 port map( A => cmp_r_sel, Z => n39);
   U13 : INVD1 port map( A => add_r_en, Z => n1670);
   U14 : INVD1 port map( A => cmp_r_en, Z => n1660);
   U15 : INVD1 port map( A => rd_addr(0), Z => n38);
   U16 : NOR2D1 port map( A1 => n37, A2 => rd_addr(0), Z => n32);
   U17 : NOR2D1 port map( A1 => rd_addr(0), A2 => rd_addr(1), Z => n34);
   U18 : INVD1 port map( A => n98, Z => n1630);
   U19 : INVD1 port map( A => cmp_l_sel, Z => n52);
   U20 : INVD1 port map( A => add_l_sel, Z => n55);
   U21 : INVD1 port map( A => add_l_en, Z => n169);
   U22 : INVD1 port map( A => cmp_l_en, Z => n168);
   U23 : INVD1 port map( A => reset, Z => n41);
   U24 : INVD1 port map( A => reset, Z => n42);
   U25 : INVD1 port map( A => reset, Z => n43);
   U26 : INVD1 port map( A => reset, Z => n44);
   U27 : INVD1 port map( A => reset, Z => n45);
   U28 : INVD1 port map( A => reset, Z => n46);
   U29 : INVD1 port map( A => reset, Z => n47);
   U30 : INVD1 port map( A => reset, Z => n48);
   U31 : INVD1 port map( A => reset, Z => n49);
   U32 : NOR4D1 port map( A1 => n99, A2 => n100, A3 => n1010, A4 => n1020, Z =>
                           equal);
   U33 : NAN4D1 port map( A1 => n1150, A2 => n1160, A3 => n117, A4 => n1180, Z 
                           => n99);
   U34 : NAN4D1 port map( A1 => n1110, A2 => n1120, A3 => n1130, A4 => n1140, Z
                           => n100);
   U35 : NAN4D1 port map( A1 => n1070, A2 => n1080, A3 => n1090, A4 => n1100, Z
                           => n1010);
   U36 : INVD1 port map( A => add_out_14_port, Z => n188);
   U37 : INVD1 port map( A => add_out_13_port, Z => n189);
   U38 : INVD1 port map( A => add_out_12_port, Z => n1901);
   U39 : INVD1 port map( A => add_out_11_port, Z => n191);
   U40 : INVD1 port map( A => add_out_10_port, Z => n192);
   U41 : NAN3D1 port map( A1 => n1620, A2 => n186, A3 => n76, Z => n59);
   U42 : NOR2M1D1 port map( A1 => wr_sel_en(1), A2 => wr_sel_en(0), Z => n82);
   U43 : NAN3D1 port map( A1 => n76, A2 => n186, A3 => wr_addr(0), Z => n77);
   U44 : NAN2M1D1 port map( A1 => wr_sel_en(1), A2 => wr_sel_en(0), Z => n80);
   U45 : INVD1 port map( A => add_out_9_port, Z => n193);
   U46 : NAN2D1 port map( A1 => wr_sel_en(1), A2 => wr_sel_en(0), Z => n98);
   U47 : INVD1 port map( A => add_out_8_port, Z => n194);
   U48 : INVD1 port map( A => add_out_7_port, Z => n195);
   U49 : INVD1 port map( A => data_out_15_port, Z => n185);
   U50 : INVD1 port map( A => data_out_14_port, Z => n184);
   U51 : INVD1 port map( A => data_out_13_port, Z => n183);
   U52 : INVD1 port map( A => data_out_12_port, Z => n182);
   U53 : INVD1 port map( A => data_out_11_port, Z => n181);
   U54 : INVD1 port map( A => data_out_10_port, Z => n1801);
   U55 : INVD1 port map( A => data_out_9_port, Z => n179);
   U56 : INVD1 port map( A => data_out_8_port, Z => n178);
   U57 : INVD1 port map( A => data_out_7_port, Z => n177);
   U58 : INVD1 port map( A => data_out_6_port, Z => n176);
   U59 : INVD1 port map( A => data_out_5_port, Z => n175);
   U189 : INVD1 port map( A => data_out_4_port, Z => n174);
   U190 : INVD1 port map( A => data_out_3_port, Z => n173);
   U191 : INVD1 port map( A => data_out_2_port, Z => n172);
   U192 : INVD1 port map( A => data_out_1_port, Z => n171);
   U193 : INVD1 port map( A => data_out_0_port, Z => n170);
   U194 : INVD1 port map( A => add_out_6_port, Z => n196);
   U195 : INVD1 port map( A => add_out_5_port, Z => n197);
   U196 : INVD1 port map( A => add_out_4_port, Z => n198);
   U197 : INVD1 port map( A => add_out_3_port, Z => n199);
   U198 : INVD1 port map( A => add_out_2_port, Z => n200);
   U199 : INVD1 port map( A => add_out_1_port, Z => n2010);
   U200 : INVD1 port map( A => add_out_0_port, Z => n2020);
   U201 : INVD1 port map( A => reset, Z => n40);
   U202 : INVD1 port map( A => cmp_l_3_port, Z => n1540);
   U203 : INVD1 port map( A => cmp_l_15_port, Z => n1610);
   U204 : INVD1 port map( A => cmp_l_13_port, Z => n1600);
   U205 : INVD1 port map( A => cmp_r_11_port, Z => n1500);
   U206 : INVD1 port map( A => cmp_l_7_port, Z => n1580);
   U207 : INVD1 port map( A => cmp_r_9_port, Z => n1480);
   U208 : INVD1 port map( A => cmp_l_2_port, Z => n1530);
   U209 : INVD1 port map( A => cmp_l_12_port, Z => n1590);
   U210 : INVD1 port map( A => cmp_l_5_port, Z => n1560);
   U211 : INVD1 port map( A => cmp_r_10_port, Z => n1490);
   U212 : INVD1 port map( A => cmp_l_1_port, Z => n1520);
   U213 : NAN4D1 port map( A1 => n1030, A2 => n1040, A3 => n1050, A4 => n1060, 
                           Z => n1020);
   U214 : INVD1 port map( A => cmp_r_14_port, Z => n151);
   U215 : INVD1 port map( A => cmp_l_6_port, Z => n1570);
   U216 : INVD1 port map( A => cmp_r_8_port, Z => n1470);
   U217 : INVD1 port map( A => cmp_l_4_port, Z => n1550);
   U218 : INVD1 port map( A => cmp_r_1_port, Z => n1460);
   U219 : INVD1 port map( A => add_out_15_port, Z => n187);
   U220 : NAN3D1 port map( A1 => n76, A2 => n1620, A3 => wr_addr(1), Z => n78);
   U221 : NAN3D1 port map( A1 => wr_addr(0), A2 => n76, A3 => wr_addr(1), Z => 
                           n79);
   U222 : INVD1 port map( A => wr_addr(1), Z => n186);
   U223 : AOI22D1 port map( A1 => mem_16_port, A2 => n32, B1 => mem_0_port, B2 
                           => n31, Z => n2);
   U224 : AOI22D1 port map( A1 => mem_48_port, A2 => n34, B1 => mem_32_port, B2
                           => n33, Z => n1);
   U225 : NAN2D1 port map( A1 => n2, A2 => n1, Z => data_out_0_port);
   U226 : AOI22D1 port map( A1 => mem_17_port, A2 => n32, B1 => mem_1_port, B2 
                           => n31, Z => n4);
   U227 : AOI22D1 port map( A1 => mem_49_port, A2 => n34, B1 => mem_33_port, B2
                           => n33, Z => n3);
   U228 : NAN2D1 port map( A1 => n4, A2 => n3, Z => data_out_1_port);
   U229 : AOI22D1 port map( A1 => mem_18_port, A2 => n32, B1 => mem_2_port, B2 
                           => n31, Z => n6);
   U230 : AOI22D1 port map( A1 => mem_50_port, A2 => n34, B1 => mem_34_port, B2
                           => n33, Z => n5);
   U231 : NAN2D1 port map( A1 => n6, A2 => n5, Z => data_out_2_port);
   U232 : AOI22D1 port map( A1 => mem_19_port, A2 => n32, B1 => mem_3_port, B2 
                           => n31, Z => n8);
   U233 : AOI22D1 port map( A1 => mem_51_port, A2 => n34, B1 => mem_35_port, B2
                           => n33, Z => n7);
   U234 : NAN2D1 port map( A1 => n8, A2 => n7, Z => data_out_3_port);
   U235 : AOI22D1 port map( A1 => mem_20_port, A2 => n32, B1 => mem_4_port, B2 
                           => n31, Z => n10);
   U236 : AOI22D1 port map( A1 => mem_52_port, A2 => n34, B1 => mem_36_port, B2
                           => n33, Z => n9);
   U237 : NAN2D1 port map( A1 => n10, A2 => n9, Z => data_out_4_port);
   U238 : AOI22D1 port map( A1 => mem_21_port, A2 => n32, B1 => mem_5_port, B2 
                           => n31, Z => n12);
   U239 : AOI22D1 port map( A1 => mem_53_port, A2 => n34, B1 => mem_37_port, B2
                           => n33, Z => n11);
   U240 : NAN2D1 port map( A1 => n12, A2 => n11, Z => data_out_5_port);
   U241 : AOI22D1 port map( A1 => mem_22_port, A2 => n32, B1 => mem_6_port, B2 
                           => n31, Z => n14);
   U242 : AOI22D1 port map( A1 => mem_54_port, A2 => n34, B1 => mem_38_port, B2
                           => n33, Z => n13);
   U243 : NAN2D1 port map( A1 => n14, A2 => n13, Z => data_out_6_port);
   U244 : AOI22D1 port map( A1 => mem_23_port, A2 => n32, B1 => mem_7_port, B2 
                           => n31, Z => n16);
   U245 : AOI22D1 port map( A1 => mem_55_port, A2 => n34, B1 => mem_39_port, B2
                           => n33, Z => n15);
   U246 : NAN2D1 port map( A1 => n16, A2 => n15, Z => data_out_7_port);
   U247 : AOI22D1 port map( A1 => mem_24_port, A2 => n32, B1 => mem_8_port, B2 
                           => n31, Z => n1800);
   U248 : AOI22D1 port map( A1 => mem_56_port, A2 => n34, B1 => mem_40_port, B2
                           => n33, Z => n17);
   U249 : NAN2D1 port map( A1 => n1800, A2 => n17, Z => data_out_8_port);
   U250 : AOI22D1 port map( A1 => mem_25_port, A2 => n32, B1 => mem_9_port, B2 
                           => n31, Z => n20);
   U251 : AOI22D1 port map( A1 => mem_57_port, A2 => n34, B1 => mem_41_port, B2
                           => n33, Z => n1900);
   U252 : NAN2D1 port map( A1 => n20, A2 => n1900, Z => data_out_9_port);
   U253 : AOI22D1 port map( A1 => mem_26_port, A2 => n32, B1 => mem_10_port, B2
                           => n31, Z => n22);
   U254 : AOI22D1 port map( A1 => mem_58_port, A2 => n34, B1 => mem_42_port, B2
                           => n33, Z => n21);
   U255 : NAN2D1 port map( A1 => n22, A2 => n21, Z => data_out_10_port);
   U256 : AOI22D1 port map( A1 => mem_27_port, A2 => n32, B1 => mem_11_port, B2
                           => n31, Z => n24);
   U257 : AOI22D1 port map( A1 => mem_59_port, A2 => n34, B1 => mem_43_port, B2
                           => n33, Z => n23);
   U258 : NAN2D1 port map( A1 => n24, A2 => n23, Z => data_out_11_port);
   U259 : AOI22D1 port map( A1 => mem_28_port, A2 => n32, B1 => mem_12_port, B2
                           => n31, Z => n26);
   U260 : AOI22D1 port map( A1 => mem_60_port, A2 => n34, B1 => mem_44_port, B2
                           => n33, Z => n25);
   U261 : NAN2D1 port map( A1 => n26, A2 => n25, Z => data_out_12_port);
   U262 : AOI22D1 port map( A1 => mem_29_port, A2 => n32, B1 => mem_13_port, B2
                           => n31, Z => n28);
   U263 : AOI22D1 port map( A1 => mem_61_port, A2 => n34, B1 => mem_45_port, B2
                           => n33, Z => n27);
   U264 : NAN2D1 port map( A1 => n28, A2 => n27, Z => data_out_13_port);
   U265 : AOI22D1 port map( A1 => mem_30_port, A2 => n32, B1 => mem_14_port, B2
                           => n31, Z => n30);
   U266 : AOI22D1 port map( A1 => mem_62_port, A2 => n34, B1 => mem_46_port, B2
                           => n33, Z => n29);
   U267 : NAN2D1 port map( A1 => n30, A2 => n29, Z => data_out_14_port);
   U268 : AOI22D1 port map( A1 => mem_31_port, A2 => n32, B1 => mem_15_port, B2
                           => n31, Z => n36);
   U269 : AOI22D1 port map( A1 => mem_63_port, A2 => n34, B1 => mem_47_port, B2
                           => n33, Z => n35);
   U270 : NAN2D1 port map( A1 => n36, A2 => n35, Z => data_out_15_port);
   U271 : OR2D1 port map( A1 => cmp_r_13_port, A2 => n1600, Z => n1200);
   U272 : NOR2M1D1 port map( A1 => cmp_r_15_port, A2 => cmp_l_15_port, Z => 
                           n1190);
   U273 : AOI21D1 port map( A1 => n151, A2 => cmp_l_14_port, B => n1190, Z => 
                           n1230);
   U274 : OAI211D1 port map( A1 => cmp_r_12_port, A2 => n1590, B => n1200, C =>
                           n1230, Z => n1380);
   U275 : NOR2M1D1 port map( A1 => cmp_l_11_port, A2 => cmp_r_11_port, Z => n56
                           );
   U276 : AOI21D1 port map( A1 => n1490, A2 => cmp_l_10_port, B => n56, Z => 
                           n1410);
   U277 : OAI32D1 port map( A1 => n1490, A2 => cmp_l_10_port, A3 => n56, B1 => 
                           cmp_l_11_port, B2 => n1500, Z => n58);
   U278 : AND2D1 port map( A1 => cmp_l_9_port, A2 => n1480, Z => n1390);
   U279 : OAI32D1 port map( A1 => n1470, A2 => cmp_l_8_port, A3 => n1390, B1 =>
                           cmp_l_9_port, B2 => n1480, Z => n57);
   U280 : OAI22D1 port map( A1 => n1410, A2 => n58, B1 => n58, B2 => n57, Z => 
                           n1250);
   U281 : OAI32D1 port map( A1 => n151, A2 => cmp_l_14_port, A3 => n1190, B1 =>
                           cmp_r_15_port, B2 => n1610, Z => n1220);
   U282 : AO32D1 port map( A1 => cmp_r_12_port, A2 => n1590, A3 => n1200, B1 =>
                           n1600, B2 => cmp_r_13_port, Z => n1210);
   U283 : OAI22D1 port map( A1 => n1230, A2 => n1220, B1 => n1220, B2 => n1210,
                           Z => n1240);
   U284 : OAI21D1 port map( A1 => n1380, A2 => n1250, B => n1240, Z => n1450);
   U285 : NAN2M1D1 port map( A1 => cmp_r_5_port, A2 => cmp_l_5_port, Z => n134)
                           ;
   U286 : AOI32D1 port map( A1 => n134, A2 => n1550, A3 => cmp_r_4_port, B1 => 
                           cmp_r_5_port, B2 => n1560, Z => n1280);
   U287 : OR2D1 port map( A1 => cmp_r_7_port, A2 => n1580, Z => n1260);
   U288 : AOI32D1 port map( A1 => cmp_r_6_port, A2 => n1570, A3 => n1260, B1 =>
                           n1580, B2 => cmp_r_7_port, Z => n1270);
   U289 : OAI21D1 port map( A1 => cmp_r_6_port, A2 => n1570, B => n1260, Z => 
                           n1350);
   U290 : AOI22D1 port map( A1 => n1280, A2 => n1270, B1 => n1270, B2 => n1350,
                           Z => n1440);
   U291 : OR2D1 port map( A1 => cmp_r_3_port, A2 => n1540, Z => n1300);
   U292 : AOI32D1 port map( A1 => cmp_r_2_port, A2 => n1530, A3 => n1300, B1 =>
                           n1540, B2 => cmp_r_3_port, Z => n1320);
   U293 : OAI22M10D1 port map( A1 => cmp_l_0_port, A2 => cmp_r_0_port, B1 => 
                           n1520, B2 => cmp_r_1_port, Z => n1290);
   U294 : OAI211D1 port map( A1 => n1460, A2 => cmp_l_1_port, B => n1320, C => 
                           n1290, Z => n1370);
   U295 : OAI21D1 port map( A1 => cmp_r_2_port, A2 => n1530, B => n1300, Z => 
                           n1310);
   U296 : NAN2D1 port map( A1 => n1320, A2 => n1310, Z => n1330);
   U297 : OAI211D1 port map( A1 => cmp_r_4_port, A2 => n1550, B => n134, C => 
                           n1330, Z => n1360);
   U298 : NOR3M1D1 port map( A1 => n1370, A2 => n1360, A3 => n1350, Z => n1430)
                           ;
   U299 : AND2D1 port map( A1 => cmp_l_8_port, A2 => n1470, Z => n1400);
   U300 : NOR4M1D1 port map( A1 => n1410, A2 => n1400, A3 => n1390, A4 => n1380
                           , Z => n1420);
   U301 : OAI32D1 port map( A1 => n1450, A2 => n1440, A3 => n1430, B1 => n1420,
                           B2 => n1450, Z => greater);

end hier_dpctrl_gcd_16_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_siso_gen.all;

architecture hier_dpctrl_gcd_16_10 of siso_gen is

   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component cmp_add_ctrl
      port( clk, reset : in std_logic;  req, ready : out std_logic;  equal, 
            greater : in std_logic;  add_l_sel, add_r_sel, add_l_en, add_r_en, 
            sub, cmp_l_sel, cmp_r_sel, cmp_l_en, cmp_r_en : out std_logic;  
            rd_addr, wr_addr, wr_sel_en : out std_logic_vector (1 downto 0));
   end component;
   
   component cmp_add_dp_word_length16
      port( data_in : in std_logic_vector (15 downto 0);  clk, reset : in 
            std_logic;  data_out : out std_logic_vector (15 downto 0);  
            add_l_sel, add_r_sel, add_l_en, add_r_en, sub, cmp_l_sel, cmp_r_sel
            , cmp_l_en, cmp_r_en : in std_logic;  rd_addr, wr_addr, wr_sel_en :
            in std_logic_vector (1 downto 0);  equal, greater : out std_logic);
   end component;
   
   signal add_l_sel, add_r_sel, add_l_en, add_r_en, sub, cmp_l_sel, cmp_r_sel, 
      cmp_l_en, cmp_r_en, rd_addr_1_port, rd_addr_0_port, wr_addr_0_port, 
      wr_sel_en_1_port, wr_sel_en_0_port, equal, greater, n1, n_1003, n_1004 : 
      std_logic;

begin
   
   dp : cmp_add_dp_word_length16 port map( data_in(15) => data_in(15), 
                           data_in(14) => data_in(14), data_in(13) => 
                           data_in(13), data_in(12) => data_in(12), data_in(11)
                           => data_in(11), data_in(10) => data_in(10), 
                           data_in(9) => data_in(9), data_in(8) => data_in(8), 
                           data_in(7) => data_in(7), data_in(6) => data_in(6), 
                           data_in(5) => data_in(5), data_in(4) => data_in(4), 
                           data_in(3) => data_in(3), data_in(2) => data_in(2), 
                           data_in(1) => data_in(1), data_in(0) => data_in(0), 
                           clk => clk, reset => reset, data_out(15) => 
                           data_out(15), data_out(14) => data_out(14), 
                           data_out(13) => data_out(13), data_out(12) => 
                           data_out(12), data_out(11) => data_out(11), 
                           data_out(10) => data_out(10), data_out(9) => 
                           data_out(9), data_out(8) => data_out(8), data_out(7)
                           => data_out(7), data_out(6) => data_out(6), 
                           data_out(5) => data_out(5), data_out(4) => 
                           data_out(4), data_out(3) => data_out(3), data_out(2)
                           => data_out(2), data_out(1) => data_out(1), 
                           data_out(0) => data_out(0), add_l_sel => add_l_sel, 
                           add_r_sel => add_r_sel, add_l_en => add_l_en, 
                           add_r_en => add_r_en, sub => sub, cmp_l_sel => 
                           cmp_l_sel, cmp_r_sel => cmp_r_sel, cmp_l_en => 
                           cmp_l_en, cmp_r_en => cmp_r_en, rd_addr(1) => 
                           rd_addr_1_port, rd_addr(0) => rd_addr_0_port, 
                           wr_addr(1) => n1, wr_addr(0) => wr_addr_0_port, 
                           wr_sel_en(1) => wr_sel_en_1_port, wr_sel_en(0) => 
                           wr_sel_en_0_port, equal => equal, greater => greater
                           );
   cn : cmp_add_ctrl port map( clk => clk, reset => reset, req => req, ready =>
                           ready, equal => equal, greater => greater, add_l_sel
                           => add_l_sel, add_r_sel => add_r_sel, add_l_en => 
                           add_l_en, add_r_en => add_r_en, sub => n_1003, 
                           cmp_l_sel => cmp_l_sel, cmp_r_sel => cmp_r_sel, 
                           cmp_l_en => cmp_l_en, cmp_r_en => cmp_r_en, 
                           rd_addr(1) => rd_addr_1_port, rd_addr(0) => 
                           rd_addr_0_port, wr_addr(1) => n_1004, wr_addr(0) => 
                           wr_addr_0_port, wr_sel_en(1) => wr_sel_en_1_port, 
                           wr_sel_en(0) => wr_sel_en_0_port);
   U1 : TIELO port map( Z => n1);
   U2 : TIEHI port map( Z => sub);

end hier_dpctrl_gcd_16_10;
