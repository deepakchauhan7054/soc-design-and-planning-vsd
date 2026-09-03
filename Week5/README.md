# Week 5: Gate-Level Simulation (GLS) & Verification

This directory contains the gate-level simulation (GLS) test suite, flow modifications, waveform captures, execution logs, and verification documentation for the integrated Caravel SoC and standalone management submodules.

---

## Documentation Sections

1. **[Phase 1 & Phase 2: GLS Setup & Makefile Modifications](makefile_changes.md)**
   * Gate-level netlist integration (`__user_project_wrapper.v`, `caravel.v`, SkyWater 130nm library models).
   * Compilation definitions (`-DFUNCTIONAL`, `-DGL`, `-DUSE_POWER_PINS`, `-DUNIT_DELAY=#1`).
   * Hex address remapping fixes for SPI flash execution offset (`@1000` to `@0000`).

2. **[Standalone GLS Verification Results](standalone_gls_results.md)**
   * Core submodule level verification targeting `mgmt_core_wrapper`.
   * Execution of standalone peripherals (GPIO, Memory, UART, SPI Master, Timers, IRQ).

3. **[Caravel Integrated GLS Results](caravel_gls_results.md)**
   * Full-chip SoC simulation results across 12 target testbenches.
   * Comparative RTL vs. GLS status matrix and terminal execution logs.

---

## Directory Organization

* `logs/`: Individual execution log files detailing test output and assertions.
* `screenshots/`: GTKWave inspection and terminal verification captures.
* `waveforms/`: Renamed, sequential gate-level simulation waveform captures.
