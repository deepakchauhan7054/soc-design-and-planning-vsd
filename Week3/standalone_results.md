# Phase 1 & 2: Standalone Block Verification Results

This document records the standalone verification runs for the VSDSquadron SoC management submodules inside `caravel_mgmt_soc_litex/verilog/dv/tests-standalone`.

---

## Standalone Test Result Table

| tests-standalone | tests-standalone status (sky130) |
| :--- | :---: |
| **GPIO Mgmt** | Passed |
| **mem** | Passed |
| **uart** | Passed |
| **timer** | Failed (Timeout) |
| **irq** | Failed (Timeout) |
| **debug** | Failed (Timeout) |
| **spi_master** | Passed |

---

## Verification Flow Overview

1. **Firmware Compilation**: The Makefile invokes `riscv64-unknown-elf-gcc` to cross-compile the C firmware and startup assembly into an ELF file, stripped and converted to Verilog hex via `objcopy`.
2. **Address Remapping**: Hex files are normalized using `sed` to align execution addresses with the simulated memory layout.
3. **Simulation**: `iverilog` compiles the standalone testbench using behavioral models, SkyWater SRAM models, and `mgmt_core_wrapper.v`.
4. **Execution & Assertion**: The `vvp` runtime executes the engine, producing `.vcd` traces and testing output conditions against testbench monitor routines.
