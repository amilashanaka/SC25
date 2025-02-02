#!/bin/bash -f
#**********************************************************************************************************
# Vivado (TM) v2024.1.2 (64-bit)
#
# Script generated by Vivado on Tue Nov 26 16:38:34 +0000 2024
# SW Build 5164865 on Thu Sep  5 14:37:11 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : dma.sh
# Simulator    : Synopsys Verilog Compiler Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : dma.sh
#                dma.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                dma.sh [-reset_run]
#                dma.sh [-reset_log]
#                dma.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'dma.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set vhdlan compile options
vhdlan_opts="-full64 -l .tmp_log"

# set vlogan compile options
vlogan_opts="-full64 -l .tmp_log"

# set vcs elaboration options
vcs_elab_opts="-full64 -t ps -licqueue -l elaborate.log"

# set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log "

# set design libraries
design_libs=(xilinx_vip xpm axi_infrastructure_v1_1_0 axi_vip_v1_1_18 processing_system7_vip_v1_0_20 xil_defaultlib generic_baseblocks_v2_1_2 axi_register_slice_v2_1_32 fifo_generator_v13_2_10 axi_data_fifo_v2_1_31 axi_crossbar_v2_1_33 lib_cdc_v1_0_3 proc_sys_reset_v5_0_15 lib_pkg_v1_0_4 lib_fifo_v1_0_19 lib_srl_fifo_v1_0_4 axi_datamover_v5_1_34 axi_sg_v4_1_18 axi_dma_v7_1_33 axis_infrastructure_v1_1_1 axis_data_fifo_v2_0_14 axi_protocol_converter_v2_1_32 axi_clock_converter_v2_1_31 blk_mem_gen_v8_4_8 axi_dwidth_converter_v2_1_32)

# simulation root library directory
sim_lib_dir="vcs_lib"

# script info
echo -e "dma.sh - Script generated by export_simulation (Vivado v2024.1.2 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./dma.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > vlogan.log 2>/dev/null

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work xpm $vhdlan_opts \
  "C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > vhdlan.log 2>/dev/null

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_vip_v1_1_18 $vlogan_opts -sverilog +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/1f8d/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work processing_system7_vip_v1_0_20 $vlogan_opts -sverilog +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_processing_system7_0_0/sim/dma_processing_system7_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work generic_baseblocks_v2_1_2 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_register_slice_v2_1_32 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/676c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work fifo_generator_v13_2_10 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work fifo_generator_v13_2_10 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work fifo_generator_v13_2_10 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_data_fifo_v2_1_31 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/2ccb/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_crossbar_v2_1_33 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/ef26/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_xbar_1/sim/dma_xbar_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work lib_cdc_v1_0_3 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work proc_sys_reset_v5_0_15 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/dma/ip/dma_rst_ps7_0_50M_0/sim/dma_rst_ps7_0_50M_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_xbar_0/sim/dma_xbar_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vhdlan -work lib_pkg_v1_0_4 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_fifo_v1_0_19 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work lib_srl_fifo_v1_0_4 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_datamover_v5_1_34 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/99f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_sg_v4_1_18 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work axi_dma_v7_1_33 $vhdlan_opts \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/3e1f/hdl/axi_dma_v7_1_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vhdlan -work xil_defaultlib $vhdlan_opts \
  "../../../bd/dma/ip/dma_axi_dma_0_1/sim/dma_axi_dma_0_1.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vhdlan.log 2>/dev/null

  vlogan -work axis_infrastructure_v1_1_1 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axis_data_fifo_v2_0_14 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/11b0/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_axis_data_fifo_0_0/sim/dma_axis_data_fifo_0_0.v" \
  "../../../../SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/src/pmod_concat.v" \
  "../../../bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/sim/pmod_bridge_0.v" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/17c8/src/ad1_spi.v" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/17c8/hdl/PmodAD1_v1_0.v" \
  "../../../bd/dma/ip/dma_PmodAD1_0_1/sim/dma_PmodAD1_0_1.v" \
  "../../../bd/dma/ipshared/b6a8/hdl/data_anchor.v" \
  "../../../bd/dma/ip/dma_data_anchor_0_0/sim/dma_data_anchor_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_protocol_converter_v2_1_32 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/d59d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_auto_pc_0/sim/dma_auto_pc_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_clock_converter_v2_1_31 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/c9b7/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work blk_mem_gen_v8_4_8 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work axi_dwidth_converter_v2_1_32 $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../SC25.gen/sources_1/bd/dma/ipshared/8142/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" +incdir+"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" +incdir+"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/dma/ip/dma_auto_us_0/sim/dma_auto_us_0.v" \
  "../../../bd/dma/ip/dma_auto_pc_1/sim/dma_auto_pc_1.v" \
  "../../../bd/dma/ip/dma_auto_pc_2/sim/dma_auto_pc_2.v" \
  "../../../bd/dma/sim/dma.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> vlogan.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.dma xil_defaultlib.glbl -o dma_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./dma_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file


  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key dma_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log lib_sc.so 64 AN.DB csrc dma_simv.daidir vcs_lib c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(vlogan.log vhdlan.log compile.log elaborate.log simulate.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./dma.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: dma.sh [-help]\n\
Usage: dma.sh [-step]\n\
Usage: dma.sh [-lib_map_path]\n\
Usage: dma.sh [-reset_run]\n\
Usage: dma.sh [-reset_log]\n\
Usage: dma.sh [-keep_index]\n\
Usage: dma.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (compile, elaborate, simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
