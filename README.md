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
Setting Up and Invoking OpenLANE
The very first step is to navigate to the OpenLANE working directory and launch the tool in interactive mode, which lets us run each stage step-by-step.
```
cd/Desktop/work/tools/openlane_working_dir/openlane
make mount
./flow.tcl -interactive
package require openlane 0.9
```




## Author

**Deepak Chauhan**

B.Tech | VLSI Enthusiast
