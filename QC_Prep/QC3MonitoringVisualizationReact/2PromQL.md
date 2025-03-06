### **PromQL (Prometheus Query Language) Overview**
**PromQL (Prometheus Query Language)** is a specialized query language used to **retrieve, filter, and aggregate time-series data** stored in Prometheus. It allows users to analyze metrics, compute rates, and generate alerts.

PromQL queries typically return:
1. **Instant Vectors** (Single value at a timestamp)
2. **Range Vectors** (Multiple values over a time range)
3. **Scalars** (Single numerical values)
4. **String Literals** (Used in some cases, but rare)

---

## **1️⃣ PromQL: Operators**
Prometheus supports various **operators** for filtering, aggregation, and calculations.

### **a) Arithmetic Operators**
Used for basic mathematical operations.
| Operator | Meaning |
|----------|---------|
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `%` | Modulus (remainder) |
| `^` | Exponentiation |

🔹 **Example**: Double the value of a metric:
```promql
cpu_usage_total * 2
```

### **b) Comparison Operators**
Used for filtering time-series data.
| Operator | Meaning |
|----------|---------|
| `==` | Equals |
| `!=` | Not equals |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal |
| `<=` | Less than or equal |

🔹 **Example**: Find CPU usage greater than 80%:
```promql
cpu_usage_percentage > 80
```

### **c) Logical Operators**
Used to compare sets of series.
| Operator | Meaning |
|----------|---------|
| `and` | Returns series that exist in both operands |
| `or` | Returns series from either operand |
| `unless` | Excludes elements from the right operand |

🔹 **Example**: Get only CPU metrics that are also present in memory usage:
```promql
cpu_usage_total and memory_usage_total
```

### **d) Aggregation Operators**
Used to group and aggregate data.
| Operator | Meaning |
|----------|---------|
| `sum` | Total sum across a group |
| `avg` | Average value |
| `max` | Maximum value |
| `min` | Minimum value |
| `count` | Number of time-series |
| `count_values` | Counts occurrences of values |
| `stddev` | Standard deviation |
| `stdvar` | Variance |

🔹 **Example**: Get the total request count per service:
```promql
sum(http_requests_total) by (service)
```

---

## **2️⃣ PromQL: Functions**
Prometheus provides **functions** to process and transform time-series data.

### **a) Time-Based Functions**
| Function | Description |
|----------|------------|
| `rate()` | Calculates per-second increase over a time window |
| `increase()` | Computes total increase over a range |
| `irate()` | Instantaneous per-second rate |

🔹 **Example**: Get the request rate per second over 5 minutes:
```promql
rate(http_requests_total[5m])
```

### **b) Statistical & Aggregation Functions**
| Function | Description |
|----------|------------|
| `quantile(q, vector)` | Computes q-th quantile (e.g., p95 latency) |
| `histogram_quantile(q, histogram)` | Extracts quantiles from histograms |
| `avg_over_time(range-vector)` | Average over a time window |
| `min_over_time(range-vector)` | Minimum over a time window |
| `max_over_time(range-vector)` | Maximum over a time window |

🔹 **Example**: Get the 95th percentile latency from a histogram:
```promql
histogram_quantile(0.95, rate(http_request_duration_seconds_bucket[5m]))
```

### **c) Label Functions**
| Function | Description |
|----------|------------|
| `label_replace()` | Modifies label values |
| `label_join()` | Joins multiple labels |

🔹 **Example**: Change the label name `service_name` to `app_name`:
```promql
label_replace(cpu_usage_total, "app_name", "$1", "service_name", "(.*)")
```

---

## **3️⃣ Alerting with Prometheus**
Prometheus provides **alerting** via the **Alertmanager** component. Alerts are defined in **rule files**.

### **a) Define an Alerting Rule**
Alerts are created in a **Prometheus rule file** (e.g., `alerts.yml`):
```yaml
groups:
  - name: instance_alerts
    rules:
      - alert: HighCPUUsage
        expr: avg(rate(cpu_usage_total[5m])) > 0.8
        for: 2m
        labels:
          severity: critical
        annotations:
          summary: "High CPU usage detected"
          description: "CPU usage exceeded 80% for more than 2 minutes"
```
- `expr`: Condition for triggering the alert.
- `for`: How long the condition must persist before triggering.
- `labels`: Metadata for categorization.
- `annotations`: Human-readable descriptions.

### **b) Reload Prometheus to Apply the Alert**
```bash
curl -X POST http://localhost:9090/-/reload
```

### **c) Configure Alertmanager**
Modify **`alertmanager.yml`**:
```yaml
route:
  receiver: "email"

receivers:
  - name: "email"
    email_configs:
      - to: "admin@example.com"
        from: "alert@example.com"
        smarthost: "smtp.example.com:587"
        auth_username: "alert@example.com"
        auth_identity: "alert@example.com"
        auth_password: "password"
```

### **d) Start Alertmanager**
```bash
./alertmanager --config.file=alertmanager.yml
```

---

## **4️⃣ PromQL Example Queries**
Here are some **real-world PromQL queries**:

### **a) Get the Total Number of HTTP Requests**
```promql
sum(http_requests_total)
```

### **b) Get CPU Usage by Instance**
```promql
sum(rate(cpu_usage_seconds_total[5m])) by (instance)
```

### **c) Get Memory Usage as a Percentage**
```promql
100 * (node_memory_Active_bytes / node_memory_MemTotal_bytes)
```

### **d) Find the 90th Percentile of Request Latency**
```promql
histogram_quantile(0.90, rate(http_request_duration_seconds_bucket[5m]))
```

### **e) Get the Number of Running Containers in Kubernetes**
```promql
count(kube_pod_status_phase{phase="Running"})
```

---

## **🔹 Summary**
1. **PromQL Operators** allow arithmetic, comparisons, logical operations, and aggregations.
2. **PromQL Functions** process time-series data (rate calculations, quantiles, label operations).
3. **Alerting in Prometheus** involves defining rules, configuring Alertmanager, and setting up notifications.
4. **PromQL is a powerful query language** for extracting and analyzing metrics from Prometheus.

Would you like a **hands-on tutorial** on setting up **Prometheus + Alertmanager + Grafana**? 🚀