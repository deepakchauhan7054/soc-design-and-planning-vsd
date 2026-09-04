# Caravel RTL Simulation Results (Week 3)

RTL verification of testbenches under `caravel_mgmt_soc_litex/verilog/dv/tests-caravel/` using `iverilog` with `-DUSE_POWER_PINS`.

---

## Test Summary

| # | Testbench | Status |
|---|---|---|
| 01 | `user_pass_thru` | **PASS** |
| 02 | `uart` | **PASS** |
| 03 | `sram_exec` | **PASS** |
| 04 | `spi_master` | **PASS** |
| 05 | `pullupdown` | **PASS** |
| 06 | `pass_thru_fix` | **PASS** |
| 07 | `mem` | **PASS** |
| 08 | `hkspi_power` | **PASS** |
| 09 | `gpio_mgmt` | **PASS** |
| 10 | `hkspi` | **PASS** |
| 11 | `sysctrl` | **FAIL** |
| 12 | `pll` | **FAIL** |

---

## Failure Analysis

* **`sysctrl` (Timeout):** Firmware waits for a system controller register handshake/clock switch condition that does not toggle expected checkbits before the cycle timeout threshold.
* **`pll` (Ratio Mismatch):** Test 2 checks clock divider outputs; the behavioral simulation model outputs `ucount = ccount` (`12 == 12`) instead of dividing down.
