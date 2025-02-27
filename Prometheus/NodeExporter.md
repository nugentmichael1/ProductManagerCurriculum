Yes! It’s **best practice** to set up **Node Exporter** as a `systemd` service, just like you did with Prometheus. This ensures that:

✅ **It runs in the background** without manual intervention.  
✅ **It restarts automatically** if it crashes or the system reboots.  
✅ **It integrates cleanly with system monitoring tools** like `systemctl status`.  

---

## **📌 Steps to Set Up Node Exporter as a `systemd` Service**

### **Step 1: Download and Install Node Exporter**
```sh
# Find the latest version
LATEST_VERSION=$(curl -s https://api.github.com/repos/prometheus/node_exporter/releases/latest | grep tag_name | cut -d '"' -f 4)

# Download the latest Linux binary
wget https://github.com/prometheus/node_exporter/releases/download/${LATEST_VERSION}/node_exporter-${LATEST_VERSION}.linux-amd64.tar.gz

# Extract the package
tar xvf node_exporter-${LATEST_VERSION}.linux-amd64.tar.gz

# Move binary to a system path
sudo mv node_exporter-${LATEST_VERSION}.linux-amd64/node_exporter /usr/local/bin/
```

---

### **Step 2: Create a Node Exporter User**
For security, run Node Exporter as a dedicated **non-root** user.
```sh
sudo useradd -rs /bin/false node_exporter
```

---

### **Step 3: Set Up the `systemd` Service**
1. **Create the service file**:
   ```sh
   sudo nano /etc/systemd/system/node_exporter.service
   ```

2. **Paste the following configuration**:
   ```ini
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
   ```

3. **Save and exit** (`CTRL+X`, then `Y`, then `ENTER`).

---

### **Step 4: Start and Enable the Service**
```sh
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
```

To **verify it’s running**:
```sh
sudo systemctl status node_exporter
```

---

### **Step 5: Open Firewall (If Needed)**
If your instance has **firewalld enabled**, open port **9100**:
```sh
sudo firewall-cmd --add-port=9100/tcp --permanent
sudo firewall-cmd --reload
```

If you're using **AWS Security Groups**, add an **inbound rule** for port `9100` (if needed).

---

### **Step 6: Verify Node Exporter is Running**
1. Open your web browser and go to:
   ```
   http://<your-ec2-ip>:9100/metrics
   ```
   You should see **raw metrics output**.

2. You can also check from the EC2 instance:
   ```sh
   curl http://localhost:9100/metrics
   ```

---

## **🎯 Next Steps: Add Node Exporter to Prometheus**
Now, tell **Prometheus** to scrape metrics from Node Exporter.

1. **Edit Prometheus config (`/etc/prometheus/prometheus.yml`)**:
   ```yaml
   scrape_configs:
     - job_name: 'node_exporter'
       static_configs:
         - targets: ['localhost:9100']
   ```

2. **Restart Prometheus**:
   ```sh
   sudo systemctl restart prometheus
   ```

---

## **✅ Final Thoughts**
- **Yes, setting up Node Exporter as a `systemd` service is the best approach!**
- It **runs in the background** and **restarts automatically**.
- Prometheus can now **scrape system metrics** from it.

Would you like help **visualizing the Node Exporter data in Grafana**? 🚀