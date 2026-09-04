# Week 5: SoC Verification Waveforms & Analysis

This document provides visual waveform logs and timing analysis for standalone management SoC tests and Caravel chip-level simulations.

---

## 1. Standalone SoC Simulations

### 01. Standalone GPIO Management
![Standalone GPIO Management](waveforms/01_standalone_gpio_mgmt_waveform.png)
*Monitors clock synchronization, test status updates on checkbits[15:0], and serial flash byte transitions on spi_out[7:0] during gate-level standalone GPIO management execution.*

---

### 02. Standalone Memory
![Standalone Memory](waveforms/02_standalone_mem_waveform.png)
*Verifies standalone SRAM read/write integrity by observing reset de-assertion (RSTB), stable system clock, and sequential test-pass milestone flags on checkbits[15:0] (A040, A020, A010, A050).*

---

### 03. Standalone UART
![Standalone UART](waveforms/03_standalone_uart_waveform.png)
*Confirms gate-level UART transmitter timing and frame serialization via active pulses on uart_tx and test completion flags on checkbits[15:0]*

---

### 04. Standalone SPI Master
![Standalone SPI Master](waveforms/04_standalone_spi_master_waveform.png)
*Verifies serial clock generation (SCK), chip-select asserts (CSB), and serial byte shifts on MOSI/MISO lines.*

---

## 2. Caravel Chip-Level Simulations

### 05. Caravel User Pass-Thru
![Caravel User Pass-Thru](waveforms/05_caravel_gl_user_pass_thru_waveform.png)
*Monitors the housekeeping SPI switching into direct pass-through mode to fetch instructions from external SPI flash.*

---

### 06. Caravel GPIO Management
![Caravel GPIO Management](waveforms/06_caravel_gl_gpio_mgmt_waveform.png)
*Checks the Caravel management processor driving the chip-level GPIO pads through programmed blink sequences.*

---

### 07. Caravel UART
![Caravel UART](waveforms/07_caravel_gl_uart_waveform.png)
*Confirms full-system serial communication by monitoring TX/RX pin activity through the Caravel I/O pad ring.*

---

### 08. Caravel Memory
![Caravel Memory](waveforms/08_caravel_gl_mem_waveform.png)
*Examines system-level memory interface timing, verifying byte enables and word-level data transfers inside the harness.*

---

### 09. Caravel SPI Master
![Caravel SPI Master](waveforms/09_caravel_gl_spi_master_waveform.png)
*Validates the SPI master controller communicating with external peripherals routed through the chip boundary pins.*

---

### 10. Caravel SRAM Execution
![Caravel SRAM Execution](waveforms/10_caravel_gl_sram_exec_waveform.png)
*Verifies instruction fetch requests, program counter progression, and execution timing directly out of dedicated SRAM.*

---

### 11. Caravel Housekeeping SPI
![Caravel Housekeeping SPI](waveforms/11_caravel_gl_hkspi_waveform.png)
*Tracks register read and write cycles across housekeeping control registers (0 to 18) via the dedicated SPI interface.*

---

### 12. Caravel Housekeeping SPI Power
![Caravel Housekeeping SPI Power](waveforms/12_caravel_gl_hkspi_power_waveform.png)
*Ensures correct logical register behavior and signal propagation across simulated power domains and supply rails.*

---

### 13. Caravel Pull-Up / Pull-Down
![Caravel Pull-Up / Pull-Down](waveforms/13_caravel_gl_pullupdown_waveform.png)
*Monitors GPIO pad weak pull-up and pull-down configurations under programmable register drive states.*

---

### 14. Caravel Pass-Thru Fix
![Caravel Pass-Thru Fix](waveforms/14_caravel_gl_pass_thru_fix_waveform.png)
*Validates that setup and hold timing margins are satisfied on external flash lines during pass-through operations.*
