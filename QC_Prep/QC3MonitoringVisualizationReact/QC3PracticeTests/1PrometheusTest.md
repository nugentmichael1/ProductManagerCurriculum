Here’s a **Prometheus & Observability Test** based on the provided information. The test includes **multiple-choice, true/false, fill-in-the-blank, and practical questions** to assess understanding.

---

# **Observability & Prometheus Knowledge Test**  

## **Section 1: Multiple Choice** (Choose the best answer)

1. **Which of the following best describes logs?**  
   - a) Time-series numerical data  
   - b) Event-based records of system activity  
   - c) Request traces across microservices  
   - d) A visualization tool for monitoring  

2. **Which tool is commonly used for storing and visualizing logs?**  
   - a) Prometheus  
   - b) Jaeger  
   - c) ELK Stack  
   - d) OpenTelemetry  

3. **What is the primary function of metrics in observability?**  
   - a) Debugging system failures  
   - b) Measuring system state over time  
   - c) Tracking the flow of requests in microservices  
   - d) None of the above  

4. **Which of the following best describes traces?**  
   - a) Data that measures CPU usage  
   - b) A log of system events  
   - c) A record of request flow through microservices  
   - d) A database for storing key-value metrics  

5. **Which tool is NOT used for tracing in microservices?**  
   - a) OpenTelemetry  
   - b) Zipkin  
   - c) Loki  
   - d) Jaeger  

---

## **Section 2: True or False**  

6. **Prometheus uses a push-based model to collect data.**  
7. **Grafana can query and visualize data from Prometheus, MySQL, and Elasticsearch.**  
8. **A counter metric in Prometheus can increase and decrease over time.**  
9. **Histograms in Prometheus help measure distributions of values like API response times.**  
10. **Traces provide metadata for time-series metrics in Prometheus.**  

---

## **Section 3: Fill in the Blanks**  

11. **Logs, metrics, and ______ form the three pillars of observability.**  
12. **Prometheus stores data in a ______ database.**  
13. **Grafana is primarily used for ______.**  
14. **The ______ configuration file is used to define scrape targets in Prometheus.**  
15. **A gauge metric in Prometheus can go ______ and ______.**  

---

## **Section 4: Code Output Questions**  
_What is the expected result of the following Prometheus metric queries?_

16. **What does the following metric represent?**
   ```promql
   http_requests_total{method="POST"}
   ```
   - a) The number of successful requests  
   - b) The number of POST requests handled by the system  
   - c) The total memory usage of the application  
   - d) The average response time of an API  

17. **Which metric type is best suited for tracking API request durations?**
   ```promql
   http_request_duration_seconds_bucket{le="0.1"}
   ```
   - a) Counter  
   - b) Gauge  
   - c) Histogram  
   - d) Summary  

18. **What will happen when you execute this Prometheus query?**
   ```promql
   sum(rate(cpu_usage[5m]))
   ```
   - a) Returns the current CPU usage  
   - b) Computes the total CPU usage over 5 minutes  
   - c) Displays the error logs from the CPU monitoring system  
   - d) Triggers an alert in Grafana  

---

## **Section 5: Practical Questions**  

19. **Write a PromQL query to count the total number of HTTP requests for a specific instance.**  
   ```promql
   # Your query here
   ```

20. **Modify the following Prometheus YAML configuration to scrape metrics from an additional target (`server2:9100`).**
   ```yaml
   scrape_configs:
     - job_name: "prometheus"
       static_configs:
         - targets: ["localhost:9090"]
   ```
   ✅ **Modify the YAML to include `server2:9100` as a target.**  

21. **Write a Prometheus command to start Prometheus with a custom configuration file named `custom-config.yml`.**
   ```sh
   # Your command here
   ```

22. **Explain the difference between a `Counter` and a `Gauge` metric in Prometheus, and give an example of when to use each.**  

---

## **Scoring Guide**
- **20-22 Correct** → 🎉 Observability Expert!  
- **15-19 Correct** → 💡 Strong Understanding of Prometheus & Monitoring  
- **10-14 Correct** → 🛠 Needs Some More Practice  
- **0-9 Correct** → 📖 Time to Review the Basics  

---

Would you like **hands-on exercises** for setting up Prometheus and Grafana? 🚀