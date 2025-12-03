# Linux Commands Cheat Sheet

A beginner-friendly collection of Linux commands for file management, system tasks, scripting, and networking. Perfect for reference and practice.

---

## 1️⃣ File and Directory Management

| Command | Description |
|---------|-------------|
| `ls` | List files and directories |
| `ls -l` | List with details (permissions, owner, size) |
| `cd foldername` | Change directory |
| `pwd` | Print current working directory |
| `mkdir foldername` | Create a new directory |
| `rmdir foldername` | Remove an empty directory |
| `rm filename` | Delete a file |
| `rm -r foldername` | Delete a folder recursively |
| `cp source dest` | Copy file or folder |
| `mv source dest` | Move or rename file/folder |

---

## 2️⃣ Viewing and Editing Files

| Command | Description |
|---------|-------------|
| `cat filename` | View file contents |
| `less filename` | View file page by page |
| `head filename` | Show first 10 lines of a file |
| `tail filename` | Show last 10 lines of a file |
| `nano filename` | Edit file in Nano editor |
| `vim filename` | Edit file in Vim editor |

---

## 3️⃣ Permissions

| Command | Description |
|---------|-------------|
| `chmod +x filename` | Make file executable |
| `chmod 755 filename` | Owner full, others read/execute |
| `chmod 644 filename` | Owner read/write, others read only |
| `chown user:group filename` | Change file owner and group |
| `ls -l` | View file permissions |

---

## 4️⃣ System Information

| Command | Description |
|---------|-------------|
| `df -h` | Disk usage per filesystem |
| `du -h filename/folder` | Size of a file or folder |
| `free -h` | RAM usage |
| `uptime` | System uptime and load |
| `whoami` | Current logged-in user |
| `date` | Current date and time |
| `uname -a` | System information |

---

## 5️⃣ Process Management

| Command | Description |
|---------|-------------|
| `ps` | List running processes |
| `top` | Interactive process viewer |
| `kill PID` | Kill process by ID |
| `pkill processname` | Kill process by name |
| `jobs` | List background jobs |
| `fg %1` | Bring job 1 to foreground |

---

## 6️⃣ Searching / Filtering

| Command | Description |
|---------|-------------|
| `grep "text" filename` | Search for text in a file |
| `find . -name "*.sh"` | Find files by name |
| `locate filename` | Quickly locate a file (needs `updatedb`) |
| `wc -l filename` | Count lines in a file |
| `sort filename` | Sort lines in a file |
| `uniq filename` | Remove duplicate lines (use with sort) |

---

## 7️⃣ Networking Basics

| Command | Description |
|---------|-------------|
| `ping google.com` | Test internet connectivity |
| `ifconfig` or `ip a` | Show network interfaces |
| `wget URL` | Download file from internet |
| `curl URL` | Fetch webpage/data from URL |

---

## 8️⃣ Bash Scripting Basics

```bash
#!/bin/bash
# Print Hello World
echo "Hello World"

# Take input
read var

# Conditional
if [ $var -eq 1 ]; then
    echo "You entered 1"
fi

# For loop
for i in 1 2 3; do
    echo $i
done

# While loop
count=1
while [ $count -le 3 ]; do
    echo $count
    count=$((count + 1))
done
