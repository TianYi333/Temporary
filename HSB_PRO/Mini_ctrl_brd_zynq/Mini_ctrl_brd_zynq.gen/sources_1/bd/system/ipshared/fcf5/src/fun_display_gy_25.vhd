----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/13 13:40:03
-- Design Name: 
-- Module Name: fun_display_gy_25 - Behavioral
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

entity fun_display_gy_25 is
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
end fun_display_gy_25;

architecture Behavioral of fun_display_gy_25 is

signal   angle_heading1     :    std_logic_vector(15 downto 0):=(others => '0');       -- º½Ïò½Ç
signal   angle_pitch1       :    std_logic_vector(15 downto 0):=(others => '0');       -- ¸©Ñö½Ç
signal   angle_roll1        :    std_logic_vector(15 downto 0):=(others => '0');       -- ·­¹ö½Ç
signal   angle_servo1       :    std_logic_vector(15 downto 0):=(others => '0');       -- ¶æ»ú½Ç
        
COMPONENT fun_dec_2_rom_addr 
    Port (
        clk                       : in std_logic;
        fun_ready                 : out std_logic:='0';
        signed_or_not             : in std_logic;       -- 1:signed 0:unsigned
        hex_data_in               : in std_logic_Vector(15 downto 0);
        hex_data_in_valid         : in std_logic;
        integer_num               : in integer:=3;        -- ÕûÊıÎ»Êı
        display_flag              : in std_logic_vector(3 downto 0);
        hex_or_dec                : in std_logic;
        dec_rom_addr_out          : out std_logic_Vector(11 downto 0);
        dec_rom_addr_out_valid    : out std_logic
    );
end COMPONENT;


signal   display_flag              :  std_logic_vector(3 downto 0):=(0 => '1',others => '0');  -- 0 => ¡ã 1=> C
signal   hex_or_dec                :  std_logic:='0';

signal   fun_dec_2_rom_addr_ready                 :  std_logic:='0';
signal   signed_or_not                 :  std_logic:='0';
signal   hex_data_in               :  std_logic_Vector(15 downto 0):=(others => '0');
signal   hex_data_in_valid         :  std_logic:='0';
signal   integer_num               :  integer:=3;        -- ÕûÊıÎ»Êı
signal   dec_rom_addr_out          :  std_logic_Vector(11 downto 0):=(others => '0');
signal   dec_rom_addr_out1          :  std_logic_Vector(11 downto 0):=(others => '0');
signal   dec_rom_addr_out_valid    :  std_logic:='0';
signal   dec_rom_addr_out_valid1    :  std_logic:='0';
signal   wr_cnt         : integer:=1;
signal   row0_offset         : integer:=10;
signal   row1_offset         : integer:=26;
signal   row2_offset         : integer:=34;
signal   row3_offset         : integer:=18;
        
    COMPONENT fun_d_ram_ssd1309
        Port (
            clk               :   in std_logic;
            rst               :   in std_logic;
            d_ram_rst         :   in std_logic;
            rom_addr          :   in std_logic_Vector(11 downto 0);
            c_length          :   in std_logic_vector(11 downto 0);
            offset_row        :   in std_logic_vector(7 downto 0);
            offset_line       :   in std_logic_vector(7 downto 0);
            fun_valid         :   in std_logic;
            fun_ready         :   out std_logic:='0';
            rd_addr           :   in std_logic_vector(9 downto 0);
            rd_addr_valid     :   in std_logic;
            data_out          :   out std_logic_vector(7 downto 0):=(others => '0');
            data_out_valid    :   out std_logic:='0'
        );
    end COMPONENT;

    signal  rom_addr                :    std_logic_Vector(11 downto 0):=(others => '0');
    signal  c_length                :    std_logic_Vector(11 downto 0):=(others => '0');
    signal  d_ram_rst               :    std_logic:='0';



    signal  fun_d_ram_ssd1309_valid     :    std_logic:='0';
    signal  fun_d_ram_ssd1309_ready     :    std_logic:='0';

    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            clkb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    signal    wea :  STD_LOGIC_VECTOR(0 DOWNTO 0):=(others => '0');
    signal    addra :  STD_LOGIC_VECTOR(9 DOWNTO 0):=(others => '0');
    signal    dina :  STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');
    signal    dina1 :  STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');
    signal    addrb :  STD_LOGIC_VECTOR(9 DOWNTO 0):=(others => '0');
    signal    doutb :  STD_LOGIC_VECTOR(7 DOWNTO 0):=(others => '0');

    signal  c_angle_heading     :    std_logic_vector(6 downto 0):=(others => '0');       -- º½Ïò½Ç
    signal  c_angle_pitch       :    std_logic_vector(6 downto 0):=(others => '0');       -- ¸©Ñö½Ç
    signal  c_angle_roll        :    std_logic_vector(6 downto 0):=(others => '0');       -- ·­¹ö½Ç
    signal      state_wr_d_ram        : std_logic_vector(3 downto 0):=(others => '0');

    signal      fun_d_ram_ssd1309_offset_row         : std_logic_vector(7 downto 0):=(others => '0');
    signal      fun_d_ram_ssd1309_offset_line        : std_logic_vector(7 downto 0):=(others => '0');
    type data_typ is record
        row              : std_logic_vector(7 downto 0);
        line             : std_logic_vector(7 downto 0);
        data_rom_addr    : std_logic_vector(11 downto 0);
        data_length      : std_logic_vector(11 downto 0);
    end record;

    type    array_data_tye  is array(1 to 25) of data_typ;
    signal  frame_index     : integer:=1;

    signal  angle_imag_num    : integer:=25;
    signal  angle_imag  : array_data_tye:=(
        1 => (                      -- º½
            row => X"10",
            line => X"00",
            data_rom_addr => X"000",
            data_length => X"010"
        ),
        2 => (                      -- Ïò
            row => X"10",
            line => X"10",
            data_rom_addr => X"010",
            data_length => X"010"
        ),
        3 => (                      -- ½Ç
            row => X"10",
            line => X"20",
            data_rom_addr => X"060",
            data_length => X"010"
        ),
        4 => (                      -- £º
            row => X"10",
            line => X"30",
            data_rom_addr => X"0C0",
            data_length => X"008"
        ),
        5 => (                      -- Ìì
            row => X"20",
            line => X"00",
            data_rom_addr => X"0D8",
            data_length => X"010"
        ),
        6 => (                      -- Ïß
            row => X"20",
            line => X"10",
            data_rom_addr => X"0E8",
            data_length => X"010"
        ),    
        7 => (                      -- ¸©
            row => X"20",
            line => X"20",
            data_rom_addr => X"020",
            data_length => X"010"
        ),
        8 => (                      -- Ñö
            row => X"20",
            line => X"30",
            data_rom_addr => X"030",
            data_length => X"010"
        ),
        9 => (                      -- £º
            row => X"20",
            line => X"40",
            data_rom_addr => X"0C0",
            data_length => X"008"
        ),                    
        10 => (                      -- ROW1 NUM
            row => X"10",
            line => X"38",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        11 => (                      -- ROW1 NUM
            row => X"10",
            line => X"40",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        12 => (                      -- ROW1 NUM
            row => X"10",
            line => X"48",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        13 => (                      -- ROW1 NUM
            row => X"10",
            line => X"50",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        14 => (                      -- ROW1 NUM
            row => X"10",
            line => X"58",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        15 => (                      -- ROW1 NUM
            row => X"10",
            line => X"60",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        16 => (                      -- ROW1 NUM
            row => X"10",
            line => X"68",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        17 => (                      -- ROW1 NUM
            row => X"10",
            line => X"70",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        18 => (                      -- ROW2 NUM
            row => X"20",
            line => X"48",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        19 => (                      -- ROW2 NUM
            row => X"20",
            line => X"50",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        20 => (                      -- ROW2 NUM
            row => X"20",
            line => X"58",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        21 => (                      -- ROW2 NUM
            row => X"20",
            line => X"60",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        22 => (                      -- ROW2 NUM
            row => X"20",
            line => X"68",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        23 => (                      -- ROW2 NUM
            row => X"20",
            line => X"70",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        24 => (                      -- ROW2 NUM
            row => X"20",
            line => X"78",
            data_rom_addr => X"FFF",
            data_length => X"008"
        ),                    
        25 => (                      -- ROW2 NUM
            row => X"20",
            line => X"80",
            data_rom_addr => X"FFF",
            data_length => X"008"
        )                                             
);


--    signal  angle_imag_num    : integer:=49;
--    signal  angle_imag  : array_data_tye:=(
--        1 => (                      -- º½
--            row => X"00",
--            line => X"00",
--            data_rom_addr => X"000",
--            data_length => X"010"
--        ),
--        2 => (                      -- Ïò
--            row => X"00",
--            line => X"10",
--            data_rom_addr => X"010",
--            data_length => X"010"
--        ),
--        3 => (                      -- ½Ç
--            row => X"00",
--            line => X"20",
--            data_rom_addr => X"060",
--            data_length => X"010"
--        ),
--        4 => (                      -- ¸©
--            row => X"10",
--            line => X"00",
--            data_rom_addr => X"020",
--            data_length => X"010"
--        ),
--        5 => (                      -- Ñö
--            row => X"10",
--            line => X"10",
--            data_rom_addr => X"030",
--            data_length => X"010"
--        ),
--        6 => (                      -- ½Ç
--            row => X"10",
--            line => X"20",
--            data_rom_addr => X"060",
--            data_length => X"010"
--        ),
--        7 => (                      -- ·­
--            row => X"20",
--            line => X"00",
--            data_rom_addr => X"040",
--            data_length => X"010"
--        ),
--        8 => (                      -- ¹ö
--            row => X"20",
--            line => X"10",
--            data_rom_addr => X"050",
--            data_length => X"010"
--        ),
--        9 => (                      -- ½Ç
--            row => X"20",
--            line => X"20",
--            data_rom_addr => X"060",
--            data_length => X"010"
--        ),
--        10 => (                      -- £º
--            row => X"00",
--            line => X"30",
--            data_rom_addr => X"0C0",
--            data_length => X"008"
--        ),
--        11 => (                      -- £º
--            row => X"10",
--            line => X"30",
--            data_rom_addr => X"0C0",
--            data_length => X"008"
--        ),
--        12 => (                      -- £º
--            row => X"20",
--            line => X"30",
--            data_rom_addr => X"0C0",
--            data_length => X"008"
--        ),
--        13 => (                      -- Ìì
--            row => X"30",
--            line => X"00",
--            data_rom_addr => X"0D8",
--            data_length => X"010"
--        ),
--        14 => (                      -- Ïß
--            row => X"30",
--            line => X"10",
--            data_rom_addr => X"0E8",
--            data_length => X"010"
--        ),    
--        15 => (                      -- ¸©
--            row => X"30",
--            line => X"20",
--            data_rom_addr => X"020",
--            data_length => X"010"
--        ),
--        16 => (                      -- Ñö
--            row => X"30",
--            line => X"30",
--            data_rom_addr => X"030",
--            data_length => X"010"
--        ),
--        17 => (                      -- £º
--            row => X"30",
--            line => X"40",
--            data_rom_addr => X"0C0",
--            data_length => X"008"
--        ),                    
--        18 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"38",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        19 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"40",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        20 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"48",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        21 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"50",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        22 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"58",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        23 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"60",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        24 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"68",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        25 => (                      -- ROW1 NUM
--            row => X"00",
--            line => X"70",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        26 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"38",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        27 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"40",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        28 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"48",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        29 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"50",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        30 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"58",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        31 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"60",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        32 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"68",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        33 => (                      -- ROW2 NUM
--            row => X"10",
--            line => X"70",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        34 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"38",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        35 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"40",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        36 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"48",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        37 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"50",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        38 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"58",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        39 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"60",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        40 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"68",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        41 => (                      -- ROW3 NUM
--            row => X"20",
--            line => X"70",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        42 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"48",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        43 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"50",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        44 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"58",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        45 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"60",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        46 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"68",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        47 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"70",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        48 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"78",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        ),                    
--        49 => (                      -- ROW4 NUM
--            row => X"30",
--            line => X"80",
--            data_rom_addr => X"FFF",
--            data_length => X"008"
--        )                    
--);

begin

    fun_ready <= '1' when state_wr_d_ram = X"0" and fun_valid = '0' else '0';

    wr_d_ram_gen : process(clk)
    begin
        if rising_edge(clk) then
            dec_rom_addr_out_valid1 <= dec_rom_addr_out_valid;
            dec_rom_addr_out1 <= dec_rom_addr_out;
            if rst = '1'    then
                state_wr_d_ram <= (others => '0');
            else
                case    state_wr_d_ram    is
                    when    X"0"    =>
                        if fun_valid = '1' then
                            d_ram_rst <= '1';
                            state_wr_d_ram <= state_wr_d_ram + '1';
                            frame_index <= 1;
                            angle_heading1  <= angle_heading;
                            angle_pitch1    <= angle_pitch  ;
                            angle_roll1     <= angle_roll   ;
                            angle_servo1    <= angle_servo  ;
                        end if;
                    when    X"1"    =>
                        state_wr_d_ram <= state_wr_d_ram + '1';
                    when    X"2"    =>
                        d_ram_rst <= '0';
                        state_wr_d_ram <= state_wr_d_ram + '1';
                    when    X"3"    =>     -- angle heading
                        hex_data_in <= angle_heading1;                        
                        hex_data_in_valid <= '1';
                        signed_or_not <= '0';
                        integer_num <= 3;
                        state_wr_d_ram <= state_wr_d_ram + '1';
                        wr_cnt <= 1;                        
                    when    X"4"    =>
                        hex_data_in_valid <= '0';                                                
                        if dec_rom_addr_out_valid1 = '1'   then
                            wr_cnt <= wr_cnt + 1;
                            angle_imag(wr_cnt + row0_offset - 1).data_rom_addr <= dec_rom_addr_out1;
                            if dec_rom_addr_out_valid = '0' then
                                state_wr_d_ram <= X"9";     -- Ö±½Ó½øÈëÌìÏß¸©Ñö½Ç
                            end if;
                        end if;
                    when    X"5"    =>     -- angle pitch
                        hex_data_in <= angle_pitch1;
                        hex_data_in_valid <= '1';
                        integer_num <= 3;
                        state_wr_d_ram <= state_wr_d_ram + '1';
                        wr_cnt <= 1;                        
                    when    X"6"    =>
                        hex_data_in_valid <= '0';                                                
                        if dec_rom_addr_out_valid1 = '1'   then
                            wr_cnt <= wr_cnt + 1;
                            angle_imag(wr_cnt + row1_offset - 1).data_rom_addr <= dec_rom_addr_out1;
                            if dec_rom_addr_out_valid = '0' then
                                state_wr_d_ram <= state_wr_d_ram + '1';
                            end if;
                        end if;
                    when    X"7"    =>     -- angle roll
                        hex_data_in <= angle_roll1;
                        hex_data_in_valid <= '1';
                        integer_num <= 3;
                        state_wr_d_ram <= state_wr_d_ram + '1';
                        wr_cnt <= 1;                        
                    when    X"8"    =>
                        hex_data_in_valid <= '0';                                                
                        if dec_rom_addr_out_valid1 = '1'   then
                            wr_cnt <= wr_cnt + 1;
                            angle_imag(wr_cnt + row2_offset - 1).data_rom_addr <= dec_rom_addr_out1;
                            if dec_rom_addr_out_valid = '0' then
                                state_wr_d_ram <= state_wr_d_ram + '1';
                            end if;
                        end if;
                    when    X"9"    =>     -- angle servo
                        hex_data_in <= angle_servo1;
                        hex_data_in_valid <= '1';
                        signed_or_not <= '1';
                        integer_num <= 4;
                        state_wr_d_ram <= state_wr_d_ram + '1';
                        wr_cnt <= 1;                        
                    when    X"A"    =>
                        hex_data_in_valid <= '0';                                                
                        if dec_rom_addr_out_valid1 = '1'   then
                            wr_cnt <= wr_cnt + 1;
                            angle_imag(wr_cnt + row3_offset - 1).data_rom_addr <= dec_rom_addr_out1;
                            if dec_rom_addr_out_valid = '0' then
                                state_wr_d_ram <= state_wr_d_ram + '1';
                            end if;
                        end if;                    
                    when    X"B"    =>     -- Ğ´Èë
                        if fun_d_ram_ssd1309_ready = '1'  then
                            if frame_index = angle_imag_num then
                                frame_index <= 1;
                                state_wr_d_ram <= state_wr_d_ram + '1';
                            else
                                frame_index <= frame_index + 1;
                            end if;
                            fun_d_ram_ssd1309_valid <= '1';
                            fun_d_ram_ssd1309_offset_row <= angle_imag(frame_index).row + offset_row;
                            fun_d_ram_ssd1309_offset_line <= angle_imag(frame_index).line + offset_line;
                            rom_addr <= angle_imag(frame_index).data_rom_addr;
                            c_length <= angle_imag(frame_index).data_length;
                        else
                            fun_d_ram_ssd1309_valid <= '0';
                        end if;
                    when    X"C"    =>      --     
                        fun_d_ram_ssd1309_valid <= '0';                   
                        if fun_d_ram_ssd1309_ready = '1'  then
                            state_wr_d_ram <= state_wr_d_ram + '1';
                        end if;
                    when    X"D"    =>
                        state_wr_d_ram <= (others => '0');
                    when    others  =>
                        state_wr_d_ram <= (others => '0');
                end case;
            end if;
        end if;
    end process;

    inst_fun_d_ram_ssd1309 : fun_d_ram_ssd1309
        port map(
            clk             =>  clk       ,
            rst             =>  rst           ,
            d_ram_rst       =>  d_ram_rst     ,
            rom_addr        =>  rom_addr      ,
            c_length        =>  c_length      ,
            offset_row      =>  fun_d_ram_ssd1309_offset_row    ,
            offset_line     =>  fun_d_ram_ssd1309_offset_line   ,
            fun_valid       =>  fun_d_ram_ssd1309_valid     ,
            fun_ready       =>  fun_d_ram_ssd1309_ready     ,
            rd_addr         =>  rd_addr       ,
            rd_addr_valid   =>  rd_addr_valid ,
            data_out        =>  data_out,
            data_out_valid  =>  data_out_valid
        );

inst_fun_dec_2_rom_addr : fun_dec_2_rom_addr
port map(
clk                         =>  clk                   ,
fun_ready                   =>  fun_dec_2_rom_addr_ready,
signed_or_not               =>  signed_or_not,
hex_data_in                 =>  hex_data_in           ,
hex_data_in_valid           =>  hex_data_in_valid     ,
integer_num                 =>  integer_num           ,
display_flag                =>  display_flag,
hex_or_dec                  =>  hex_or_dec  ,
dec_rom_addr_out            =>  dec_rom_addr_out      ,
dec_rom_addr_out_valid      =>  dec_rom_addr_out_valid
);

end Behavioral;
