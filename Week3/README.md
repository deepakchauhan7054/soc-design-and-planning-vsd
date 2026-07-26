# Week 3 – Block-Level Verification of VSDSquadron SoC

## Objective

The objective of Week 3 is to understand the block-level verification flow of the VSDSquadron SoC before moving to full-chip implementation.

This assignment focuses on:
- Running standalone verification tests
- Running Caravel-integrated verification tests
- Understanding the Makefile-based verification flow
- Recording PASS/FAIL results
- Learning simulation-driven debugging
- Documenting the complete verification process

---

## Repository

VSDSquadron SoC Repository:

https://github.com/vsdip/vsdsquadron-soc

---

## Assignment Phases

### Phase 1 – Standalone Block Verification
- Clone the repository
- Navigate to standalone verification tests
- Execute simulations
- Verify PASS/FAIL status
- Study the Makefile

---

### Phase 2 – Run All Standalone Tests

Standalone modules include:
- GPIO Management
- Memory
- UART
- Timer
- IRQ
- Debug
- SPI Master

Execution details and screenshots are available in:

- standalone_results.md

---

### Phase 3 – Caravel Integrated Verification

Run all verification tests inside the Caravel environment.

Modules include:
- user_pass_thru
- uart
- sysctrl
- sram_exec
- spi_master
- pullupdown
- pll
- pass_thru_fix
- mem
- hkspi_power
- gpio_mgmt
- hkspi

Execution details and screenshots are available in:

- caravel_results.md

---

## Verification Flow

The verification flow followed during this assignment is:

Makefile
↓
Compilation
↓
Testbench
↓
Design Under Test (DUT)
↓
Simulation
↓
PASS / FAIL Result

Hand-drawn verification diagrams are available inside the **Diagrams/** folder.

---


---

## Learning Outcomes

After completing this assignment, I gained experience with:

- Block-level verification
- Standalone simulation
- Caravel-integrated verification
- Makefile-driven build systems
- Simulation-based debugging
- Testbench execution
- Verification documentation

---

## Author

**Deepak Chauhan | VLSI Enthusiast**

