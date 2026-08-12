## Phase 2 — Prepare the Design Workspace & Configuration
### 1. Workspace Directory Setup

The design workspace was created inside the OpenLane design repository (/home/vsduser/OpenLane/designs/user_project_wrapper/) containing the src/ directory for source RTL files and configuration scripts:
```
OpenLane/designs/user_project_wrapper/
├── config.json
├── constraint.sdc
└── src/
    ├── __user_project_wrapper.v
    ├── __user_project_la_example.v
    ├── __user_project_gpio_example.v
    ├── debug_regs.v
    └── defines.v
```
### 2. Flow Configuration (config.json)
The design was configured to target the sky130hd library with a target clock frequency of 100 MHz (10 ns period) on port wb_clk_i:
```
{
    "DESIGN_NAME": "user_project_wrapper",
    "VERILOG_FILES": [
        "dir::src/defines.v",
        "dir::src/__user_project_wrapper.v",
        "dir::src/__user_project_la_example.v",
        "dir::src/__user_project_gpio_example.v",
        "dir::src/debug_regs.v"
    ],
    "CLOCK_PORT": "wb_clk_i",
    "CLOCK_PERIOD": 10.0,
    "FP_CORE_UTIL": 40,
    "DESIGN_IS_CORE": 0,
    "FP_PDN_CORE_RING": 0,
    "BASE_SDC_FILE": "dir::constraint.sdc"
}
```
### 3. RTL Integration Explanation

All dependent .v files identified during Phase 1 were copied into the ./src/ workspace subfolder. The config.json explicitly declares all Verilog dependency files under VERILOG_FILES, ensuring Yosys elaborates the complete design hierarchy cleanly during synthesis.

<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/fb30feca-89a6-4090-b81a-9f6745794df1" />

