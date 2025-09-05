# Set up variables
set DESIGN_NAME "top"
set LIB_FILES "libs/stdcells.lib"
set TECH_LEF "libs/tech.lef"
set CELL_LEF "libs/stdcells.lef"
set RTL "netlist/${DESIGN_NAME}.v"

# Read LEF and LIB
read_lef $TECH_LEF
read_lef $CELL_LEF
read_liberty $LIB_FILES

# Read RTL netlist
read_verilog $RTL
elaborate $DESIGN_NAME
link_design $DESIGN_NAME

# Read constraints
read_sdc scripts/constraints.sdc
