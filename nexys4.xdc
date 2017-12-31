set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN N17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property PACKAGE_PIN P18 [get_ports write]
set_property IOSTANDARD LVCMOS33 [get_ports write]

set_property PACKAGE_PIN L16 [get_ports {addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[0]}]

set_property PACKAGE_PIN M13 [get_ports {addr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[1]}]

set_property PACKAGE_PIN R15 [get_ports {addr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[2]}]

set_property PACKAGE_PIN R17 [get_ports {data_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]

set_property PACKAGE_PIN T18 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]

set_property PACKAGE_PIN U18 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]

set_property PACKAGE_PIN R13 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]

set_property PACKAGE_PIN T10 [get_ports {data_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]

set_property PACKAGE_PIN R10 [get_ports {data_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]

set_property PACKAGE_PIN K16 [get_ports {data_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[2]}]

set_property PACKAGE_PIN K13 [get_ports {data_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[3]}]

set_property PACKAGE_PIN P15 [get_ports {data_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[4]}]

set_property PACKAGE_PIN T11 [get_ports {data_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[5]}]

set_property PACKAGE_PIN L18 [get_ports {data_out[6]}]
set_property PACKAGE_PIN H15 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[6]}]

set_property PACKAGE_PIN J17 [get_ports {control_out[0]}]
set_property PACKAGE_PIN J18 [get_ports {control_out[1]}]
set_property PACKAGE_PIN T9 [get_ports {control_out[2]}]
set_property PACKAGE_PIN J14 [get_ports {control_out[3]}]
set_property PACKAGE_PIN P14 [get_ports {control_out[4]}]
set_property PACKAGE_PIN T14 [get_ports {control_out[5]}]
set_property PACKAGE_PIN K2  [get_ports {control_out[6]}]
set_property PACKAGE_PIN U13 [get_ports {control_out[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {control_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_out[0]}]
