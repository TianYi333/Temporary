#include "mmw_radar_cfg.h"

// 全局变量定义
TestCfg_t        g_test;
SysCfg_t         g_sys;
CommCfg_t        g_comm;
ChanCfg_t        g_chan;
AdcCfg_t         g_adc;
DataFmtCfg_t     g_dataFmt;
LpCfg_t          g_lp;
DataPathCfg_t    g_dataPath;
LvdsIfCfg_t      g_lvdsIf;
HsiClkCfg_t      g_hsiClk;
LaneEnCfg_t      g_laneEn;
LvdsLaneCfg_t    g_lvdsLane;
Csi2LaneCfg_t    g_csi2Lane;
FilterCfg_t      g_filter;
ProfileCfg_t     g_profile[4];
ChirpCfg_t       g_chirp[2];
SubFrameCfg_t    g_subFrame[4];
ContModeCfg_t    g_contMode;
AdvChirpCfg_t    g_advChirp;
AdvChirpLUTCfg_t g_advLut;

// 主从机核心全局变量（补齐）
uint8_t mmwl_TDA_SlavesEnabled[3] = {0, 0, 0};    // 默认无从机
uint8_t mmwl_bTDA_ARMDone = 1;                    // 启动完成标志
uint8_t mmwl_bSensorStarted = 0;                  // 传感器运行标志
uint32_t gContStreamTime = 1000;                  // 连续模式延时1秒

FW_State_e g_fw_state = FW_STATE_IDLE;
MMWL_FwVer_t g_chip_version;


// 初始化所有参数
void MMW_InitAll(void)
{
    // 测试模式
    g_test.cfg_LinkAdvanceFrameTest = LinkAdvanceFrameTest;
    g_test.cfg_LinkContModeTest     = LinkContModeTest;
    g_test.cfg_LinkDynChirpTest     = LinkDynChirpTest;
    g_test.cfg_LinkDynProfileTest   = LinkDynProfileTest;
    g_test.cfg_LinkAdvChirpTest     = LinkAdvChirpTest;

    // 系统配置
    g_sys.cfg_EnableFwDownload    = EnableFwDownload;
    g_sys.cfg_CalibEnable         = CalibEnable;
    g_sys.cfg_CalibStoreRestore   = CalibStoreRestore;
    g_sys.cfg_CascadeDeviceMap    = CascadeDeviceMap;

    // 通信配置
    g_comm.cfg_crcType      = crcType;
    g_comm.cfg_ackTimeout   = ackTimeout;

    // 通道配置
    g_chan.cfg_channelTx       = channelTx;
    g_chan.cfg_channelRx       = channelRx;
    g_chan.cfg_cascading       = cascading;

    // ADC配置
    g_adc.cfg_adcBits       = adcBits;
    g_adc.cfg_adcFormat     = adcFormat;

    // 数据格式
    g_dataFmt.cfg_rxChanEn       = rxChanEn;
    g_dataFmt.cfg_adcBitsD       = adcBitsD;
    g_dataFmt.cfg_adcFmt         = adcFmt;
    g_dataFmt.cfg_iqSwapSel      = iqSwapSel;
    g_dataFmt.cfg_chInterleave   = chInterleave;

    // 低功耗
    g_lp.cfg_anaCfg           = anaCfg;
    g_lp.cfg_lpAdcMode         = lpAdcMode;

    // Data Path
    g_dataPath.cfg_intfSel         = intfSel;
    g_dataPath.cfg_transferFmtPkt0  = transferFmtPkt0;
    g_dataPath.cfg_transferFmtPkt1  = transferFmtPkt1;
    g_dataPath.cfg_cqConfig        = cqConfig;
    g_dataPath.cfg_cq0TransSize    = cq0TransSize;
    g_dataPath.cfg_cq1TransSize    = cq1TransSize;
    g_dataPath.cfg_cq2TransSize    = cq2TransSize;

    // LVDS接口
    g_lvdsIf.cfg_laneClk        = laneClk;
    g_lvdsIf.cfg_dataRate       = dataRate;

    // HSI时钟
    g_hsiClk.cfg_hsiClk        = hsiClk;

    // 通道使能
    g_laneEn.cfg_laneEn         = laneEn;

    // LVDS Lane
    g_lvdsLane.cfg_laneFmtMap   = laneFmtMap;
    g_lvdsLane.cfg_laneParamCfg    = laneParamCfg;

    // CSI2 Lane
    g_csi2Lane.cfg_lanePosPolSel = lanePosPolSel;

    // 滤波器
    g_filter.cfg_filter_profileId = filter_profileId;
    g_filter.cfg_coeffStartIdx = coeffStartIdx;
    g_filter.cfg_progFiltLen = progFiltLen;
    g_filter.cfg_progFiltFreqShift = progFiltFreqShift;

    // Profile 0
    g_profile[0].cfg_profile_id = PROFILE_ID_0;
    g_profile[0].cfg_pf_vco_select = PF_VCO_SELECT_0;
    g_profile[0].cfg_start_freq_const = START_FREQ_CONST_0;
    g_profile[0].cfg_idle_time_const = IDLE_TIME_CONST_0;
    g_profile[0].cfg_adc_start_time_const = ADC_START_TIME_CONST_0;
    g_profile[0].cfg_ramp_end_time = RAMP_END_TIME_0;
    g_profile[0].cfg_tx_out_power_backoff_code = TX_OUT_POWER_BACKOFF_CODE_0;
    g_profile[0].cfg_tx_phase_shifter = TX_PHASE_SHIFTER_0;
    g_profile[0].cfg_freq_slope_const = FREQ_SLOPE_CONST_0;
    g_profile[0].cfg_tx_start_time = TX_START_TIME_0;
    g_profile[0].cfg_num_adc_samples = NUM_ADC_SAMPLES_0;
    g_profile[0].cfg_dig_out_sample_rate = DIG_OUT_SAMPLE_RATE_0;
    g_profile[0].cfg_hpf_corner_freq1 = HPF_CORNER_FREQ1_0;
    g_profile[0].cfg_hpf_corner_freq2 = HPF_CORNER_FREQ2_0;
    g_profile[0].cfg_rx_gain = RX_GAIN_0;

    // Profile 1
    g_profile[1].cfg_profile_id = PROFILE_ID_1;
    g_profile[1].cfg_pf_vco_select = PF_VCO_SELECT_1;
    g_profile[1].cfg_start_freq_const = START_FREQ_CONST_1;
    g_profile[1].cfg_idle_time_const = IDLE_TIME_CONST_1;
    g_profile[1].cfg_adc_start_time_const = ADC_START_TIME_CONST_1;
    g_profile[1].cfg_ramp_end_time = RAMP_END_TIME_1;
    g_profile[1].cfg_tx_out_power_backoff_code = TX_OUT_POWER_BACKOFF_CODE_1;
    g_profile[1].cfg_tx_phase_shifter = TX_PHASE_SHIFTER_1;
    g_profile[1].cfg_freq_slope_const = FREQ_SLOPE_CONST_1;
    g_profile[1].cfg_tx_start_time = TX_START_TIME_1;
    g_profile[1].cfg_num_adc_samples = NUM_ADC_SAMPLES_1;
    g_profile[1].cfg_dig_out_sample_rate = DIG_OUT_SAMPLE_RATE_1;
    g_profile[1].cfg_hpf_corner_freq1 = HPF_CORNER_FREQ1_1;
    g_profile[1].cfg_hpf_corner_freq2 = HPF_CORNER_FREQ2_1;
    g_profile[1].cfg_rx_gain = RX_GAIN_1;

    // Profile 2
    g_profile[2].cfg_profile_id = PROFILE_ID_2;
    g_profile[2].cfg_pf_vco_select = PF_VCO_SELECT_2;
    g_profile[2].cfg_start_freq_const = START_FREQ_CONST_2;
    g_profile[2].cfg_idle_time_const = IDLE_TIME_CONST_2;
    g_profile[2].cfg_adc_start_time_const = ADC_START_TIME_CONST_2;
    g_profile[2].cfg_ramp_end_time = RAMP_END_TIME_2;
    g_profile[2].cfg_tx_out_power_backoff_code = TX_OUT_POWER_BACKOFF_CODE_2;
    g_profile[2].cfg_tx_phase_shifter = TX_PHASE_SHIFTER_2;
    g_profile[2].cfg_freq_slope_const = FREQ_SLOPE_CONST_2;
    g_profile[2].cfg_tx_start_time = TX_START_TIME_2;
    g_profile[2].cfg_num_adc_samples = NUM_ADC_SAMPLES_2;
    g_profile[2].cfg_dig_out_sample_rate = DIG_OUT_SAMPLE_RATE_2;
    g_profile[2].cfg_hpf_corner_freq1 = HPF_CORNER_FREQ1_2;
    g_profile[2].cfg_hpf_corner_freq2 = HPF_CORNER_FREQ2_2;
    g_profile[2].cfg_rx_gain = RX_GAIN_2;

    // Profile 3
    g_profile[3].cfg_profile_id = PROFILE_ID_3;
    g_profile[3].cfg_pf_vco_select = PF_VCO_SELECT_3;
    g_profile[3].cfg_start_freq_const = START_FREQ_CONST_3;
    g_profile[3].cfg_idle_time_const = IDLE_TIME_CONST_3;
    g_profile[3].cfg_adc_start_time_const = ADC_START_TIME_CONST_3;
    g_profile[3].cfg_ramp_end_time = RAMP_END_TIME_3;
    g_profile[3].cfg_tx_out_power_backoff_code = TX_OUT_POWER_BACKOFF_CODE_3;
    g_profile[3].cfg_tx_phase_shifter = TX_PHASE_SHIFTER_3;
    g_profile[3].cfg_freq_slope_const = FREQ_SLOPE_CONST_3;
    g_profile[3].cfg_tx_start_time = TX_START_TIME_3;
    g_profile[3].cfg_num_adc_samples = NUM_ADC_SAMPLES_3;
    g_profile[3].cfg_dig_out_sample_rate = DIG_OUT_SAMPLE_RATE_3;
    g_profile[3].cfg_hpf_corner_freq1 = HPF_CORNER_FREQ1_3;
    g_profile[3].cfg_hpf_corner_freq2 = HPF_CORNER_FREQ2_3;
    g_profile[3].cfg_rx_gain = RX_GAIN_3;

    // Chirp 0
    g_chirp[0].cfg_chirp_start_idx = CHIRP_START_IDX_0;
    g_chirp[0].cfg_chirp_end_idx = CHIRP_END_IDX_0;
    g_chirp[0].cfg_profile_id_cpcfg = PROFILE_ID_CPCFG_0;
    g_chirp[0].cfg_start_freq_var = START_FREQ_VAR_0;
    g_chirp[0].cfg_freq_slope_var = FREQ_SLOPE_VAR_0;
    g_chirp[0].cfg_idle_time_var = IDLE_TIME_VAR_0;
    g_chirp[0].cfg_adc_start_time_var = ADC_START_TIME_VAR_0;
    g_chirp[0].cfg_tx_enable = TX_ENABLE_0;

    // Chirp 1
    g_chirp[1].cfg_chirp_start_idx = CHIRP_START_IDX_1;
    g_chirp[1].cfg_chirp_end_idx = CHIRP_END_IDX_1;
    g_chirp[1].cfg_profile_id_cpcfg = PROFILE_ID_CPCFG_1;
    g_chirp[1].cfg_start_freq_var = START_FREQ_VAR_1;
    g_chirp[1].cfg_freq_slope_var = FREQ_SLOPE_VAR_1;
    g_chirp[1].cfg_idle_time_var = IDLE_TIME_VAR_1;
    g_chirp[1].cfg_adc_start_time_var = ADC_START_TIME_VAR_1;
    g_chirp[1].cfg_tx_enable = TX_ENABLE_1;

    // SubFrame 0
    g_subFrame[0].cfg_force_profile_idx = FORCE_PROFILE_IDX_SF0;
    g_subFrame[0].cfg_chirp_start_idx_af = CHIRP_START_IDX_AF_SF0;
    g_subFrame[0].cfg_num_of_chirps = NUM_OF_CHIRPS_SF0;
    g_subFrame[0].cfg_num_loops = NUM_LOOPS_SF0;
    g_subFrame[0].cfg_burst_periodicity = BURST_PERIODICITY_SF0;
    g_subFrame[0].cfg_chirp_start_idx_offset = CHIRP_START_IDX_OFFSET_SF0;
    g_subFrame[0].cfg_num_of_burst = NUM_OF_BURST_SF0;
    g_subFrame[0].cfg_num_of_burst_loops = NUM_OF_BURST_LOOPS_SF0;
    g_subFrame[0].cfg_subframe_periodicity = SUBFRAME_PERIODICITY_SF0;
    g_subFrame[0].cfg_num_adc_samples_af = NUM_ADC_SAMPLES_AF_SF0;
    g_subFrame[0].cfg_num_chirps_in_data_packet = NUM_CHIRPS_IN_DATA_PACKET_SF0;

    // SubFrame 1
    g_subFrame[1].cfg_force_profile_idx = FORCE_PROFILE_IDX_SF1;
    g_subFrame[1].cfg_chirp_start_idx_af = CHIRP_START_IDX_AF_SF1;
    g_subFrame[1].cfg_num_of_chirps = NUM_OF_CHIRPS_SF1;
    g_subFrame[1].cfg_num_loops = NUM_LOOPS_SF1;
    g_subFrame[1].cfg_burst_periodicity = BURST_PERIODICITY_SF1;
    g_subFrame[1].cfg_chirp_start_idx_offset = CHIRP_START_IDX_OFFSET_SF1;
    g_subFrame[1].cfg_num_of_burst = NUM_OF_BURST_SF1;
    g_subFrame[1].cfg_num_of_burst_loops = NUM_OF_BURST_LOOPS_SF1;
    g_subFrame[1].cfg_subframe_periodicity = SUBFRAME_PERIODICITY_SF1;
    g_subFrame[1].cfg_num_adc_samples_af = NUM_ADC_SAMPLES_AF_SF1;
    g_subFrame[1].cfg_num_chirps_in_data_packet = NUM_CHIRPS_IN_DATA_PACKET_SF1;

    // SubFrame 2
    g_subFrame[2].cfg_force_profile_idx = FORCE_PROFILE_IDX_SF2;
    g_subFrame[2].cfg_chirp_start_idx_af = CHIRP_START_IDX_AF_SF2;
    g_subFrame[2].cfg_num_of_chirps = NUM_OF_CHIRPS_SF2;
    g_subFrame[2].cfg_num_loops = NUM_LOOPS_SF2;
    g_subFrame[2].cfg_burst_periodicity = BURST_PERIODICITY_SF2;
    g_subFrame[2].cfg_chirp_start_idx_offset = CHIRP_START_IDX_OFFSET_SF2;
    g_subFrame[2].cfg_num_of_burst = NUM_OF_BURST_SF2;
    g_subFrame[2].cfg_num_of_burst_loops = NUM_OF_BURST_LOOPS_SF2;
    g_subFrame[2].cfg_subframe_periodicity = SUBFRAME_PERIODICITY_SF2;
    g_subFrame[2].cfg_num_adc_samples_af = NUM_ADC_SAMPLES_AF_SF2;
    g_subFrame[2].cfg_num_chirps_in_data_packet = NUM_CHIRPS_IN_DATA_PACKET_SF2;

    // SubFrame 3
    g_subFrame[3].cfg_force_profile_idx = FORCE_PROFILE_IDX_SF3;
    g_subFrame[3].cfg_chirp_start_idx_af = CHIRP_START_IDX_AF_SF3;
    g_subFrame[3].cfg_num_of_chirps = NUM_OF_CHIRPS_SF3;
    g_subFrame[3].cfg_num_loops = NUM_LOOPS_SF3;
    g_subFrame[3].cfg_burst_periodicity = BURST_PERIODICITY_SF3;
    g_subFrame[3].cfg_chirp_start_idx_offset = CHIRP_START_IDX_OFFSET_SF3;
    g_subFrame[3].cfg_num_of_burst = NUM_OF_BURST_SF3;
    g_subFrame[3].cfg_num_of_burst_loops = NUM_OF_BURST_LOOPS_SF3;
    g_subFrame[3].cfg_subframe_periodicity = SUBFRAME_PERIODICITY_SF3;
    g_subFrame[3].cfg_num_adc_samples_af = NUM_ADC_SAMPLES_AF_SF3;
    g_subFrame[3].cfg_num_chirps_in_data_packet = NUM_CHIRPS_IN_DATA_PACKET_SF3;

    // 连续模式
    g_contMode.cfg_cont_mode_rx_gain = CONT_MODE_RX_GAIN;
    g_contMode.cfg_vco_select = VCO_SELECT;

    // 高级chirp
    g_advChirp.cfg_adv_chirp_param_idx = ADV_CHIRP_PARAM_IDX;
    g_advChirp.cfg_adv_chirp_reset_mode = ADV_CHIRP_RESET_MODE;
    g_advChirp.cfg_adv_chirp_delta_rst_period = ADV_CHIRP_DELTA_RST_PERIOD;
    g_advChirp.cfg_adv_chirp_delta_param_upd_period = ADV_CHIRP_DELTA_PARAM_UPD_PERIOD;
    g_advChirp.cfg_adv_chirp_sf0_param_delta = ADV_CHIRP_SF0_PARAM_DELTA;
    g_advChirp.cfg_adv_chirp_sf1_param_delta = ADV_CHIRP_SF1_PARAM_DELTA;
    g_advChirp.cfg_adv_chirp_sf2_param_delta = ADV_CHIRP_SF2_PARAM_DELTA;
    g_advChirp.cfg_adv_chirp_sf3_param_delta = ADV_CHIRP_SF3_PARAM_DELTA;
    g_advChirp.cfg_adv_chirp_lut_rst_period = ADV_CHIRP_LUT_RST_PERIOD;
    g_advChirp.cfg_adv_chirp_lut_param_upd_period = ADV_CHIRP_LUT_PARAM_UPD_PERIOD;
    g_advChirp.cfg_adv_chirp_lut_pat_addr_offset = ADV_CHIRP_LUT_PAT_ADDR_OFFSET;
    g_advChirp.cfg_adv_chirp_num_patterns = ADV_CHIRP_NUM_PATTERNS;
    g_advChirp.cfg_adv_chirp_lut_burst_idx_offset = ADV_CHIRP_LUT_BURST_IDX_OFFSET;
    g_advChirp.cfg_adv_chirp_lut_sf_idx_offset = ADV_CHIRP_LUT_SF_IDX_OFFSET;
    g_advChirp.cfg_adv_chirp_lut_param_size = ADV_CHIRP_LUT_PARAM_SIZE;
    g_advChirp.cfg_adv_chirp_lut_param_scale = ADV_CHIRP_LUT_PARAM_SCALE;
    g_advChirp.cfg_adv_chirp_max_tx_phsh_dither = ADV_CHIRP_MAX_TX_PHSH_DITHER;

    // 高级chirp LUT
    g_advLut.cfg_adv_chirp_prof_lut_addr_off = ADV_CHIRP_PROF_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_prof_data1 = ADV_CHIRP_PROF_DATA1;
    g_advLut.cfg_adv_chirp_prof_data2 = ADV_CHIRP_PROF_DATA2;
    g_advLut.cfg_adv_chirp_prof_data3 = ADV_CHIRP_PROF_DATA3;
    g_advLut.cfg_adv_chirp_prof_data4 = ADV_CHIRP_PROF_DATA4;

    g_advLut.cfg_adv_chirp_start_freq_lut_addr_off = ADV_CHIRP_START_FREQ_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_start_freq_param_size = ADV_CHIRP_START_FREQ_PARAM_SIZE;
    g_advLut.cfg_adv_chirp_start_freq_param_scale = ADV_CHIRP_START_FREQ_PARAM_SCALE;
    g_advLut.cfg_adv_chirp_start_freq_data1 = ADV_CHIRP_START_FREQ_DATA1;
    g_advLut.cfg_adv_chirp_start_freq_data2 = ADV_CHIRP_START_FREQ_DATA2;
    g_advLut.cfg_adv_chirp_start_freq_data3 = ADV_CHIRP_START_FREQ_DATA3;
    g_advLut.cfg_adv_chirp_start_freq_data4 = ADV_CHIRP_START_FREQ_DATA4;

    g_advLut.cfg_adv_chirp_slope_lut_addr_off = ADV_CHIRP_SLOPE_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_slope_data1 = ADV_CHIRP_SLOPE_DATA1;
    g_advLut.cfg_adv_chirp_slope_data2 = ADV_CHIRP_SLOPE_DATA2;
    g_advLut.cfg_adv_chirp_slope_data3 = ADV_CHIRP_SLOPE_DATA3;
    g_advLut.cfg_adv_chirp_slope_data4 = ADV_CHIRP_SLOPE_DATA4;

    g_advLut.cfg_adv_chirp_idle_time_lut_addr_off = ADV_CHIRP_IDLE_TIME_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_idle_time_param_size = ADV_CHIRP_IDLE_TIME_PARAM_SIZE;
    g_advLut.cfg_adv_chirp_idle_time_param_scale = ADV_CHIRP_IDLE_TIME_PARAM_SCALE;
    g_advLut.cfg_adv_chirp_idle_time_data1 = ADV_CHIRP_IDLE_TIME_DATA1;
    g_advLut.cfg_adv_chirp_idle_time_data2 = ADV_CHIRP_IDLE_TIME_DATA2;
    g_advLut.cfg_adv_chirp_idle_time_data3 = ADV_CHIRP_IDLE_TIME_DATA3;
    g_advLut.cfg_adv_chirp_idle_time_data4 = ADV_CHIRP_IDLE_TIME_DATA4;

    g_advLut.cfg_adv_chirp_adc_time_lut_addr_off = ADV_CHIRP_ADC_TIME_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_adc_time_param_size = ADV_CHIRP_ADC_TIME_PARAM_SIZE;
    g_advLut.cfg_adv_chirp_adc_time_param_scale = ADV_CHIRP_ADC_TIME_PARAM_SCALE;
    g_advLut.cfg_adv_chirp_adc_time_data1 = ADV_CHIRP_ADC_TIME_DATA1;
    g_advLut.cfg_adv_chirp_adc_time_data2 = ADV_CHIRP_ADC_TIME_DATA2;
    g_advLut.cfg_adv_chirp_adc_time_data3 = ADV_CHIRP_ADC_TIME_DATA3;
    g_advLut.cfg_adv_chirp_adc_time_data4 = ADV_CHIRP_ADC_TIME_DATA4;

    g_advLut.cfg_adv_chirp_tx_en_lut_addr_off = ADV_CHIRP_TX_EN_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_tx_en_data1 = ADV_CHIRP_TX_EN_DATA1;
    g_advLut.cfg_adv_chirp_tx_en_data2 = ADV_CHIRP_TX_EN_DATA2;
    g_advLut.cfg_adv_chirp_tx_en_data3 = ADV_CHIRP_TX_EN_DATA3;
    g_advLut.cfg_adv_chirp_tx_en_data4 = ADV_CHIRP_TX_EN_DATA4;

    g_advLut.cfg_adv_chirp_bpm_en_lut_addr_off = ADV_CHIRP_BPM_EN_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_bpm_en_data1 = ADV_CHIRP_BPM_EN_DATA1;
    g_advLut.cfg_adv_chirp_bpm_en_data2 = ADV_CHIRP_BPM_EN_DATA2;
    g_advLut.cfg_adv_chirp_bpm_en_data3 = ADV_CHIRP_BPM_EN_DATA3;
    g_advLut.cfg_adv_chirp_bpm_en_data4 = ADV_CHIRP_BPM_EN_DATA4;

    g_advLut.cfg_adv_chirp_tx0_phsh_lut_addr_off = ADV_CHIRP_TX0_PHSH_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_tx0_phsh_data1 = ADV_CHIRP_TX0_PHSH_DATA1;
    g_advLut.cfg_adv_chirp_tx0_phsh_data2 = ADV_CHIRP_TX0_PHSH_DATA2;
    g_advLut.cfg_adv_chirp_tx0_phsh_data3 = ADV_CHIRP_TX0_PHSH_DATA3;
    g_advLut.cfg_adv_chirp_tx0_phsh_data4 = ADV_CHIRP_TX0_PHSH_DATA4;

    g_advLut.cfg_adv_chirp_tx1_phsh_lut_addr_off = ADV_CHIRP_TX1_PHSH_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_tx1_phsh_data1 = ADV_CHIRP_TX1_PHSH_DATA1;
    g_advLut.cfg_adv_chirp_tx1_phsh_data2 = ADV_CHIRP_TX1_PHSH_DATA2;
    g_advLut.cfg_adv_chirp_tx1_phsh_data3 = ADV_CHIRP_TX1_PHSH_DATA3;
    g_advLut.cfg_adv_chirp_tx1_phsh_data4 = ADV_CHIRP_TX1_PHSH_DATA4;

    g_advLut.cfg_adv_chirp_tx2_phsh_lut_addr_off = ADV_CHIRP_TX2_PHSH_LUT_ADDR_OFF;
    g_advLut.cfg_adv_chirp_tx2_phsh_data1 = ADV_CHIRP_TX2_PHSH_DATA1;
    g_advLut.cfg_adv_chirp_tx2_phsh_data2 = ADV_CHIRP_TX2_PHSH_DATA2;
    g_advLut.cfg_adv_chirp_tx2_phsh_data3 = ADV_CHIRP_TX2_PHSH_DATA3;
    g_advLut.cfg_adv_chirp_tx2_phsh_data4 = ADV_CHIRP_TX2_PHSH_DATA4;
}


//  完整MMWL_App()
//  包含：主从机、连续模式、ARM/DEARM、延时、动态配置、从机优先
int MMWL_App(void)
{
    int i = 0;
    int retVal = 0;

    // 固件检查 + 下载
    MMWL_CheckAndDownloadFirmware();

    // 功能：加载所有雷达全局参数（代替原版读txt文件）
    // 原版对应：原版 MMWL_getGlobalConfigStatus() ~ MMWL_DeviceInit2()函数,加载 + 参数解析
    MMW_InitAll();
    // 功能：遍历所有从机 → 上电
    for (i = 0; i < 3; i++)
    {
        if (mmwl_TDA_SlavesEnabled[i] == 1)
        {
            // 给使能的从机上电
            MMWL_SendCmd(CMD_DEVICE_POWER_UP, (void*)(1 << (i + 1)), 1, SBLK_ID_DEFAULT_CONFIG);
        }
    }
    // 功能：如果存在从机 → 执行从机初始化
    // 原版对应：MMWL_DeviceInit1
    if (mmwl_TDA_DeviceMapCascadedSlaves != 0)
    {
        // 从机统一初始化
        MMWL_SendCmd(CMD_DEVICE_INIT1, (void*)mmwl_TDA_DeviceMapCascadedSlaves, 1, SBLK_ID_DEFAULT_CONFIG);
    }


    // 功能：下发设备基础配置
    // 原版对应：MMWL_DeviceConfig()
    MMWL_SendCmd(CMD_SET_SYS_CONFIG,            &g_sys,         sizeof(g_sys),		SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_COMM_CONFIG,           &g_comm,        sizeof(g_comm),		SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_CHANNEL_CONFIG,        &g_chan,        sizeof(g_chan),		SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_ADC_CONFIG,            &g_adc,         sizeof(g_adc),		SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_DATA_FORMAT,           &g_dataFmt,     sizeof(g_dataFmt),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_LOW_POWER,             &g_lp,          sizeof(g_lp),		SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_DATA_PATH,             &g_dataPath,    sizeof(g_dataPath),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_LVDS_INTERFACE,        &g_lvdsIf,      sizeof(g_lvdsIf),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_HSI_CLOCK,             &g_hsiClk,      sizeof(g_hsiClk),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_LANE_ENABLE,           &g_laneEn,      sizeof(g_laneEn),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_LVDS_LANE_CONFIG,      &g_lvdsLane,    sizeof(g_lvdsLane),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_CSI2_LANE_CONFIG,      &g_csi2Lane,    sizeof(g_csi2Lane),	SBLK_ID_DEFAULT_CONFIG);
    MMWL_SendCmd(CMD_SET_FILTER_CONFIG,         &g_filter,      sizeof(g_filter),	SBLK_ID_DEFAULT_CONFIG);

    // 原版对应：if (rlDevGlobalCfgArgs.LinkContModeTest == TRUE)
    if (g_test.cfg_LinkContModeTest == 1)
    {
        // 功能：从机开启连续波
        // 原版对应MMWL_ContModeEnable()
        for (i = 2; i >= 0; i--)
        {
            if (mmwl_TDA_SlavesEnabled[i] == 1)
            {
                MMWL_SendCmd(CMD_CONT_MODE_ENABLE, (void*)(1 << (i+1)), 1, SBLK_ID_DEFAULT_CONFIG);
            }
        }

        // 功能：主机开启连续波
        // 原版对应：MMWL_ContModeEnable()
        MMWL_SendCmd(CMD_CONT_MODE_ENABLE, (void*)mmwl_TDA_DeviceMapCascadedMaster, 1, SBLK_ID_DEFAULT_CONFIG);

        // 功能：硬件启动（TDA Arming）
        // 原版对应：MMWL_ArmingTDA()
        MMWL_SendCmd(CMD_ARM_TDA, NULL, 0, SBLK_ID_DEFAULT_CONFIG);


        // 功能：延时等待采样
        // 原版对应：osiSleep(gContStreamTime)
        MMWL_DelayMs(gContStreamTime);


        // 功能：硬件停止
        // 原版对应：MMWL_DeArmingTDA()
        // ==============================================
        if (mmwl_bTDA_ARMDone == 1U)
        {
            MMWL_SendCmd(CMD_DISARM_TDA, NULL, 0, SBLK_ID_DEFAULT_CONFIG);
        }

        MMWL_DelayMs(5000);

        // 功能：从机关闭连续波
        // 原版对应：MMWL_ContModeEnable()
        for (i = 2; i >= 0; i--)
        {
            if (mmwl_TDA_SlavesEnabled[i] == 1)
            {
                MMWL_SendCmd(CMD_CONT_MODE_DISABLE, (void*)(1 << (i+1)), 1, SBLK_ID_DEFAULT_CONFIG);
            }
        }

        // 功能：主机关闭连续波
        // 原版对应：MMWL_ContModeEnable()
        MMWL_SendCmd(CMD_CONT_MODE_DISABLE, (void*)mmwl_TDA_DeviceMapCascadedMaster, 1, SBLK_ID_DEFAULT_CONFIG);
    }
    else
    {
        // 功能：帧配置全部下发
    	// 原版对应：MMWL_FrameConfigAll() 第 1 部分
        for (i = 0; i < 4; i++)
        {
            MMWL_SendCmd(CMD_SET_PROFILE_CONFIG, &g_profile[i], sizeof(g_profile[i]), SBLK_ID_DEFAULT_CONFIG);
        }
        // 原版对应：MMWL_FrameConfigAll() 第2部分
        for (i = 0; i < 2; i++)
        {
            MMWL_SendCmd(CMD_SET_CHIRP_CONFIG, &g_chirp[i], sizeof(g_chirp[i]), SBLK_ID_DEFAULT_CONFIG);
        }
        // 原版对应：MMWL_FrameConfigAll() 第3部分
        for (i = 0; i < 4; i++)
        {
            MMWL_SendCmd(CMD_SET_SUBFRAME_CONFIG, &g_subFrame[i], sizeof(g_subFrame[i]), SBLK_ID_DEFAULT_CONFIG);
        }

        // 功能：高级chirp配置下发
        // 原版对应：MMWL_FrameConfigAll() 第4部分
        // 原版对应：MMWL_FrameConfigAll()里的MMWL_SetAdvChirpConfig()
        if (g_test.cfg_LinkAdvChirpTest == 1)
        {
            MMWL_SendCmd(CMD_SET_ADV_CHIRP,     &g_advChirp, sizeof(g_advChirp), SBLK_ID_DEFAULT_CONFIG);
            MMWL_SendCmd(CMD_SET_ADV_CHIRP_LUT, &g_advLut,   sizeof(g_advLut), SBLK_ID_DEFAULT_CONFIG);
        }

        // 功能：硬件启动
        // 原版对应：MMWL_ArmingTDA()
        MMWL_SendCmd(CMD_ARM_TDA, NULL, 0, SBLK_ID_DEFAULT_CONFIG);


        // 功能：从机启动帧触发
        // 原版对应：MMWL_StartFrame(Slave)
        for (i = 2; i >= 0; i--)
        {
            if (mmwl_TDA_SlavesEnabled[i] == 1)
            {
                MMWL_SendCmd(CMD_START_FRAME, (void*)(1 << (i+1)), 1, SBLK_ID_DEFAULT_CONFIG);
            }
        }

        // 功能：主机启动帧触发
        // 原版对应：MMWL_StartFrame()
        MMWL_SendCmd(CMD_START_FRAME, (void*)mmwl_TDA_DeviceMapCascadedMaster, 1, SBLK_ID_DEFAULT_CONFIG);


        // 功能：从机动态配置
        // 原版对应：MMWL_DynConfig(Slave)
        for (i = 2; i >= 0; i--)
        {
            if (mmwl_TDA_SlavesEnabled[i] == 1)
            {
                MMWL_SendCmd(CMD_DYN_CONFIG, (void*)(1 << (i+1)), 1, SBLK_ID_DEFAULT_CONFIG);
            }
        }

        // 功能：主机动态配置
        // 原版对应：MMWL_DynConfig(Master)
        MMWL_SendCmd(CMD_DYN_CONFIG, (void*)mmwl_TDA_DeviceMapCascadedMaster, 1, SBLK_ID_DEFAULT_CONFIG);

        // 功能：动态高级chirp配置循环
        // 原版对应：MMWL_DynAdvConfig()
        while (mmwl_bSensorStarted != 0x0)
        {
            retVal = MMWL_SendCmd(CMD_DYN_ADV_CONFIG, &g_advLut, sizeof(g_advLut), SBLK_ID_DEFAULT_CONFIG);
            if (retVal != 0) break;
            MMWL_DelayMs(1);
        }

        // 功能：硬件停止
        // 原版对应：if (mmwl_bTDA_ARMDone == 1U)
        //			MMWL_DeArmingTDA()
        if (mmwl_bTDA_ARMDone == 1U)
        {
            MMWL_SendCmd(CMD_DISARM_TDA, NULL, 0, SBLK_ID_DEFAULT_CONFIG);
        }
    }

    // 功能：设备反初始化（停止所有配置、停止收发）
	// 原版对应：MMWL_DeviceDeInit(所有设备)
    //设备已经通过 DISARM_TDA 停止工作，
	MMWL_SendCmd(CMD_DEVICE_DEINIT, (void*)mmwl_TDA_DeviceMapCascadedAll, 1, SBLK_ID_DEFAULT_CONFIG);

	// 功能：遍历所有从机 → 如果存在，就给从机断电
    // 原版对应：MMWL_powerOff()
	for (i = 2; i >= 0; i--)
	{
		if (mmwl_TDA_SlavesEnabled[i] == 1)
		{
			MMWL_SendCmd(CMD_POWER_OFF, (void*)(1 << (i + 1)), 1, SBLK_ID_DEFAULT_CONFIG);
		}
	}

	// 功能：主机断电（整个雷达核心芯片下电）
	// 原版对应：MMWL_powerOff(mmwl_TDA_DeviceMapCascadedMaster);
	MMWL_SendCmd(CMD_POWER_OFF, (void*)mmwl_TDA_DeviceMapCascadedMaster, 1, SBLK_ID_DEFAULT_CONFIG);

	// 功能：如果连接了以太网采集卡 → 断开网络连接
//	if (mmwl_bTDA_CaptureCardConnect == 1)
//	{
//		// 以太网断开逻辑
//		retVal = ethernetDisconnect();
//		if (retVal != RL_RET_CODE_OK)
//		{
//			// 失败打印
//		}
//		else
//		{
//			mmwl_bTDA_CaptureCardConnect = 0;
//		}
//	}


    return 0;
}


// 从 metaImage 固件头里 自动解析出版本号
static void MMWL_GetLocalFirmwareVersion(MMWL_FwVer_t *ver)
{
    // ==================== 官方固件头格式 ====================
    // metaImage[0] = 0x534D  'SM'
    // metaImage[1] = 0x5254  'RT'
    // metaImage[2] = Major Version
    // metaImage[3] = Minor Version
    // metaImage[4] = Patch
    // metaImage[5] = Build
    // ======================================================

    ver->maj = metaImage[2];
    ver->min = metaImage[3];
    ver->pat = metaImage[4];
    ver->bld = metaImage[5];
}

// 读取雷达当前固件版本
int MMWL_GetRadarFwVersion(void)
{
    typedef struct
    {
        uint16_t sblk_id;
        uint16_t sblk_len;
    } VersionSubBlk_t;

    // 发送读版本命令
    VersionSubBlk_t sub = {0};
    sub.sblk_id = SBLK_ID_VERSION_GET;
    sub.sblk_len = sizeof(VersionSubBlk_t);

    return MMWL_SendCmd(CMD_GET_VERSION, &sub, sizeof(sub), SBLK_ID_VERSION_GET);
}

// 固件下载（分片发送）
int MMWL_DownloadFirmware(void)
{
    const uint8_t *fw_data = (const uint8_t *)metaImage;
    uint32_t fw_len = sizeof(metaImage) * 2;
    uint32_t offset = 0;
    uint32_t chunk_size;
    uint32_t idx = 0;

    printf("[FW] 开始下载固件，总长度：%lu 字节\n", fw_len);

    // 第一片 224 字节
    chunk_size = (fw_len > 224) ? 224 : fw_len;
    if (MMWL_SendCmd(CMD_FILE_DOWNLOAD, &fw_data[offset], chunk_size, SBLK_ID_FILE_DOWNLOAD) != 0)
        return -1;

    offset += chunk_size;
    idx++;

    // 后续分片 232 字节
    while (offset < fw_len)
    {
        chunk_size = (fw_len - offset > 232) ? 232 : (fw_len - offset);

        if (MMWL_SendCmd(CMD_FILE_DOWNLOAD, &fw_data[offset], chunk_size, SBLK_ID_FILE_DOWNLOAD) != 0)
            return -2;

        offset += chunk_size;
        idx++;
    }

    printf("[FW] 固件下载完成！\n");
    return 0;
}

// 【主函数】检查版本 + 自动下载固件
int MMWL_CheckAndDownloadFirmware(void)
{
    static uint8_t is_first_boot = 1;
    MMWL_FwVer_t local_ver;
    uint8_t need_download = 0;

    // 创建信号量
    if (g_version_sem == NULL)
        g_version_sem = xSemaphoreCreateBinary();

    // 获取本地固件版本
    MMWL_GetLocalFirmwareVersion(&local_ver);
    printf("\n=========================================\n");
    printf("[FW] 本地固件版本: %d.%d.%d.%d\n",
           local_ver.maj, local_ver.min, local_ver.pat, local_ver.bld);
    printf("=========================================\n\n");

    // 第一次上电必须下载
    if (is_first_boot)
    {
        printf("[FW] 首次启动 → 强制下载固件\n");
        need_download = 1;
        is_first_boot = 0;
        goto DO_DOWNLOAD;
    }

    // 下发版本查询
    g_fw_state = FW_STATE_WAIT_VERSION;
    if (MMWL_GetRadarFwVersion() != 0)
    {
        printf("[FW] 版本查询命令下发失败\n");
        need_download = 1;
        goto DO_DOWNLOAD;
    }

    // 等待版本回复（超时 1000ms）
    printf("[FW] 等待雷达版本回复...\n");
    if (xSemaphoreTake(g_version_sem, pdMS_TO_TICKS(1000)) == pdTRUE)
    {
        printf("[FW] 雷达版本: %d.%d.%d.%d\n",
               g_chip_version.maj, g_chip_version.min,
               g_chip_version.pat, g_chip_version.bld);

        // 版本不一致 → 下载
        if ((g_chip_version.maj != local_ver.maj) ||
            (g_chip_version.min != local_ver.min) ||
            (g_chip_version.pat != local_ver.pat) ||
            (g_chip_version.bld != local_ver.bld))
        {
            printf("[FW] 版本不匹配 → 开始更新\n");
            need_download = 1;
        }
        else
        {
            printf("[FW] 版本一致 → 跳过下载\n");
            need_download = 0;
        }
    }
    else
    {
        printf("[FW] 等待版本超时 → 雷达未运行固件\n");
        need_download = 1;
    }

DO_DOWNLOAD:
    if (need_download)
    {
        if (MMWL_DownloadFirmware() != 0)
        {
            printf("[FW] 固件下载失败！\n");
            return -1;
        }

        printf("[FW] 下载成功，等待雷达重启...\n");
        vTaskDelay(800);
    }

    printf("[FW] 固件准备完成 → 开始配置雷达\n\n");
    return 0;
}






