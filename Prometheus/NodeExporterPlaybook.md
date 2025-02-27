Here is an **Ansible playbook** that will:
✅ Download and install **Node Exporter** on slave machines.  
✅ Create a **node_exporter user** for security.  
✅ Set up **systemd service** to keep Node Exporter running.  
✅ Start and **enable the service** on boot.

---

### **📌 Step 1: Create the Ansible Playbook**
Create a file called **`install_node_exporter.yml`**:
```yaml
- name: Install Node Exporter
  hosts: slaves
  become: true
  tasks:

    - name: Create node_exporter user
      user:
        name: node_exporter
        shell: /bin/false
        system: yes
        create_home: no

    - name: Download Node Exporter
      get_url:
        url: "https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-{{ node_exporter_version }}.linux-amd64.tar.gz"
        dest: "/tmp/node_exporter.tar.gz"

    - name: Extract Node Exporter
      unarchive:
        src: "/tmp/node_exporter.tar.gz"
        dest: "/tmp/"
        remote_src: yes

    - name: Move Node Exporter binary to /usr/local/bin
      copy:
        src: "/tmp/node_exporter-{{ node_exporter_version }}.linux-amd64/node_exporter"
        dest: "/usr/local/bin/node_exporter"
        owner: node_exporter
        group: node_exporter
        mode: "0755"
        remote_src: yes

    - name: Create systemd service file
      copy:
        dest: "/etc/systemd/system/node_exporter.service"
        content: |
          [Unit]
          Description=Prometheus Node Exporter
          Wants=network-online.target
          After=network-online.target

          [Service]
          User=node_exporter
          Group=node_exporter
          Type=simple
          ExecStart=/usr/local/bin/node_exporter --web.listen-address=:9100

          [Install]
          WantedBy=multi-user.target

    - name: Reload systemd daemon
      systemd:
        daemon_reload: yes

    - name: Enable and start Node Exporter service
      systemd:
        name: node_exporter
        state: started
        enabled: yes
```

---

### **📌 Step 2: Define Variables in `ansible.cfg`**
Since Node Exporter is regularly updated, define the **latest version** dynamically.

Edit or create **`group_vars/all.yml`**:
```yaml
node_exporter_version: "1.7.0"
```
🔹 Replace `"1.7.0"` with the latest version from [GitHub releases](https://github.com/prometheus/node_exporter/releases/latest).

---

### **📌 Step 3: Define Inventory (`hosts` File)**
Create or update your **Ansible inventory** (`/etc/ansible/hosts`):
```ini
[slaves]
slave1 ansible_host=192.168.1.101
slave2 ansible_host=192.168.1.102

[slaves:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/my-key.pem
```
🔹 Replace **`192.168.1.101`** with the actual IPs of your slave machines.

---

### **📌 Step 4: Run the Playbook**
Run the Ansible playbook:
```sh
ansible-playbook -i /etc/ansible/hosts install_node_exporter.yml
```

---

### **📌 Step 5: Verify Node Exporter**
On each **slave node**, run:
```sh
systemctl status node_exporter
```
You should see:
```
● node_exporter.service - Prometheus Node Exporter
   Loaded: loaded (/etc/systemd/system/node_exporter.service; enabled; vendor preset: disabled)
   Active: active (running)
```

Or check with **Prometheus Web UI**:
- Open: `http://<controller-node-ip>:9090/targets`
- You should see `node_exporter` listed as `UP`.

---

### **✅ Final Thoughts**
- This **automates Node Exporter installation** across all slave machines.
- Ensures **Node Exporter runs as a systemd service**.
- Works **for multiple servers** with just one command.

Would you like help adding **firewall rules** or **configuring Prometheus to auto-discover new slave nodes**? 🚀