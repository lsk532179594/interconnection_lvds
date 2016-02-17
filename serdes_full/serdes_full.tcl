#
# Vivado (TM) v2015.4 (64-bit)
#
# serdes_full.tcl: Tcl script for re-creating project 'serdes_full_lite'
#
# Generated by Vivado on Wed Feb 17 09:57:25 KGT 2016
# IP Build 1412160 on Tue Nov 17 13:47:24 MST 2015
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (serdes_full.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/design_1.bd"
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parallella_lvds_controller_0_1/design_1_parallella_lvds_controller_0_1.upgrade_log"
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parsboard_lvds_controller_0_0/design_1_parsboard_lvds_controller_0_0.upgrade_log"
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_clk_gen_0_0/design_1_clk_gen_0_0.upgrade_log"
#    "/home/ekadatskii/Project/clean_project/serdes_full_lite/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_axi_full_master_0_0/design_1_axi_full_master_0_0.upgrade_log"
#
# 3. The following remote source files that were added to the original project:-
#
#    <none>
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

variable script_file
set script_file "serdes_full.tcl"

# Help information for this script
#proc help {} {
#  variable script_file
#  puts "\nDescription:"
#  puts "Recreate a Vivado project from this script. The created project will be"
#  puts "functionally equivalent to the original project for which this script was"
#  puts "generated. The script contains commands for creating a project, filesets,"
#  puts "runs, adding/importing sources and setting properties on various objects.\n"
#  puts "Syntax:"
#  puts "$script_file"
#  puts "$script_file -tclargs \[--origin_dir <path>\]"
#  puts "$script_file -tclargs \[--help\]\n"
#  puts "Usage:"
#  puts "Name                   Description"
#  puts "-------------------------------------------------------------------------"
#  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
#  puts "                       origin_dir path value is \".\", otherwise, the value"
#  puts "                       that was set with the \"-paths_relative_to\" switch"
#  puts "                       when this script was generated.\n"
#  puts "\[--help\]               Print help information for this script"
#  puts "-------------------------------------------------------------------------\n"
#  exit 0
#}

if { $::argc > 0 } {
  for {set i 0} {$i < [llength $::argc]} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir" { incr i; set origin_dir [lindex $::argv $i] }
      "--help"       { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/"]"

# Create project
create_project serdes_full_lite ./serdes_full_lite

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects serdes_full_lite]
set_property "board_part" "em.avnet.com:zed:part0:1.3" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/clk_gen"] [file normalize "$origin_dir/parsboard_controller"] [file normalize "$origin_dir/parallella_controller"] [file normalize "$origin_dir/serdes"] [file normalize "$origin_dir/axi_full_master"] [file normalize "$origin_dir/axi_full_slave"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
#set obj [get_filesets sources_1]
#set files [list \
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/design_1.bd"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parallella_lvds_controller_0_1/design_1_parallella_lvds_controller_0_1.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parsboard_lvds_controller_0_0/design_1_parsboard_lvds_controller_0_0.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_clk_gen_0_0/design_1_clk_gen_0_0.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_axi_full_master_0_0/design_1_axi_full_master_0_0.upgrade_log"]"\
#]
#add_files -norecurse -fileset $obj $files

# Import local files from the original project
#set files [list \
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/design_1.bd"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parallella_lvds_controller_0_1/design_1_parallella_lvds_controller_0_1.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_parsboard_lvds_controller_0_0/design_1_parsboard_lvds_controller_0_0.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_clk_gen_0_0/design_1_clk_gen_0_0.upgrade_log"]"\
# "[file normalize "$origin_dir/serdes_full_lite.srcs/sources_1/bd/design_1/ip/design_1_axi_full_master_0_0/design_1_axi_full_master_0_0.upgrade_log"]"\
#]
#set imported_files [import_files -fileset sources_1 $files]

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
#set file "design_1/design_1.bd"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#if { ![get_property "is_locked" $file_obj] } {
#  set_property "generate_synth_checkpoint" "0" $file_obj
#}

#set file "design_1_parallella_lvds_controller_0_1/design_1_parallella_lvds_controller_0_1.upgrade_log"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#set_property "file_type" "IP Update Log" $file_obj

#set file "design_1_parsboard_lvds_controller_0_0/design_1_parsboard_lvds_controller_0_0.upgrade_log"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#set_property "file_type" "IP Update Log" $file_obj

#set file "design_1_clk_gen_0_0/design_1_clk_gen_0_0.upgrade_log"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#set_property "file_type" "IP Update Log" $file_obj

#set file "design_1_axi_full_master_0_0/design_1_axi_full_master_0_0.upgrade_log"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#set_property "file_type" "IP Update Log" $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "design_1_wrapper" $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Empty (no sources present)

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "design_1_wrapper" $obj
set_property "xelab.nosort" "1" $obj
set_property "xelab.unifast" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7z020clg484-1 -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_1]
}
set obj [get_runs synth_1]

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7z020clg484-1 -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2015" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:serdes_full_lite"