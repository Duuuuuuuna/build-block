# Create floorplan with core utilization and aspect ratio
floorPlan -site core -coreUtil 0.7 -rowDensity 1.0 -flipFirstRow true -orient R0

# Place IO pins (placeholder, usually from DEF or constraints)
place_io -random

# Power ring & straps example
addRing -type core -layer_top metal5 -layer_bottom metal5 -layer_left metal4 -layer_right metal4 -width 2 -spacing 1 -offset 2
addStripe -layer metal4 -width 0.5 -spacing 0.4 -pitch 20 -start_from left

# Create power net connections
globalNetConnect VDD -type pgpin -pin VDD -inst * -override
globalNetConnect VSS -type pgpin -pin VSS -inst * -override
