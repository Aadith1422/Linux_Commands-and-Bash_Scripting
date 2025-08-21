
# Linux Directory Structure & Navigation

## a) Purpose of Key Linux Directories

| Directory | Purpose |
|----------|---------|
| **/bin** | Contains essential binary executables needed for basic system operation, available for all users. Examples: `ls`, `cp`, `mv`, `bash`. |
| **/etc** | Contains all system-wide configuration files and shell scripts for startup and system services. Examples: `passwd`, `hosts`, `fstab`. |
| **/home** | User-specific directories are stored here. Each user gets a subdirectory like `/home/amal`. This is where personal files and settings live. |
| **/var** | Stands for “variable”. Stores files that are expected to change frequently such as logs (`/var/log`), mail (`/var/mail`), and spool files. |
| **/usr** | Contains user-installed applications and utilities. It's typically where the bulk of programs and libraries reside (`/usr/bin`, `/usr/lib`). |
| **/tmp** | Temporary files created by the system and users are stored here. Files here are usually deleted on reboot or periodically. |

---

## b) Navigating the Linux Directory Structure

### 1. `pwd` (Print Working Directory)
Shows the current directory you’re in.
```bash
pwd
# Output example: /home/amal
```

### 2. `ls` (List)
Lists files and directories in the current directory.
```bash
ls        # Basic listing
ls -l     # Long listing with details
ls -a     # Shows hidden files (starting with .)
```

### 3. `cd` (Change Directory)
Navigates to another directory.
```bash
cd /etc         # Go to etc
cd ..           # Go up one directory
cd ~/Documents  # Go to Documents in your home directory
```

### 4. `tree`
Displays directories and files in a tree structure (may require installation).
```bash
sudo apt install tree     # Install tree on Debian/Ubuntu-based systems
tree /home                # Show folder structure of /home
tree -L 2 /etc            # Show 2 levels deep inside /etc
```

---

> This is a basic guide for beginners learning the Linux filesystem and navigation commands.
