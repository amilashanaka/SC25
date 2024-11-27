transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_18
vlib riviera/processing_system7_vip_v1_0_20
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_32
vlib riviera/fifo_generator_v13_2_10
vlib riviera/axi_data_fifo_v2_1_31
vlib riviera/axi_crossbar_v2_1_33
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_fifo_v1_0_19
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_datamover_v5_1_34
vlib riviera/axi_sg_v4_1_18
vlib riviera/axi_dma_v7_1_33
vlib riviera/axis_infrastructure_v1_1_1
vlib riviera/axis_data_fifo_v2_0_14
vlib riviera/axi_protocol_converter_v2_1_32
vlib riviera/axi_clock_converter_v2_1_31
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/axi_dwidth_converter_v2_1_32

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_18 riviera/axi_vip_v1_1_18
vmap processing_system7_vip_v1_0_20 riviera/processing_system7_vip_v1_0_20
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_32 riviera/axi_register_slice_v2_1_32
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_31 riviera/axi_data_fifo_v2_1_31
vmap axi_crossbar_v2_1_33 riviera/axi_crossbar_v2_1_33
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_34 riviera/axi_datamover_v5_1_34
vmap axi_sg_v4_1_18 riviera/axi_sg_v4_1_18
vmap axi_dma_v7_1_33 riviera/axi_dma_v7_1_33
vmap axis_infrastructure_v1_1_1 riviera/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_14 riviera/axis_data_fifo_v2_0_14
vmap axi_protocol_converter_v2_1_32 riviera/axi_protocol_converter_v2_1_32
vmap axi_clock_converter_v2_1_31 riviera/axi_clock_converter_v2_1_31
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_32 riviera/axi_dwidth_converter_v2_1_32

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_18  -incr "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/1f8d/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_20  -incr "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_processing_system7_0_0/sim/dma_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_32  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/676c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_31  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/2ccb/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_33  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/ef26/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_xbar_1/sim/dma_xbar_1.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/dma/ip/dma_rst_ps7_0_50M_0/sim/dma_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_xbar_0/sim/dma_xbar_0.v" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_34 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/99f3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_33 -93  -incr \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/3e1f/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/dma/ip/dma_axi_dma_0_1/sim/dma_axi_dma_0_1.vhd" \

vlog -work axis_infrastructure_v1_1_1  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_14  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/11b0/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_axis_data_fifo_0_0/sim/dma_axis_data_fifo_0_0.v" \
"../../../../SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/src/pmod_concat.v" \
"../../../bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/sim/pmod_bridge_0.v" \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/17c8/src/ad1_spi.v" \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/17c8/hdl/PmodAD1_v1_0.v" \
"../../../bd/dma/ip/dma_PmodAD1_0_1/sim/dma_PmodAD1_0_1.v" \
"../../../bd/dma/ipshared/fbb1/hdl/data_anchor.v" \
"../../../bd/dma/ip/dma_data_anchor_0_0/sim/dma_data_anchor_0_0.v" \

vlog -work axi_protocol_converter_v2_1_32  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/d59d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_auto_pc_0/sim/dma_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/c9b7/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_32  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../../SC25.gen/sources_1/bd/dma/ipshared/8142/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/ec67/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/d47c/hdl" "+incdir+../../../../SC25.gen/sources_1/bd/dma/ipshared/434f/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_18 -l processing_system7_vip_v1_0_20 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_32 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_31 -l axi_crossbar_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_34 -l axi_sg_v4_1_18 -l axi_dma_v7_1_33 -l axis_infrastructure_v1_1_1 -l axis_data_fifo_v2_0_14 -l axi_protocol_converter_v2_1_32 -l axi_clock_converter_v2_1_31 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_32 \
"../../../bd/dma/ip/dma_auto_us_0/sim/dma_auto_us_0.v" \
"../../../bd/dma/ip/dma_auto_pc_1/sim/dma_auto_pc_1.v" \
"../../../bd/dma/ip/dma_auto_pc_2/sim/dma_auto_pc_2.v" \
"../../../bd/dma/sim/dma.v" \

vlog -work xil_defaultlib \
"glbl.v"

