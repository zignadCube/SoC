
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

architecture hier_swap_scan_2_5 of siso_gen is

   component SDFRPQL
      port( D, SD, SE, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component SDERPQL
      port( D, SD, CEB, SE, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_1_port, data_out_0_port, ready_port, state_cur_1_port, 
      state_cur_0_port, reg_keep_1_port, reg_keep_0_port, state_nxt_1_port, 
      ready_nxt, n1, n2, n3, n4, n5, n6, n7, n8 : std_logic;

begin
   data_out <= ( data_out_1_port, data_out_0_port );
   ready <= ready_port;
   scan_out <= data_out_1_port;
   
   U3 : INVD1 port map( A => reset, Z => n1);
   U10 : OR2D1 port map( A1 => n3, A2 => state_nxt_1_port, Z => ready_nxt);
   U11 : AOI22D1 port map( A1 => reg_keep_0_port, A2 => n3, B1 => data_in(0), 
                           B2 => state_nxt_1_port, Z => n5);
   U12 : AOI22D1 port map( A1 => reg_keep_1_port, A2 => n3, B1 => data_in(1), 
                           B2 => state_nxt_1_port, Z => n6);
   U13 : OAI21M20D1 port map( A1 => data_out_0_port, A2 => n4, B => n5, Z => n7
                           );
   U14 : OAI21M20D1 port map( A1 => data_out_1_port, A2 => n4, B => n6, Z => n8
                           );
   U15 : NOR2M1D1 port map( A1 => state_cur_1_port, A2 => state_cur_0_port, Z 
                           => n3);
   U16 : NOR2D1 port map( A1 => n2, A2 => state_cur_1_port, Z => 
                           state_nxt_1_port);
   U17 : INVD1 port map( A => state_cur_0_port, Z => n2);
   U18 : NOR2D1 port map( A1 => state_cur_1_port, A2 => state_cur_0_port, Z => 
                           n4);
   U19 : TIEHI port map( Z => req);
   state_cur_reg_0_inst : SDFRPQL port map( D => n2, SD => data_out_0_port, SE 
                           => scan_shift, CK => clk, RB => n1, Q => 
                           state_cur_0_port);
   state_cur_reg_1_inst : SDFRPQL port map( D => state_nxt_1_port, SD => 
                           state_cur_0_port, SE => scan_shift, CK => clk, RB =>
                           n1, Q => state_cur_1_port);
   ready_reg : SDFRPQL port map( D => ready_nxt, SD => scan_in, SE => 
                           scan_shift, CK => clk, RB => n1, Q => ready_port);
   reg_keep_reg_1_inst : SDERPQL port map( D => data_in(1), SD => 
                           reg_keep_0_port, CEB => state_nxt_1_port, SE => 
                           scan_shift, CK => clk, RB => n1, Q => 
                           reg_keep_1_port);
   reg_keep_reg_0_inst : SDERPQL port map( D => data_in(0), SD => ready_port, 
                           CEB => state_nxt_1_port, SE => scan_shift, CK => clk
                           , RB => n1, Q => reg_keep_0_port);
   reg_out_reg_1_inst : SDFRPQL port map( D => n8, SD => state_cur_1_port, SE 
                           => scan_shift, CK => clk, RB => n1, Q => 
                           data_out_1_port);
   reg_out_reg_0_inst : SDFRPQL port map( D => n7, SD => reg_keep_1_port, SE =>
                           scan_shift, CK => clk, RB => n1, Q => 
                           data_out_0_port);

end hier_swap_scan_2_5;
