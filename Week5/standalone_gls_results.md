# Standalone Gate-Level Simulation (GLS) Results

## Standalone Test Summary Table

| Test | RTL Status (Week-3) | GLS Status (Week-5) | Remarks |
| :--- | :--- | :--- | :--- |
| **GPIO Mgmt** | PASS | PASS | Validated GPIO pin directions and data register access. |
| **mem** | PASS | PASS | All word, half-word, and byte read/write checks passed. |
| **uart** | PASS | Pending | |
| **timer** | PASS | Pending | |
| **irq** | PASS | Pending | |
| **debug** | PASS | Pending | |
| **spi_master** | PASS | Pending | |

---

## 1. Mem Test Execution Log
```text
Mem Test (word rw) started
GPIO state = a040
Monitor: Test MEM (GL) [word rw] passed
GPIO state = ab41

Mem Test (short rw) started
Monitor: Test MEM (GL) [short rw] passed

Mem Test (byte rw) started
Monitor: Test MEM (GL) [byte rw] passed

Mem Test (byte w word r) started
Monitor: Test MEM (GL) [byte w word r] passed
mem_tb.v:193: $finish called at 8733287500 (1ps)
```

### Verification Evidence
- Standalone Mem GLS Pass: screenshots/02_standalone_mem_pass.png
- GTKWave Signal Analysis: screenshots/03_standalone_waveform.png
