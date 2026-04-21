----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/05 16:18:32
-- Design Name: 
-- Module Name: fun_am2302_check - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;


-------------------------
-- status table
-- 0  : 正常
-- 1  : 没有检测到低电平
-- 2  : 响应低电平不在75us--85us范围内
-- 3  : 响应高电平不在75us--85us范围内
-- 4  : 信号低电平不在48us--55us范围内
-- 5  : 信号高电平不在22us--30us或68us--75us范围内
-- 6  : sum check error
entity fun_am2302_check is
    generic(
--        period_2s               : std_logic_vector(31 downto 0):=X"12A0_5F20";      -- 2.5S in 125MHz
        period_2s               : std_logic_vector(31 downto 0):=X"0773_5940";      -- 2.5S in 125MHz
--        period_1ms              : std_logic_vector(31 downto 0):=X"0001_E848";      -- 1ms in 125MHz       
        period_1ms              : std_logic_vector(31 downto 0):=X"0000_C350";      -- 1ms in 125MHz       
        period_5us              : std_logic_vector(7 downto 0):=X"05";
        period_20us              : std_logic_vector(7 downto 0):=X"14";
        period_22us              : std_logic_vector(7 downto 0):=X"16";
        period_30us              : std_logic_vector(7 downto 0):=X"1E";
        period_48us              : std_logic_vector(7 downto 0):=X"30";
        period_55us              : std_logic_vector(7 downto 0):=X"37";
        period_65us              : std_logic_vector(7 downto 0):=X"41";
        period_70us              : std_logic_vector(7 downto 0):=X"46";
        period_75us              : std_logic_vector(7 downto 0):=X"4B";
        period_85us              : std_logic_vector(7 downto 0):=X"55";
        period_90us              : std_logic_vector(7 downto 0):=X"5A";
--        us_num                   : std_logic_vector(7 downto 0):=X"7D"  -- 125
        us_num                   : std_logic_vector(7 downto 0):=X"32"  -- 50        
    );
    Port (
        gtx_clk     		        : in  std_logic;
        rst                         : in  std_logic;
        AM2302_SDA                  : inout std_logic;
        s_data_ctrl_s               : out std_logic:='Z';
        status_r                    : out std_logic_vector(31 downto 0);
        am2302_temp                 : out std_logic_Vector(15 downto 0):=(others => '0');
        am2302_humi                 : out std_logic_Vector(15 downto 0):=(others => '0')        
    );
end fun_am2302_check;

architecture Behavioral of fun_am2302_check is

    signal      state_am2302        : std_logic_vector(3 downto 0):=(others => '0');

    signal        am2302_temp1                 :  std_logic_Vector(15 downto 0):=(others => '0');
    signal        am2302_humi1                 :  std_logic_Vector(15 downto 0):=(others => '0');
    signal        period_cnt                   :  std_logic_vector(31 downto 0):=(others => '0');
    signal        s_data_in                    :  std_logic:='1';
    signal        s_data_out                   :  std_logic:='1';
    signal        s_data_ctrl                  :  std_logic:='Z';
    signal        s_data_ctrl1                 :  std_logic:='Z';
    signal        rx_data                      :  std_logic_vector(39 downto 0):=(others => '0');
    signal        rx_index                     :  integer:=39;
    signal        us_cnt                       :  std_logic_vector(7 downto 0):=(others => '0');
    signal        us_count                     :  std_logic_vector(7 downto 0):=(others => '0');
    signal        clk_1us                      :  std_logic:='0';
    signal        clk_1ust                     :  std_logic:='0';
    signal        work_cnt                     :  std_logic_vector(15 downto 0):=(others => '0');
    signal        status                       :  std_logic_vector(3 downto 0):=(others => '0');
    signal        s_data_in1                   :  std_logic:='0';
    signal        s_data_out1                  :  std_logic:='0';
    
begin

    inst_am2302_io : IOBUF
        generic map (
            DRIVE => 12,
            IOSTANDARD => "DEFAULT",
            SLEW => "SLOW")
        port map (
            O => s_data_in1,     -- Buffer output
            IO => AM2302_SDA,   -- Buffer inout port (connect directly to top-level port)
            I => s_data_out1,     -- Buffer input
            T => s_data_ctrl1      -- 3-state enable input, high=input, low=output 
        );
    s_data_ctrl_s <= not s_data_ctrl1;    
    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            clk_1ust <= clk_1us;
            if us_cnt < us_num - '1'  then
                us_cnt <= us_cnt + '1';
            else
                us_cnt <= (others => '0');
                clk_1us <= not clk_1us;
            end if;
        end if;
    end process;

    status_r <= work_cnt & X"000" & status;
    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            s_data_in      <=  s_data_in1  ;
            s_data_out1     <=  s_data_out ;
            s_data_ctrl1    <=  s_data_ctrl;
            if rst = '1'    then
                state_am2302 <= (others => '0');
                work_cnt <= (others => '0');                
            else
                case    state_am2302    is
                    when    X"0"    =>      -- 2s  period
                        if period_cnt < period_2s   then
                            period_cnt <= period_cnt + '1';
                        else
                            period_cnt <= (others => '0');
                            work_cnt <= work_cnt + '1';
                            state_am2302 <= state_am2302 + '1';
                        end if;
                        s_data_ctrl <= 'Z';
                        s_data_out <= '1';
                    when    X"1"    =>              -- 发送1ms的低电平
                        s_data_ctrl <= '0';
                        s_data_out <= '0';
                        if period_cnt < period_1ms   then
                            period_cnt <= period_cnt + '1';
                        else
                            period_cnt <= (others => '0');
                            state_am2302 <= state_am2302 + '1';
                        end if;
                    when    X"2"    =>              -- 释放总线5us
                        s_data_ctrl <= '1';
                        if clk_1ust /= clk_1us then
                            if us_count < period_5us   then
                                us_count <= us_count + '1';
                            else
                                us_count <= (others => '0');
                                state_am2302 <= state_am2302 + '1';
                            end if;
                        end if;

                    when    X"3"    =>              -- 等待低电平,最多等待200us               
                        if s_data_in = '1'  then
                            if clk_1ust /= clk_1us   then
                                if us_count < period_85us   then
                                    us_count <= us_count + '1';
                                else
                                    us_count <= (others => '0');
                                    state_am2302 <= (others => '0');
                                    status <= X"1";                     -- 没有检测到低电平
                                end if;
                            end if;
                        else
                            state_am2302 <= state_am2302 + '1';
                            us_count <= (others => '0');
                        end if;
                    when    X"4"    =>      -- 检测低电平时间是否在80us左右
                        if s_data_in = '0'  then
                            if clk_1ust /= clk_1us   then
                                us_count <= us_count + '1';
                            end if;
                        else
                            if us_count > period_70us and us_count < period_90us    then
                                state_am2302 <= state_am2302 + '1';
                                us_count <= (others => '0');
                            else
                                state_am2302 <= (others => '0');
                                us_count <= (others => '0');
                                status <= X"2";                         -- 响应低电平不在75us--85us范围内
                            end if;
                        end if;
                    when    X"5"    =>      -- 检测高电平时间是否在80us左右
                        rx_index <= 39;
                        if s_data_in = '1'  then
                            if clk_1ust /= clk_1us   then
                                us_count <= us_count + '1';
                            end if;
                        else
                            if us_count > period_70us and us_count < period_90us    then
                                state_am2302 <= state_am2302 + '1';
                                us_count <= (others => '0');
                            else
                                state_am2302 <= (others => '0');
                                us_count <= (others => '0');
                                status <= X"3";                         -- 响应高电平不在70us--90us范围内
                            end if;
                        end if;
                    when    X"6"    =>      -- 信号低电平需在48--55us范围内
                        if s_data_in = '0'  then
                            if clk_1ust /= clk_1us   then
                                us_count <= us_count + '1';
                            end if;
                        else
                            if us_count > period_48us and us_count < period_55us    then
                                state_am2302 <= state_am2302 + '1';
                                us_count <= (others => '0');
                            else
                                state_am2302 <= (others => '0');
                                us_count <= (others => '0');
                                status <= X"4";                         -- 信号低电平不在48us--55us范围内
                            end if;
                        end if;
                    when    X"7"    =>
                        if s_data_in = '1'  then
                            if clk_1ust /= clk_1us   then
                                us_count <= us_count + '1';
                            end if;
                        else
                            if us_count > period_22us and us_count < period_30us    then
                                state_am2302 <= state_am2302 + '1';
                                rx_data(rx_index) <=  '0';
                                us_count <= (others => '0');
                            elsif  us_count > period_65us and us_count < period_75us    then
                                state_am2302 <= state_am2302 + '1';
                                rx_data(rx_index) <=  '1';
                                us_count <= (others => '0');
                            else
                                state_am2302 <= (others => '0');
                                us_count <= (others => '0');
                                status <= X"5";                         -- 响应高电平不在75us--85us范围内
                            end if;
                        end if;
                    when    X"8"    =>
                        if  rx_index = 0 then
                            state_am2302 <= state_am2302 + '1';
                        else
                            rx_index <= rx_index - 1;
                            state_am2302 <= X"6";
                        end if;
                    when    X"9"    =>              -- sum check
                        if rx_data(7 downto 0) = rx_data(39 downto 32) + rx_data(31 downto 24) + rx_data(23 downto 16) + rx_data(15 downto 8)    then
                            state_am2302 <= state_am2302 + '1';
                        else
                            state_am2302 <= (others => '0');
                            status <= X"6";                         -- sum check error
                        end if;
                    when    X"A"    =>
                        am2302_temp1 <= rx_data(23  downto 8);
                        am2302_humi1 <= rx_data(39  downto 24);
                        state_am2302 <= state_am2302 + '1';
                    when    X"B"    =>
                        am2302_humi <= am2302_humi1;
                        if am2302_temp1(15) = '1'   then
                            am2302_temp(15) <= '1';
                            am2302_temp(14 downto 0) <= B"0000_0000_0000_000" - am2302_temp1(14 downto 0);
                        else
                            am2302_temp <= am2302_temp1;
                        end if;
                        status <= X"0";
                        state_am2302 <= (others => '0');
                    when    others  =>
                        state_am2302 <= (others => '0');
                end case;
            end if;
        end if;
    end process;
    
end Behavioral;
