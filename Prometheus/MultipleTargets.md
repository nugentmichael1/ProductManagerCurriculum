Yes, to add **Node Exporter** as a new target in **Prometheus**, you need to update the **`prometheus.yml`** configuration file and define **multiple scrape targets**.

---

## **📌 How to Add Node Exporter to Prometheus Targets**

### **Step 1: Open the Prometheus Configuration File**
On your Prometheus **controller node**, edit the configuration file:
```sh
sudo nano /etc/prometheus/prometheus.yml
```

### **Step 2: Modify the `scrape_configs` Section**
Your existing configuration probably has **Prometheus itself** as a target:
```yaml
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
```

Now, **add Node Exporter as another job**:
```yaml
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'node_exporter'
    static_configs:
      - targets: ['localhost:9100']
```
🔹 **Explanation:**
- The **`job_name: 'node_exporter'`** defines a new monitoring job.
- The **target `localhost:9100`** is the default port where Node Exporter runs.

---

### **Step 3: Restart Prometheus**
After saving your changes, restart Prometheus to apply them:
```sh
sudo systemctl restart prometheus
```
To confirm that Prometheus has **reloaded the new targets**, check the logs:
```sh
sudo journalctl -u prometheus --no-pager | tail -20
```

---

### **Step 4: Verify Node Exporter in Prometheus**
1. Open **Prometheus Web UI**:
   ```
   http://<your-ec2-public-ip>:9090
   ```
2. Navigate to **Status > Targets** (`http://<your-ec2-public-ip>:9090/targets`).
3. You should see:
   - `prometheus` → `UP`
   - `node_exporter` → `UP`

---

## **📌 Adding Multiple Remote Node Exporter Targets**
If you're monitoring **multiple servers**, just **add more targets**:
```yaml
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'node_exporter'
    static_configs:
      - targets: 
          - 'localhost:9100'   # Local Node Exporter
          - '192.168.1.100:9100'  # Remote Node Exporter 1
          - '192.168.1.101:9100'  # Remote Node Exporter 2
```
🔹 **Each Node Exporter instance runs on port `9100` by default**.

---

## **✅ Final Steps**
- **Check the Prometheus Targets UI** to confirm all nodes are listed.
- If any target is **DOWN**, check if the **firewall or security groups** are blocking port `9100`.
- You can now **visualize these metrics in Grafana**.

Would you like help setting up **Grafana dashboards** for system monitoring? 🚀