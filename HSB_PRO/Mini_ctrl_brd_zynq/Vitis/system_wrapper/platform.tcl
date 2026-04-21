# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\temporary\Vivado2021\Mini_ctrl_brd_zynq\Vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\temporary\Vivado2021\Mini_ctrl_brd_zynq\Vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\temporary\Vivado2021\Mini_ctrl_brd_zynq\Vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/temporary/Vivado2021/Mini_ctrl_brd_zynq/Vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Vivado2021/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
bsp reload
bsp setlib -name lwip211 -ver 1.5
bsp setlib -name xilffs -ver 4.5
bsp config max_task_name_len "30"
bsp config tick_rate "1000"
bsp config total_heap_size "131072"
bsp config dhcp_does_arp_check "true"
bsp config lwip_dhcp "true"
bsp config mem_size "524288"
bsp config memp_n_pbuf "1024"
bsp config memp_n_tcp_seg "1024"
bsp config memp_num_netbuf "4096"
bsp config default_tcp_recvmbox_size "4096"
bsp config tcpip_mbox_size "200"
bsp config lwip_tcpip_core_locking_input "true"
bsp config tcpip_mbox_size "4096"
bsp config pbuf_pool_size "16384"
bsp config tcp_snd_buf "65535"
bsp config tcp_wnd "65535"
bsp config n_rx_descriptors "512"
bsp config n_tx_descriptors "512"
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
bsp config ip_frag_max_mtu "9000"
bsp config tcp_ip_rx_checksum_offload "true"
bsp config tcp_ip_tx_checksum_offload "true"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
bsp config memp_n_pbuf "2048"
bsp config memp_num_netbuf "4096"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Vivado2021/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform -make-local
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Vivado2021/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate
bsp reload
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,zynq_fsbl 
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp config num_logical_vol "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform -make-local
bsp reload
bsp write
platform generate -domains 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
platform generate -domains 
bsp reload
bsp write
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp config num_logical_vol "2"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
bsp write
platform clean
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
bsp write
platform generate -domains 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper/resources/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,zynq_fsbl 
platform active {system_wrapper}
platform generate -domains 
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
bsp reload
bsp config socket_mode_thread_prio "4"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform generate -domains 
bsp reload
bsp reload
bsp reload
platform active {system_wrapper}
platform generate -domains 
platform active {system_wrapper}
bsp reload
bsp config socket_mode_thread_prio "4"
bsp config memp_num_netbuf "8"
bsp config default_tcp_recvmbox_size "200"
bsp config lwip_tcpip_core_locking_input "false"
bsp config tcpip_mbox_size "200"
bsp config tcp_ip_rx_checksum_offload "false"
bsp config tcp_ip_tx_checksum_offload "false"
bsp config ip_frag_max_mtu "1500"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp config tcp_rx_checksum_offload "false"
bsp config tcp_ip_rx_checksum_offload "true"
bsp config tcp_ip_tx_checksum_offload "true"
bsp config tcp_rx_checksum_offload "true"
bsp config tcp_tx_checksum_offload "true"
bsp config temac_use_jumbo_frames "false"
bsp config temac_use_jumbo_frames "true"
bsp config ip_frag_max_mtu "9000"
bsp config memp_n_tcp_pcb "1024"
bsp config tcpip_mbox_size "200"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp config memp_num_netbuf "4096"
bsp config default_tcp_recvmbox_size "200"
bsp config default_tcp_recvmbox_size "4096"
bsp config default_udp_recvmbox_size "100"
bsp config lwip_tcpip_core_locking_input "false"
bsp config lwip_tcpip_core_locking_input "true"
bsp config tcpip_mbox_size "4096"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate
bsp reload
platform generate -domains 
bsp reload
bsp config pbuf_pool_bufsize "3400"
bsp config mem_size "10485760"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp config mem_size "131072"
bsp config memp_n_tcp_pcb "32"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp config mem_size "524288"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp reload
platform active {system_wrapper}
bsp reload
bsp reload
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp reload
platform generate
platform generate -domains 
platform generate
platform generate
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
bsp reload
bsp reload
catch {bsp regenerate}
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
bsp reload
platform active {system_wrapper}
bsp reload
bsp reload
platform active {system_wrapper}
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
catch {bsp regenerate}
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/Mini_ctrl_brd_zynq/Vitis/system_wrapper.xsa}
platform generate
platform generate
