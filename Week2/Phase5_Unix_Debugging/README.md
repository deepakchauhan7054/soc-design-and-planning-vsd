# Phase 5 – Debugging and Unix Literacy

## Objective

The objective of this phase is to demonstrate proficiency with basic Unix/Linux commands that are commonly used while working with OpenROAD Flow Scripts (ORFS). These commands are essential for navigating directories, inspecting files, searching logs, and debugging design flows.

---

## Commands Practiced

| Command | Purpose |
|---------|---------|
| `pwd` | Displays the current working directory. |
| `ls` | Lists files and directories. |
| `cd` | Changes the current directory. |
| `find` | Searches for files and directories. |
| `grep` | Searches for specific text patterns in files. |
| `cat` | Displays the contents of a file. |
| `less` | Views large files page by page. |
| `echo` | Prints text or environment variable values. |
| `export` | Creates or modifies environment variables. |

---

## Activities Performed

### 1. Directory Navigation
Used `pwd`, `ls`, and `cd` to move through the ORFS project directories and verify the current working location.

---

### 2. Searching Log Files
Used the `find` command to locate log files generated during the ORFS flow.

Example:

```bash
find . -name "*.log"
```

---

### 3. Filtering Timing Information
Used `grep` to search timing reports and log files for keywords such as `slack`, `setup`, and `violation`.

Example:

```bash
grep -Ri "slack" .
```

---

### 4. Inspecting Makefiles
Viewed the project Makefile using both `cat` and `less` to understand the build process.

Examples:

```bash
cat Makefile
```

```bash
less Makefile
```


---

## Learning Outcomes

- Learned how to navigate Linux directories efficiently.
- Understood how to locate project files and log files.
- Practiced searching timing information using `grep`.
- Learned to inspect Makefiles used in the ORFS flow.
- Understood the role of environment variables in configuring EDA tools.
- Improved debugging skills using standard Unix commands.

---

