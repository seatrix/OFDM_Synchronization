# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z045fbg676-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.cache/wt [current_project]
set_property parent.project_path G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dpram_1024_ip/dpram_1024_ip.xci
set_property used_in_implementation false [get_files -all g:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dpram_1024_ip/dpram_1024_ip_ooc.xdc]
set_property used_in_implementation false [get_files -all g:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dpram_1024_ip/dpram_1024_ip.dcp]
set_property is_locked true [get_files G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dpram_1024_ip/dpram_1024_ip.xci]

read_verilog -library xil_defaultlib {
  G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/code/tools/axis_interface_fifo.v
  G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/code/data_dpram/data_dpram.v
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top data_dpram -part xc7z045fbg676-3
write_checkpoint -noxdef data_dpram.dcp
catch { report_utilization -file data_dpram_utilization_synth.rpt -pb data_dpram_utilization_synth.pb }