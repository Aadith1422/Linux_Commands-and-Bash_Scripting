
# System Performance Monitoring in Linux

## a) Useful Monitoring Commands

| Command | Description |
|---------|-------------|
| `top`   | Displays real-time view of system processes and resource usage. |
| `htop`  | An enhanced version of `top` with a user-friendly interface (may require installation). |
| `df`    | Shows disk space usage for file systems. |
| `du`    | Shows disk usage of files and directories. |
| `free`  | Displays memory usage (RAM and swap). |
| `uptime`| Shows how long the system has been running, along with load averages. |
| `vmstat`| Reports virtual memory statistics. |

---

## b) Command Usage and Output

### 1. `top`
```bash
top
```
- Displays CPU, memory usage, running tasks.
- Press `q` to quit.
- Output includes:
  - `%CPU` — processor usage per process
  - `%MEM` — memory usage per process
  - `PID`, `USER`, `TIME+`, `COMMAND` columns

---

### 2. `htop`
```bash
htop
```
- Graphical and colorized output.
- Easier to navigate (use arrow keys).
- Allows sorting and killing processes with `F9`.

---

### 3. `df`
```bash
df -h
```
- `-h` = human-readable sizes
- Output includes:
  - `Filesystem`, `Size`, `Used`, `Avail`, `Use%`, `Mounted on`

---

### 4. `du`
```bash
du -sh *
```
- `-s` = summary
- `-h` = human-readable
- Shows the size of each file/folder in the current directory.

---

### 5. `free`
```bash
free -h
```
- Displays memory usage summary.
- Includes `total`, `used`, `free`, `available` memory.
- `-h` = human-readable.

---

### 6. `uptime`
```bash
uptime
```
- Shows how long the system has been up, number of users, and load averages.
- Example:
  ```
  10:35:12 up 2 days,  3:18,  2 users,  load average: 0.58, 0.44, 0.35
  ```

---

### 7. `vmstat`
```bash
vmstat 1 5
```
- Reports on processes, memory, paging, block IO, and CPU activity.
- `1 5` means refresh every 1 second, 5 times.

---

> These commands are essential tools for Linux system monitoring and diagnosing performance issues.
