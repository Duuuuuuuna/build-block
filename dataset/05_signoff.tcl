# Write SDF for timing simulation
write_sdf results/${DESIGN_NAME}.sdf

# Write DEF and GDS
defOut -floorplan -netlist -routing results/${DESIGN_NAME}.def
streamOut results/${DESIGN_NAME}.gds -mapFile map/streamOut.map -units 2000 -mode ALL

# Write Verilog
write_verilog results/${DESIGN_NAME}_final.v
