# Debugging Insights & Notes

## 1. Gate-Level Simulation (GLS) Elaboration Errors
- **Issue**: Standard cell simulation models (`sky130_fd_sc_hd.v`) failed elaboration with port mismatches (`VGND`, `VPWR`, `VPB`, `VNB` not found).
- **Cause**: Using the powered gate-level netlist (`housekeeping_spi.v`) against non-power functional Verilog primitives.
- **Resolution**: Migrated testbench elaboration to use the logical gate-level netlist (`housekeeping_spi.nl.v`) and adjusted port mappings in `housekeeping_spi_tb.v`.

## 2. Timing & Hold Slack Fixing
- Hold slack violations were addressed during post-CTS optimization using OpenROAD buffer insertion.
- Final signoff STA achieved positive slack across all corners (Setup: `+1.20ns`, Hold: `+0.25ns`).
