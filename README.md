# soc-design-and-planning-vsd
VSD SoC Design and Planning Workshop using OpenLANE and Sky130 PDK
# SoC Design and Planning using OpenLANE

Welcome to my GitHub repository for the **VSD SoC Design and Planning Workshop**.

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


## Author

**Deepak Chauhan**

B.Tech | VLSI Enthusiast
