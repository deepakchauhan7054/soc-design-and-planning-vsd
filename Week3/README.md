# Week 3: Caravel SoC RTL Simulation & Verification

This directory contains RTL functional verification records, testbench results, and simulation artifacts for the VSD Squadron SoC integrated into the Caravel chip harness.

---

## Overview

Simulations were performed using the `iverilog` toolchain with the RISC-V GCC cross-compiler (`riscv64-unknown-elf-gcc`). Full chip-level integration checks required compilation with `-DUSE_POWER_PINS` to resolve pad and power rail elaboration dependencies.

Verification was conducted across two test suites:
1. **Standalone SoC Tests** (`caravel_mgmt_soc_litex/verilog/dv/tests/`)
2. **Full Caravel System Tests** (`caravel_mgmt_soc_litex/verilog/dv/tests-caravel/`)

---

## Standalone Test Summary

| # | Testbench | Status | Notes |
|---|---|---|---|
| 01 | `gpio_mgmt` | **PASS** | Management GPIO toggle and blink sequence verified |
| 02 | `mem` | **PASS** | SRAM byte read/write and word access verified |
| 03 | `spi_master` | **PASS** | SPI master controller read/write validation |
| 04 | `uart` | **PASS** | UART loopback / serial transmit verified |
| 05 | `debug` | **FAIL** | Timeout awaiting debug interface handshake |
| 06 | `irq` | **FAIL** | Interrupt request handling timeout |
| 07 | `timer` | **FAIL** | Timer tick event assertion timeout |

---

## Caravel Test Summary

Detailed documentation: [caravel_results.md](caravel_results.md)

| # | Testbench | Status | Description |
|---|---|---|---|
| 01 | `user_pass_thru` | **PASS** | Housekeeping SPI pass-thru mode to flash |
| 02 | `uart` | **PASS** | Caravel system UART communication |
| 03 | `sram_exec` | **PASS** | Execution of code directly out of SRAM |
| 04 | `spi_master` | **PASS** | Full SPI controller cycle |
| 05 | `pullupdown` | **PASS** | GPIO 37–32 pull-up / pull-down states |
| 06 | `pass_thru_fix` | **PASS** | Primary and user flash setup timing verification |
| 07 | `mem` | **PASS** | Byte rw and byte-write/word-read operations |
| 08 | `hkspi_power` | **PASS** | Housekeeping SPI power rails and registers 0–18 |
| 09 | `gpio_mgmt` | **PASS** | Caravel management GPIO pin controls |
| 10 | `hkspi` | **PASS** | Housekeeping SPI standard register sweep |
| 11 | `sysctrl` | **FAIL** | Timeout awaiting clock switch / register checkbits |
| 12 | `pll` | **FAIL** | Functional model divider ratio check mismatch |

---

## Known Issues & Notes

* **`sysctrl`:** Simulation hangs awaiting the clock switch sequence, resulting in testbench timeout.
* **`pll`:** Divider check assertion fails under behavioral simulation because `ucount` matches `ccount` instead of scaling down.
* **Screenshots:** Waveform and terminal execution captures are archived in [`screenshots/`](screenshots/).
