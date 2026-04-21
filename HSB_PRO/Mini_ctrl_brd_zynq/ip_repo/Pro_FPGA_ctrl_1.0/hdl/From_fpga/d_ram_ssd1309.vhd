----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/12 09:53:41
-- Design Name: 
-- Module Name: d_ram_ssd1309 - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_ram_ssd1309 is
    Port (
        clk               :   in std_logic;
        rst               :   in std_logic;
        data_in           :   in std_logic_vector(15 downto 0);
        data_in_valid     :   in std_logic;
        offset_row        :   in std_logic_vector(7 downto 0);
        offset_line       :   in std_logic_vector(7 downto 0);
        rd_addr           :   in std_logic_vector(9 downto 0);
        data_out          :   out std_logic_vector(7 downto 0)
    );
end d_ram_ssd1309;

architecture Behavioral of d_ram_ssd1309 is

    type    array_ram   is array(0 to 127) of std_logic_vector(63 downto 0);
    signal  ssd1309_ram : array_ram:=(others => (others => '0'));

    signal  data_in1           :    std_logic_vector(15 downto 0);
    signal  data_in_valid1     :    std_logic;

    signal  offset_row_integer  : integer:=0;
    signal  offset_line_integer  : integer:=0;

    signal  rd_row_integer   : integer:=0;
    signal  rd_line_integer  : integer:=0;



begin

    offset_row_integer <= to_integer(unsigned(offset_row)) when offset_row < X"2F" else 47;
    offset_line_integer <= to_integer(unsigned(offset_line)) when offset_line < X"7F" else 127;

    process(clk)
    begin
        if rising_edge(clk) then
--            data_in1        <= data_in      ;
--            data_in_valid1  <= data_in_valid;
            if rst = '1'    then
                ssd1309_ram <= (others => (others => '0'));
            else
                if data_in_valid = '1' then
                    ssd1309_ram(offset_line_integer)(offset_row_integer + 15 downto offset_row_integer) <= data_in;
                end if;
            end if;
        end if;
    end process;

    rd_line_integer <= to_integer(unsigned(rd_addr(6 downto 0)));
    rd_row_integer <= to_integer(unsigned(rd_addr(9 downto 7)));


    process(clk)
    begin
        if rising_edge(clk) then
            data_out <= ssd1309_ram(rd_line_integer)((rd_row_integer + 1)*8 - 1 downto rd_row_integer*8);
        end if;
    end process;


end Behavioral;
