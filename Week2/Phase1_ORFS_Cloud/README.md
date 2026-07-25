# Phase 1 – ORFS Execution in GitHub Codespaces

## Objective

The objective of Phase 1 was to execute the complete RTL-to-GDS flow using the OpenROAD Flow Scripts (ORFS) in GitHub Codespaces. This phase helped me become familiar with the cloud-based development environment and the ORFS toolchain.

---

## Repository Setup

The following steps were completed:

- Forked the `vsd-scl180-orfs` repository.
- Launched GitHub Codespaces.
- Waited for the devcontainer to build successfully.
- Verified that the development environment was ready.

---

## Environment Verification

The following tools were verified successfully:

- OpenROAD
- Yosys
- Python 3
- Make

The version outputs are available in the **Screenshots** folder.

---

## RTL-to-GDS Flow Execution

The complete design flow was executed successfully.

The stages completed were:

1. RTL Synthesis
2. Floorplanning
3. Placement
4. Clock Tree Synthesis (CTS)
5. Routing
6. GDSII Generation
7. Static Timing Analysis

Screenshots of each stage have been included in the **Screenshots** folder.

---

## Errors Faced

### Error: Missing Standard Cell Library

While executing the ORFS flow using the following command:

```bash
make DESIGN_CONFIG=./designs/scl180fs120/gcd/config.mk
```

the execution stopped with the following error:

```text
make: *** No rule to make target 'flow/platforms/scl180fs120/lib/tsl18fs120_scl_ss.nominal.lib', needed by 'results/scl180fs120/gcd/base/1_1_yosys_canonicalize.rtllil'. Stop.
```

### Cause

The required standard cell timing library (`tsl18fs120_scl_ss.nominal.lib`) was missing or the library path was not correctly configured. Because this library is required during synthesis, the ORFS flow could not continue.

---

## Conclusion

Phase 1 provided hands-on experience with the ORFS flow in GitHub Codespaces. I successfully verified the development environment and completed the RTL-to-GDS implementation flow, generating the final GDSII layout and timing reports.
