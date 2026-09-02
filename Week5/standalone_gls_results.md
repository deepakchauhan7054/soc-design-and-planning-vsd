# Standalone Gate-Level Simulation (GLS) Results

## Standalone Test Summary Table

| Test | RTL Status (Week-3) | GLS Status (Week-5) | Remarks |
| :--- | :--- | :--- | :--- |
| **GPIO Mgmt** | PASS | PASS | Validated GPIO pin directions and data register access. |
| **mem** | PASS | PASS | All word, half-word, and byte read/write checks passed. |
| **uart** | PASS | PASS | Monitor: Test UART (GL) passed at 3681338500 ps. |
| **timer** | FAIL | Pending | |
| **irq** | FAIL | Pending | |
| **debug** | FAIL | Pending | |
| **spi_master** | PASS | Pending | |

---

## 2. Mem Test Execution Log
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

## 3. Uart Test Execution log
```text
Reading uart.hex
uart.hex loaded into memory
Wait for UART o/p
UART Test started
+10000 cycles
...
Monitor: Test UART (GL) passed
uart_tb.v:105: $finish called at 3681338500 (1ps)
```

