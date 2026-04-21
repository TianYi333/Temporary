library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pro_FPGA_ctrl_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line
        triger_in                     : in std_logic;
--        phy_resetn                    : out std_logic;
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
--        GY_25_RX                    : in  std_logic;
--        GY_25_TX                    : out  std_logic;
        -- ssd1309        
        CS                          : out  std_logic;
        DC                          : out  std_logic;
        RES                         : out  std_logic;
        SDA                         : out  std_logic;
        SCL                         : out  std_logic;
        -- j
        J_vector                    : out std_logic_Vector(3 downto 0):=(others => '0');
        -- camera
--        take_photo                  : out std_logic;
        -- zhuan tai
        MA                          : in std_logic;
        SLO                         : in std_logic; 
        MA_RW                       : out std_logic:='0';
        SLO_RW                      : out std_logic:='0'; 

		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end Pro_FPGA_ctrl_v1_0;

architecture arch_imp of Pro_FPGA_ctrl_v1_0 is

	-- component declaration
	component Pro_FPGA_ctrl_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
		);
		port (
        triger_in                     : in std_logic;
--        phy_resetn                    : out std_logic;
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
--        GY_25_RX                    : in  std_logic;
--        GY_25_TX                    : out  std_logic;
        -- ssd1309        
        CS                          : out  std_logic;
        DC                          : out  std_logic;
        RES                         : out  std_logic;
        SDA                         : out  std_logic;
        SCL                         : out  std_logic;
        -- j
        J_vector                    : out std_logic_Vector(3 downto 0):=(others => '0');
        -- camera
--        take_photo                  : out std_logic;
        -- zhuan tai
        MA                          : in std_logic;
        SLO                         : in std_logic; 
        MA_RW                       : out std_logic:='0';
        SLO_RW                      : out std_logic:='0'; 		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component Pro_FPGA_ctrl_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
Pro_FPGA_ctrl_v1_0_S00_AXI_inst : Pro_FPGA_ctrl_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
triger_in           =>  triger_in        ,
UART_DIR            =>  UART_DIR         ,
UART_IO             =>  UART_IO          ,
DIR_T               =>  DIR_T            ,
DIR_R               =>  DIR_R            ,
C_UART_RX           =>  C_UART_RX        ,
C_UART_TX           =>  C_UART_TX        ,
led_red             =>  led_red          ,
led_green           =>  led_green        ,
AM2302_SDA_1        =>  AM2302_SDA_1     ,
AM2302_SDA_2        =>  AM2302_SDA_2     ,
AM2302_SDA_3        =>  AM2302_SDA_3     ,
AM2302_SDA_1_ctrl   =>  AM2302_SDA_1_ctrl,
AM2302_SDA_2_ctrl   =>  AM2302_SDA_2_ctrl,
AM2302_SDA_3_ctrl   =>  AM2302_SDA_3_ctrl,
CS                  =>  CS               ,
DC                  =>  DC               ,
RES                 =>  RES              ,
SDA                 =>  SDA              ,
SCL                 =>  SCL              ,
J_vector            =>  J_vector         ,
MA                  =>  MA               ,
SLO                 =>  SLO              ,
MA_RW               =>  MA_RW            ,
SLO_RW              =>  SLO_RW           ,	
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
