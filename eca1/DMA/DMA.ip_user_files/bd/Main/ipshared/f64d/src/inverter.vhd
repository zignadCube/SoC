----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2023 03:34:40 PM
-- Design Name: 
-- Module Name: inverter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convoluter is
    generic(
        kernel_size : integer := 3;
        image_size : integer := 5
    );
    port(
        axi_clk: in std_logic;
        axi_reset_n: in std_logic;
        
        s_axis_valid: in std_logic;
        s_axis_data: in std_logic_vector(31 downto 0);
        s_axis_ready: out std_logic;
        
        m_axis_ready: in std_logic;
        m_axis_valid: out std_logic;
        m_axis_data: out std_logic_vector(31 downto 0);
        m_axis_tlast: out std_logic
    
     );
end convoluter;

architecture Behavioral of convoluter is
    type x3Array is array (0 to kernel_size-1, 0 to kernel_size-1) of signed(31 downto 0);
    type x1300Array is array (0 to image_size-1, 0 to image_size-1) of signed(31 downto 0);
    
    signal kernel: x3Array;
    signal image: x1300Array;
    
    signal i, j: integer;
    signal kernel_loaded, image_loaded: std_logic;
    signal s_ready: std_logic;
begin
    compute: process(axi_reset_n, axi_clk)
        variable m00, m01, m02, m10, m11, m12, m20, m21, m22: signed(63 downto 0);
        variable s0, s1, s2, s3, s4, s5: signed(31 downto 0);
    begin
        if axi_reset_n = '0'
        then
            kernel <= (others => (others => (others => '0')));
            image <= (others => (others => (others => '0')));
            i <= 0;
            j <= 0;
            kernel_loaded <= '0';
            image_loaded <= '0';
            
            s_ready <= '1';
            m_axis_valid <= '0';
            m_axis_tlast <= '0';
        elsif rising_edge(axi_clk)
        then
            if s_axis_valid = '1' and s_ready = '1'
            then
                if kernel_loaded = '0' and image_loaded = '0'
                then
                    m_axis_tlast <= '0';
                    kernel(j,i) <= signed(s_axis_data);
                    
                    if i = (kernel_size-1)
                    then
                        i <= 0;
                        if j = (kernel_size-1)
                        then
                            kernel_loaded <= '1';
                            j <= 0;
                        else
                            j <= j + 1;
                        end if; -- j increment
                    else
                        i <= i + 1;
                    end if; -- i increment
            
                elsif kernel_loaded = '1' and image_loaded = '0'
                then 
                    m_axis_tlast <= '0';
                    image(j,i) <= signed(s_axis_data);
                    
                    if i = (image_size-1)
                    then
                        i <= 0;
                        if j = (image_size-1)
                        then
                            image_loaded <= '1';
                            s_ready <= '0';
                            j <= 0;
                        else
                            j <= j + 1;
                        end if; -- j increment
                    else
                        i <= i + 1;
                    end if; -- i increment
                end if; --Kernel/image loaded
            end if; --valid/ready
            if kernel_loaded = '1' and image_loaded = '1' and m_axis_ready = '1'
            then
                m_axis_valid <= '1';

                m00 := image(j,i)*kernel(0,0);
                m01 := image(j,i+1)*kernel(0,1);
                m02 := image(j,i+2)*kernel(0,2);
                    
                m10 := image(j+1,i)*kernel(1,0);
                m11 := image(j+1,i+1)*kernel(1,1);
                m12 := image(j+1,i+2)*kernel(1,2);
                    
                m20 := image(j+2,i)*kernel(2,0);
                m21 := image(j+2,i+1)*kernel(2,1);
                m22 := image(j+2,i+2)*kernel(2,2);
                
                m_axis_data <= std_logic_vector(m00(31 downto 0)+m01(31 downto 0) + m02(31 downto 0)+m10(31 downto 0) + m11(31 downto 0)+m12(31 downto 0) + m20(31 downto 0)+m21(31 downto 0) + m22(31 downto 0));
                
                if i = (image_size-3)
                then
                    i <= 0;
                    if j = (image_size-3)
                    then
                        --image <= (others => (others => (others => '0')));
            
                        s_ready <= '1';
                        image_loaded <= '0';
                        m_axis_tlast <= '1';
                        j <= 0;
                    else
                        j <= j + 1;
                    end if; -- j increment
                else
                    i <= i + 1;
                end if; -- i increment
            end if;
        end if; -- reset/clk
    
    end process compute;
    s_axis_ready <= s_ready;
end Behavioral;
