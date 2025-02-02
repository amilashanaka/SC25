# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "DESIM"

}

proc update_PARAM_VALUE.DESIM { PARAM_VALUE.DESIM } {
	# Procedure called to update DESIM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DESIM { PARAM_VALUE.DESIM } {
	# Procedure called to validate DESIM
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_DATA_WIDTH". Setting updated value from the model parameter.
set_property value 32 ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 4 ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.DESIM { MODELPARAM_VALUE.DESIM PARAM_VALUE.DESIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DESIM}] ${MODELPARAM_VALUE.DESIM}
}

