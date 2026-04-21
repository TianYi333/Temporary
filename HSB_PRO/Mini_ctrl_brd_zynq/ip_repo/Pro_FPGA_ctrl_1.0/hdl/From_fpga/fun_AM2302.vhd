----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/05 15:56:18
-- Design Name: 
-- Module Name: fun_AM2302 - Behavioral
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

entity fun_AM2302 is
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
        -- AM2302
--        AM2302_SDA_1                : inout std_logic:='1';
--        AM2302_SDA_2                : inout std_logic:='1';
--        AM2302_SDA_3                : inout std_logic:='1';
--        AM2302_SDA_1_ctrl           : out  std_logic:='Z';
--        AM2302_SDA_2_ctrl           : out  std_logic:='Z';
--        AM2302_SDA_3_ctrl           : out  std_logic:='Z';
        am2302_1_s_data_in1                    :  in std_logic:='1';
        am2302_1_s_data_out1                   :  out std_logic:='1';
        am2302_1_s_data_ctrl1                  :  out std_logic:='Z';
        am2302_2_s_data_in1                    :  in std_logic:='1';
        am2302_2_s_data_out1                   :  out std_logic:='1';
        am2302_2_s_data_ctrl1                  :  out std_logic:='Z';
        am2302_3_s_data_in1                    :  in std_logic:='1';
        am2302_3_s_data_out1                   :  out std_logic:='1';
        am2302_3_s_data_ctrl1                  :  out std_logic:='Z';        
        
        am2302_1_temp               : out std_logic_Vector(15 downto 0):=(others => '0');
        am2302_1_humi               : out std_logic_Vector(15 downto 0):=(others => '0');
        status_1                    : out std_logic_vector(3 downto 0);
        am2302_2_temp               : out std_logic_Vector(15 downto 0):=(others => '0');
        am2302_2_humi               : out std_logic_Vector(15 downto 0):=(others => '0');
        status_2                    : out std_logic_vector(3 downto 0);
        am2302_3_temp               : out std_logic_Vector(15 downto 0):=(others => '0');
        am2302_3_humi               : out std_logic_Vector(15 downto 0):=(others => '0');
        status_3                    : out std_logic_vector(3 downto 0)
    );
end fun_AM2302;

architecture Behavioral of fun_AM2302 is

    component fun_am2302_check
        Port (
            gtx_clk     		        : in  std_logic;
            rst                         : in  std_logic;

--        sda                         : inout  std_logic:='1';
--        sda_ctrl                    : out std_logic:='1';
        s_data_in1                    :  in std_logic:='1';
        s_data_out1                   :  out std_logic:='1';
        s_data_ctrl1                  :  out std_logic:='Z';
            am2302_temp                 : out std_logic_Vector(15 downto 0):=(others => '0');
            am2302_humi                 : out std_logic_Vector(15 downto 0):=(others => '0');
            status                      : out std_logic_vector(3 downto 0)
        );
    end component;

    signal   am2302_1_temp1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   am2302_1_humi1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   status_11                    :  std_logic_vector(3 downto 0);
    signal   am2302_2_temp1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   am2302_2_humi1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   status_21                    :  std_logic_vector(3 downto 0);
    signal   am2302_3_temp1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   am2302_3_humi1               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal   status_31                    :  std_logic_vector(3 downto 0);


    signal   state_am2302                    : std_logic_vector(3 downto 0):=(others => '0');
    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);

begin

    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;        
            if rst = '1'    then
                state_am2302 <= (others => '0');
            else
                case    state_am2302    is
                    when    X"0"    =>
                        tx_data_last <= '0';
                        tx_data_valid <= '0';
                        tx_data_data <= (OTHERS => '0');
                        if rx_data_last1 = '1' then
                            state_am2302 <= state_am2302 + '1';
                        end if;
                    when    X"1"    =>
                        tx_data_valid <= '1';
                        tx_data_data <= X"0" & status_11;
                        state_am2302 <= state_am2302 + '1';
                    when    X"2"    =>
                        tx_data_data <= am2302_1_humi1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"3"    =>
                        tx_data_data <= am2302_1_humi1(7 downto 0);
                        state_am2302 <= state_am2302 + '1';
                    when    X"4"    =>
                        tx_data_data <= am2302_1_temp1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"5"    =>
                        tx_data_data <= am2302_1_temp1(7 downto 0);
                        state_am2302 <= state_am2302 + '1';
                    when    X"6"    =>
                        tx_data_data <= X"0" & status_21;
                        state_am2302 <= state_am2302 + '1';
                    when    X"7"    =>
                        tx_data_data <= am2302_2_humi1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"8"    =>
                        tx_data_data <= am2302_2_humi1(7 downto 0);
                        state_am2302 <= state_am2302 + '1';
                    when    X"9"    =>
                        tx_data_data <= am2302_2_temp1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"A"    =>
                        tx_data_data <= am2302_2_temp1(7 downto 0);
                        state_am2302 <= state_am2302 + '1';
                    when    X"B"    =>
                        tx_data_data <= X"0" & status_31;
                        state_am2302 <= state_am2302 + '1';
                    when    X"C"    =>
                        tx_data_data <= am2302_3_humi1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"D"    =>
                        tx_data_data <= am2302_3_humi1(7 downto 0);
                        state_am2302 <= state_am2302 + '1';
                    when    X"E"    =>
                        tx_data_data <= am2302_3_temp1(15 downto 8);
                        state_am2302 <= state_am2302 + '1';
                    when    X"F"    =>
                        tx_data_data <= am2302_3_temp1(7 downto 0);
                        tx_data_last <= '1';
                        state_am2302 <= (others => '0');
                    when    others  =>
                        state_am2302 <= (others => '0');
                end case;
            end if;
        end if;
    end process;



    am2302_1_temp      <= am2302_1_temp1;
    am2302_1_humi      <= am2302_1_humi1;
    status_1           <= status_11     ;
    am2302_2_temp      <= am2302_2_temp1;
    am2302_2_humi      <= am2302_2_humi1;
    status_2           <= status_21     ;
    am2302_3_temp      <= am2302_3_temp1;
    am2302_3_humi      <= am2302_3_humi1;
    status_3           <= status_31     ;

    inst_fun_am2302_check_1 : fun_am2302_check
        port map(
            gtx_clk         =>  gtx_clk ,
            rst             =>  rst     ,
--            sda             =>  AM2302_SDA_1,
--            sda_ctrl        =>  AM2302_SDA_1_ctrl,
            s_data_in1      =>  am2302_1_s_data_in1  ,
            s_data_out1     =>  am2302_1_s_data_out1 ,
            s_data_ctrl1    =>  am2302_1_s_data_ctrl1,
            am2302_temp     =>  am2302_1_temp1,
            am2302_humi     =>  am2302_1_humi1,
            status          =>  status_11
        );

    inst_fun_am2302_check_2 : fun_am2302_check
        port map(
            gtx_clk         =>  gtx_clk ,
            rst             =>  rst     ,
--            sda             =>  AM2302_SDA_1,
--            sda_ctrl        =>  AM2302_SDA_1_ctrl,
            s_data_in1      =>  am2302_2_s_data_in1  ,
            s_data_out1     =>  am2302_2_s_data_out1 ,
            s_data_ctrl1    =>  am2302_2_s_data_ctrl1,
            am2302_temp     =>  am2302_2_temp1,
            am2302_humi     =>  am2302_2_humi1,
            status          =>  status_21
        );

    inst_fun_am2302_check_3 : fun_am2302_check
        port map(
            gtx_clk         =>  gtx_clk ,
            rst             =>  rst     ,
--            sda             =>  AM2302_SDA_1,
--            sda_ctrl        =>  AM2302_SDA_1_ctrl,
            s_data_in1      =>  am2302_3_s_data_in1  ,
            s_data_out1     =>  am2302_3_s_data_out1 ,
            s_data_ctrl1    =>  am2302_3_s_data_ctrl1,
            am2302_temp     =>  am2302_3_temp1,
            am2302_humi     =>  am2302_3_humi1,
            status          =>  status_31
        );


end Behavioral;
