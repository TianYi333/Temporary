----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/05/22 17:01:36
-- Design Name: 
-- Module Name: TOP - Behavioral
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

package bus_multiplexer_pkg is
    type bus_array is array(natural range <>) of std_logic_vector(31 downto 0);
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.bus_multiplexer_pkg.all;

Library xpm;
use xpm.vcomponents.all;

library UNISIM;
use UNISIM.VComponents.all;

entity TOP is
    generic(
        -- MAC
        FPGA_mac                              : std_logic_vector(47 downto 0) := X"00_0A_35_02_26_53";
        PC_mac                                : std_logic_vector(47 downto 0) := X"00_0A_35_02_50_F3";
        -- version control reg
        CC01_version_async_en                 : std_logic:='0';
        CC01_version_regs_num                 : integer:=4;
        CC01_regs_default                     : bus_array(1 to 4):=(
            X"4D69_6E69", -- 项目号
            X"2024_0520", -- 版本日期
            X"0000_0001", -- 版本号
            others => (others => '0'));
        CC01_regs_wr_en_array                 :  std_logic_vector(1 to 4):=(others => '0');
        -- uart para
        uart_head                             : std_logic_vector(7 downto 0):=X"AA";
        uart_tail                             : std_logic_vector(7 downto 0):=X"55"
    );
    Port (
        -- 100MHz clock input from board
        --      clk_in_p                      : in  std_logic;
        --      clk_in_n                      : in  std_logic;
        clk_in                        : in std_logic;
        triger_in                     : in std_logic;
        phy_resetn                    : out std_logic;
        -- servo
        UART_DIR                      : out   std_logic:='0';
        UART_IO                       : inout    std_logic;
        -- camera uart
        DIR_T                         : out   std_logic:='1';
        DIR_R                         : out   std_logic:='0';
        C_UART_RX                     : in    std_logic;
        C_UART_TX                     : out   std_logic:='1';           
        -- led ctrl
        led_red                     : out std_logic:='0';
        led_green                   : out std_logic:='0';
        -- AM2302
        AM2302_SDA_1                : inout std_logic:='1';
        AM2302_SDA_2                : inout std_logic:='1';
        AM2302_SDA_3                : inout std_logic:='1';
        AM2302_SDA_1_ctrl           : out  std_logic:='Z';
        AM2302_SDA_2_ctrl           : out  std_logic:='Z';
        AM2302_SDA_3_ctrl           : out  std_logic:='Z';
        -- gy25 uart        
        GY_25_RX                    : in  std_logic;
        GY_25_TX                    : out  std_logic;
        -- ssd1309        
        CS                          : out  std_logic;
        DC                          : out  std_logic;
        RES                         : out  std_logic;
        SDA                         : out  std_logic;
        SCL                         : out  std_logic;
        -- j
        J_vector                    : out std_logic_Vector(3 downto 0):=(others => '0');
        -- camera
        take_photo                  : out std_logic;
        -- zhuan tai
        MA                          : in std_logic;
        SLO                         : in std_logic; 
        MA_RW                       : out std_logic:='0';
        SLO_RW                      : out std_logic:='0';       
        -- GMII Interface
        -----------------
        mdc                           : out std_logic;
        mdio                          : inout std_logic;         
        gmii_txd                      : out std_logic_vector(7 downto 0);
        gmii_tx_en                    : out std_logic;
        gmii_tx_er                    : out std_logic;
        gmii_tx_clk                   : out std_logic;
        gmii_rxd                      : in  std_logic_vector(7 downto 0);
        gmii_rx_dv                    : in  std_logic;
        gmii_rx_er                    : in  std_logic;
        gmii_rx_clk                   : in  std_logic
    );
end TOP;

architecture Behavioral of TOP is

    signal      triger_in_buffer        : std_logic:='0';



    component fun_GY_25
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
            -- uart        
            GY_25_RX                    : in  std_logic;
            GY_25_TX                    : out  std_logic;           
            -- angle
            angle_heading               : out std_logic_vector(15 downto 0):=(others => '0');       -- 航向角
            angle_pitch                 : out std_logic_vector(15 downto 0):=(others => '0');       -- 俯仰角
            angle_roll                  : out std_logic_vector(15 downto 0):=(others => '0');       -- 翻滚角
            status                      : out std_logic_Vector(7 downto 0):=(others => '0')

        );
    end component;

    signal      AB04_rx_data_tvalid             :    std_logic:='0';
    signal      AB04_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB04_rx_data_tlast              :    std_logic:='0';

    signal      AB04_tx_data_tvalid             :    std_logic:='0';
    signal      AB04_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB04_tx_data_tlast              :    std_logic:='0';


    signal   angle_heading               :  std_logic_vector(15 downto 0):=(others => '0');       -- 航向角
    signal   angle_pitch                 :  std_logic_vector(15 downto 0):=(others => '0');       -- 俯仰角
    signal   angle_roll                  :  std_logic_vector(15 downto 0):=(others => '0');       -- 翻滚角
    signal   GY_25_status                      :  std_logic_Vector(7 downto 0):=(others => '0');

    component led_ctrl
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
    end component;

    signal      AB02_rx_data_tvalid             :    std_logic:='0';
    signal      AB02_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB02_rx_data_tlast              :    std_logic:='0';

    signal      AB02_tx_data_tvalid             :    std_logic:='0';
    signal      AB02_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB02_tx_data_tlast              :    std_logic:='0';



    component gmii_example_design is
        port (
            -- asynchronous reset
            glbl_rst                      : in  std_logic;
            -- 100MHz clock input from board
            --      clk_in_p                      : in  std_logic;
            --      clk_in_n                      : in  std_logic;
            clk_in                        : in std_logic;
            -- 125 MHz clock output from MMCM
            gtx_clk_bufg_out              : out std_logic;
            phy_resetn                    : out std_logic;
            -- GMII Interface
            -----------------
            gmii_txd                      : out std_logic_vector(7 downto 0);
            gmii_tx_en                    : out std_logic;
            gmii_tx_er                    : out std_logic;
            gmii_tx_clk                   : out std_logic;
            gmii_rxd                      : in  std_logic_vector(7 downto 0);
            gmii_rx_dv                    : in  std_logic;
            gmii_rx_er                    : in  std_logic;
            gmii_rx_clk                   : in  std_logic;
            ---- tx     
            tx_axis_fifo_tready        : out std_logic;
            tx_axis_fifo_tvalid        : in  std_logic;
            tx_axis_fifo_tdata         : in  std_logic_vector(7 downto 0);
            tx_axis_fifo_tlast         : in  std_logic;
            ---- rx            
            rx_axis_fifo_tready        : in  std_logic;
            rx_axis_fifo_tvalid        : out std_logic;
            rx_axis_fifo_tdata         : out std_logic_vector(7 downto 0);
            rx_axis_fifo_tlast         : out std_logic
        );
    end component;

    signal glbl_rst             : std_logic:='0';
    signal gtx_125MHz           : std_logic;
    ---- tx     
    signal  tx_axis_fifo_tready        :   std_logic;
    signal  tx_axis_fifo_tvalid        :   std_logic;
    signal  tx_axis_fifo_tdata         :   std_logic_vector(7 downto 0);
    signal  tx_axis_fifo_tlast         :   std_logic;
    ---- rx            
    signal  rx_axis_fifo_tready        :   std_logic;
    signal  rx_axis_fifo_tvalid        :   std_logic;
    signal  rx_axis_fifo_tdata         :   std_logic_vector(7 downto 0);
    signal  rx_axis_fifo_tlast         :   std_logic ;

    component gmii_mac_cmd_process
        generic(
            FPGA_mac              : std_logic_vector(47 downto 0) := X"00_0A_35_02_26_53";
            PC_mac                : std_logic_vector(47 downto 0) := X"00_0A_35_02_50_F3"
        );
        Port (
            clk_in                     : in   std_logic;
            rst                        : in   std_logic;
            ---- rx            
            rx_axis_fifo_tready        : out  std_logic;
            rx_axis_fifo_tvalid        : in   std_logic;
            rx_axis_fifo_tdata         : in   std_logic_vector(7 downto 0);
            rx_axis_fifo_tlast         : in   std_logic;
            ---- rx cmd_type
            rx_cmd                     : out std_logic_vector(15 downto 0);
            rx_cmd_valid               : out std_logic;
            ---- rx without mac cmd
            rx_cmd_data_valid          : out std_logic;
            rx_cmd_data_last           : out std_logic;
            rx_cmd_data_data           : out std_logic_vector(7 downto 0);
            ---- tx     
            tx_axis_fifo_tready        : in   std_logic;
            tx_axis_fifo_tvalid        : out  std_logic;
            tx_axis_fifo_tdata         : out  std_logic_vector(7 downto 0);
            tx_axis_fifo_tlast         : out  std_logic;
            ---- cmd in
            tx_cmd                     : in  std_logic_vector(15 downto 0);
            tx_cmd_valid               : in  std_logic;
            ---- data to be packeted
            data_to_packet             : in std_logic_vector(7 downto 0);
            data_to_packet_valid       : in std_logic ;
            data_to_packet_last        : in std_logic
        );
    end component;

    ---- cmd in
    signal      tx_cmd                  :   std_logic_vector(15 downto 0);
    signal      tx_cmd_valid            :   std_logic:='0';
    ---- data to be packeted
    signal      data_to_packet             :   std_logic_vector(7 downto 0);
    signal      data_to_packet_valid       :   std_logic:='0';
    signal      data_to_packet_last        :   std_logic:='0';
    ---- cmd out      
    signal      rx_cmd                 :   std_logic_vector(15 downto 0);
    signal      rx_cmd_valid           :   std_logic:='0';
    ---- rx data without mac and cmd      
    signal      rx_data_valid              :   std_logic:='0';
    signal      rx_data_last               :   std_logic:='0';
    signal      rx_data_data               :   std_logic_vector(7 downto 0);
    ---- reg out      
    -- AA01 reg  
    signal      CMD_AA01_reg_01            :   std_logic_vector(31 downto 0);
    signal      CMD_AA01_reg_01_valid      :   std_logic:='0';
    signal      CMD_AA01_reg_02            :   std_logic_vector(31 downto 0);
    signal      CMD_AA01_reg_02_valid      :   std_logic:='0';
    signal      CMD_AA01_reg_03            :   std_logic_vector(31 downto 0);
    signal      CMD_AA01_reg_03_valid      :   std_logic:='0';

    signal      state_cmd_case             :  std_logic_vector(3 downto 0):=(others => '0');

    -- AA01 cmd data stream
    -- 现在以下参数为通用命令的传递变量   why 2023.3.1  
    signal      AA01_rx_data_tvalid             :    std_logic:='0';
    signal      AA01_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA01_rx_data_tlast              :    std_logic:='0';

    signal      AA01_tx_data_tvalid             :    std_logic:='0';
    signal      AA01_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA01_tx_data_tlast              :    std_logic:='0';

    -- AA03 cmd data stream   
    signal      AA03_rx_data_tvalid             :    std_logic:='0';
    signal      AA03_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA03_rx_data_tlast              :    std_logic:='0';

    signal      AA03_tx_data_tvalid             :    std_logic:='0';
    signal      AA03_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA03_tx_data_tlast              :    std_logic:='0';

    signal      AA04_sample_en                  :    std_logic:='0';


    component sample_ad_ctrl
        Port (
            gtx_clk     		    : in  std_logic;
            rst                     : in  std_logic;
            -- triger
            triger_in               : in  std_logic;
            -- rx cmd data
            rx_data_valid              : in  std_logic;
            rx_data_last               : in  std_logic;
            rx_data_data               : in  std_logic_vector(7 downto 0);
            -- tx data
            tx_data_valid             : out std_logic;
            tx_data_last              : out std_logic;
            tx_data_data              : out std_logic_vector(7 downto 0);
            --AD的控制信号
            AD1_SDOUT               : in STD_LOGIC;           --no use in parallel mode
            AD1_SEN                 : out STD_LOGIC;        --0 in parallel mode
            AD1_SDATA               : out STD_LOGIC;        --0 in parallel mode
            AD1_SCLK                : out STD_LOGIC;        --0 in parallel mode
            AD1_RESET               : out STD_LOGIC;        --parallel configuration
            AD1_CTRL                : out STD_LOGIC_VECTOR(2 downto 0);--"000" in parallel mode

            AD1_CLKP                : out STD_LOGIC;        --FPGA给AD的差分时钟信号
            AD1_CLKM                : out STD_LOGIC;

            AD1_A_M                : in  std_logic_vector (6 downto 0);
            AD1_A_P                : in  std_logic_vector (6 downto 0);
            AD1_B_M                : in  std_logic_vector (6 downto 0);
            AD1_B_P                : in  std_logic_vector (6 downto 0);
            AD1_CLKOUTP             : in STD_LOGIC;         --AD返回的差分时钟信号
            AD1_CLKOUTM             : in STD_LOGIC;
            --    AD1_CLK                 : out STD_LOGIC;        --AD返回的差分转单端的时钟信号
            AD1_DATA_OUT_A_gtx          : out std_logic_vector(17 DOWNTO 0); --AD采集的信号
            AD1_DATA_OUT_A_gtx_valid    : out std_logic;
            AD1_DATA_OUT_B_gtx          : out std_logic_vector(17 DOWNTO 0); --AD采集的信号   
            AD1_DATA_OUT_B_gtx_valid    : out std_logic;
            --AD2的控制信号
            AD2_SDOUT               : in STD_LOGIC;           --no use in parallel mode
            AD2_SEN                 : out STD_LOGIC;        --0 in parallel mode
            AD2_SDATA               : out STD_LOGIC;        --0 in parallel mode
            AD2_SCLK                : out STD_LOGIC;        --0 in parallel mode
            AD2_RESET               : out STD_LOGIC;        --parallel configuration
            AD2_CTRL                : out STD_LOGIC_VECTOR(2 downto 0);--"000" in parallel mode

            AD2_CLKP                : out STD_LOGIC;        --FPGA给AD的差分时钟信号
            AD2_CLKM                : out STD_LOGIC;

            AD2_A_M                 : in  std_logic_vector (6 downto 0);
            AD2_A_P                 : in  std_logic_vector (6 downto 0);
            AD2_B_M                 : in  std_logic_vector (6 downto 0);
            AD2_B_P                 : in  std_logic_vector (6 downto 0);
            AD2_CLKOUTP             : in STD_LOGIC;         --AD返回的差分时钟信号
            AD2_CLKOUTM             : in STD_LOGIC;
            --    AD2_CLK                 : out STD_LOGIC;        --AD返回的差分转单端的时钟信号
            AD2_DATA_OUT_A_gtx          : out std_logic_vector(17 DOWNTO 0); --AD采集的信号 
            AD2_DATA_OUT_A_gtx_valid    : out std_logic;
            AD2_DATA_OUT_B_gtx          : out std_logic_vector(17 DOWNTO 0); --AD采集的信号 
            AD2_DATA_OUT_B_gtx_valid    : out std_logic
        );
    end component;
    signal      ad_rst      : std_logic:='0';
    signal      ad_triger   : std_logic:='0';

    signal    AD1_DATA_OUT_A_gtx          :  std_logic_vector(17 DOWNTO 0); --AD采集的信号
    signal    AD1_DATA_OUT_A_gtx_valid    :  std_logic;
    signal    AD1_DATA_OUT_B_gtx          :  std_logic_vector(17 DOWNTO 0); --AD采集的信号   
    signal    AD1_DATA_OUT_B_gtx_valid    :  std_logic;

    signal    AD2_DATA_OUT_A_gtx          :  std_logic_vector(17 DOWNTO 0); --AD采集的信号
    signal    AD2_DATA_OUT_A_gtx_valid    :  std_logic;
    signal    AD2_DATA_OUT_B_gtx          :  std_logic_vector(17 DOWNTO 0); --AD采集的信号   
    signal    AD2_DATA_OUT_B_gtx_valid    :  std_logic;

    signal    AD1_DATA_OUT_A          :  std_logic_vector(15 DOWNTO 0); --AD采集的信号
    signal    AD1_DATA_OUT_A_valid    :  std_logic;
    signal    AD1_DATA_OUT_B          :  std_logic_vector(15 DOWNTO 0); --AD采集的信号   
    signal    AD1_DATA_OUT_B_valid    :  std_logic;

    signal    AD2_DATA_OUT_A          :  std_logic_vector(15 DOWNTO 0); --AD采集的信号
    signal    AD2_DATA_OUT_A_valid    :  std_logic;
    signal    AD2_DATA_OUT_B          :  std_logic_vector(15 DOWNTO 0); --AD采集的信号   
    signal    AD2_DATA_OUT_B_valid    :  std_logic;

    signal    AD1_DATA_OUT_A8          :  std_logic_vector(7 DOWNTO 0); --AD采集的信号
    signal    AD1_DATA_OUT_A8_valid    :  std_logic;
    signal    AD1_DATA_OUT_B8          :  std_logic_vector(7 DOWNTO 0); --AD采集的信号   
    signal    AD1_DATA_OUT_B8_valid    :  std_logic;

    signal    AD2_DATA_OUT_A8          :  std_logic_vector(7 DOWNTO 0); --AD采集的信号
    signal    AD2_DATA_OUT_A8_valid    :  std_logic;
    signal    AD2_DATA_OUT_B8          :  std_logic_vector(7 DOWNTO 0); --AD采集的信号   
    signal    AD2_DATA_OUT_B8_valid    :  std_logic;

    signal    soft_rst_vector             : std_logic_vector(15 downto 0):=(others => '0');
    signal    soft_rst                    : std_logic:='0';   -- 软复位，由AA5E启动   

    component fifo_sync_16_to_8
        Port (
            clk_in                 :   in std_logic;
            fifo_wr_en             :   in std_logic;
            fifo_din               :   in std_logic_vector(15 downto 0);
            fifo_rd_en             :   in std_logic;
            fifo_dout              :   out std_logic_vector(7 downto 0);
            fifo_data_valid        :   out std_logic
        );
    end component;

    -- version control

    component general_rx_reg_process
        generic(
            async_en        : std_logic:='1';
            regs_num        : integer:=4
        );
        Port (
            rst                       : in std_logic;
            gtx_clk                   : in std_logic;
            clk_in                    : in std_logic;
            -- rx cmd data
            rx_data_valid             : in  std_logic;
            rx_data_last              : in  std_logic;
            rx_data_data              : in  std_logic_vector(7 downto 0);
            -- tx data
            tx_data_valid             : out std_logic;
            tx_data_last              : out std_logic;
            tx_data_data              : out std_logic_vector(7 downto 0);

            regs_wr_en_array          : in  std_logic_vector(1 to regs_num):=(others => '1');
            regs_default              : in  bus_array(1 to regs_num);
            reg_out_xx                : out bus_array(1 to regs_num);
            reg_out_xx_valid          : out std_logic_vector(1 to regs_num);
            reg_decode_end            : out std_logic:='0';
            reg_in_xx_ready           : out std_logic:='0';
            reg_in_xx                 : in bus_array(1 to regs_num);
            reg_in_xx_valid           : in std_logic_vector(1 to regs_num):=(others => '0')
        );
    end component;

    signal      CC01_rx_data_tvalid             :    std_logic:='0';
    signal      CC01_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      CC01_rx_data_tlast              :    std_logic:='0';

    signal      CC01_tx_data_tvalid             :    std_logic:='0';
    signal      CC01_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      CC01_tx_data_tlast              :    std_logic:='0';

    --signal  CC01_regs_wr_en_array          :  std_logic_vector(1 to regs_num):=(others => '1');
    --signal  CC01_regs_default              : bus_array(1 to regs_num):=(others => (others => '1'));
    signal  CC01_reg_out_xx                :   bus_array(1 to CC01_version_regs_num);
    signal  CC01_reg_out_xx_valid          :   std_logic_vector(1 to CC01_version_regs_num);
    signal  CC01_reg_decode_end            :   std_logic:='0';
    signal  CC01_reg_in_xx_ready           :  std_logic:='0';
    signal  CC01_reg_in_xx                 :  bus_array(1 to CC01_version_regs_num):=(others => (others => '0'));
    signal  CC01_reg_in_xx_valid           :  std_logic_vector(1 to CC01_version_regs_num):=(others => '0');

    signal  A1_1_2_temp         : std_logic_vector(5 downto 0):=(0 => '1',others => '0');
    signal  A1_2_1_temp         : std_logic_vector(7 downto 0):=(0 => '1',others => '0');


    component RF_control
        generic(
            uart_head             : std_logic_vector(7 downto 0):=X"AA";
            uart_tail             : std_logic_vector(7 downto 0):=X"55"
        );
        Port (
            rst                       : in std_logic;
            clk_in                    : in std_logic;
            -- rx cmd data
            rx_data_valid             : in  std_logic;
            rx_data_last              : in  std_logic;
            rx_data_data              : in  std_logic_vector(7 downto 0);
            -- tx data
            tx_data_valid             : out std_logic;
            tx_data_last              : out std_logic;
            tx_data_data              : out std_logic_vector(7 downto 0);
            uart0_tx                  : out std_logic;
            uart0_rx                  : in  std_logic
        );
    end component;

    signal      AA06_rx_data_tvalid             :    std_logic:='0';
    signal      AA06_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA06_rx_data_tlast              :    std_logic:='0';

    signal      AA06_tx_data_tvalid             :    std_logic:='0';
    signal      AA06_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AA06_tx_data_tlast              :    std_logic:='0';
    signal      uart0_tx                        :   std_logic;
    signal      uart0_rx                        :   std_logic;

    component fun_servo
        generic(
            async_en        : std_logic:='0';
            regs_num        : integer:=17
        );
        Port (
            gtx_clk     		        : in  std_logic;
            rst                         : in  std_logic;
            -- rx cmd data
            rx_data_valid               : in  std_logic;
            rx_data_last                : in  std_logic;
            rx_data_data                : in  std_logic_vector(7 downto 0);
            -- tx data
            tx_data_valid               : out std_logic;
            tx_data_last                : out std_logic;
            tx_data_data                : out std_logic_vector(7 downto 0);
            ini_status                  : out std_logic_Vector(3 downto 0):=(others => '0');
            -- angle servo
            angle_servo                 : out std_logic_Vector(15 downto 0):=(others => '0');
            -- uart
            UART_DIR                    : out   std_logic:='0';
            UART_IO                     : inout    std_logic
        );
    end component;
    signal      angle_servo                     :    std_logic_Vector(15 downto 0):=(others => '0');
    signal      servo_ini_status                :    std_logic_Vector(3 downto 0):=(others => '0');
    signal      AB01_rx_data_tvalid             :    std_logic:='0';
    signal      AB01_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB01_rx_data_tlast              :    std_logic:='0';

    signal      AB01_tx_data_tvalid             :    std_logic:='0';
    signal      AB01_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB01_tx_data_tlast              :    std_logic:='0';
    signal      UART_DIR_T                      :    std_logic:='0';
    
    component fun_AM2302
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
    end component;

    signal      AB03_rx_data_tvalid             :    std_logic:='0';
    signal      AB03_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB03_rx_data_tlast              :    std_logic:='0';

    signal      AB03_tx_data_tvalid             :    std_logic:='0';
    signal      AB03_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB03_tx_data_tlast              :    std_logic:='0';


    signal    am2302_1_temp               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    am2302_1_humi               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    status_1                    :  std_logic_vector(3 downto 0);
    signal    am2302_2_temp               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    am2302_2_humi               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    status_2                    :  std_logic_vector(3 downto 0);
    signal    am2302_3_temp               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    am2302_3_humi               :  std_logic_Vector(15 downto 0):=(others => '0');
    signal    status_3                    :  std_logic_vector(3 downto 0);

    signal   am2302_1_s_data_in1                    :  std_logic:='1';
    signal   am2302_1_s_data_out1                   :   std_logic:='1';
    signal   am2302_1_s_data_ctrl1                  :   std_logic:='Z';
    signal   am2302_2_s_data_in1                    :  std_logic:='1';
    signal   am2302_2_s_data_out1                   :   std_logic:='1';
    signal   am2302_2_s_data_ctrl1                  :   std_logic:='Z';
    signal   am2302_3_s_data_in1                    :  std_logic:='1';
    signal   am2302_3_s_data_out1                   :   std_logic:='1';
    signal   am2302_3_s_data_ctrl1                  :   std_logic:='Z';

    component fun_ssd1309
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
            angle_heading               : in std_logic_vector(15 downto 0):=(others => '0');       -- 航向角
            angle_pitch                 : in std_logic_vector(15 downto 0):=(others => '0');       -- 俯仰角
            angle_roll                  : in std_logic_vector(15 downto 0):=(others => '0');       -- 翻滚角
            angle_servo                 : in std_logic_vector(15 downto 0):=(others => '0');       -- 舵机角
            angle_status                : in std_logic_Vector(7 downto 0):=(others => '0')

        );
    end component;

    signal      AB05_rx_data_tvalid             :    std_logic:='0';
    signal      AB05_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB05_rx_data_tlast              :    std_logic:='0';

    signal      AB05_tx_data_tvalid             :    std_logic:='0';
    signal      AB05_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB05_tx_data_tlast              :    std_logic:='0';

component fun_J
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
end component;

    signal      AB06_rx_data_tvalid             :    std_logic:='0';
    signal      AB06_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB06_rx_data_tlast              :    std_logic:='0';

    signal      AB06_tx_data_tvalid             :    std_logic:='0';
    signal      AB06_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB06_tx_data_tlast              :    std_logic:='0';

component fun_camera
    Port (
        gtx_clk     		        : in  std_logic;
        rst                         : in  std_logic;
        -- uart
        UART_RX                     : in    std_logic;
        UART_TX                     : out   std_logic:='1';        
        -- rx cmd data
        rx_data_valid               : in  std_logic;
        rx_data_last                : in  std_logic;
        rx_data_data                : in  std_logic_vector(7 downto 0);
        -- tx data
        tx_data_valid               : out std_logic:='0';
        tx_data_last                : out std_logic:='0';
        tx_data_data                : out std_logic_vector(7 downto 0):=(others => '0');
        -- camera ctrl
        take_photo                  : out std_logic:='1'
    );
end component;
    
    signal      AB07_rx_data_tvalid             :    std_logic:='0';
    signal      AB07_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB07_rx_data_tlast              :    std_logic:='0';

    signal      AB07_tx_data_tvalid             :    std_logic:='0';
    signal      AB07_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB07_tx_data_tlast              :    std_logic:='0';
    
component Biss_c
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
        
        -- 角度信息输入
        MA                          : in std_logic;
        SLO                         : in std_logic;
        -- 角度信息解析结果输出
        angle_out                   : out std_logic_vector(15 downto 0)    
   );
end component;

    signal      AB08_rx_data_tvalid             :    std_logic:='0';
    signal      AB08_rx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB08_rx_data_tlast              :    std_logic:='0';

    signal      AB08_tx_data_tvalid             :    std_logic:='0';
    signal      AB08_tx_data_tdata              :    std_logic_vector(7 downto 0);
    signal      AB08_tx_data_tlast              :    std_logic:='0';
    
    signal      angle_out                       :  std_logic_vector(15 downto 0);    
        
component phy_ctr
  Port (
  clk                               : in std_logic;
  
  mdc                           : out std_logic;
  mdio                          : inout std_logic  
   );
end component;        
        
        
begin

    inst_phy_ctr : phy_ctr
    PORT MAP(
    clk         =>  gtx_125MHz,
    mdc         =>  mdc,
    mdio        =>  mdio
    );
    
    
    inst_Biss_c : Biss_c
    port map(
  gtx_clk     		=>  gtx_125MHz     	 ,
  rst               =>  soft_rst              , 

  rx_data_valid     =>  AB04_rx_data_tvalid,
  rx_data_last      =>  AB04_rx_data_tlast ,
  rx_data_data      =>  AB04_rx_data_tdata ,
  -- tx data        =>                      
  tx_data_valid     =>  AB04_tx_data_tvalid,
  tx_data_last      =>  AB04_tx_data_tlast ,
  tx_data_data      =>  AB04_tx_data_tdata ,    
  
  MA                =>  MA,
  SLO               =>  SLO,
  angle_out         =>  angle_out  
    );
    
inst_fun_camera : fun_camera
port map(
  gtx_clk     		=>  gtx_125MHz     	 ,
  rst               =>  soft_rst              , 
  UART_RX           =>  C_UART_RX ,
  UART_TX           =>  C_UART_TX ,
  -- rx cmd data    =>  -- rx cmd data   ,
  rx_data_valid     =>  AB07_rx_data_tvalid,
  rx_data_last      =>  AB07_rx_data_tlast ,
  rx_data_data      =>  AB07_rx_data_tdata ,
  -- tx data        =>                      
  tx_data_valid     =>  AB07_tx_data_tvalid,
  tx_data_last      =>  AB07_tx_data_tlast ,
  tx_data_data      =>  AB07_tx_data_tdata ,
  take_photo        =>  take_photo 
);



    inst_fun_J : fun_J
    port map(
  gtx_clk     		=>  gtx_125MHz     	 ,
  rst               =>  soft_rst              ,
  -- rx cmd data    =>  -- rx cmd data   ,
  rx_data_valid     =>  AB06_rx_data_tvalid,
  rx_data_last      =>  AB06_rx_data_tlast ,
  rx_data_data      =>  AB06_rx_data_tdata ,
  -- tx data        =>                      
  tx_data_valid     =>  AB06_tx_data_tvalid,
  tx_data_last      =>  AB06_tx_data_tlast ,
  tx_data_data      =>  AB06_tx_data_tdata ,
  J_vector          =>  J_vector         
    );
    
    inst_fun_ssd1309 : fun_ssd1309
        port map(
            gtx_clk     		=>    gtx_125MHz     	 ,
            rst                 =>    soft_rst            ,
            -- rx cmd data      =>    -- rx cmd data ,
            rx_data_valid       =>    AB05_rx_data_tvalid,
            rx_data_last        =>    AB05_rx_data_tlast ,
            rx_data_data        =>    AB05_rx_data_tdata ,
            -- tx data          =>                         
            tx_data_valid       =>    AB05_tx_data_tvalid,
            tx_data_last        =>    AB05_tx_data_tlast ,
            tx_data_data        =>    AB05_tx_data_tdata ,
            -- ssd1309          =>    -- ssd1309     ,
            CS                  =>    CS             ,
            DC                  =>    DC             ,
            RES                 =>    RES            ,
            SDA                 =>    SDA            ,
            SCL                 =>    SCL            ,
            -- temp
            temp1               =>    am2302_1_temp,
            temp2               =>    am2302_2_temp,
            temp3               =>    am2302_3_temp,
            -- angle            =>    -- angle       ,
--            angle_heading       =>    angle_heading  ,
            angle_heading       =>    angle_out  ,
            angle_pitch         =>    angle_pitch    ,
            angle_roll          =>    angle_roll     ,
            angle_servo         =>    angle_servo,
            angle_status        =>    GY_25_status

        );



--    inst_fun_GY_25 : fun_GY_25
--        port map(
--            gtx_clk     	=> gtx_125MHz     		,
--            rst             => soft_rst              ,
--            -- rx cmd data  => -- rx cmd data   ,
--            rx_data_valid   => AB04_rx_data_tvalid,
--            rx_data_last    => AB04_rx_data_tlast ,
--            rx_data_data    => AB04_rx_data_tdata ,
--            -- tx data      =>                      
--            tx_data_valid   => AB04_tx_data_tvalid,
--            tx_data_last    => AB04_tx_data_tlast ,
--            tx_data_data    => AB04_tx_data_tdata ,
--            -- uart         => -- uart          ,
--            GY_25_RX        => GY_25_RX         ,
--            GY_25_TX        => GY_25_TX         ,
--            -- angle        => -- angle         ,
--            angle_heading   => angle_heading    ,
--            angle_pitch     => angle_pitch      ,
--            angle_roll      => angle_roll       ,
--            status          => GY_25_status
--        );


    inst_fun_AM2302 : fun_AM2302
        port map(
            gtx_clk     		       => gtx_125MHz     		   ,
            rst                        => soft_rst                  ,
            -- rx cmd data             => -- rx cmd data       ,
            rx_data_valid              => AB03_rx_data_tvalid,
            rx_data_last               => AB03_rx_data_tlast ,
            rx_data_data               => AB03_rx_data_tdata ,
            -- tx data                 =>                     
            tx_data_valid              => AB03_tx_data_tvalid,
            tx_data_last               => AB03_tx_data_tlast ,
            tx_data_data               => AB03_tx_data_tdata ,
            -- AM2302                  => -- AM2302            ,
            --AM2302_SDA_1               => AM2302_SDA_1         ,
            --AM2302_SDA_2               => AM2302_SDA_2         ,
            --AM2302_SDA_3               => AM2302_SDA_3         ,
            --AM2302_SDA_1_ctrl          => AM2302_SDA_1_ctrl    ,
            --AM2302_SDA_2_ctrl          => AM2302_SDA_2_ctrl    ,
            --AM2302_SDA_3_ctrl          => AM2302_SDA_3_ctrl    ,
            am2302_1_s_data_in1        =>   am2302_1_s_data_in1  ,
            am2302_1_s_data_out1       =>   am2302_1_s_data_out1 ,
            am2302_1_s_data_ctrl1      =>   am2302_1_s_data_ctrl1,
            am2302_2_s_data_in1        =>   am2302_2_s_data_in1  ,
            am2302_2_s_data_out1       =>   am2302_2_s_data_out1 ,
            am2302_2_s_data_ctrl1      =>   am2302_2_s_data_ctrl1,
            am2302_3_s_data_in1        =>   am2302_3_s_data_in1  ,
            am2302_3_s_data_out1       =>   am2302_3_s_data_out1 ,
            am2302_3_s_data_ctrl1      =>   am2302_3_s_data_ctrl1,
            am2302_1_temp              => am2302_1_temp        ,
            am2302_1_humi              => am2302_1_humi        ,
            status_1                   => status_1             ,
            am2302_2_temp              => am2302_2_temp        ,
            am2302_2_humi              => am2302_2_humi        ,
            status_2                   => status_2             ,
            am2302_3_temp              => am2302_3_temp        ,
            am2302_3_humi              => am2302_3_humi        ,
            status_3                   => status_3
        );

    inst_am2302_1_io : IOBUF
        generic map (
            DRIVE => 12,
            IOSTANDARD => "DEFAULT",
            SLEW => "SLOW")
        port map (
            O => am2302_1_s_data_in1,     -- Buffer output
            IO => AM2302_SDA_1,   -- Buffer inout port (connect directly to top-level port)
            I => am2302_1_s_data_out1,     -- Buffer input
            T => am2302_1_s_data_ctrl1      -- 3-state enable input, high=input, low=output 
        );
    AM2302_SDA_1_ctrl <= not am2302_1_s_data_ctrl1;
    inst_am2302_2_io : IOBUF
        generic map (
            DRIVE => 12,
            IOSTANDARD => "DEFAULT",
            SLEW => "SLOW")
        port map (
            O => am2302_2_s_data_in1,     -- Buffer output
            IO => AM2302_SDA_2,   -- Buffer inout port (connect directly to top-level port)
            I => am2302_2_s_data_out1,     -- Buffer input
            T => am2302_2_s_data_ctrl1      -- 3-state enable input, high=input, low=output 
        );
    AM2302_SDA_2_ctrl <= not am2302_2_s_data_ctrl1;
    inst_am2302_3_io : IOBUF
        generic map (
            DRIVE => 12,
            IOSTANDARD => "DEFAULT",
            SLEW => "SLOW")
        port map (
            O => am2302_3_s_data_in1,     -- Buffer output
            IO => AM2302_SDA_3,   -- Buffer inout port (connect directly to top-level port)
            I => am2302_3_s_data_out1,     -- Buffer input
            T => am2302_3_s_data_ctrl1      -- 3-state enable input, high=input, low=output 
        );
    AM2302_SDA_3_ctrl <= not am2302_3_s_data_ctrl1;



    inst_led_ctrl : led_ctrl
        port map(
            gtx_clk     		=>    gtx_125MHz    ,
            rst                 =>    soft_rst        ,

            rx_data_valid       =>    AB02_rx_data_tvalid,
            rx_data_last        =>    AB02_rx_data_tlast ,
            rx_data_data        =>    AB02_rx_data_tdata ,

            tx_data_valid       =>    AB02_tx_data_tvalid,
            tx_data_last        =>    AB02_tx_data_tlast ,
            tx_data_data        =>    AB02_tx_data_tdata ,
            
            servo_ini_status    =>    servo_ini_status,
            led_red             =>    led_red  ,
            led_green           =>    led_green
        );


    inst_version_control : general_rx_reg_process
        generic map(
            async_en    =>  CC01_version_async_en,
            regs_num    =>  CC01_version_regs_num
        )
        port map(
            rst                 =>      soft_rst    ,
            gtx_clk             =>      gtx_125MHz,
            clk_in              =>      gtx_125MHz ,
            rx_data_valid       =>      CC01_rx_data_tvalid,
            rx_data_last        =>      CC01_rx_data_tlast ,
            rx_data_data        =>      CC01_rx_data_tdata ,
            tx_data_valid       =>      CC01_tx_data_tvalid,
            tx_data_last        =>      CC01_tx_data_tlast ,
            tx_data_data        =>      CC01_tx_data_tdata ,
            regs_wr_en_array    =>      CC01_regs_wr_en_array,
            regs_default        =>      CC01_regs_default    ,
            reg_out_xx          =>      CC01_reg_out_xx      ,
            reg_out_xx_valid    =>      CC01_reg_out_xx_valid,
            reg_decode_end      =>      CC01_reg_decode_end  ,
            reg_in_xx_ready     =>      CC01_reg_in_xx_ready ,
            reg_in_xx           =>      CC01_reg_in_xx       ,
            reg_in_xx_valid     =>      CC01_reg_in_xx_valid
        );


    triger_inst : IBUF
        generic map (
            IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
            IOSTANDARD => "DEFAULT")
        port map (
            O => triger_in_buffer,     -- Buffer output
            I => triger_in      -- Buffer input (connect directly to top-level port)
        );

    ad_triger <= triger_in_buffer;

    ad_rst <= soft_rst;


    process(gtx_125MHz)
    begin
        if rising_edge(gtx_125MHz)  then
            if AD1_DATA_OUT_A_gtx_valid = '1'   then
                AD1_DATA_OUT_A <= AD1_DATA_OUT_A_gtx(15 downto 0);
                AD1_DATA_OUT_A_valid    <= '1';
            else
                AD1_DATA_OUT_A_valid    <= '0';
            end if;

            if AD1_DATA_OUT_B_gtx_valid = '1'   then
                AD1_DATA_OUT_B <= AD1_DATA_OUT_B_gtx(15 downto 0);
                AD1_DATA_OUT_B_valid    <= '1';
            else
                AD1_DATA_OUT_B_valid    <= '0';
            end if;

            if AD2_DATA_OUT_A_gtx_valid = '1'   then
                AD2_DATA_OUT_A <= AD2_DATA_OUT_A_gtx(15 downto 0);
                AD2_DATA_OUT_A_valid    <= '1';
            else
                AD2_DATA_OUT_A_valid    <= '0';
            end if;

            if AD2_DATA_OUT_B_gtx_valid = '1'   then
                AD2_DATA_OUT_B <= AD2_DATA_OUT_B_gtx(15 downto 0);
                AD2_DATA_OUT_B_valid    <= '1';
            else
                AD2_DATA_OUT_B_valid    <= '0';
            end if;

        end if;
    end process;

    inst_gmii : gmii_example_design
        port map(
            glbl_rst                =>  glbl_rst,
            clk_in                  =>  clk_in,
            gtx_clk_bufg_out        =>  gtx_125MHz   ,
            phy_resetn              =>  phy_resetn         ,
            gmii_txd                =>  gmii_txd           ,
            gmii_tx_en              =>  gmii_tx_en         ,
            gmii_tx_er              =>  gmii_tx_er         ,
            gmii_tx_clk             =>  gmii_tx_clk        ,
            gmii_rxd                =>  gmii_rxd           ,
            gmii_rx_dv              =>  gmii_rx_dv         ,
            gmii_rx_er              =>  gmii_rx_er         ,
            gmii_rx_clk             =>  gmii_rx_clk        ,
            tx_axis_fifo_tready     =>  tx_axis_fifo_tready,
            tx_axis_fifo_tvalid     =>  tx_axis_fifo_tvalid,
            tx_axis_fifo_tdata      =>  tx_axis_fifo_tdata ,
            tx_axis_fifo_tlast      =>  tx_axis_fifo_tlast ,
            rx_axis_fifo_tready     =>  rx_axis_fifo_tready,
            rx_axis_fifo_tvalid     =>  rx_axis_fifo_tvalid,
            rx_axis_fifo_tdata      =>  rx_axis_fifo_tdata ,
            rx_axis_fifo_tlast      =>  rx_axis_fifo_tlast
        );

    inst_gmii_mac_cmd_process : gmii_mac_cmd_process
        generic map(
            FPGA_mac    =>  FPGA_mac,
            PC_mac      =>  PC_mac
        )
        port map(
            clk_in                    =>            gtx_125MHz              ,
            rst                       =>            soft_rst,
            ---- rx                         
            rx_axis_fifo_tready       =>            rx_axis_fifo_tready ,
            rx_axis_fifo_tvalid       =>            rx_axis_fifo_tvalid ,
            rx_axis_fifo_tdata        =>            rx_axis_fifo_tdata  ,
            rx_axis_fifo_tlast        =>            rx_axis_fifo_tlast  ,
            ---- rx cmd_type                
            rx_cmd                    =>            rx_cmd           ,
            rx_cmd_valid              =>            rx_cmd_valid     ,
            ---- rx without mac cmd         
            rx_cmd_data_valid         =>            rx_data_valid   ,
            rx_cmd_data_last          =>            rx_data_last    ,
            rx_cmd_data_data          =>            rx_data_data    ,
            ---- tx                         
            tx_axis_fifo_tready       =>            tx_axis_fifo_tready ,
            tx_axis_fifo_tvalid       =>            tx_axis_fifo_tvalid ,
            tx_axis_fifo_tdata        =>            tx_axis_fifo_tdata  ,
            tx_axis_fifo_tlast        =>            tx_axis_fifo_tlast  ,
            ---- cmd in                     
            tx_cmd                    =>            tx_cmd           ,
            tx_cmd_valid              =>            tx_cmd_valid     ,
            ---- data to be packeted        
            data_to_packet            =>            data_to_packet      ,
            data_to_packet_valid      =>            data_to_packet_valid,
            data_to_packet_last       =>            data_to_packet_last
        );

    soft_rst_vector(0) <= '1' when rx_cmd_valid = '1' and rx_cmd = X"AA5E"    else '0';  -- rst gen
    soft_rst <= soft_rst_vector(0) or soft_rst_vector(1) or soft_rst_vector(2) or soft_rst_vector(3) or
 soft_rst_vector(4) or soft_rst_vector(5) or soft_rst_vector(6) or soft_rst_vector(7) or
 soft_rst_vector(8) or soft_rst_vector(9) or soft_rst_vector(10) or soft_rst_vector(11) or
 soft_rst_vector(12) or soft_rst_vector(13) or soft_rst_vector(14) or soft_rst_vector(15);

    process(gtx_125MHz)
    begin
        if rising_edge(gtx_125MHz)  then
            soft_rst_vector(15 downto 1) <= soft_rst_vector(14 downto 0);
        end if;
    end process;
    inst_fun_servo : fun_servo
        port map(
            gtx_clk     	=> gtx_125MHz     	,
            rst             => soft_rst          ,

            rx_data_valid   => AB01_rx_data_tvalid,
            rx_data_last    => AB01_rx_data_tlast ,
            rx_data_data    => AB01_rx_data_tdata ,

            tx_data_valid   => AB01_tx_data_tvalid,
            tx_data_last    => AB01_tx_data_tlast ,
            tx_data_data    => AB01_tx_data_tdata ,
            ini_status      => servo_ini_status,
            angle_servo     =>  angle_servo,
            UART_DIR        =>  UART_DIR_T,
            UART_IO         => UART_IO
        );
    UART_DIR <= not UART_DIR_T;
    cmd_case_gen : process(gtx_125MHz)
    begin
        if rising_edge(gtx_125MHz)  then
            if  soft_rst = '1'  then
                state_cmd_case <= X"0";
            else
                case state_cmd_case is
                    when    X"0"    =>
                        if rx_cmd_valid = '1'   then
                            case rx_cmd is
                                when    X"AA01" =>      -- 下发参数                        
                                    state_cmd_case <= X"1";
                                when    X"AA03" =>      -- 设置采集参数
                                    state_cmd_case <= X"3";
                                when    X"AA04" =>      -- 采集指令
                                    AA04_sample_en <= '1';
                                when    X"AA06" =>      -- RF control
                                    state_cmd_case <= X"2";
                                when    X"AB01" =>      -- servo
                                    state_cmd_case <= X"5";
                                when    X"AB02" =>      -- LED
                                    state_cmd_case <= X"6";
                                when    X"AB03" =>      -- AM2302
                                    state_cmd_case <= X"7";
                                when    X"AB04" =>      -- GY_25
                                    state_cmd_case <= X"8";
                                when    X"AB05" =>      -- SSD1309
                                    state_cmd_case <= X"9";
                                when    X"AB06" =>      -- j
                                    state_cmd_case <= X"A";
                                when    X"AB07" =>      -- j
                                    state_cmd_case <= X"B";
                                when    X"AB08" =>      -- 解析转台角度
                                    state_cmd_case <= X"C";
                                when    X"CC01" =>  -- 查询固件信息
                                    state_cmd_case <= X"4";
                                when    others  =>
                                    null;
                            end case;
                        else
                            AA04_sample_en <='0';
                        end if;
                        tx_cmd_valid    <= '0';
                    when    X"1"    =>  -- 将数据传递给AA01_RX_DATA_TO_REG
                        AA01_rx_data_tdata <= rx_data_data;
                        AA01_rx_data_tlast <= rx_data_last;
                        AA01_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AA01";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AA01_tx_data_tdata ;
                        data_to_packet_valid    <=  AA01_tx_data_tvalid ;
                        data_to_packet_last     <=  AA01_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"2"    =>  -- 将数据传递给AA01_RX_DATA_TO_REG
                        AA06_rx_data_tdata <= rx_data_data;
                        AA06_rx_data_tlast <= rx_data_last;
                        AA06_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AA06";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AA06_tx_data_tdata ;
                        data_to_packet_valid    <=  AA06_tx_data_tvalid ;
                        data_to_packet_last     <=  AA06_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"3"    =>
                        AA03_rx_data_tdata <= rx_data_data;
                        AA03_rx_data_tlast <= rx_data_last;
                        AA03_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AA03";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AA03_tx_data_tdata ;
                        data_to_packet_valid    <=  AA03_tx_data_tvalid ;
                        data_to_packet_last     <=  AA03_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"4"    =>  -- 将数据传递给CC01_RX_DATA_TO_REG
                        CC01_rx_data_tdata <= rx_data_data;
                        CC01_rx_data_tlast <= rx_data_last;
                        CC01_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"CC01";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  CC01_tx_data_tdata ;
                        data_to_packet_valid    <=  CC01_tx_data_tvalid ;
                        data_to_packet_last     <=  CC01_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"5"    =>  -- 将数据传递给AA01_RX_DATA_TO_REG
                        AB01_rx_data_tdata <= rx_data_data;
                        AB01_rx_data_tlast <= rx_data_last;
                        AB01_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB01";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB01_tx_data_tdata ;
                        data_to_packet_valid    <=  AB01_tx_data_tvalid ;
                        data_to_packet_last     <=  AB01_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"6"    =>
                        AB02_rx_data_tdata <= rx_data_data;
                        AB02_rx_data_tlast <= rx_data_last;
                        AB02_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB02";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB02_tx_data_tdata ;
                        data_to_packet_valid    <=  AB02_tx_data_tvalid ;
                        data_to_packet_last     <=  AB02_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"7"    =>
                        AB03_rx_data_tdata <= rx_data_data;
                        AB03_rx_data_tlast <= rx_data_last;
                        AB03_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB03";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB03_tx_data_tdata ;
                        data_to_packet_valid    <=  AB03_tx_data_tvalid ;
                        data_to_packet_last     <=  AB03_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"8"    =>
                        AB04_rx_data_tdata <= rx_data_data;
                        AB04_rx_data_tlast <= rx_data_last;
                        AB04_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB04";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB04_tx_data_tdata ;
                        data_to_packet_valid    <=  AB04_tx_data_tvalid ;
                        data_to_packet_last     <=  AB04_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"9"    =>
                        AB05_rx_data_tdata <= rx_data_data;
                        AB05_rx_data_tlast <= rx_data_last;
                        AB05_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB05";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB05_tx_data_tdata ;
                        data_to_packet_valid    <=  AB05_tx_data_tvalid ;
                        data_to_packet_last     <=  AB05_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"A"    =>
                        AB06_rx_data_tdata <= rx_data_data;
                        AB06_rx_data_tlast <= rx_data_last;
                        AB06_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB06";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB06_tx_data_tdata ;
                        data_to_packet_valid    <=  AB06_tx_data_tvalid ;
                        data_to_packet_last     <=  AB06_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"B"    =>
                        AB07_rx_data_tdata <= rx_data_data;
                        AB07_rx_data_tlast <= rx_data_last;
                        AB07_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB07";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB07_tx_data_tdata ;
                        data_to_packet_valid    <=  AB07_tx_data_tvalid ;
                        data_to_packet_last     <=  AB07_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    X"C"    =>
                        AB08_rx_data_tdata <= rx_data_data;
                        AB08_rx_data_tlast <= rx_data_last;
                        AB08_rx_data_tvalid <= rx_data_valid;

                        tx_cmd          <= X"AB08";
                        tx_cmd_valid    <= '1';

                        data_to_packet          <=  AB08_tx_data_tdata ;
                        data_to_packet_valid    <=  AB08_tx_data_tvalid ;
                        data_to_packet_last     <=  AB08_tx_data_tlast;
                        if data_to_packet_last = '1' then
                            state_cmd_case <= X"0";
                        end if;
                    when    others  =>
                        state_cmd_case <= X"0";
                end case;
            end if;
        end if;
    end process;

    inst_ad_fifo_sync_16_to_8 : fifo_sync_16_to_8
        port map(
            clk_in              =>  gtx_125MHz     ,
            fifo_wr_en          =>  AD1_DATA_OUT_A_valid ,
            fifo_din            =>  AD1_DATA_OUT_A       ,
            fifo_rd_en          =>  '1'     ,
            fifo_dout           =>  AD1_DATA_OUT_A8      ,
            fifo_data_valid     =>  AD1_DATA_OUT_A8_valid
        );

end Behavioral;
