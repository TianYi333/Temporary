----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/18 09:11:03
-- Design Name: 
-- Module Name: fun_J - Behavioral
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

entity fun_J is
    Port (
        gtx_clk     		        : in  std_logic;
        rst                         : in  std_logic;
        -- rx cmd data
        rx_data_valid               : in  std_logic;
        rx_data_last                : in  std_logic;
        rx_data_data                : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid               : out std_logic:='0';
        tx_data_last                : out std_logic:='0';
        tx_data_data                : out std_logic_vector(7 downto 0):=(others => '0');
        J_vector                    : out std_logic_Vector(3 downto 0):=(others => '0')
    );
end fun_J;

architecture Behavioral of fun_J is

    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);

    signal  state_main                      : std_logic_Vector(3 downto 0):=(others => '0');
    signal  J_vector1                       : std_logic_Vector(3 downto 0):=(1 => '1',others => '0');       -- 舵机初始即上电 20240224
    
begin


J_vector <= J_vector1;

    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1  <=  rx_data_valid;
            rx_data_last1   <=  rx_data_last ;
            rx_data_data1   <=  rx_data_data ;
            case    state_main is
                when    X"0"    =>
                    if rx_data_valid1 = '0' and rx_data_valid = '1' then
                        state_main <= state_main + '1';
                    end if;
                when    X"1"    =>
                    case    rx_data_data1 is
                        when    X"00"   =>      -- 控制继电器
                            state_main <= X"2";
                        when    X"01"   =>      -- 查询继电器
                            state_main <= X"3";
                        when    others  =>
                            state_main <= (others => '0');
                    end case;
                --控制继电器
                when    X"2"    =>
                    J_vector1 <= rx_data_data1(3 downto 0);
                    state_main <= X"E";
                -- 查询继电器
                when    X"3"    =>
                    if rx_data_last1 = '1'  then
                        tx_data_valid <= '1';
                        tx_data_data <= X"01";
                        state_main <= state_main + '1';
                    end if; 
                when    X"4"    =>                                            
                        tx_data_last <= '1';
                        tx_data_data <= X"0" & J_vector1;
                        state_main <= X"F";                         
                                                  
                when    X"E"    =>
                    if rx_data_last1 = '1'  then
                        tx_data_valid <= '1';
                        tx_data_last <= '1';
                        tx_data_data <= (others => '0');
                        state_main <= state_main + '1';
                    end if;
                when    X"F"    =>
                    tx_data_valid <= '0';
                    tx_data_last <= '0';
                    state_main <= (others => '0');
                when    others  =>
                    state_main <= (others => '0');
            end case;
        end if;
    end process;


end Behavioral;
