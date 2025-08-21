
# Linux Log Files & Log Analysis Commands

## a) Key Log Files in `/var/log`

| Log File         | Purpose |
|------------------|---------|
| `/var/log/syslog` or `/var/log/messages` | Contains general system messages and logs from various services and kernel. Useful for overall system health. |
| `/var/log/auth.log` | Records authentication events such as login attempts, sudo usage, and SSH logins. Useful for security auditing. |
| `/var/log/dmesg` | Logs kernel ring buffer messages, mostly hardware and driver-related messages during boot. |
| `/var/log/kern.log` | Logs messages from the Linux kernel. Helpful in diagnosing hardware or kernel issues. |
| `/var/log/faillog` | Records failed login attempts. |
| `/var/log/wtmp` and `/var/log/btmp` | Binary files that log login history and failed login attempts respectively (use `last` and `lastb` to view). |

---

## b) Viewing and Analyzing Logs

### 1. `cat` – View the entire log file
```bash
cat /var/log/syslog
```

### 2. `less` – Scrollable view of large logs
```bash
less /var/log/auth.log
```
- Use arrow keys to navigate.
- Press `q` to quit.

### 3. `tail` – View the end of a log file
```bash
tail /var/log/syslog
tail -n 50 /var/log/dmesg   # View last 50 lines
tail -f /var/log/syslog     # Follow live updates
```

### 4. `grep` – Filter specific entries
```bash
grep "error" /var/log/syslog
grep "Failed password" /var/log/auth.log
```

---

## 🛡️ Log Monitoring Tips

- Use `tail -f` during live troubleshooting.
- Filter by date/time or keywords with `grep`.
- Combine with `awk` or `cut` for advanced parsing.

---

> Logs are crucial for diagnosing system problems and auditing security. Regularly monitoring logs helps detect issues early.
