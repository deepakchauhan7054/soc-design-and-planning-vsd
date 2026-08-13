# Phase 5 — Gate-Level Verification Preparation (`user_project_wrapper`)

This repository documents **Phase 5** of the OpenLane physical design flow: collecting and verifying all critical output artifacts required for **Gate-Level Simulation (GLS)**, static timing signoff, and final layout verification.

---

## 📦 Required Artifacts & Output Matrix

All key outputs were generated and verified under the run directory:  
`/openlane/designs/user_project_wrapper/runs/RUN_PHASE4/`

| Output Artifact | File Name / Path | Description & Purpose |
| :--- | :--- | :--- |
| **Synthesized Netlist** | `results/synthesis/user_project_wrapper.v` | Logic gate representation generated directly after logic synthesis. |
| **Final Netlist** | `results/routing/user_project_wrapper.pnl.v` | Fully routed gate-level netlist containing power/ground pins (`VPWR`/`VGND`) and CTS buffer additions. |
| **Routed Database** | `results/routing/user_project_wrapper.def` | Physical DEF layout database generated after detailed routing. |
| **Final Filled Database** | `results/routing/user_project_wrapper.def`<br>*(Log: `logs/routing/21-fill.log`)* | Physical database containing standard cell filler cells (`sky130_fd_sc_hd__fill_*`) inserted across all rows. |
| **GDSII Stream File** | `results/signoff/user_project_wrapper.gds` | Final binary layout file (~9.7 MB) generated via Magic for tape-out and DRC signoff. |
| **Timing Report (STA)** | `logs/routing/20-grt_sta.log` | Static Timing Analysis report confirming positive setup (+3.77 ns) and hold (+0.26 ns) slacks. |

---

## 🔍 Artifact Verification Commands

To verify the presence and sizes of these files in the Linux terminal:

```bash
# Navigate to the results directory
cd /home/vsduser/OpenLane/designs/user_project_wrapper/runs/RUN_PHASE4/results/synthesis

# Check all required Phase 5 outputs
ls -lh user_project_wrapper.v ../routing/user_project_wrapper.pnl.v ../routing/user_project_wrapper.def ../signoff/user_project_wrapper.gds
