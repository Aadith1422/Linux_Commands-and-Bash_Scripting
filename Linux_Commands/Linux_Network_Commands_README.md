
# Linux Networking and Troubleshooting Commands

## a) Common Networking Commands

| Command     | Description |
|-------------|-------------|
| `ifconfig`  | Displays or configures network interfaces (deprecated in favor of `ip`). |
| `ip`        | Modern utility to show/manipulate routing, devices, and IPs. |
| `ping`      | Sends ICMP echo requests to test network connectivity. |
| `netstat`   | Shows network connections, routing tables, etc. (deprecated in favor of `ss`). |
| `ss`        | Displays detailed socket statistics and connections. |
| `traceroute`| Traces the route packets take to a host. |
| `nmap`      | Network scanner for discovering hosts and services on a network. |

---

## b) Command Usage and Output

### 1. `ifconfig`
```bash
ifconfig
```
- Lists all network interfaces and their IP/MAC addresses.
- Example output fields: `inet`, `netmask`, `broadcast`, `ether`.

---

### 2. `ip`
```bash
ip a         # Show all IP addresses
ip link      # Show network interfaces
ip route     # Show routing table
```

---

### 3. `ping`
```bash
ping google.com
```
- Sends continuous pings until stopped with `Ctrl+C`.
- Output: response time, packet loss, TTL.

---

### 4. `netstat`
```bash
netstat -tuln
```
- `-t` TCP, `-u` UDP, `-l` listening, `-n` numeric IPs/ports
- Lists open ports and listening services.

---

### 5. `ss`
```bash
ss -tuln
```
- Faster alternative to netstat.
- Shows TCP/UDP listening ports and socket connections.

---

### 6. `traceroute`
```bash
traceroute google.com
```
- Displays each hop along the route to a domain or IP.
- Useful for diagnosing routing problems or delays.

---

### 7. `nmap`
```bash
nmap 192.168.1.1
nmap -sS -p 1-1000 localhost
```
- First command scans a host.
- Second command performs a stealth SYN scan on ports 1–1000.
- Requires `sudo apt install nmap` to be available.

---

> These commands are critical for diagnosing and managing Linux networking issues, from simple connectivity checks to port scanning and advanced troubleshooting.
