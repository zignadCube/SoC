-------------------------------------------------------------------------------
-- File         : tvc_siso_gen_tester_arch.vhd
-- Description  : tester-style TVC for siso_gen
-- Author       : Sabih Gerez, University of Twente
-- Creation date: August 30, 2017
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Fri Sep  9 19:24:38 CEST 2022$
-- $Log$
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- For each clock cycle:
-- 1. read input data and expected output data from file
-- 2. drive input before rising clock edge
-- 3. capture and compare outputs before next rising edge and before
--    driving new inputs
-- 4. write inputs and captured outputs to output file
--
-- File format per line:
-- reset, scan_shift, scan_in, data_in, <fault id>, ...
--   scan_out, data_out, req, ready
-------------------------------------------------------------------------------

architecture tester of tvc_siso_gen is
  constant in_to_rise:  time := 400 ps;
  constant out_to_rise: time := 500 ps;

  -- input file
  file in_file: text open Read_mode is in_file_name;
  -- output file
  file out_file: text open Write_mode is out_file_name;

  -- fault index
  signal fault: integer := 0;

  -- forcer component
  component tvc_forcer
    port (request_id: in integer);
  end component;
begin
  stimuli: process 
    variable inline, outline: line;
    variable line_count: integer := 1;
    variable good: boolean;

    -- variables for signals read from file
    variable v_reset:      std_logic;
    variable v_scan_shift: std_logic;
    variable v_scan_in:    std_logic;
    variable v_data_in:    std_logic_vector(word_length-1 downto 0);
    variable v_fault:      integer;
    variable v_scan_out:   std_logic;
    variable v_data_out:   std_logic_vector(word_length-1 downto 0);
    variable v_req:        std_logic;
    variable v_ready:      std_logic;

    -- auxiliary procedure for reading signals
    procedure check_read(good: in boolean; s_name: in string; lc: in integer) is
    begin
      assert good 
         report "Input error while reading signal " & s_name & 
                " at line nr. " & integer'image(line_count)
           severity failure;
    end check_read;

    -- auxiliary procedure for checking captured signals 
    -- version for std_logic_vector
    procedure check_sig(s_name: in string; 
                        pat_val, cap_val: in std_logic_vector;
                        lc: in integer) is
    begin
      assert std_match(cap_val, pat_val)
        report "Output error for signal " & s_name & 
               " at line nr. " & integer'image(line_count) &
               "; expected: " & to_string(pat_val) &
               "; read: " & to_string(cap_val)
          severity note;
    end check_sig;

    -- version for std_logic
    procedure check_sig(s_name: in string; 
                        pat_val, cap_val: in std_logic;
                        lc: in integer) is
      variable pat_vector: std_logic_vector(0 downto 0);
      variable cap_vector: std_logic_vector(0 downto 0);
    begin
      pat_vector(0) := pat_val;
      cap_vector(0) := cap_val;
      check_sig(s_name, pat_vector, cap_vector, lc);
    end check_sig;

  begin
    -- start with clock at zero
    clk <= '0';

    while not endfile(in_file) loop
      -- read entire line
      readline(in_file, inline);

      -- read all elements in line, one by one
      -- copy inputs to output file
      read(inline, v_reset, good);     
      check_read(good, "reset", line_count);
      write(outline, v_reset); write (outline, ' ');

      read(inline, v_scan_shift, good);
      check_read(good, "scan_shift", line_count);
      write(outline, v_scan_shift); write (outline, ' ');
      
      read(inline, v_scan_in, good);
      check_read(good, "scan_in", line_count);
      write(outline, v_scan_in); write (outline, ' ');

      read(inline, v_data_in, good);
      check_read(good, "data_in", line_count);
      write(outline, v_data_in); write (outline, ' ');

      read(inline, v_fault, good);
      check_read(good, "fault", line_count);
      write(outline, v_fault); write (outline, ' ');

      read(inline, v_scan_out, good);
      check_read(good, "scan_out", line_count);

      read(inline, v_data_out, good);
      check_read(good, "data_out", line_count);
      
      read(inline, v_req, good);
      check_read(good, "req", line_count);

      read(inline, v_ready, good);
      check_read(good, "ready", line_count);

      -- assign input signals
      reset      <= v_reset;
      scan_shift <= v_scan_shift;
      scan_in    <= v_scan_in;
      data_in    <= v_data_in;
      fault      <= v_fault;

      -- generate rising edge of clock
      wait for in_to_rise;
      clk <= '1';
      
      -- falling edge
      wait for half_clock_period;
      clk <= '0';

      -- wait until output-capture time
      wait for half_clock_period - out_to_rise;

      -- now check all outputs and write to output file
      check_sig("scan_out", v_scan_out, scan_out, line_count);
      write(outline, scan_out); write(outline, ' ');

      check_sig("data_out", v_data_out, data_out, line_count);
      write(outline, data_out); write(outline, ' ');

      check_sig("req", v_req, req, line_count);
      write(outline, req); write(outline, ' ');

      check_sig("ready", v_ready, ready, line_count);
      write(outline, ready);

      -- write line in output file
      writeline(out_file, outline);

      -- finish cycle
      wait for out_to_rise - in_to_rise;

      line_count := line_count + 1;
    end loop;

    assert false
      report "OK! Simulation stopped at end of input file.";
    -- we never reach this point
    wait;
  end process stimuli;

  -- instantiate force component
  forcer: tvc_forcer
    port map (request_id => fault);
end tester;
