# TCL File Generated by Component Editor 23.1
# Wed Apr 23 11:19:57 MSK 2025
# DO NOT MODIFY


# 
# NG_Instr_Controller "NG_Instr_Controller" v1.0
#  2025.04.23.11:19:57
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module NG_Instr_Controller
# 
set_module_property DESCRIPTION ""
set_module_property NAME NG_Instr_Controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME NG_Instr_Controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL CI_NG
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file NG_custom_instruction_interface.vhd VHDL PATH ../NG_Controller_Klem/NG_custom_instruction_interface.vhd TOP_LEVEL_FILE
add_fileset_file number_generator.bdf OTHER PATH ../NG_Controller_Klem/number_generator.bdf
add_fileset_file KP1533LA2.bdf OTHER PATH ../NG_Controller_Klem/KP1533/KP1533LA2.bdf
add_fileset_file KP1533LA3.bdf OTHER PATH ../NG_Controller_Klem/KP1533/KP1533LA3.bdf
add_fileset_file KP1533LA4.bdf OTHER PATH ../NG_Controller_Klem/KP1533/KP1533LA4.bdf
add_fileset_file KP1533LP16.bdf OTHER PATH ../NG_Controller_Klem/KP1533/KP1533LP16.bdf
add_fileset_file KP1533TB11.bdf OTHER PATH ../NG_Controller_Klem/KP1533/KP1533TB11.bdf
add_fileset_file Johnson_JK_Trig.bdf OTHER PATH ../NG_Controller_Klem/Johnson_JK_Trig.bdf


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point nios_custom_instruction_slave
# 
add_interface nios_custom_instruction_slave nios_custom_instruction end
set_interface_property nios_custom_instruction_slave clockCycle 0
set_interface_property nios_custom_instruction_slave operands 2
set_interface_property nios_custom_instruction_slave ENABLED true
set_interface_property nios_custom_instruction_slave EXPORT_OF ""
set_interface_property nios_custom_instruction_slave PORT_NAME_MAP ""
set_interface_property nios_custom_instruction_slave CMSIS_SVD_VARIABLES ""
set_interface_property nios_custom_instruction_slave SVD_ADDRESS_GROUP ""

add_interface_port nios_custom_instruction_slave result result Output 32


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset resetn reset_n Input 1

