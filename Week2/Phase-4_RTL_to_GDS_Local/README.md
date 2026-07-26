# Phase 4 – Re-Run RTL-to-GDS Locally

## Overview

Phase 4 focuses on executing the complete RTL-to-GDS design flow on a local Ubuntu environment using the OpenROAD Flow Scripts (ORFS). The same testcase used during the cloud-based execution is re-executed locally to validate the complete design flow and understand the execution process on a personal workstation.

---

## Objective

The main objectives of this phase are:

- Execute the same RTL-to-GDS testcase locally.
- Understand the complete OpenROAD design flow on a local machine.
- Verify the successful execution of each stage of the physical design flow.
- Analyze the generated reports and output files.
- Compare the results obtained from the cloud environment with the local execution.

---

## Test Case

**Design:** `gcd`

**Technology Platform:** `scl180fs120`

**Execution Command:**

```bash
make DESIGN_CONFIG=./designs/scl180fs120/gcd/config.mk
```

---

## Expected Flow

The RTL-to-GDS flow consists of the following stages:

1. RTL Synthesis
2. Floorplanning
3. Placement
4. Clock Tree Synthesis (CTS)
5. Global Routing
6. Detailed Routing
7. Timing Analysis
8. GDS Generation

---

## Expected Deliverables

The following outputs will be collected during this phase:

- Synthesis completion report
- Placement completion proof
- CTS execution log
- Routing completion proof
- Final GDS file
- Timing report containing WNS and TNS values

---

## Cloud vs Local Comparison

The execution results from the cloud environment and the local environment will be compared using the following parameters.

| Metric | Cloud | Local |
|---------|:-----:|:-----:|
| Runtime | 192 s (3 min 12 s) | To be updated |
| WNS | To be updated | To be updated |
| TNS | To be updated | To be updated |
| Final GDS Generated | Yes | To be updated |

---

## Learning Outcomes

After completing this phase, the following concepts will be understood:

- Local execution of the complete ORFS flow
- Individual stages of the RTL-to-GDS process
- Interpretation of timing reports
- Analysis of generated physical design outputs
- Comparison of execution results across different environments
