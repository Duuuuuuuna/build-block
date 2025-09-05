create_clock -name clk -period 5.0 [get_ports clk]

set_input_delay 2.0 -clock clk [all_inputs]
set_output_delay 2.0 -clock clk [all_outputs]

set_load 0.05 [all_outputs]
set_driving_cell -lib_cell INVX1 -pin ZN [all_inputs]

# Reset not timed
set_false_path -from [get_ports reset_n]
