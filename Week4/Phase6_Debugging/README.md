# Phase 6 — Debugging and Issue Resolution

This section documents the key technical challenges, root-cause analyses, and resolutions encountered during the OpenLane physical design flow for `user_project_wrapper`.

---

### 📋 Issue Tracking Summary

| # | Issue Category | Flow Stage | Root Cause | Resolution |
| :-: | :--- | :--- | :--- | :--- |
| **1** | Missing RTL Dependencies | Synthesis | Floating/undriven wrapper output pins | Explicitly tied floating outputs to ground/valid logic in `user_project_wrapper.v`. |
| **2** | Density & Floorplan (`DPL-0033`) | Placement | High I/O pin count (637 pins) causing local placement congestion | Adjusted `config.json`: `DIE_AREA = "0 0 900 900"`, `PL_TARGET_DENSITY = 0.45`, `DPL_CELL_PADDING = 2`. |
| **3** | Shell Command Syntax | Verification | Attempted to execute `.log` file directly without `cat`/`head` | Used `cat` and `head` commands to inspect log files without permission issues. |
| **4** | DRC / Antenna Violations | Routing | High-fanout net congestion during detailed routing | Enabled diode insertion and adjusted fanout parameters in `config.json` to reach **0 DRC violations**. |

---

### 📑 Detailed Resolution Log


### Issue 1: Floating Output Pin Failure in Logic Synthesis

    Flow Stage: Logic Synthesis (run_synthesis)

    What Went Wrong: Yosys failed during synthesis because several wrapper output signals inside user_project_wrapper.v were left completely floating/unconnected in the RTL netlist.

    How Identified: Synthesis aborted with Yosys error logs showing undriven signal errors in logs/synthesis/1-synthesis.log.

    How Resolved: Updated user_project_wrapper.v to explicitly assign floating output pins to ground (1'b0) or connect them to their corresponding internal signals, ensuring all driven ports were tied off properly before rerunning synthesis.

### Issue 2: Pin Placement Density Error (DPL-0033)

    Flow Stage: Floorplan / Placement (run_floorplan & run_placement)

    What Went Wrong: With 637 I/O pins packed around the macro perimeter, the default die area caused illegal overlapping and pin assignment conflicts during detailed placement.

    How Identified: OpenROAD halted during placement with error DPL-0033 indicating standard cells and I/O pads could not be legally placed due to extreme local density constraints.

    How Resolved:

        Updated config.json to explicitly set an absolute die area: "FP_SIZING": "absolute" and "DIE_AREA": "0 0 900 900".

        Relaxed placement target density to avoid congestion: "PL_TARGET_DENSITY": 0.45.

        Set cell padding: "DPL_CELL_PADDING": 2 to allow enough breathing space for routing and clock buffers.

### Issue 3: Interactive Command Execution Error (Permission denied)

    Flow Stage: Log Inspection / Terminal Verification

    What Went Wrong: When attempting to view the fill insertion log (21-fill.log), bash returned Permission denied and No such file or directory.

    How Identified: Terminal output: bash: /.../21-fill.log: Permission denied and Command 'bash:' not found.

    How Resolved: Identified that the file path was executed as a binary rather than read as text, and the prompt string (vsduser@vsduser-VirtualBox:...) was accidentally pasted into the terminal. Corrected the command to use text utilities like cat or head (e.g., cat /path/to/21-fill.log).

### Issue 4: Routing DRC Violations & Antenna Rules

    Flow Stage: Detailed Routing (run_routing)

    What Went Wrong: Initial routing attempts encountered local wire congestion and metal layer antenna violations across high-fanout nets.

    How Identified: TritonRoute log reported non-zero DRC marker counts at the end of routing iterations.

    How Resolved: Enabled OpenLane's automated antenna diode insertion by setting "PREROUTE_AQS": 1 and tuning max fanout limits in config.json, resulting in clean detailed routing with 0 DRC violations.
