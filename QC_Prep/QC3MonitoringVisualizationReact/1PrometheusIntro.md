### **Logs, Metrics, and Traces**  
These three concepts form the pillars of **observability** in software monitoring.

1. **Logs**  
   - **Definition**: Logs are **event-based records** that capture discrete activities happening in an application.  
   - **Use Case**: Debugging errors, understanding failures, tracking system events.  
   - **Example**:
     ```
     [2024-03-06 14:32:10] ERROR: Database connection failed.
     ```
   - **Tools**: ELK Stack (Elasticsearch, Logstash, Kibana), Loki, Fluentd.

2. **Metrics**  
   - **Definition**: Metrics are **numeric time-series data** representing system state over time.  
   - **Use Case**: Monitoring CPU usage, memory consumption, API response times.  
   - **Example**:
     ```
     cpu_usage{host="server1"} 0.85
     ```
   - **Tools**: Prometheus, Datadog, CloudWatch.

3. **Traces**  
   - **Definition**: Traces capture **request flows across distributed systems**, tracking how a request moves through different microservices.  
   - **Use Case**: Debugging performance bottlenecks, root cause analysis in microservices.  
   - **Example**: A trace showing an API request flowing through **Frontend → API Gateway → Auth Service → Database**.  
   - **Tools**: OpenTelemetry, Jaeger, Zipkin.

---
## **Prometheus and Grafana Overview**
### **Prometheus**
- **Definition**: Prometheus is an **open-source monitoring and alerting toolkit** that scrapes and stores time-series metrics.
- **Key Features**:
  - Pull-based model (scrapes data from targets).
  - Stores data using a time-series database.
  - Supports alerting rules.
  - Querying with **PromQL** (Prometheus Query Language).

### **Grafana**
- **Definition**: Grafana is an **open-source visualization tool** that integrates with Prometheus and other data sources.
- **Key Features**:
  - Dashboards for time-series data visualization.
  - Custom alerts and notifications.
  - Supports multiple backends (Prometheus, MySQL, Elasticsearch, etc.).

### **How They Work Together**
1. Prometheus **scrapes and stores metrics** from monitored applications.
2. Grafana **queries Prometheus** and displays metrics in dashboards.

---

## **Prometheus Install**
### **1. Install Prometheus on Linux**
```bash
wget https://github.com/prometheus/prometheus/releases/latest/download/prometheus-linux-amd64.tar.gz
tar xvf prometheus-linux-amd64.tar.gz
cd prometheus-*
```

### **2. Configure Prometheus**
Edit the `prometheus.yml` file:
```yaml
global:
  scrape_interval: 15s  # How often to scrape targets

scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["localhost:9090"]
```

### **3. Run Prometheus**
```bash
./prometheus --config.file=prometheus.yml
```
- Access the Prometheus UI at **http://localhost:9090**.

---

## **Prometheus Data Model**
- **Time-Series Database (TSDB)** stores data in key-value pairs.
- **Metric Format**:
  ```
  metric_name{label1="value1", label2="value2"} timestamp value
  ```
  Example:
  ```
  http_requests_total{method="GET", status="200"} 1709838240 1023
  ```
- **Labels** (key-value pairs) provide metadata to metrics.
- **Timestamps** ensure data is stored in chronological order.

---

## **Prometheus Metric Types**
Prometheus supports **four main metric types**:

1. **Counter**  
   - **Definition**: A **monotonically increasing** value (e.g., total requests).  
   - **Example**:
     ```promql
     http_requests_total{method="GET"}
     ```
   - **Use Case**: Counting the number of errors, requests, or completed tasks.

2. **Gauge**  
   - **Definition**: A value that **can go up or down** (e.g., memory usage, temperature).  
   - **Example**:
     ```promql
     memory_usage_bytes{instance="server1"}
     ```
   - **Use Case**: Tracking CPU usage, queue size, or temperature.

3. **Histogram**  
   - **Definition**: Measures **distributions** of values, such as request durations.  
   - **Example**:
     ```promql
     http_request_duration_seconds_bucket{le="0.1"}
     ```
   - **Use Case**: Measuring API response times.

4. **Summary**  
   - **Definition**: Similar to a histogram but includes **quantiles** like p50, p90, p99.  
   - **Example**:
     ```promql
     http_request_duration_seconds{quantile="0.95"}
     ```
   - **Use Case**: Tracking request latency percentiles.

---

## **Summary**
- **Logs** capture events, **metrics** track system health, and **traces** map request flows.
- **Prometheus** collects and stores metrics, **Grafana** visualizes them.
- Prometheus installation requires **configuring targets in `prometheus.yml`**.
- The **Prometheus data model** uses metric names, labels, timestamps, and values.
- Prometheus provides **Counter, Gauge, Histogram, and Summary** metric types.

Would you like an example of setting up alerts with Prometheus? 🚀