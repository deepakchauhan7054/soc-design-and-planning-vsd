# Phase 2 – Toolchain Understanding (Devcontainer Deep Dive)

I studied the following:

- `.devcontainer/Dockerfile`
- `.devcontainer/install-openroad.sh`

---

# Dockerfile Analysis

The Dockerfile is responsible for creating the development environment used in GitHub Codespaces.

It performs the following tasks:

- Uses Ubuntu 22.04 as the base operating system.
- Creates the `vscode` user.
- Installs required development packages.
- Installs simulation and verification tools.
- Downloads the OSS CAD Suite.
- Installs KLayout.
- Configures OpenROAD environment variables.
- Configures the noVNC desktop environment.

---

# install-openroad.sh Analysis

The `install-openroad.sh` script installs OpenROAD automatically.

The script performs the following operations:

- Downloads the OpenROAD package.
- Extracts the archive.
- Locates the OpenROAD executable.
- Copies OpenROAD into `/opt/openroad`.
- Copies required shared libraries.
- Creates a symbolic link in `/usr/local/bin`.
- Registers runtime libraries using `ldconfig`.
- Verifies the installation by checking the OpenROAD version.

---

# Toolchain Mapping

| Tool | Installed From | Purpose | Stage Used |
|------|----------------|---------|------------|
| Git | Ubuntu Package Manager (APT) | Version control | Development |
| Python | Ubuntu Package Manager (APT) | Automation and scripting | Entire Flow |
| Make | Ubuntu Package Manager (APT) | Executes ORFS Makefiles | Entire Flow |
| Magic | Ubuntu Package Manager (APT) | Layout editing and LEF generation | Physical Design |
| ngspice | Ubuntu Package Manager (APT) | Circuit simulation | Cell Verification |
| GTKWave | Ubuntu Package Manager (APT) | Waveform viewer | RTL Verification |
| Verilator | Ubuntu Package Manager (APT) | Verilog simulation | RTL Verification |
| Icarus Verilog | Ubuntu Package Manager (APT) | Verilog simulation | RTL Verification |
| Yosys | OSS CAD Suite | RTL Synthesis | Synthesis |
| OpenROAD | Prebuilt Binary | Physical Design | Floorplan to GDS |
| KLayout | Downloaded Debian Package | GDS Viewer | Layout Verification |
| OpenSTA | OSS CAD Suite | Static Timing Analysis | Timing Analysis |

---

# Flow Architecture

## 1. What ORFS Automates

ORFS (OpenROAD Flow Scripts) automates the complete RTL-to-GDS physical design flow. Instead of executing every tool manually, ORFS coordinates all stages including synthesis, floorplanning, placement, clock tree synthesis, routing, timing analysis, and GDS generation.

---

## 2. How Makefiles Orchestrate the Flow

The Makefile controls the execution order of the RTL-to-GDS flow. Each stage depends on the successful completion of the previous stage. Running a single `make` command automatically executes all required design stages.

---

## 3. Where Synthesis Ends

Synthesis ends after Yosys converts the RTL design into a gate-level netlist.

---

## 4. Where Physical Design Begins

Physical design begins after synthesis. OpenROAD starts floorplanning, followed by placement, clock tree synthesis, routing, and layout optimization.

---

## 5. Where Timing is Checked

Timing is checked using OpenSTA during different stages of the flow and again after routing to verify setup and hold timing requirements.

---

## 6. Where GDS is Produced

The final GDSII layout is generated after routing and physical verification. This GDS file represents the final chip layout used for fabrication.

---
