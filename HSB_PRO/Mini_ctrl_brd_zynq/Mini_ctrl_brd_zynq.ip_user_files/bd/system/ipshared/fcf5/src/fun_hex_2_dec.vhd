----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/13 16:37:03
-- Design Name: 
-- Module Name: fun_hex_2_dec - Behavioral
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

entity fun_hex_2_dec is
    Port (
        clk                       : in std_logic;
        signed_or_not             : in std_logic;       -- 1:signed 0:unsigned
        hex_data_in               : in std_logic_Vector(15 downto 0);
        hex_data_in_valid         : in std_logic;
        dec_data_out              : out std_logic_vector(20 downto 0);
        dec_data_out_valid        : out std_logic
    );
end fun_hex_2_dec;

architecture Behavioral of fun_hex_2_dec is

    constant    dec_10      : std_logic_Vector(15 downto 0):=X"000A";

    COMPONENT div_gen_hex_2_dec
        PORT (
            aclk : IN STD_LOGIC;
            s_axis_divisor_tvalid : IN STD_LOGIC;
            s_axis_divisor_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            s_axis_dividend_tvalid : IN STD_LOGIC;
            s_axis_dividend_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            m_axis_dout_tvalid : OUT STD_LOGIC;
            m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    signal  s_axis_dividend_tdata0   :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
    signal  s_axis_dividend_tvalid0  : std_logic:='0';

    signal  m_axis_dout_tvalid0  : std_logic:='0';
    signal  m_axis_dout_tdata0   : std_logic_vector(31 downto 0);

    signal  s_axis_dividend_tdata1   :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
    signal  s_axis_dividend_tvalid1  : std_logic:='0';

    signal  m_axis_dout_tvalid1  : std_logic:='0';
    signal  m_axis_dout_tdata1   : std_logic_vector(31 downto 0);

    signal  s_axis_dividend_tdata2   :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
    signal  s_axis_dividend_tvalid2  : std_logic:='0';

    signal  m_axis_dout_tvalid2  : std_logic:='0';
    signal  m_axis_dout_tdata2   : std_logic_vector(31 downto 0);

    signal  s_axis_dividend_tdata3   :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
    signal  s_axis_dividend_tvalid3  : std_logic:='0';

    signal  m_axis_dout_tvalid3  : std_logic:='0';
    signal  m_axis_dout_tdata3   : std_logic_vector(31 downto 0);

    signal  s_axis_dividend_tdata4   :  STD_LOGIC_VECTOR(15 DOWNTO 0):=(others => '0');
    signal  s_axis_dividend_tvalid4  : std_logic:='0';

    signal  m_axis_dout_tvalid4  : std_logic:='0';
    signal  m_axis_dout_tdata4   : std_logic_vector(31 downto 0);


begin

---------------------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if signed_or_not = '0'  then
                s_axis_dividend_tvalid0 <= hex_data_in_valid;
                dec_data_out(20) <= '0';
                s_axis_dividend_tdata0 <= hex_data_in;
            else
                s_axis_dividend_tvalid0 <= hex_data_in_valid;
                dec_data_out(20) <= hex_data_in(15);
                if hex_data_in(15) = '1' then
                    s_axis_dividend_tdata0 <= X"0000" - hex_data_in;
                else
                    s_axis_dividend_tdata0 <= hex_data_in;
                end if;                      
            end if;                                    
        end if;
    end process;

-- 均视为正数  
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            s_axis_dividend_tvalid0 <= hex_data_in_valid;
--            dec_data_out(20) <= '0';
--            s_axis_dividend_tdata0 <= hex_data_in;
--        end if;
--    end process;

--    process(clk)
--    begin
--        if rising_edge(clk) then
--            s_axis_dividend_tvalid0 <= hex_data_in_valid;
--            dec_data_out(20) <= hex_data_in(15);
--            if hex_data_in(15) = '1' then
--                s_axis_dividend_tdata0 <= X"0000" - hex_data_in;
--            else
--                s_axis_dividend_tdata0 <= hex_data_in;
--            end if;
--        end if;
--    end process;
---------------------------------------------------------------------------------------


    inst_div_gen_hex_2_dec_0 : div_gen_hex_2_dec
        PORT MAP (
            aclk => clk,
            s_axis_divisor_tvalid => s_axis_dividend_tvalid0,
            s_axis_divisor_tdata => dec_10,
            s_axis_dividend_tvalid => s_axis_dividend_tvalid0,
            s_axis_dividend_tdata => s_axis_dividend_tdata0,
            m_axis_dout_tvalid => m_axis_dout_tvalid0,
            m_axis_dout_tdata => m_axis_dout_tdata0
        );

    process(clk)
    begin
        if rising_edge(clk) then
            s_axis_dividend_tvalid1 <= m_axis_dout_tvalid0;
            s_axis_dividend_tdata1 <= m_axis_dout_tdata0(31 downto 16);
            dec_data_out(3 downto 0) <= m_axis_dout_tdata0(3 downto 0);
        end if;
    end process;

    inst_div_gen_hex_2_dec_1 : div_gen_hex_2_dec
        PORT MAP (
            aclk => clk,
            s_axis_divisor_tvalid => s_axis_dividend_tvalid1,
            s_axis_divisor_tdata => dec_10,
            s_axis_dividend_tvalid => s_axis_dividend_tvalid1,
            s_axis_dividend_tdata => s_axis_dividend_tdata1,
            m_axis_dout_tvalid => m_axis_dout_tvalid1,
            m_axis_dout_tdata => m_axis_dout_tdata1
        );

    process(clk)
    begin
        if rising_edge(clk) then
            s_axis_dividend_tvalid2 <= m_axis_dout_tvalid1;
            s_axis_dividend_tdata2 <= m_axis_dout_tdata1(31 downto 16);
            dec_data_out(7 downto 4) <= m_axis_dout_tdata1(3 downto 0);
        end if;
    end process;

    inst_div_gen_hex_2_dec_2 : div_gen_hex_2_dec
        PORT MAP (
            aclk => clk,
            s_axis_divisor_tvalid => s_axis_dividend_tvalid2,
            s_axis_divisor_tdata => dec_10,
            s_axis_dividend_tvalid => s_axis_dividend_tvalid2,
            s_axis_dividend_tdata => s_axis_dividend_tdata2,
            m_axis_dout_tvalid => m_axis_dout_tvalid2,
            m_axis_dout_tdata => m_axis_dout_tdata2
        );

    process(clk)
    begin
        if rising_edge(clk) then
            s_axis_dividend_tvalid3 <= m_axis_dout_tvalid2;
            s_axis_dividend_tdata3 <= m_axis_dout_tdata2(31 downto 16);
            dec_data_out(11 downto 8) <= m_axis_dout_tdata2(3 downto 0);
        end if;
    end process;

    inst_div_gen_hex_2_dec_3 : div_gen_hex_2_dec
        PORT MAP (
            aclk => clk,
            s_axis_divisor_tvalid => s_axis_dividend_tvalid3,
            s_axis_divisor_tdata => dec_10,
            s_axis_dividend_tvalid => s_axis_dividend_tvalid3,
            s_axis_dividend_tdata => s_axis_dividend_tdata3,
            m_axis_dout_tvalid => m_axis_dout_tvalid3,
            m_axis_dout_tdata => m_axis_dout_tdata3
        );

    process(clk)
    begin
        if rising_edge(clk) then
            s_axis_dividend_tvalid4 <= m_axis_dout_tvalid3;
            s_axis_dividend_tdata4 <= m_axis_dout_tdata3(31 downto 16);
            dec_data_out(15 downto 12) <= m_axis_dout_tdata3(3 downto 0);
        end if;
    end process;

    inst_div_gen_hex_2_dec_4 : div_gen_hex_2_dec
        PORT MAP (
            aclk => clk,
            s_axis_divisor_tvalid => s_axis_dividend_tvalid4,
            s_axis_divisor_tdata => dec_10,
            s_axis_dividend_tvalid => s_axis_dividend_tvalid4,
            s_axis_dividend_tdata => s_axis_dividend_tdata4,
            m_axis_dout_tvalid => m_axis_dout_tvalid4,
            m_axis_dout_tdata => m_axis_dout_tdata4
        );
    process(clk)
    begin
        if rising_edge(clk) then
            dec_data_out_valid <= m_axis_dout_tvalid4;
            dec_data_out(19 downto 16) <= m_axis_dout_tdata4(3 downto 0);
        end if;
    end process;

end Behavioral;
