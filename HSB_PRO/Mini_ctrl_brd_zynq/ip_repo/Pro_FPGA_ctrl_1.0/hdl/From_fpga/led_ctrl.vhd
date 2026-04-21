----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/05 09:19:40
-- Design Name: 
-- Module Name: led_ctrl - Behavioral
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

entity led_ctrl is
    generic(
        period_1s        : std_logic_Vector(31 downto 0) :=X"0773_5940";
        period_1ms       : std_logic_Vector(31 downto 0):=X"0001_E848";      -- 实际改为1ms
        period_1ms5       : std_logic_Vector(31 downto 0):=X"0002_DC6C"      -- 实际改为1.5ms
        --        cnt_45           : std_logic_Vector(7 downto 0):=X"2D"
    );
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
        -- led ctrl
        servo_ini_status            : in  std_logic_vector(3 downto 0):=(others => '0');
        led_red                     : out std_logic:='0';
        led_green                   : out std_logic:='0'
    );
end led_ctrl;

architecture Behavioral of led_ctrl is
    signal      led_red1                : std_logic:='0';
    signal      led_green1                : std_logic:='0';
    signal      state_cmd_check         : std_logic_Vector(3 downto 0):=(others => '0');
    signal      state_led_ctrl          : std_logic_Vector(7 downto 0):=X"0F";

    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);
    signal   timer                          : std_logic_Vector(31 downto 0):=(others => '0');
    signal   timer1                          : std_logic_Vector(31 downto 0):=(others => '0');

    signal   case_01        : std_logic_Vector(3 downto 0):=(others => '0');
    signal   case_02        : std_logic_Vector(3 downto 0):=(others => '0');
    signal   case_03        : std_logic_Vector(3 downto 0):=(others => '0');
    signal   case_04        : std_logic_Vector(3 downto 0):=(others => '0');
    signal   case_05        : std_logic_Vector(3 downto 0):=(others => '0');

    --    signal   cnt_45ms       : std_logic_vector(7 downto 0):=(others => '0');
    signal   cnt_03         : std_logic_vector(7 downto 0):=(others => '0');
    signal   cnt_03_pwm         : std_logic_vector(7 downto 0):=(others => '0');
    signal   cnt_03_pwm1         : std_logic_vector(7 downto 0):=(others => '0');
    signal   cnt_light         : std_logic_vector(7 downto 0):=(others => '0');
    signal   cnt_dark          : std_logic_vector(7 downto 0):=(others => '0');
    signal   light_dark         : std_logic:='0';
    constant    timer_1us       : std_logic_vector(7 downto 0):=X"7D";
    constant    timer_1us5       : std_logic_vector(7 downto 0):=X"BC";
    signal      duty_num        : std_logic_vector(9 downto 0):=(others => '0');
    signal      duty_num_pre        : std_logic_vector(9 downto 0):=(others => '0');
    signal      ini_red_cnt     : integer:=0;
    
begin


    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;
            if rst = '1'    then
                state_led_ctrl <= (others => '0');
                state_cmd_check <= (others => '0');
            else
                case    state_cmd_check is
                    when    X"0"    =>
                        tx_data_last <= '0';
                        tx_data_valid <= '0';
                        if rx_data_valid1 = '0' and rx_data_valid = '1' then
                            state_cmd_check <= state_cmd_check + '1';
                        end if;
                    when    X"1"    =>
                        if rx_data_data1 = X"00"    then        -- 写控制状态
                            state_led_ctrl <= rx_data_data;
                            state_cmd_check <= X"2";
                            timer <= (others => '0');
                        elsif rx_data_data1 = X"01"    then     -- 读当前状态
                            state_cmd_check <= X"4";
                        else                                     -- 无效状态 
                            state_cmd_check <= (others => '0');
                        end if;
                    when    X"2"    =>          -- 反馈写状态
                        if rx_data_last1 = '1'  then
                            tx_data_valid <= '1';
                            tx_data_data <= X"00";
                            state_cmd_check <= state_cmd_check + '1';
                        end if;
                    when    X"3"    =>
                        tx_data_data <= state_led_ctrl;
                        tx_data_last <= '1';
                        state_cmd_check <= (others => '0');
                    when    X"4"    =>
                        if rx_data_last1 = '1'  then
                            tx_data_valid <= '1';
                            tx_data_data <= X"01";
                            state_cmd_check <= state_cmd_check + '1';
                        end if;
                    when    X"5"    =>
                        tx_data_data <= state_led_ctrl;
                        tx_data_last <= '1';
                        state_cmd_check <= (others => '0');
                    when    others  =>
                        state_cmd_check <= (others => '0');
                end case;

                case    state_led_ctrl  is
                    when    X"00"    =>      -- 常灭
                        led_red <= '0';
                        led_green <= '0';
                    when    X"01"    =>      -- 上电自检，红绿交替闪烁
                        case case_01 is
                            when    X"0"    =>
                                led_red <= '1';
                                led_green <= '0';
                                if timer < period_1s then     -- act
                                    --                                if timer < period_1ms then      -- sim 
                                    timer <= timer + '1';
                                else
                                    timer <= (others => '0');
                                    case_01 <= X"1";
                                end if;
                            when    X"1"    =>
                                led_red <= '0';
                                led_green <= '1';
                                if timer < period_1s then     -- act
                                    --                                if timer < period_1ms then      -- sim
                                    timer <= timer + '1';
                                else
                                    timer <= (others => '0');
                                    case_01 <= X"0";
                                end if;
                            when    others  =>
                                case_01 <= X"0";
                        end case;
                    when    X"02"    =>      -- 系统自检完成，绿灯常亮
                        led_red <= '0';
                        led_green <= '1';
                    when    X"03"    =>      -- 系统正常运行，绿灯呼吸，2s周期
                        led_red <= '0';
                        case case_03 is
                            when    X"0"    =>      -- 亮
                                led_green <= '1';
                                if cnt_03 < timer_1us - '1'   then
                                    cnt_03 <= cnt_03 + '1';
                                else
                                    cnt_03 <= (others => '0');
                                end if;
                                if cnt_03 = timer_1us - '1'   then
                                    if duty_num < duty_num_pre  then
                                        duty_num <= duty_num + '1';
                                    else
                                        duty_num <= (others => '0');
                                        case_03 <= case_03 + '1';
                                    end if;
                                end if;
                            when    X"1"    =>      -- 灭
                                led_green <= '0';
                                if cnt_03 < timer_1us - '1'   then
                                    cnt_03 <= cnt_03 + '1';
                                else
                                    cnt_03 <= (others => '0');
                                end if;
                                if cnt_03 = timer_1us - '1'   then
                                    if duty_num_pre = X"3E8"  then
                                        case_03 <= case_03 + '1';
                                    else
                                        if duty_num < X"3E8" - duty_num_pre  then
                                            duty_num <= duty_num + '1';
                                        else
                                            duty_num <= (others => '0');
                                            duty_num_pre <= duty_num_pre + '1';
                                            case_03 <= X"0";
                                        end if;
                                    end if;
                                end if;
                            when    X"2"    =>      -- 亮
                                led_green <= '1';
                                if cnt_03 < timer_1us - '1'   then
                                    cnt_03 <= cnt_03 + '1';
                                else
                                    cnt_03 <= (others => '0');
                                end if;
                                if cnt_03 = timer_1us - '1'   then
                                    if duty_num < duty_num_pre  then
                                        duty_num <= duty_num + '1';
                                    else
                                        duty_num <= (others => '0');
                                        case_03 <= case_03 + '1';
                                    end if;
                                end if;
                            when    X"3"    =>      -- 灭
                                led_green <= '0';
                                if cnt_03 < timer_1us - '1'   then
                                    cnt_03 <= cnt_03 + '1';
                                else
                                    cnt_03 <= (others => '0');
                                end if;
                                if cnt_03 = timer_1us - '1'   then
                                    if duty_num_pre = X"000"  then
                                        case_03 <= X"0";
                                    else
                                        if duty_num < X"3E8" - duty_num_pre  then
                                            duty_num <= duty_num + '1';
                                        else
                                            duty_num <= (others => '0');
                                            duty_num_pre <= duty_num_pre - '1';
                                            case_03 <= X"2";
                                        end if;
                                    end if;
                                end if;

                            when    others  =>
                                case_03 <= X"0";
                        end case;
                    when    X"04"    =>      -- 系统异常，不影响运行，红灯呼吸，3s周期
                        led_green <= '0';
                        if timer < period_1ms5   then
                            timer <= timer + '1';
                        else
                            timer <= (others => '0');
                        end if;
                        case case_03 is
                            when    X"0"    =>      -- 亮
                                led_red <= '1';
                                if cnt_03 < cnt_light    then
                                    if timer = X"0000_0000"  then
                                        cnt_03 <= cnt_03 + '1';
                                    end if;
                                else
                                    cnt_03 <= (others => '0');
                                    case_03 <= X"1";
                                end if;
                            when    X"1"    =>      -- 灭
                                led_red <= '0';
                                if cnt_03 < X"0A" - cnt_light    then
                                    if timer = X"0000_0000"  then
                                        cnt_03 <= cnt_03 + '1';
                                    end if;
                                else
                                    cnt_03 <= (others => '0');
                                    case_03 <= X"2";
                                end if;
                            when    X"2"    =>           -- 循环10次                          
                                if cnt_03_pwm < X"0A"   then
                                    cnt_03_pwm <= cnt_03_pwm + '1';
                                    case_03 <= X"0";
                                else
                                    cnt_03_pwm <= X"00";
                                    case_03 <= X"3";
                                end if;
                            when    X"3"    =>      -- 改变占空比 
                                case_03 <= X"0";
                                if light_dark  = '0' then
                                    if cnt_light > X"00"    then
                                        cnt_light <= cnt_light - '1';
                                    else
                                        light_dark <= '1';
                                    end if;
                                else
                                    if cnt_light < X"0A"    then
                                        cnt_light <= cnt_light + '1';
                                    else
                                        light_dark <= '0';
                                    end if;
                                end if;
                            when    others  =>
                                case_03 <= X"0";
                        end case;
                    when    X"05"    =>      -- 系统严重异常，不能运行，红灯常亮
                        led_red <= '1';
                        led_green <= '0';                    
                    when    X"0E"   =>      -- 初始化中
                        case servo_ini_status is
                            when    X"0"    =>      -- 初始化中
                                led_red <= led_red1;
                                led_green <= '0';
                                if timer < period_1s then     -- act                                
                                    timer <= timer + '1';
                                else
                                    led_red1 <= not led_red1;
                                    timer <= (others => '0');                                    
                                end if;                                
                            when    X"1"    =>      -- 初始化完成
                                led_red <= '0';
                                led_green <= '0';
                            when    X"F"    =>      -- 初始化失败
                                led_red <= '1';
                                led_green <= '0';                                
                            when    others  =>
                                led_red <= '0';
                                led_green <= '0';                                
                        end case;                        
                    when    X"0F"   =>      -- 初始化中，红灯固定闪烁6s
                       led_red <= led_red1;
                       led_green <= '0';                    
                       if ini_red_cnt = 6 then
                           state_led_ctrl <= X"0E";
                           ini_red_cnt <= 0;
                       else
                           if timer < period_1s then     -- act                                
                               timer <= timer + '1';
                           else
                               ini_red_cnt <= ini_red_cnt + 1;
                               led_red1 <= not led_red1;
                               timer <= (others => '0');                           
                           end if;                          
                       end if;
                      
                    when    others  =>
                        state_led_ctrl <= (others => '0');
                end case;
            end if;
        end if;
    end process;

end Behavioral;
