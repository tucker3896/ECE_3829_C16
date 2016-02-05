# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files -quiet C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp
set_property used_in_implementation false [get_files C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/color_logic.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/two_bit_counter.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/seven_seg.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/MMCM.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/spi_als.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/part_1_top.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/seven_seg_top.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/part_2_top.v
  C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/count_100.v
}
read_vhdl -library xil_defaultlib C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/sources_1/new/vga_controller.vhd
read_xdc C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/constrs_4/new/part_2_top.xdc
set_property used_in_implementation false [get_files C:/Users/Nick/Documents/WPI/C16/ECE3829/Labs/ECE_3829_C16/project_2/project_2.srcs/constrs_4/new/part_2_top.xdc]

synth_design -top part_2_top -part xc7a35tcpg236-1
write_checkpoint -noxdef part_2_top.dcp
catch { report_utilization -file part_2_top_utilization_synth.rpt -pb part_2_top_utilization_synth.pb }
