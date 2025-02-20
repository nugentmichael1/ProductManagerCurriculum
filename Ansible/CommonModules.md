Ansible has a vast number of modules, but some are widely used across various infrastructure automation tasks. Here are the most **popular and common** Ansible modules:

### **1. System & Package Management**
| **Module**  | **Description** |
|-------------|---------------|
| `apt`  | Manages packages on Debian/Ubuntu (e.g., install, remove, update) |
| `yum`  | Manages packages on RHEL/CentOS |
| `dnf`  | Newer package manager for RHEL/CentOS (replaces `yum`) |
| `package`  | Universal package manager (works with `apt`, `yum`, `dnf`, etc.) |
| `service`  | Manages system services (`start`, `stop`, `restart`) |
| `systemd`  | Controls systemd-managed services |
| `user`  | Manages users and groups on Linux |
| `group`  | Creates, modifies, and removes groups |

### **2. File & Directory Management**
| **Module**  | **Description** |
|-------------|---------------|
| `file`  | Creates, deletes, or modifies file attributes |
| `copy`  | Copies files from control node to managed nodes |
| `fetch`  | Retrieves files from managed nodes to control node |
| `template`  | Renders and transfers Jinja2 templates |
| `lineinfile`  | Modifies or adds lines in a file |
| `blockinfile`  | Inserts or removes a block of text in a file |
| `stat`  | Checks if a file exists and retrieves its metadata |

### **3. Command Execution**
| **Module**  | **Description** |
|-------------|---------------|
| `command`  | Runs shell commands (no variable expansion) |
| `shell`  | Runs shell commands with shell features (supports variables, pipes, etc.) |
| `raw`  | Executes raw shell commands (useful when Python is missing on the target system) |
| `script`  | Runs a local script on a remote machine |

### **4. Networking & Connectivity**
| **Module**  | **Description** |
|-------------|---------------|
| `ping`  | Tests SSH connectivity between the control node and managed nodes |
| `wait_for`  | Waits for a specific condition (port open, file exists, etc.) |
| `uri`  | Interacts with web APIs (HTTP requests) |
| `get_url`  | Downloads files from a URL to managed nodes |

### **5. Cloud & Infrastructure Management**
| **Module**  | **Description** |
|-------------|---------------|
| `ec2_instance`  | Manages AWS EC2 instances |
| `gcp_compute_instance`  | Manages Google Cloud Compute instances |
| `azure_rm_virtualmachine`  | Manages Azure virtual machines |
| `docker_container`  | Manages Docker containers |
| `k8s`  | Interacts with Kubernetes |

### **6. Configuration Management**
| **Module**  | **Description** |
|-------------|---------------|
| `cron`  | Manages cron jobs |
| `sysctl`  | Modifies system kernel parameters |
| `hostname`  | Sets system hostname |
| `firewalld`  | Configures firewall rules on Firewalld |
| `iptables`  | Configures iptables firewall rules |

### **7. Database Management**
| **Module**  | **Description** |
|-------------|---------------|
| `mysql_db`  | Manages MySQL/MariaDB databases |
| `postgresql_db`  | Manages PostgreSQL databases |
| `mongodb_user`  | Manages MongoDB users |

### **8. Security & SSH Management**
| **Module**  | **Description** |
|-------------|---------------|
| `authorized_key`  | Manages SSH keys for users |
| `seboolean`  | Manages SELinux booleans |
| `firewalld`  | Manages firewall rules |

### **9. Version Control & Code Deployment**
| **Module**  | **Description** |
|-------------|---------------|
| `git`  | Clones repositories and manages Git operations |
| `unarchive`  | Extracts archive files (`tar`, `zip`, etc.) |

### **10. Ansible-Specific Modules**
| **Module**  | **Description** |
|-------------|---------------|
| `debug`  | Prints debugging messages |
| `fail`  | Fails a task intentionally with a custom message |
| `include_tasks`  | Includes a list of tasks from another file |
| `set_fact`  | Sets a variable for later use |

---

### **Most Commonly Used Modules in Ad Hoc Commands**
```sh
# Check connectivity
ansible all -m ping

# Install a package
ansible all -m apt -a "name=curl state=present" -b

# Restart a service
ansible all -m systemd -a "name=nginx state=restarted" -b

# Add a new user
ansible all -m user -a "name=deploy password={{ 'mypassword' | password_hash('sha512') }} state=present" -b

# Copy a file
ansible all -m copy -a "src=/home/user/index.html dest=/var/www/html/index.html" -b

# Run a shell command
ansible all -m shell -a "echo Hello from $HOSTNAME"
```

Would you like help writing a playbook using these modules? 🚀