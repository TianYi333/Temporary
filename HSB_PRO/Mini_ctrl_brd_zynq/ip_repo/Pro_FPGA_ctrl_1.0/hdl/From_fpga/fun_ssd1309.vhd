----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/11 08:33:48
-- Design Name: 
-- Module Name: fun_ssd1309 - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;
Library UNIMACRO;
use UNIMACRO.vcomponents.all;




entity fun_ssd1309 is

    generic(
        rst_num     : std_logic_vector(11 downto 0):=X"271"  -- 5us in 125MHz

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
        -- ssd1309        
        CS                          : out  std_logic;
        DC                          : out  std_logic;
        RES                         : out  std_logic;
        SDA                         : out  std_logic;
        SCL                         : out  std_logic;
        -- temp
        temp1                       :   in std_logic_vector(15 downto 0):=(others => '0');
        temp2                       :   in std_logic_vector(15 downto 0):=(others => '0');
        temp3                       :   in std_logic_vector(15 downto 0):=(others => '0');
        -- angle
        angle_heading               : in std_logic_vector(15 downto 0):=(others => '0');       -- º½Ïò½Ç
        angle_pitch                 : in std_logic_vector(15 downto 0):=(others => '0');       -- ¸©Ñö½Ç
        angle_roll                  : in std_logic_vector(15 downto 0):=(others => '0');       -- ·­¹ö½Ç
        angle_servo                 : in std_logic_vector(15 downto 0):=(others => '0');       -- ¶æ»ú½Ç
        angle_status                : in std_logic_Vector(7 downto 0):=(others => '0')

    );
end fun_ssd1309;

architecture Behavioral of fun_ssd1309 is

    signal   CS1                          :   std_logic:='1';
    signal   DC1                          :   std_logic:='0';
    signal   RES1                         :   std_logic:='1';
    signal   SDA1                         :   std_logic:='1';
    signal   SCL1                         :   std_logic:='1';

    component spi_gen
        generic(
            spi_data_width      : integer:=8;
            clk_num             : std_logic_vector(7 downto 0):=X"7D";
            cs_n_num            : std_logic_vector(7 downto 0):=X"7D"
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
    end component;


    signal  spi_data_in           :  std_logic_vector(7 downto 0);
    signal  spi_data_in_valid     :  std_logic:='0';
    signal  spi_ready             :  std_logic:='0';



    signal    state_wr_ram      : std_logic_Vector(3 downto 0):=(others => '0');
    signal    state_rd_ram      : std_logic_Vector(3 downto 0):=(others => '0');
    signal    state_ssd1309     : std_logic_Vector(3 downto 0):=(others => '0');
    signal    rst_cnt           : std_logic_vector(11 downto 0):=(others => '0');
    signal    state_output      : std_logic_Vector(3 downto 0):=(others => '0');

    signal   rx_data_valid1               :   std_logic;
    signal   rx_data_last1                :   std_logic;
    signal   rx_data_data1                :   std_logic_vector(7 downto 0);
    type    array_5 is array(1 to 5) of std_logic_Vector(7 downto 0);
    signal   rx_array   : array_5   :=(others => (others => '0'));
    signal   rx_num                       :   std_logic_vector(7 downto 0):=(others => '0');
    signal   tx_cnt     : integer:=1;
    signal   ram_en_vector  : std_logic_vector(2 downto 0):=(others => '0');


    component fun_display_gy_25
        Port (
            clk               :   in std_logic;
            rst               :   in std_logic;
            offset_row        :   in std_logic_vector(7 downto 0);
            offset_line       :   in std_logic_vector(7 downto 0);
            -- angle
            angle_heading     :   in std_logic_vector(15 downto 0):=(others => '0');       -- º½Ïò½Ç
            angle_pitch       :   in std_logic_vector(15 downto 0):=(others => '0');       -- ¸©Ñö½Ç
            angle_roll        :   in std_logic_vector(15 downto 0):=(others => '0');       -- ·­¹ö½Ç
            angle_servo       :   in std_logic_vector(15 downto 0):=(others => '0');       -- ¶æ»ú½Ç
            angle_status      :   in std_logic_Vector(7 downto 0):=(others => '0');
            fun_ready         :   out std_logic:='0';
            fun_valid         :   in std_logic;
            rd_addr           :   in std_logic_vector(9 downto 0);
            rd_addr_valid     :   in std_logic;
            data_out          :   out std_logic_vector(7 downto 0):=(others => '0');
            data_out_valid    :   out std_logic:='0'
        );
    end component;
    signal  fun_display_gy_25_ready             : std_logic:='0';
    signal  fun_display_gy_25_valid             : std_logic:='0';
    signal  fun_display_gy_25_rd_addr           :    std_logic_vector(9 downto 0):=(others => '0');
    signal  fun_display_gy_25_rd_addr_valid     :    std_logic:='0';
    signal  fun_display_gy_25_data_out          :    std_logic_vector(7 downto 0):=(others => '0');
    signal  fun_display_gy_25_data_out_valid    :    std_logic:='0';


    signal      pc_offset_row         : std_logic_vector(7 downto 0):=(others => '0');
    signal      pc_offset_line        : std_logic_vector(7 downto 0):=(others => '0');

    signal      rx_data                 : std_logic_vector(7 downto 0):=X"02";
    signal      state_display_angle     : std_logic_Vector(3 downto 0):=(others => '0');
    constant    time_100ms              : std_logic_vector(23 downto 0):=X"BE_BC20";
    signal      time_cnt                : std_logic_vector(23 downto 0):=(others => '0');
    signal      loop_cnt                : integer:=1;
    constant    loop_num                : integer:=30;
    signal      state_spi_use           : std_logic_Vector(3 downto 0):=(others => '0');
    signal      state_send_pc_spi       : std_logic_Vector(3 downto 0):=(others => '0');
    signal      spi_tx_cnt              : integer:=1;
    signal      state_ini               : std_logic_Vector(3 downto 0):=(others => '0');

    component fun_display_am2302
        Port (
            clk               :   in std_logic;
            rst               :   in std_logic;
            offset_row        :   in std_logic_vector(7 downto 0);
            offset_line       :   in std_logic_vector(7 downto 0);
            -- temp and status
            temp1             :   in std_logic_vector(15 downto 0):=(others => '0');       -- 
            temp2             :   in std_logic_vector(15 downto 0):=(others => '0');       -- 
            temp3             :   in std_logic_vector(15 downto 0):=(others => '0');       -- 
            sys_status        :   in std_logic_vector(15 downto 0):=(others => '0');       -- 
            fun_ready         :   out std_logic:='0';
            fun_valid         :   in std_logic;
            rd_addr           :   in std_logic_vector(9 downto 0);
            rd_addr_valid     :   in std_logic;
            data_out          :   out std_logic_vector(7 downto 0):=(others => '0');
            data_out_valid    :   out std_logic:='0'
        );
    end component;
    signal  sys_status                           :    std_logic_Vector(15 downto 0):=(others => '0');
    signal  fun_display_am2302_ready             :    std_logic:='0';
    signal  fun_display_am2302_valid             :    std_logic:='0';
    signal  fun_display_am2302_rd_addr           :    std_logic_vector(9 downto 0):=(others => '0');
    signal  fun_display_am2302_rd_addr_valid     :    std_logic:='0';
    signal  fun_display_am2302_data_out          :    std_logic_vector(7 downto 0):=(others => '0');
    signal  fun_display_am2302_data_out_valid    :    std_logic:='0';

begin

    CS         <=  CS1 ;
    DC         <=  DC1 ;
    RES        <=  RES1;
    SDA        <=  SDA1;
    SCL        <=  SCL1;

    inst_ssd1309_spi_gen : spi_gen
        port map(
            clk_in              =>  gtx_clk           ,
            spi_data_in         =>  spi_data_in      ,
            spi_data_in_valid   =>  spi_data_in_valid,
            spi_ready           =>  spi_ready        ,
            spi_cs_n            =>  CS1         ,
            spi_clk             =>  SCL1,
            spi_data            =>  SDA1
        );

    inst_fun_display_gy_25 : fun_display_gy_25
        port map(
            clk                 =>  gtx_clk      ,
            rst                 =>  rst          ,
            offset_row          =>  pc_offset_row   ,
            offset_line         =>  pc_offset_line  ,
            -- angle            =>  -- angle     ,
            angle_heading       =>  angle_heading,
            angle_pitch         =>  angle_pitch  ,
            angle_roll          =>  angle_roll   ,
            angle_servo         =>  angle_servo,
            angle_status        =>  angle_status ,
            fun_ready           =>  fun_display_gy_25_ready,
            fun_valid           =>  fun_display_gy_25_valid ,
            rd_addr             =>  fun_display_gy_25_rd_addr       ,
            rd_addr_valid       =>  fun_display_gy_25_rd_addr_valid ,
            data_out            =>  fun_display_gy_25_data_out      ,
            data_out_valid      =>  fun_display_gy_25_data_out_valid
        );

    inst_fun_display_am2302 : fun_display_am2302
        port map(
            clk                     =>  gtx_clk               ,
            rst                     =>  rst               ,
            offset_row              =>  pc_offset_row        ,
            offset_line             =>  pc_offset_line       ,
            -- temp and status      =>  -- temp and status,
            temp1                   =>  temp1             ,
            temp2                   =>  temp2             ,
            temp3                   =>  temp3             ,
            sys_status              =>  sys_status        ,
            fun_ready               =>  fun_display_am2302_ready         ,
            fun_valid               =>  fun_display_am2302_valid         ,
            rd_addr                 =>  fun_display_am2302_rd_addr           ,
            rd_addr_valid           =>  fun_display_am2302_rd_addr_valid     ,
            data_out                =>  fun_display_am2302_data_out          ,
            data_out_valid          =>  fun_display_am2302_data_out_valid
        );

    ssd1309_gen : process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            rx_data_valid1  <= rx_data_valid;
            rx_data_last1   <= rx_data_last ;
            rx_data_data1   <= rx_data_data ;
            if rst = '1'    then
                state_ssd1309 <= (others => '0');
            else
                case    state_ssd1309    is
                    when    X"0"    =>      -- res low for 5us
                        if rst_cnt < rst_num    then
                            rst_cnt <= rst_cnt + '1';
                            RES1 <= '0';
                        else
                            rst_cnt <= (others => '0');
                            RES1 <= '1';
                            state_ssd1309 <= state_ssd1309 + '1';
                        end if;
                    when    X"1"    =>
                        state_spi_use <= X"3";
                        state_ssd1309 <= state_ssd1309 + '1';
                    when    X"2"    =>
                        if state_spi_use = X"0" then
                            state_ssd1309 <= state_ssd1309 + '1';
                            state_spi_use <= X"2";
                        end if;
                    when    X"3"    =>              -- µÈ´ıpcÃüÁî
                        if rx_data_valid1 = '0' and rx_data_valid = '1' then
                            rx_data <= rx_data_data;
                            case rx_data_data is
                                when    X"00"   =>  -- ¼Ä´æÆ÷²Ù×÷
                                    state_ssd1309 <= X"5";        
                                when    X"01"   =>  -- sys update
                                    state_ssd1309 <= X"9";                             
                                when    X"02"   =>  -- d_ram Ğ´Èë
                                    state_ssd1309 <= X"8";                                    
                                when    others  =>
                                    state_ssd1309 <= X"D";
                            end case;
                        end if;
                    when    X"5"    =>
                        rx_num <= rx_data_data;
                        tx_cnt <= 1;
                        state_ssd1309 <= state_ssd1309 + '1';
                    when    X"6"    =>
                        rx_array(tx_cnt) <= rx_data_data;
                        if tx_cnt < to_integer(unsigned(rx_num))  then
                            tx_cnt <= tx_cnt + 1;
                        else
                            tx_cnt <= 1;
                            state_ssd1309 <= state_ssd1309 + '1';
                        end if;
                    when    X"7"    =>
                        spi_tx_cnt <= 1;
                        state_spi_use <= X"1";
                        if rx_data_last1 = '1'  then
                            state_ssd1309 <= X"E";
                        end if;

                    when    X"8"    =>      -- wait for write d ram
                        state_spi_use <= X"2";
                        if rx_data_last1 = '1'  then
                            state_ssd1309 <= X"E";
                        end if;
                        
                    when    X"9"    =>      -- sys update
                        state_spi_use <= X"2";
                        sys_status(7 downto 0) <= rx_data_data;
                        state_ssd1309 <= state_ssd1309 + '1';
                    when    X"A"    =>                        
                        if rx_data_last1 = '1'  then
                            state_ssd1309 <= X"E";
                        end if;

                    when    X"D"    =>      -- 
                        if rx_data_last1 = '1'  then
                            state_ssd1309 <= X"E";
                        end if;
                    when    X"E"    =>
                        tx_data_valid <= '1';
                        tx_data_last <= '1';
                        tx_data_data <= X"00";
                        state_ssd1309 <= state_ssd1309 + '1';
                    when    X"F"    =>
                        tx_data_valid <= '0';
                        tx_data_last <= '0';
                        tx_data_data <= X"00";
                        state_ssd1309 <= X"3";
                    when    others  =>

                end case;
            end if;
            case    state_spi_use   is
                when    X"0"    =>
                    null;
                when    X"1"    =>      -- state_send_pc_spi
                    DC1 <= '0';
                    case   state_send_pc_spi    is
                        when    X"0"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= rx_array(spi_tx_cnt);
                                if spi_tx_cnt < rx_num  then
                                    spi_tx_cnt <= spi_tx_cnt + 1;
                                else
                                    spi_tx_cnt <= 1;
                                    state_send_pc_spi <= state_send_pc_spi + '1';
                                end if;
                            else
                                spi_data_in_valid <= '0';
                            end if;
                        when    X"1"    =>
                            if spi_ready = '1'  then
                                state_spi_use <= X"0";
                                state_send_pc_spi <= X"0";
                            end if;
                        when    others  =>

                    end case ;
                when    X"2"    =>      -- state_display_angle
                    DC1 <= '1';
                    case    state_display_angle is
                        when    X"0"    =>
                            if rx_data = X"02" OR rx_data = x"01"  then
                                state_display_angle <= state_display_angle + '1';
                            end if;
                        when    X"1"    =>
                            pc_offset_row <= X"00";
                            pc_offset_line <= X"08";
                            state_display_angle <= state_display_angle + '1';
                        when    X"2"    =>
                            if fun_display_gy_25_ready = '1' then
                                state_display_angle <= state_display_angle + '1';
                                fun_display_gy_25_valid <= '1';
                            end if;
                            fun_display_gy_25_rd_addr <= (others => '0');
                        when    X"3"    =>
                            fun_display_gy_25_valid <= '0';
                            if fun_display_gy_25_ready = '1' then
                                state_display_angle <= state_display_angle + '1';
                            end if;
                        when    X"4"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= fun_display_gy_25_data_out;
                                fun_display_gy_25_rd_addr <= fun_display_gy_25_rd_addr + '1';
                                if fun_display_gy_25_rd_addr = B"1111_1111_11" then
                                    state_display_angle <= state_display_angle + '1';
                                end if;
                            else
                                spi_data_in_valid <= '0';
                            end if;
                        when    X"5"    =>    
                            spi_data_in_valid <= '0';
                            if time_cnt = X"00_0000"    then
                                if loop_cnt < loop_num then
                                    state_display_angle <= X"0";
                                    loop_cnt <= loop_cnt + 1;
                                else
                                    state_display_angle <= state_display_angle + '1';
                                    loop_cnt <= 1;
                                end if;                                
                            end if;
                        --- display am2302
                        when    X"6"    =>
                            pc_offset_row <= X"08";
                            pc_offset_line <= X"08";
                            state_display_angle <= state_display_angle + '1';
                        when    X"7"    =>
                            if fun_display_am2302_ready = '1' then
                                state_display_angle <= state_display_angle + '1';
                                fun_display_am2302_valid <= '1';
                            end if;
                            fun_display_am2302_rd_addr <= (others => '0');
                        when    X"8"    =>
                            fun_display_am2302_valid <= '0';
                            if fun_display_am2302_ready = '1' then
                                state_display_angle <= state_display_angle + '1';
                            end if;
                        when    X"9"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= fun_display_am2302_data_out;
                                fun_display_am2302_rd_addr <= fun_display_am2302_rd_addr + '1';
                                if fun_display_am2302_rd_addr = B"1111_1111_11" then
                                    state_display_angle <= state_display_angle + '1';
                                end if;
                            else
                                spi_data_in_valid <= '0';
                            end if;
                        when    X"A"    =>    
                            spi_data_in_valid <= '0';
                            if time_cnt = X"00_0000"    then
                                if loop_cnt < loop_num then
                                    state_display_angle <= X"6";
                                    loop_cnt <= loop_cnt + 1;
                                else
                                    state_display_angle <= state_display_angle + '1';
                                    loop_cnt <= 1;
                                end if;                                
                            end if;
                            
                        when    others  =>
                            state_display_angle <= X"0";
                    end case;
                when    X"3"    =>      -- ini
                    DC1 <= '0';
                    case    state_ini   is
                        when    X"0"    =>
                            state_ini <= state_ini + '1';
                        when    X"1"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= X"AF";
                                state_ini <= state_ini + '1';
                            end if;
                        when    X"2"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= X"20";
                                state_ini <= state_ini + '1';
                            else
                                spi_data_in_valid <= '0';
                            end if;
                        when    X"3"    =>
                            if spi_ready = '1'  then
                                spi_data_in_valid <= '1';
                                spi_data_in <= X"00";
                                state_ini <= state_ini + '1';
                            else
                                spi_data_in_valid <= '0';
                            end if;
                        when    X"4"    =>
                            spi_data_in_valid <= '0';
                            if spi_ready = '1'  then
                                state_spi_use <= X"0"; 
                                state_ini <= X"0";     
                            end if;                                                        
                        when    others  =>
                    end case;

                when    X"4"    =>

                when    others  =>

            end case;
        end if;
    end process;

    process(gtx_clk)
    begin
        if rising_edge(gtx_clk) then
            if state_display_angle/= X"0" or state_display_angle/= X"6"    then
                if time_cnt < time_100ms    then
                    time_cnt <= time_cnt + '1';
                else
                    time_cnt <= (others => '0');
                end if;
            else
                time_cnt <= (others => '0');
            end if;
        end if;
    end process;

end Behavioral;
