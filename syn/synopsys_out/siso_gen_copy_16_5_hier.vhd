
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

architecture hier_copy_16_5 of siso_gen is

   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQL
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   signal n_Logic1_port, n1 : std_logic;

begin
   req <= n_Logic1_port;
   
   ready_reg : DFFRPQL port map( D => n_Logic1_port, CK => clk, RB => n1, Q => 
                           ready);
   data_out_reg_15_inst : DFFRPQL port map( D => data_in(15), CK => clk, RB => 
                           n1, Q => data_out(15));
   data_out_reg_14_inst : DFFRPQL port map( D => data_in(14), CK => clk, RB => 
                           n1, Q => data_out(14));
   data_out_reg_13_inst : DFFRPQL port map( D => data_in(13), CK => clk, RB => 
                           n1, Q => data_out(13));
   data_out_reg_12_inst : DFFRPQL port map( D => data_in(12), CK => clk, RB => 
                           n1, Q => data_out(12));
   data_out_reg_11_inst : DFFRPQL port map( D => data_in(11), CK => clk, RB => 
                           n1, Q => data_out(11));
   data_out_reg_10_inst : DFFRPQL port map( D => data_in(10), CK => clk, RB => 
                           n1, Q => data_out(10));
   data_out_reg_9_inst : DFFRPQL port map( D => data_in(9), CK => clk, RB => n1
                           , Q => data_out(9));
   data_out_reg_8_inst : DFFRPQL port map( D => data_in(8), CK => clk, RB => n1
                           , Q => data_out(8));
   data_out_reg_7_inst : DFFRPQL port map( D => data_in(7), CK => clk, RB => n1
                           , Q => data_out(7));
   data_out_reg_6_inst : DFFRPQL port map( D => data_in(6), CK => clk, RB => n1
                           , Q => data_out(6));
   data_out_reg_5_inst : DFFRPQL port map( D => data_in(5), CK => clk, RB => n1
                           , Q => data_out(5));
   data_out_reg_4_inst : DFFRPQL port map( D => data_in(4), CK => clk, RB => n1
                           , Q => data_out(4));
   data_out_reg_3_inst : DFFRPQL port map( D => data_in(3), CK => clk, RB => n1
                           , Q => data_out(3));
   data_out_reg_2_inst : DFFRPQL port map( D => data_in(2), CK => clk, RB => n1
                           , Q => data_out(2));
   data_out_reg_1_inst : DFFRPQL port map( D => data_in(1), CK => clk, RB => n1
                           , Q => data_out(1));
   data_out_reg_0_inst : DFFRPQL port map( D => data_in(0), CK => clk, RB => n1
                           , Q => data_out(0));
   U3 : INVD1 port map( A => reset, Z => n1);
   U4 : TIEHI port map( Z => n_Logic1_port);

end hier_copy_16_5;
