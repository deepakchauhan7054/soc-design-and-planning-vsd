# Week 4 – RTL-to-GDS Implementation of User Project Wrapper

## Objective

The objective of Week 4 is to prepare the VSDSquadron SoC top-level wrapper for gate-level full-chip verification by implementing it using the OpenROAD Flow Scripts (ORFS) flow.

The main tasks include:

- Analyze the top-level user project wrapper
- Identify all RTL dependencies
- Trace the complete module hierarchy
- Prepare the ORFS design environment
- Organize the required RTL files
- Configure the top module and design name
- Apply a 100 MHz clock constraint
- Run the complete RTL-to-GDS flow
- Generate the final database, netlist and GDSII
- Collect timing reports
- Document debugging and issues

## Design Block

The design block used in this week is:

`caravel/verilog/rtl/_user_project_wrapper.v_Week-4`

The wrapper is a top-level integration module that instantiates multiple lower-level SoC modules.

## Target Frequency

- Target frequency: 100 MHz
- Clock period: 10 ns

## Week 4 Phases

### Phase 1 – Analyze the Top-Level Wrapper

- Study the wrapper RTL
- Identify instantiated modules
- Trace module hierarchy
- Locate RTL dependencies
- Prepare dependency tree

### Phase 2 – Prepare ORFS Design Environment

- Create ORFS workspace
- Organize RTL sources
- Configure design name
- Configure top module
- Configure synthesis and physical design flow

### Phase 3 – Apply 100 MHz Clock Constraint

- Identify the clock port
- Create timing constraint file
- Apply 10 ns clock period
- Verify that the constraint is recognized

### Phase 4 – Run RTL-to-GDS Flow

The complete flow includes:

1. RTL synthesis
2. Floorplanning
3. Placement
4. Clock Tree Synthesis
5. Routing
6. Fill insertion
7. Final database generation
8. Final GDS generation

### Phase 5 – Generate Final Outputs

Required outputs include:

- Synthesized netlist
- Final netlist
- Routed database
- Final filled database
- GDSII
- Timing reports

### Phase 6 – Debugging and Issue Resolution

Document:

- Problems encountered
- Error messages
- Root cause
- Debugging process
- Solution
- Final result

