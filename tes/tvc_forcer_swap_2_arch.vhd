-------------------------------------------------------------------------------
-- File         : tvc_forcer_swap_2_arch.vhd
-- Description  : siso_gen swap_2 forcer
-- Author       : Sabih Gerez, University of Twente
-- Creation date: September 1, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep  9 19:24:38 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

architecture swap_2 of tvc_forcer is
begin
  handle_requests: process (request_id) is
    variable prev_request_id: integer := 0;
  begin
    -- request_id 0 corresponds to nothing being forced
    -- we are free to choose any encoding for the force envents

    -- when a new force request comes, the previous one needs to be undone
    case prev_request_id is 
      when 0 => null;
      when 1 | 2 => -- release n8
        << signal .tb_siso_gen_top.tg.duv.n8: std_logic >> <= release;

      when 3 | 4 => -- release state_nxt_1
        << signal .tb_siso_gen_top.tg.duv.state_nxt_1: std_logic >> <= release;

      when 5 | 6 => -- release n2
        << signal .tb_siso_gen_top.tg.duv.n2: std_logic >> <= release;

      when 7 | 8 => -- release n4
        << signal .tb_siso_gen_top.tg.duv.n4: std_logic >> <= release;

      when 9 | 10 => -- release n3
        << signal .tb_siso_gen_top.tg.duv.n3: std_logic >> <= release;

      when 11 | 12 => -- release n6
        << signal .tb_siso_gen_top.tg.duv.n6: std_logic >> <= release;

      when 13 | 14 => -- release n7
        << signal .tb_siso_gen_top.tg.duv.n7: std_logic >> <= release;

      when 15 | 16 => -- release n5
        << signal .tb_siso_gen_top.tg.duv.n5: std_logic >> <= release;

      when 17 | 18 => -- release ready_nxt
        << signal .tb_siso_gen_top.tg.duv.ready_nxt: std_logic >> <= release;

      when others => null;
    end case;

    -- and the new one needs to be put in action
    case request_id is
      when 0 => null;

      when 1 => -- force n8 to 0
        << signal .tb_siso_gen_top.tg.duv.n8: std_logic >> <= force '0';
      when 2 => -- force n8 to 1
        << signal .tb_siso_gen_top.tg.duv.n8: std_logic >> <= force '1';

      when 3 => -- force state_nxt_1 to 0
        << signal .tb_siso_gen_top.tg.duv.state_nxt_1: std_logic >> <= force '0';
      when 4 => -- force state_nxt_1 to 1
        << signal .tb_siso_gen_top.tg.duv.state_nxt_1: std_logic >> <= force '1';

      when 5 => -- force n2 to 0
        << signal .tb_siso_gen_top.tg.duv.n2: std_logic >> <= force '0';
      when 6 => -- force n2 to 1
        << signal .tb_siso_gen_top.tg.duv.n2: std_logic >> <= force '1';

      when 7 => -- force n4 to 0
        << signal .tb_siso_gen_top.tg.duv.n4: std_logic >> <= force '0';
      when 8 => -- force n4 to 1
        << signal .tb_siso_gen_top.tg.duv.n4: std_logic >> <= force '1';

      when  9 => -- force n3 to 0
        << signal .tb_siso_gen_top.tg.duv.n3: std_logic >> <= force '0';
      when 10 => -- force n3 to 1
        << signal .tb_siso_gen_top.tg.duv.n3: std_logic >> <= force '1';

      when 11 => -- force n6 to 0
        << signal .tb_siso_gen_top.tg.duv.n6: std_logic >> <= force '0';
      when 12 => -- force n6 to 1
        << signal .tb_siso_gen_top.tg.duv.n6: std_logic >> <= force '1';

      when 13 => -- force n7 to 0
        << signal .tb_siso_gen_top.tg.duv.n7: std_logic >> <= force '0';
      when 14 => -- force n7 to 1
        << signal .tb_siso_gen_top.tg.duv.n7: std_logic >> <= force '1';

      when 15 => -- force n5 to 0
        << signal .tb_siso_gen_top.tg.duv.n5: std_logic >> <= force '0';
      when 16 => -- force n5 to 1
        << signal .tb_siso_gen_top.tg.duv.n5: std_logic >> <= force '1';

      when 17 => -- force ready_nxt to 0
        << signal .tb_siso_gen_top.tg.duv.ready_nxt: std_logic >> <= force '0';
      when 18 => -- force ready_nxt to 1
        << signal .tb_siso_gen_top.tg.duv.ready_nxt: std_logic >> <= force '1';

      when others => null;
    end case;

    prev_request_id := request_id;

  end process handle_requests;
end swap_2;
