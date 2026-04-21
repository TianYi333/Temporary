----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/06/18 09:23:14
-- Design Name: 
-- Module Name: spi_gen - Behavioral
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

entity spi_gen is
generic(
spi_data_width      : integer:=32;
clk_num             : std_logic_vector(7 downto 0):=X"64";
cs_n_num            : std_logic_vector(7 downto 0):=X"10"
);
  Port (
  clk_in                : in std_logic;
  spi_data_in           : in std_logic_vector(spi_data_width - 1 downto 0);
  spi_data_in_valid     : in std_logic;
  spi_ready             : out std_logic;
  spi_cs_n              : out std_logic;
  spi_clk               : out std_logic;
  spi_data              : out std_logic
   );
end spi_gen;

architecture Behavioral of spi_gen is

signal  state_spi               : std_logic_vector(3 downto 0):=X"0";
signal  spi_clk_cnt                 : std_logic_vector(7 downto 0):=X"00";
signal  spi_clk_cnt1                 : std_logic_vector(7 downto 0):=X"00";
signal  spi_90_clk_cnt                 : std_logic_vector(7 downto 0):=X"00";

signal  spi_clk_temp            : std_logic:='0';
signal  spi_clk_temp1            : std_logic:='0';
signal  spi_clk_temp2            : std_logic:='0';

signal  spi_data_in_valid1      : std_logic:='0';
signal  spi_data_send           : std_logic_vector(spi_data_width - 1 downto 0):=(others => '0');
signal  spi_data_num            : integer:= 0;

signal  cs_n_cnt                : std_logic_vector(7 downto 0):=X"00";

begin

spi_ready <= '1' when   state_spi = X"0" and spi_data_in_valid = '0' else '0';

spi_data_gen : process(clk_in)
begin
if rising_edge(clk_in)  then
    spi_data_in_valid1 <= spi_data_in_valid;
    case state_spi is
        when    X"0"    =>
            spi_cs_n <= '1';
            spi_data <= '0';
            spi_clk <= '0';
            if spi_data_in_valid1 = '0' and spi_data_in_valid = '1' then
                spi_data_send <= spi_data_in;
                state_spi <= state_spi + '1';
                spi_data_num <= spi_data_width - 1;
            end if;
        when    X"1"    =>      -- cs <= '0'
            spi_cs_n <= '0';
            if spi_clk_cnt1 < clk_num   then
                spi_clk_cnt1 <= spi_clk_cnt1 + '1';
            else
                spi_clk_cnt1 <= (others => '0');
                state_spi <= X"2";
            end if;
        when    X"2"    =>      -- spi data out 
            if spi_clk_temp2 = '0' and spi_clk_temp1 = '1' then
                spi_data <= spi_data_send(spi_data_num);
                spi_data_num <= spi_data_num - 1;
                state_spi <= X"3";                
            end if;
        when    X"3"    =>
            spi_clk <= spi_clk_temp;
            if spi_clk_temp2 = '0' and spi_clk_temp1 = '1' then
                spi_data <= spi_data_send(spi_data_num);
                if spi_data_num = 0 then
                    state_spi <= X"4";                    
                else            
                    spi_data_num <= spi_data_num - 1;                    
                end if;   
            end if;
        when    X"4"    =>
            spi_clk <= spi_clk_temp;
            if spi_clk_temp2 = '0' and spi_clk_temp1 = '1' then
                state_spi <= X"5";
            end if;
        when    X"5"    =>
            spi_clk <= '0';
            if spi_clk_cnt1 < clk_num   then
                spi_clk_cnt1 <= spi_clk_cnt1 + '1';
            else
                spi_clk_cnt1 <= (others => '0');
                state_spi <= X"6";
            end if;
        when    X"6"    =>   
            spi_cs_n <= '1';         
            if cs_n_cnt < cs_n_num  then
                cs_n_cnt <= cs_n_cnt + '1';
            else
                cs_n_cnt <= (others => '0');
                state_spi <= X"0";
            end if;
        when    others  =>
            state_spi <= X"0";
    end case;
end if;
end process;

spi_clk_gen1 : process(clk_in)
begin
if rising_edge(clk_in)  then
    if state_spi = X"3" or state_spi = X"4"  then
        spi_clk_temp <= not spi_clk_temp1;
    else
        spi_clk_temp <= '0';
    end if;
end if;
end process;

spi_clk_gen2 : process(clk_in)
begin
if rising_edge(clk_in)  then
    spi_clk_temp2 <= spi_clk_temp1;
    if state_spi = X"2" or state_spi = X"3" or state_spi = X"4"  then
        if spi_90_clk_cnt = clk_num - '1' then
            spi_90_clk_cnt <= X"00";
            spi_clk_temp1 <= not spi_clk_temp1;
        else
            spi_90_clk_cnt <= spi_90_clk_cnt + '1';            
        end if;        
    else
        spi_90_clk_cnt <= X"00";
        spi_clk_temp1 <= '0';
    end if;
end if;
end process;

end Behavioral;
