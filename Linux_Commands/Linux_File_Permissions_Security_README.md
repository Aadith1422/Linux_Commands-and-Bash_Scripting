
# Linux File Permissions & Security Management

## a) Using `chmod`, `chown`, and `chgrp`

### 🔐 1. `chmod` – Change File Permissions
```bash
chmod [permissions] filename
```

**Symbolic Method:**
```bash
chmod u+x script.sh   # Add execute permission to the user
chmod g-w file.txt    # Remove write permission from group
chmod o=r file.txt    # Set read-only for others
```

**Octal Method:**
- `r=4`, `w=2`, `x=1`
- Example:
```bash
chmod 755 script.sh   # rwxr-xr-x
chmod 644 file.txt    # rw-r--r--
```

---

### 👤 2. `chown` – Change File Owner
```bash
chown newuser filename
chown newuser:newgroup filename
```
- Changes file owner and optionally the group.

---

### 👥 3. `chgrp` – Change Group Ownership
```bash
chgrp developers project.txt
```
- Only changes the group without changing the owner.

---

## b) Understanding User, Group, and Other Permissions

Each file has permissions for:
- **User (u)** – the owner
- **Group (g)** – users in the file's group
- **Others (o)** – everyone else

### Example Permission:
```
-rwxr-xr-- 1 user group 1024 Jul 28 12:00 file.sh
```

Breakdown:
- `-` = regular file
- `rwx` = user: read, write, execute
- `r-x` = group: read, execute
- `r--` = others: read only

---

## c) Implementing Basic Security Measures

### 🛡️ Steps:
1. **Restrict execute access for sensitive files:**
   ```bash
   chmod 600 secrets.txt    # Only owner can read/write
   ```

2. **Limit access to scripts:**
   ```bash
   chmod 700 deploy.sh      # Only owner can run
   ```

3. **Secure configuration files:**
   ```bash
   chown root:root /etc/secure.conf
   chmod 640 /etc/secure.conf
   ```

4. **Audit file ownership regularly:**
   ```bash
   ls -l /important/dir/
   ```

---

> Managing file permissions is essential for system security. Use these tools to prevent unauthorized access and maintain system integrity.
