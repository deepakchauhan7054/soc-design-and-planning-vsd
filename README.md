# soc-design-and-planning-vsd
VSD SoC Design and Planning Workshop using OpenLANE and Sky130 PDK

## About

This repository contains my daily lab reports, notes, screenshots, and observations while learning the complete RTL-to-GDSII Physical Design Flow using OpenLANE and the Sky130 PDK.


## Day-1 Inception of open-source EDA, OpenLANE and Sky130 PDK
Overview

Today I learned the fundamentals of ASIC (Application-Specific Integrated Circuit) design and the complete RTL-to-GDSII design flow using open-source EDA tools. I also understood how software is converted into hardware through the RISC-V Instruction Set Architecture (ISA) and how modern chips are physically designed and manufactured.

## Understanding the Chip Package
When we see an IC on a PCB, we are actually looking at the chip package, not the silicon chip itself. The package protects the internal silicon die from environmental damage and provides electrical connections between the chip and the external circuit.

The actual silicon chip is located inside the package and is connected to the package pins using very thin wire bonds.
## 2. Structure of a Chip
A chip consists of several important parts:
• Pads
Located around the boundary of the chip.
Serve as input/output terminals.
Connect internal circuitry to the external package through wire bonds.
• Core
The central region of the chip.
Contains all the digital logic such as processors, ALUs, memories, controllers, etc.
Most of the chip's functionality is implemented here.
• Die
The complete silicon piece after fabrication.
Includes both the core and the surrounding pads.
• Wire Bonds
Extremely thin metal wires.
Connect chip pads to the package pins.
Enable communication between the chip and the external world.

## 3. Foundry, IPs and Macros
## Foundry
A Foundry is a semiconductor manufacturing facility where integrated circuits are fabricated on silicon wafers.

## Foundry IPs
Foundry IPs are specialized blocks that require detailed knowledge of the semiconductor manufacturing process.
Examples include:
SRAM
PLL (Phase Locked Loop)
ADC
DAC
High-speed I/O cells

## Macros
Macros are pre-designed digital blocks that can be reused in multiple chip designs.
Examples:
Memory blocks
Arithmetic units
Processor cores
Digital controllers

## 4. From Software Application to Hardware (RISC-V ISA)
A software program goes through several stages before it executes on hardware.
C program -> Compiler-> RISC-V Assembly-> Assembler-> Machine Code (Binary)-> RTL Implementation-> Logic Synthesis-> Place & Route-> Physical Layout (GDSII)

The Instruction Set Architecture (ISA) acts as the interface between software and hardware.

The compiler converts high-level code into RISC-V instructions, which are then implemented using RTL and eventually fabricated as hardware.

## 5. SoC Design Using OpenLANE
OpenLANE is an open-source RTL-to-GDSII flow developed to automate ASIC design.
It integrates multiple open-source EDA tools into a single design flow.
Main stages include:
RTL Design
Logic Synthesis
Floorplanning
Power Distribution Network (PDN)
Placement
Clock Tree Synthesis (CTS)
Routing
Timing Analysis
Physical Verification
GDSII Generation
## 6. Simplified RTL to GDSII Flow
RTL Design
      ↓
Logic Synthesis
      ↓
Floorplanning
      ↓
Power Planning
      ↓
Placement
      ↓
Clock Tree Synthesis
      ↓
Routing
      ↓
DRC & LVS Verification
      ↓
GDSII Generation

## Lab — Running OpenLANE for picorv32a
### Setting Up and Invoking OpenLANE
The very first step is to navigate to the OpenLANE working directory and launch the tool in interactive mode, which lets us run each stage step-by-step.
```
cd/Desktop/work/tools/openlane_working_dir/openlane
make mount
./flow.tcl -interactive
package require openlane 0.9
```
<img width="1265" height="289" alt="new" src="https://github.com/user-attachments/assets/54846ccc-f69c-49e2-9938-2fc09643bc48" />
<img width="1271" height="766" alt="Screenshot from 2026-07-11 11-44-17" src="https://github.com/user-attachments/assets/221c3b61-7e6b-4a5a-a8f5-125630f194c5" />

### Preparing the Design
Before running synthesis, we prepare the design to merge the cell LEF and technology LEF files, and set up the run directory.
```
prep -design picorv32a
```
<img width="1278" height="763" alt="Screenshot from 2026-07-11 14-01-34" src="https://github.com/user-attachments/assets/eb6be11b-47d5-47fd-b27f-999f9b7978ac" />

### Running Synthesis
```
run_synthesis
```
<img width="1278" height="767" alt="Screenshot from 2026-07-11 14-15-11" src="https://github.com/user-attachments/assets/4e058a90-e483-4119-a5d8-1a17f4fd5657" />
<img width="1278" height="768" alt="Screenshot from 2026-07-11 14-15-46" src="https://github.com/user-attachments/assets/abbf515a-411e-4872-a68a-bd75f2f1ecdf" />
After synthesis completes, we can calculate the flop ratio — a useful sanity check:

```
Flop ratio = (No. of D Flip Flops)/(Total No. of Cells)
           = 1613/14876
           = 0.1084
           ~ 10.84%
```

## Day 2 – Floorplanning and Placement
Chip Floorplanning

Floorplanning is the first physical design stage after synthesis. It determines the dimensions of the chip and reserves space for different design components before placement.

Two important parameters in floorplanning are:
### Core Utilization

Core utilization represents the percentage of the core area occupied by the standard cells.
```

Core Utilization= (Area occupied by Standard Cells)\(Total Core Area)

```
### Aspect Ratio
Aspect ratio is defined as:
```
Aspect Ratio= Core Height\Core Width
```
### Pre-Placed Cells

Certain blocks in a chip are too large or complex to be placed automatically. These blocks are known as pre-placed cells or fixed macros.

Examples include:

SRAM
PLL
Analog IPs
RISC-V processor macros
Memory controllers

These cells are positioned manually before standard cell placement to achieve better connectivity, power distribution, and routing efficiency.

## Decoupling Capacitors

Decoupling capacitors are inserted close to large macros and high-switching circuits.

Their primary functions are:

Supply instantaneous current during switching
Reduce voltage fluctuations
Minimize power supply noise
Improve overall power integrity

They act as local energy storage elements and help maintain a stable supply voltage during rapid switching events.

## Power Planning

Power planning ensures that every cell in the design receives a stable power supply with minimal voltage drop.

A typical power distribution network consists of:

Power Rings around the core
Horizontal and vertical Power Straps
VDD and VSS metal rails
Standard cell power rails

Proper power planning is essential for reliable chip operation.

## Pin Placement

Input and output pins are placed around the boundary of the chip.

Pin placement is performed by considering:

Signal connectivity
Routing distance
Timing requirements
Congestion

Pins communicating with nearby logic are generally placed closer to the corresponding functional blocks to reduce wire length and improve performance.
## Lab — Floorplan and Placement
### Running Floorplan

```
run_floorplan
```

<img width="1918" height="922" alt="Screenshot from 2026-07-11 22-01-57" src="https://github.com/user-attachments/assets/247c21c9-ef6d-44d7-84d1-464f4de05a8b" />
After this completes, we can inspect the DEF file that was generated:

```
cd results/floorplan/
less picorv32a.def
```

### Viewing the Floorplan in Magic

```
magic -T /home/vsduser/Desktop/work/tools/openLane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.floorplan.def &
```

<img width="1919" height="921" alt="Screenshot from 2026-07-11 22-03-12" src="https://github.com/user-attachments/assets/b876fe4c-c7bc-4fb5-b161-2f53fdd6afa9" />
<img width="1278" height="765" alt="Screenshot from 2026-07-11 23-01-18" src="https://github.com/user-attachments/assets/b7807dd7-54ef-4453-b810-64d7e6df7a46" />
<img width="1026" height="399" alt="Screenshot from 2026-07-12 07-42-35" src="https://github.com/user-attachments/assets/63386abc-e53f-40ad-b7ec-a5c3fbbdfe3e" />
<img width="1920" height="923" alt="Screenshot from 2026-07-12 11-36-31" src="https://github.com/user-attachments/assets/5d57521e-53ac-4e7c-b4ab-f795d56ea48e" />
### Running Placement

```
run_placement
```

<img width="1437" height="725" alt="Screenshot from 2026-07-12 12-00-52" src="https://github.com/user-attachments/assets/b0bae852-80a8-45ce-8684-e0062a7905bc" />
Standard cells legally placed
<img width="1920" height="923" alt="Screenshot from 2026-07-12 12-02-51" src="https://github.com/user-attachments/assets/e9907efa-d1c1-4f29-8884-8520c44af1cf" />


## Day 3 — Design and Characterisation of Library Cells using Magic & ngspice

## CMOS Inverter — SPICE Deck
To characterise a standard cell, we write a SPICE netlist describing the PMOS and NMOS transistors along with their W/L ratios, supply voltage, input stimulus, and load capacitance.

Key parameters we extract from simulation:

   Rise time — 20% to 80% of output rising edge
   Fall time — 80% to 20% of output falling edge
   Propagation delay — 50% input to 50% output

## 16-Mask CMOS Fabrication Process (Brief Overview)
The chip fabrication follows a sequence of about 16 mask steps:

Substrate selection (p-type, high resistivity)
Active region creation (field oxidation + Si3N4 mask)
N-well and P-well formation (ion implantation)
Gate oxide growth
Polysilicon gate deposition
Source/Drain implantation (LDD + halo)
Contacts and metal layers
Final passivation

## Lab — Cloning and Characterising a Custom Inverter Cell
# Cloning the Standard Cell Repository
```
git clone https://github.com/nickson-jose/vsdstdcelldesign.git
```
```
magic -T sky130A.tech sky130_inv.mag &
```

<img width="1456" height="726" alt="Screenshot from 2026-07-12 14-27-57" src="https://github.com/user-attachments/assets/afa9b299-969e-4656-958c-ff3289f7dc9b" />
<img width="1920" height="923" alt="Screenshot from 2026-07-12 22-08-37" src="https://github.com/user-attachments/assets/85920365-8003-4199-ac63-8e6c4c61526a" />
<img width="1920" height="923" alt="Screenshot from 2026-07-12 22-09-56" src="https://github.com/user-attachments/assets/5e44aa09-8a5e-4b52-a113-90c6ef64a74c" />
<img width="1487" height="748" alt="Screenshot from 2026-07-12 22-12-46" src="https://github.com/user-attachments/assets/3af0ca13-0aa2-4876-b473-ec36ffe8c975" />
<img width="1469" height="726" alt="Screenshot from 2026-07-12 22-15-24" src="https://github.com/user-attachments/assets/9a38edfd-e33f-442e-b0bd-8e327b4d7a8a" />
<img width="1453" height="738" alt="Screenshot from 2026-07-12 22-16-07" src="https://github.com/user-attachments/assets/7ee1bd6b-7284-4b51-ad85-5be8b925df54" />
<img width="1866" height="823" alt="Screenshot from 2026-07-12 22-28-01" src="https://github.com/user-attachments/assets/e3bb91ce-1a3d-4585-9276-b794a4a4d7c9" />

# Extracting SPICE Netlist from Magic
Inside the tkcon console:


```
extract all
ext2spice cthresh 0 rthresh 0
ext2spice
```
<img width="992" height="351" alt="Screenshot from 2026-07-12 22-38-36 (1)" src="https://github.com/user-attachments/assets/f6fa05bc-661b-4eef-a8b0-5418dd9be2af" />

Screenshot of created spice file

<img width="1920" height="923" alt="Screenshot from 2026-07-12 22-38-57 (1)" src="https://github.com/user-attachments/assets/f6e4cd2f-e303-4ab7-a7aa-f294d672d54b" />

Editing the spice model file for analysis through simulation.
Measuring unit distance in layout grid

<img width="1700" height="726" alt="Screenshot from 2026-07-12 22-58-25 (1)" src="https://github.com/user-attachments/assets/20b6dff7-28d9-4720-867c-c2a09ceb81d0" />

Final edited spice file ready for ngspice simulation

<img width="1920" height="923" alt="Screenshot from 2026-07-12 23-37-03 (1)" src="https://github.com/user-attachments/assets/e4c115dd-1cc4-469d-9f13-46bb62ab6a5f" />

# Running ngspice Simulation
```
ngspice sky130_inv.spice
```
```
plot y vs time a
```

<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-16-18" src="https://github.com/user-attachments/assets/2be4ba21-d95b-4204-befb-a85ab8b67c55" />

Screenshot of generated plot

<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-17-00" src="https://github.com/user-attachments/assets/b2e18019-4e56-4ae8-837f-3f3f3e273167" />

```
From the waveform, measure rise time, fall time, and propagation delay values. Rise transition time calculation
Rise transition time = Time taken for output to rise to 80% - Time taken for output to rise to 20%
20% of output = 660 mV
80% of output = 2.64 V Fall transition time calculation
Fall transition time = Time taken for output to fall to 20% - Time taken for output to fall to 80%
20% of output = 660 mV
80% of output = 2.64 V
```

<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-31-50" src="https://github.com/user-attachments/assets/955b5202-279a-4ddb-96c7-b09a3c97084a" />
<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-32-02" src="https://github.com/user-attachments/assets/2a793b8c-fd9b-4f61-8e54-feafe7150ecb" />
<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-35-37" src="https://github.com/user-attachments/assets/40342258-65a1-4233-b23b-1bc9e5fc61bb" />
<img width="1920" height="1080" alt="Screenshot from 2026-07-13 23-35-52" src="https://github.com/user-attachments/assets/faa8ab95-4b3d-434d-a2b2-7b570dff0324" />




## Day 4 — Pre-Layout Timing Analysis and Clock Tree Synthesis

### LEF Files and Standard Cell Port Guidelines

**LEF (Library Exchange Format)** is an abstract representation of a standard cell used by physical-design tools. It contains information about the cell dimensions, pins, metal layers, and routing obstructions.

Important guidelines:

- Input and output ports should align with the horizontal and vertical routing tracks.
- Cell width and height should follow the technology routing pitch.
- Proper port alignment is required for successful placement and routing.

### Static Timing Analysis (STA)

**Static Timing Analysis (STA)** is used to verify whether all timing paths in a digital design satisfy their timing constraints.

Important concepts:

- **Setup Time:** Data must be stable before the active clock edge.
- **Hold Time:** Data must remain stable after the active clock edge.
- **Setup Slack = Required Time − Arrival Time**
- Positive slack indicates that the timing requirement is satisfied.
- Negative slack indicates a timing violation.
- **Clock Uncertainty** accounts for clock jitter and other variations.
- **OCV (On-Chip Variation)** models process, voltage and temperature variations.
- **CRPR (Clock Reconvergence Pessimism Removal)** reduces unnecessary pessimism in clock timing analysis.

### Clock Tree Synthesis (CTS)

Clock Tree Synthesis creates a balanced clock distribution network from the clock source to all sequential elements.

The main objectives of CTS are:

- Minimize clock skew
- Control clock latency
- Maintain acceptable clock slew
- Balance clock arrival times

After CTS, setup and hold timing must be checked again because clock buffers and clock delays have been introduced.

---

### Lab — Custom Cell Integration and Pre-CTS STA

#### 1. Viewing Routing Tracks

The `tracks.info` file provides the routing-track information required for standard-cell placement and routing.

```bash
cat tracks.info
```
#### 2. Setting Magic Grid

The Magic grid was configured according to the Sky130 routing requirements.
```
grid 0.46um 0.34um 0.23um 0.17um
```
<img width="959" height="600" alt="Screenshot from 2026-08-20 10-36-28" src="https://github.com/user-attachments/assets/b197d5f5-5121-4caa-b699-411fbfa5ea56" />
#### 3. LEF Generation

The LEF file was generated from the custom standard-cell layout using Magic/TkCon.
<img width="980" height="345" alt="Screenshot from 2026-08-20 10-43-22" src="https://github.com/user-attachments/assets/6b25c42f-b638-445c-969f-cad6f63027b2" />

#### 4. Copying LEF and LIB Files

The generated LEF and required Liberty files were copied into the picorv32a design source directory.
```
cp sky130_vsdinv.lef /home/vsduser/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/src/
cp sky130_fd_sc_hd__*.lib /home/vsduser/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/src/
```
#### 5. Updating config.tcl
The design configuration was updated to include the custom LEF, characterization timing libraries, and relaxed clock constraints to resolve timing violations.
```
# config.tcl updates
set ::env(CLOCK_PERIOD) "24.000"
set ::env(SYNTH_STRATEGY) "DELAY 0"
set ::env(SYNTH_BUFFERING) 1
set ::env(SYNTH_SIZING) 1
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 1
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 1

# Custom cell library inclusion
set ::env(LIB_SYNTH) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd__typical.lib"
set ::env(LIB_FASTEST) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd__fast.lib"
set ::env(LIB_SLOWEST) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd__slow.lib"
set ::env(LIB_TYPICAL) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd__typical.lib"
set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]
```
<img width="1280" height="768" alt="Screenshot from 2026-08-20 11-28-50" src="https://github.com/user-attachments/assets/c564da4b-b8c5-4f4e-8937-d83fdf2fc3dd" />

#### 5. Custom Cell Placement
The custom standard cell sky130_vsdinv was placed and legalized alongside standard library cells during global and detailed placement.
```
prep -design picorv32a -tag run_clean_timing -overwrite
run_synthesis
run_floorplan
detailed_placement
```
<img width="1280" height="768" alt="Screenshot from 2026-08-20 10-53-53" src="https://github.com/user-attachments/assets/0460d03b-cf65-4ff4-9369-04afd9819a71" />
<img width="1280" height="768" alt="Screenshot from 2026-08-20 11-00-39" src="https://github.com/user-attachments/assets/ce9c96d8-e1c7-47d0-ae29-aee297679dbe" />
<img width="1280" height="768" alt="Screenshot from 2026-08-20 11-04-15" src="https://github.com/user-attachments/assets/be8dc470-c79e-47b9-ba46-41590cacd995" />
<img width="1280" height="768" alt="Screenshot from 2026-08-20 11-04-15" src="https://github.com/user-attachments/assets/c128cf11-8ce2-4d47-a6ba-bc379b8a0b09" />

#### 6. Running OpenSTA — Pre-CTS Timing
Pre-CTS timing analysis was conducted with an ideal clock network to identify high-fanout nets, slew violations, and baseline setup margins before buffer insertion.

Ideal Clock Latency: 0.00 ns
Pre-CTS Setup Slack: Analyzed for critical data paths.

#### 7. Running Clock Tree Synthesis (CTS)
Clock Tree Synthesis was executed using TritonCTS to build a balanced clock distribution network and minimize clock skew across all sequential elements.
```
run_cts
```
-Root Buffer: Built from clock root pin clk.
-Clock Skew: Checked to ensure balanced tree insertion.
<img width="1280" height="768" alt="cts1" src="https://github.com/user-attachments/assets/d5f5277a-e40a-4782-b516-1eaa0cdff878" />
<img width="1280" height="768" alt="cts2" src="https://github.com/user-attachments/assets/4dfaa04c-f052-4b27-a406-1e3b6a4caca1" />
<img width="1280" height="768" alt="cts3" src="https://github.com/user-attachments/assets/da6c55e3-7895-44cd-9f2c-68c56ea30015" />

#### 8. Post-CTS Timing Analysis Using OpenROAD
Post-CTS static timing analysis was performed in OpenROAD with a propagated clock model to account for real clock network delays and cross-corner variations.
```
openroad
read_lef ./designs/picorv32a/runs/run_clean_timing/tmp/merged_unpadded.lef
read_def ./designs/picorv32a/runs/run_clean_timing/results/cts/picorv32a.cts.def
read_liberty /home/vsduser/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ./designs/picorv32a/runs/run_clean_timing/results/synthesis/picorv32a.synthesis.v
link_design picorv32a
read_sdc ./designs/picorv32a/src/picorv32a.sdc
set_propagated_clock [all_clocks]
```
#### 9. Generating Timing Report
Detailed timing paths and slack reports were generated to verify full timing closure.
```
report_checks -path_delay min_max -fields {slew trans net cap input_pins} -format full_clock_expanded -digits 4
```
<img width="1280" height="768" alt="Screenshot from 2026-08-20 11-08-00" src="https://github.com/user-attachments/assets/2f6d7443-a75e-45be-9083-8be54f81b0ea" />
##### Signoff Results

-Setup Slack: +4.34 ns (MET)
-Worst Negative Slack (WNS): 0.00 ns
-Total Negative Slack (TNS): 0.00 ns

## Day 5 — Final RTL to GDSII using TritonRoute & OpenSTA

### Routing — Global vs Detailed

Routing is the process of creating physical connections between all the cells and pins in the design.

Routing is performed in two main stages:

1. **Global Routing (FastRoute)** — Determines approximate routing paths for all nets while considering congestion and routing resources.
2. **Detailed Routing (TritonRoute)** — Converts the global routing guides into actual metal wires and vias while following the design rules.

---

### SPEF and Post-Route STA

After routing, the physical wires introduce resistance and capacitance into the design.

These parasitic values are extracted into a **SPEF (Standard Parasitic Exchange Format)** file.

The extracted parasitics are used during post-route Static Timing Analysis to obtain more accurate timing results.

The final timing analysis checks:

- Setup timing
- Hold timing
- Clock skew
- Clock latency
- Net delay
- Parasitic effects

---

## Lab — Power Distribution Network and Routing
#### 1. Generating Power Distribution Network (PDN)
The Power Distribution Network is synthesized after Clock Tree Synthesis (CTS) to deliver continuous power (VDD) and ground (VSS) supplies across the entire standard cell array, keeping IR drop to a minimum.
```
gen_pdn
```
<img width="1280" height="768" alt="pdn1" src="https://github.com/user-attachments/assets/8b9c9742-f251-4936-a933-38092a57a3fb" />
<img width="1280" height="768" alt="pdn2" src="https://github.com/user-attachments/assets/d2cb6231-124a-462e-8fde-8f3e230f329e" />
#### 2. Running Routing
Signal routing connects all logic cell pins, clock nets, and I/O ports according to the design connectivity rules. The flow executes in two stages:
-Global Routing: Handled by FastRoute to partition the layout into coarse Global Routing Cells (G-cells) and allocate routing channels.
-Detailed Routing: Performed by TritonRoute to assign actual physical metal tracks following PDK design rules.
```
run_routing
```
<img width="1280" height="768" alt="routing1" src="https://github.com/user-attachments/assets/ff2df929-6222-4333-a47e-ba72847fdee6" />
<img width="1280" height="768" alt="routing2" src="https://github.com/user-attachments/assets/a7fd0679-b93b-4d64-9fdc-f5a444adedae" />
<img width="1280" height="768" alt="routing3" src="https://github.com/user-attachments/assets/f0f9da50-fae1-4726-8bd9-fb8981fedb02" />
<img width="1280" height="768" alt="routing4" src="https://github.com/user-attachments/assets/e456c7da-2e3e-4231-8b9d-4d2d15472412" />

#### 3.Final GDSII Stream-Out & DRC Signoff
Once routing is completed, the layout DEF is streamed out into the final industry-standard GDSII format using Magic VLSI layout tool for manufacturing signoff.

```
run_magic
run_magic_drc
```
Visualizing Layout in Magic
```
magic -T /home/vsduser/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech \
  /home/vsduser/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/run_clean_timing/results/magic/picorv32a.gds &
```



