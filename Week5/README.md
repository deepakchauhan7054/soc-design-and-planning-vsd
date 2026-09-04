# Week 5: Gate-Level Simulation (GLS) & Caravel SoC Verification

## Overview
Week 5 focuses on Gate-Level Simulation (GLS) of the Litex-based RISC-V management SoC, evaluated both as an isolated macro (`standalone`) and integrated into the full **Caravel** chip harness (`caravel_gl`). 

While RTL simulation validates purely architectural logic, GLS verifies the post-synthesis / post-layout netlist. It incorporates synthesized standard-cell logic gates, macro models (SRAM, SPI Flash), I/O pad cells, and power-routing connectivity.

---

## Objectives
* Run gate-level simulations using `iverilog` with synthesized gate netlists and behavioral models.
* Verify power pad integrity by passing the `-DUSE_POWER_PINS` compilation directive.
* Validate core-to-pad interfaces, Wishbone interconnects, and memory mapping under structural netlist conditions.
* Analyze timing handshakes, SPI flash instruction fetches, and peripheral hardware behaviors using GTKWave.

---

## Verification Strategy

### 1. Standalone SoC vs. Caravel Harness
* **Standalone (`tests-standalone`)**: Simulates `mgmt_core_wrapper` in isolation to verify peripheral controllers (UART, SPI Master, GPIO, Wishbone Memory) without Caravel pad ring overhead.
* **Caravel Harness (`caravel_gl`)**: Integrates the management core into the complete chip harness, routing signals through `padframe`, housekeeping SPI, and multiplexed `mprj_io` pins.

### 2. Simulation Environment & Setup
* **Simulator**: Icarus Verilog (`iverilog`)
* **Waveform Viewer**: GTKWave
* **Key Compilation Flags**:
  * `-DFUNCTIONAL`: Enables functional behavioral models of analog/hard blocks.
  * `-DUSE_POWER_PINS`: Includes `vccd1`, `vssd1`, `vccd2`, and `vssd2` power nets into the synthesized netlist.
  * `-DGL`: Directs the testbench to instantiate the gate-level structural netlist instead of behavioral RTL.

---

# Week 5: SoC Verification Waveforms & Analysis

This document provides visual waveform logs and timing analysis for standalone management SoC tests and Caravel chip-level simulations.

---

## 1. Standalone SoC Simulations

### 01. Standalone GPIO Management
![Standalone GPIO Management](waveforms/01_standalone_gpio_mgmt_waveform.png)

Monitors clock synchronization, test status updates on checkbits[15:0], and serial flash byte transitions on spi_out[7:0] during gate-level standalone GPIO management execution.

---

### 02. Standalone Memory
![Standalone Memory](waveforms/02_standalone_mem_waveform.png)

Verifies standalone SRAM read/write integrity by observing reset de-assertion (RSTB), stable system clock, and sequential test-pass milestone flags on checkbits[15:0] (A040, A020, A010, A050).

---

### 03. Standalone UART
![Standalone UART](waveforms/03_standalone_uart_waveform.png)

Confirms gate-level UART transmitter timing and frame serialization via active pulses on uart_tx and test completion flags on checkbits[15:0]

---

### 04. Standalone SPI Master
![Standalone SPI Master](waveforms/04_standalone_spi_master_waveform.png)

Verifies gate-level SPI master operations under stable VDD3V3 and de-asserted RSTB by tracking sequential test milestone codes from A040 through A045 on checkbits[15:0].

---

## 2. Caravel Chip-Level Simulations

### 05. Caravel User Pass-Thru
![Caravel User Pass-Thru](waveforms/05_caravel_gl_user_pass_thru_waveform.png)

Verifies gate-level user pass-through mode by tracking serial clock pulses (SCK), milestone flags on checkbits[15:0], and pad transitions from high-Z to active bus transfers on mprj_io[37:0].

---

### 06. Caravel GPIO Management
![Caravel GPIO Management](waveforms/06_caravel_gl_gpio_mgmt_waveform.png)

Verifies gate-level Caravel management GPIO control by observing RSTB release, SPI flash access lines (csb, io0), and periodic output toggle pulses on the gpio pin.
---

### 07. Caravel UART
![Caravel UART](waveforms/07_caravel_gl_uart_waveform.png)

Validates gate-level Caravel UART operation by tracking instruction fetches on flash_io0 alongside received character frame accumulation in recv_buf_data[399:0].

---

### 08. Caravel Memory
![Caravel Memory](waveforms/08_caravel_gl_mem_waveform.png)

Verifies gate-level memory read/write operations within the Caravel harness by tracking sequential milestone codes (A040, A020, A010, A050) on checkbits[15:0] alongside clk and io0 flash activity.

---

### 09. Caravel SPI Master
![Caravel SPI Master](waveforms/09_caravel_gl_spi_master_waveform.png)

Verifies gate-level Caravel SPI master transactions by tracking serialized data bytes in buffer[7:0] alongside clk strobes, io0 activity, and stepped milestone flags on checkbits[15:0] (A040–A045).

---

### 10. Caravel SRAM Execution
![Caravel SRAM Execution](waveforms/10_caravel_gl_sram_exec_waveform.png)

Verifies gate-level instruction execution from SRAM by monitoring active clock/clk pulses, de-asserted RSTB, flash interface transfers on flash_io0, and byte stream updates in buffer[7:0].

---

### 11. Caravel Housekeeping SPI
![Caravel Housekeeping SPI](waveforms/11_caravel_gl_hkspi_waveform.png)

Verifies gate-level housekeeping SPI communication by observing serial clock synchronization on clk, interface lines flash_io0/io0, and byte register shift sequences accumulated in buffer[7:0].

---

### 12. Caravel Housekeeping SPI Power
![Caravel Housekeeping SPI Power](waveforms/12_caravel_gl_hkspi_power_waveform.png)

Verifies gate-level housekeeping SPI power domain operation by monitoring active clk pulses, de-asserted RSTB, io0 bus toggles, and continuous serial byte transfers in buffer[7:0].

---

### 13. Caravel Pull-Up / Pull-Down
![Caravel Pull-Up / Pull-Down](waveforms/13_caravel_gl_pullupdown_waveform.png)

Verifies gate-level GPIO pull-up and pull-down states by monitoring sequential milestone flags on checkbits_hi[5:0] and checkbits_lo[5:0] alongside active io0 and clock strobes.

---

### 14. Caravel Pass-Thru Fix
![Caravel Pass-Thru Fix](waveforms/14_caravel_gl_pass_thru_fix_waveform.png)

Validates gate-level SPI pass-through timing fix by tracking stable clk strobes, io0 flash line transfers, de-asserted RSTB, and continuous serial byte reception in buffer[7:0].

---


