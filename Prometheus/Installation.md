To install **Prometheus** on your **Amazon Linux 2023 (AL2023) AMI** (controller node), follow these steps:

---

## **Step 1: Update System and Install Dependencies**
Run:
```sh
sudo dnf update -y
sudo dnf install -y wget tar gzip
```
🔹 This ensures your package manager and necessary utilities are installed.

---

## **Step 2: Create a Prometheus User**
```sh
sudo useradd --no-create-home --shell /bin/false prometheus
```
🔹 This creates a **non-login user** to run Prometheus securely.

---

## **Step 3: Download and Extract Prometheus**
1. Find the latest version of Prometheus:
   ```sh
   LATEST_VERSION=$(curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest | grep tag_name | cut -d '"' -f 4 | sed 's/v//')
   ```
2. Download Prometheus:
   ```sh
   wget https://github.com/prometheus/prometheus/releases/download/v${LATEST_VERSION}/prometheus-${LATEST_VERSION}.linux-amd64.tar.gz
   ```
3. Extract the files:
   ```sh
   tar xvf prometheus-${LATEST_VERSION}.linux-amd64.tar.gz
   cd prometheus-${LATEST_VERSION}.linux-amd64
   ```

---

## **Step 4: Move Prometheus Binaries**
```sh
sudo mv prometheus /usr/local/bin/
sudo mv promtool /usr/local/bin/
sudo chown prometheus:prometheus /usr/local/bin/prometheus /usr/local/bin/promtool
```
🔹 Moves the binaries and ensures correct ownership.

---

## **Step 5: Set Up Prometheus Directories**
```sh
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /etc/prometheus /var/lib/prometheus
```

---

## **Step 6: Configure Prometheus**
1. **Create the Prometheus configuration file**:
   ```sh
   sudo nano /etc/prometheus/prometheus.yml
   ```
2. **Paste the following configuration**:
   ```yaml
   global:
     scrape_interval: 15s

   scrape_configs:
     - job_name: 'prometheus'
       static_configs:
         - targets: ['localhost:9090']
   ```
3. **Save and exit** (`CTRL+X`, then `Y`, then `ENTER`).

---

## **Step 7: Create a Systemd Service for Prometheus**
1. **Create the service file**:
   ```sh
   sudo nano /etc/systemd/system/prometheus.service
   ```
2. **Paste the following configuration**:
   ```ini
   [Unit]
   Description=Prometheus
   Wants=network-online.target
   After=network-online.target

   [Service]
   User=prometheus
   Group=prometheus
   Type=simple
   ExecStart=/usr/local/bin/prometheus \
     --config.file=/etc/prometheus/prometheus.yml \
     --storage.tsdb.path=/var/lib/prometheus \
     --web.listen-address="0.0.0.0:9090" \
     --web.enable-lifecycle

   [Install]
   WantedBy=multi-user.target
   ```
3. **Save and exit** (`CTRL+X`, then `Y`, then `ENTER`).

---

## **Step 8: Start and Enable Prometheus**
1. Reload systemd:
   ```sh
   sudo systemctl daemon-reload
   ```
2. Start Prometheus:
   ```sh
   sudo systemctl start prometheus
   ```
3. Enable on boot:
   ```sh
   sudo systemctl enable prometheus
   ```
4. **Check status**:
   ```sh
   sudo systemctl status prometheus
   ```

---

## **Step 9: Open Firewall for Prometheus**
If your instance has **firewalld enabled**, open port **9090**:
```sh
sudo firewall-cmd --add-port=9090/tcp --permanent
sudo firewall-cmd --reload
```
If using **AWS Security Groups**, ensure **port 9090** is open.

---

## **Step 10: Access Prometheus UI**
- Open your browser and go to:
  ```
  http://<EC2-Public-IP>:9090
  ```
- You should see the **Prometheus Web UI**.

---

## **Final Notes**
✅ **Prometheus is now installed and running on your Amazon Linux 2023 AMI.**  
✅ You can add **Node Exporter** to monitor system metrics.  
✅ Would you like to configure **Grafana** for visualization? 🚀