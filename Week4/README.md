# WEEK–4: RTL-to-GDS Implementation of User Project Wrapper

## VSD SoC Design and Planning Workshop

### Objective

The objective of Week–4 is to implement the top-level user project wrapper using the OpenROAD Flow Scripts (ORFS) and prepare the design for gate-level verification.

The main tasks are:

- Analyze the top-level user project wrapper
- Identify RTL dependencies
- Prepare the ORFS design environment
- Configure the design and top module
- Apply a 100 MHz clock constraint
- Run the complete RTL-to-GDS flow
- Generate final physical design outputs
- Document debugging and issues encountered

---

## Design Under Implementation

The target design is:

```text
caravel/verilog/rtl/__user_project_wrapper.v
