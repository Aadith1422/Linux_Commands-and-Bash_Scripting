
# Commonly Used Linux Commands

## a) List of Essential Linux Commands

| Command | Description |
|---------|-------------|
| `cp`    | Copy files and directories. |
| `mv`    | Move or rename files and directories. |
| `rm`    | Remove files or directories. |
| `touch` | Create an empty file or update timestamp. |
| `grep`  | Search for patterns within files. |
| `find`  | Search for files and directories in a directory hierarchy. |
| `chmod` | Change file permissions. |
| `chown` | Change file ownership. |
| `ps`    | Display running processes. |
| `kill`  | Terminate processes using PID. |
| `tar`   | Archive multiple files into a tarball. |
| `zip`   | Compress files into a zip archive. |
| `unzip` | Extract files from a zip archive. |

---

## b) Practice Examples with Options and Arguments

### 1. `cp`
```bash
cp source.txt destination.txt
cp -r folder1/ folder2/   # Copy directory recursively
```

### 2. `mv`
```bash
mv oldname.txt newname.txt
mv file.txt /path/to/destination/
```

### 3. `rm`
```bash
rm file.txt
rm -r folder/   # Remove directory recursively
```

### 4. `touch`
```bash
touch newfile.txt
```

### 5. `grep`
```bash
grep "hello" file.txt
grep -r "error" /var/log/   # Recursive search in logs
```

### 6. `find`
```bash
find . -name "*.txt"
find /home -type f -size +10M
```

### 7. `chmod`
```bash
chmod 755 script.sh    # rwxr-xr-x
chmod +x script.sh     # Add execute permission
```

### 8. `chown`
```bash
chown user:group file.txt
```

### 9. `ps`
```bash
ps aux        # View all running processes
ps -ef        # Detailed format
```

### 10. `kill`
```bash
kill 1234            # Kill process by PID
kill -9 1234         # Force kill
```

### 11. `tar`
```bash
tar -cvf archive.tar folder/
tar -xvf archive.tar
```

### 12. `zip` and `unzip`
```bash
zip archive.zip file1.txt file2.txt
unzip archive.zip
```

---

> These commands are foundational tools in Linux. Practice using them in a test directory to build confidence.
