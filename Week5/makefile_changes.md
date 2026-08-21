# Phase 1 & Phase 2: GLS Setup & Makefile Modifications

## Phase 1: Netlist Integration
* **Netlist File Used:** `caravel/verilog/gl/__user_project_wrapper.v`
* **Standard Cell / Macro Libraries:** SkyWater 130nm (`sky130_fd_sc_hd`, `primitives.v`, `sky130_ef_io_stub.v`)
* **Selection Logic:** The synthesized gate-level netlist generated during physical implementation was integrated into the simulation tree to verify functional equivalence post-synthesis.

## Phase 2: Flow Configurations
* **Verification Switch:** Configured the Makefiles to switch compilation paths via `SIM=GL`.
* **Include Files:** Updated `includes.gl.caravel` to include all GL macro models, pad stubs, and housekeeping logic blocks.
