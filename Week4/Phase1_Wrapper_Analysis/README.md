# Week–4: RTL-to-GDS Implementation of User Project Wrapper

---

## Phase 1 — Top-Level Wrapper & Hierarchy Analysis

### 1. Design Overview
The top-level module `__user_project_wrapper.v` connects custom user blocks to the Caravel harness via Wishbone interconnects, logic analyzer probes, and GPIO pads.

### 2. Module Hierarchy & Dependency Tree
```text
__user_project_wrapper (Top Module)
├── user_project_la_example (instantiated as: la_testing)
├── user_project_gpio_example (instantiated as: gpio_testing)
└── debug_regs (instantiated as: debug)
```

<img width="1273" height="255" alt="image" src="https://github.com/user-attachments/assets/1c986f14-3666-4d01-98f4-1fbc1fcb50e6" />

### 3. 
