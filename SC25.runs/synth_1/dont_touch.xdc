# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/coraz7.xdc

# Block Designs: bd/dma/dma.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma || ORIG_REF_NAME==dma} -quiet] -quiet

# IP: bd/dma/ip/dma_processing_system7_0_0/dma_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_processing_system7_0_0 || ORIG_REF_NAME==dma_processing_system7_0_0} -quiet] -quiet

# IP: bd/dma/ip/dma_xbar_1/dma_xbar_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_xbar_1 || ORIG_REF_NAME==dma_xbar_1} -quiet] -quiet

# IP: bd/dma/ip/dma_ps7_0_axi_periph_0/dma_ps7_0_axi_periph_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_ps7_0_axi_periph_0 || ORIG_REF_NAME==dma_ps7_0_axi_periph_0} -quiet] -quiet

# IP: bd/dma/ip/dma_rst_ps7_0_50M_0/dma_rst_ps7_0_50M_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_rst_ps7_0_50M_0 || ORIG_REF_NAME==dma_rst_ps7_0_50M_0} -quiet] -quiet

# IP: bd/dma/ip/dma_xbar_0/dma_xbar_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_xbar_0 || ORIG_REF_NAME==dma_xbar_0} -quiet] -quiet

# IP: bd/dma/ip/dma_axi_mem_intercon_0/dma_axi_mem_intercon_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_axi_mem_intercon_0 || ORIG_REF_NAME==dma_axi_mem_intercon_0} -quiet] -quiet

# IP: bd/dma/ip/dma_axi_dma_0_1/dma_axi_dma_0_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_axi_dma_0_1 || ORIG_REF_NAME==dma_axi_dma_0_1} -quiet] -quiet

# IP: bd/dma/ip/dma_axis_data_fifo_0_0/dma_axis_data_fifo_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_axis_data_fifo_0_0 || ORIG_REF_NAME==dma_axis_data_fifo_0_0} -quiet] -quiet

# IP: bd/dma/ip/dma_PmodAD1_0_1/dma_PmodAD1_0_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_PmodAD1_0_1 || ORIG_REF_NAME==dma_PmodAD1_0_1} -quiet] -quiet

# IP: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/pmod_bridge_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==pmod_bridge_0 || ORIG_REF_NAME==pmod_bridge_0} -quiet] -quiet

# IP: bd/dma/ip/dma_data_anchor_0_0/dma_data_anchor_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_data_anchor_0_0 || ORIG_REF_NAME==dma_data_anchor_0_0} -quiet] -quiet

# IP: bd/dma/ip/dma_auto_pc_0/dma_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_auto_pc_0 || ORIG_REF_NAME==dma_auto_pc_0} -quiet] -quiet

# IP: bd/dma/ip/dma_auto_us_0/dma_auto_us_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_auto_us_0 || ORIG_REF_NAME==dma_auto_us_0} -quiet] -quiet

# IP: bd/dma/ip/dma_auto_pc_1/dma_auto_pc_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_auto_pc_1 || ORIG_REF_NAME==dma_auto_pc_1} -quiet] -quiet

# IP: bd/dma/ip/dma_auto_pc_2/dma_auto_pc_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==dma_auto_pc_2 || ORIG_REF_NAME==dma_auto_pc_2} -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_processing_system7_0_0/dma_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_processing_system7_0_0 || ORIG_REF_NAME==dma_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_rst_ps7_0_50M_0/dma_rst_ps7_0_50M_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_rst_ps7_0_50M_0 || ORIG_REF_NAME==dma_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_rst_ps7_0_50M_0/dma_rst_ps7_0_50M_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_rst_ps7_0_50M_0 || ORIG_REF_NAME==dma_rst_ps7_0_50M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_axi_dma_0_1/dma_axi_dma_0_1.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_axi_dma_0_1 || ORIG_REF_NAME==dma_axi_dma_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_axi_dma_0_1/dma_axi_dma_0_1_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_axi_dma_0_1 || ORIG_REF_NAME==dma_axi_dma_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/pmod_bridge_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==pmod_bridge_0 || ORIG_REF_NAME==pmod_bridge_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/src/pmod_bridge_0/src/pmod_concat_ooc.xdc

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_PmodAD1_0_1/dma_PmodAD1_0_1_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_PmodAD1_0_1 || ORIG_REF_NAME==dma_PmodAD1_0_1} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_auto_pc_0/dma_auto_pc_0_ooc.xdc

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_auto_us_0/dma_auto_us_0_clocks.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==dma_auto_us_0 || ORIG_REF_NAME==dma_auto_us_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_auto_us_0/dma_auto_us_0_ooc.xdc

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_auto_pc_1/dma_auto_pc_1_ooc.xdc

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/ip/dma_auto_pc_2/dma_auto_pc_2_ooc.xdc

# XDC: c:/Projects/ERN24004/Projects/SC25/SC25.gen/sources_1/bd/dma/dma_ooc.xdc