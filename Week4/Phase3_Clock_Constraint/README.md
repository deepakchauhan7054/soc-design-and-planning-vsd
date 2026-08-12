---

## Phase 3 — SDC Clock Constraint Setup

### 1. Timing Specification Overview
The timing constraints are defined inside `constraint.sdc` targeting a **100 MHz clock frequency** (10 ns period) on port `wb_clk_i`.

### 2. SDC File Contents (`constraint.sdc`)
```tcl
# Primary Clock Definition (100 MHz target -> 10.0 ns Period)
create_clock -name wb_clk_i -period 10.0000 [get_ports {wb_clk_i}]

# Clock Uncertainty & Jitter
set_clock_uncertainty 0.2500 [get_clocks {wb_clk_i}]
set_clock_transition 0.1500 [get_clocks {wb_clk_i}]

# Input & Output Delays (20% of clock period)
set_input_delay -clock [get_clocks {wb_clk_i}] 2.0000 [all_inputs]
set_output_delay -clock [get_clocks {wb_clk_i}] 2.0000 [all_outputs]

# Remove clock port from input delay constraints
set_input_delay -clock [get_clocks {wb_clk_i}] 0.0000 [get_ports {wb_clk_i}]
```
### 3. Explanation of Timing Parameters
- create_clock: Defines wb_clk_i as the master clock with a $T_{\text{clk}} = 10\text{ ns}$ target.
- set_clock_uncertainty: Allocates $250\text{ ps}$ margin for clock jitter and setup/hold skew.
- set_input_delay / set_output_delay: Sets a $2.0\text{ ns}$ ($20\%\text{ of } T_{\text{clk}}$) boundary delay for off-chip external path transit.

