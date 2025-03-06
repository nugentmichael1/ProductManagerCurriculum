# **PromQL & Prometheus Knowledge Test**  

This test includes **multiple-choice, true/false, fill-in-the-blank, and coding questions** to evaluate understanding of PromQL and Prometheus alerting.  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **Which of the following is NOT a PromQL data type?**  
   - a) Instant Vector  
   - b) Range Vector  
   - c) Scalar  
   - d) Dictionary  

2. **Which PromQL operator is used to exclude a subset of time-series data?**  
   - a) `and`  
   - b) `unless`  
   - c) `or`  
   - d) `count`  

3. **Which function calculates the rate of change per second over a time window?**  
   - a) `increase()`  
   - b) `rate()`  
   - c) `irate()`  
   - d) `sum()`  

4. **Which of the following is an example of a Counter metric in Prometheus?**  
   - a) `memory_usage_bytes{instance="server1"}`  
   - b) `cpu_usage_percentage > 80`  
   - c) `http_requests_total{method="GET"}`  
   - d) `histogram_quantile(0.95, http_request_duration_seconds)`  

5. **What is the purpose of the `label_replace()` function in PromQL?**  
   - a) To aggregate values over a time range  
   - b) To modify label values in time-series data  
   - c) To extract quantiles from histograms  
   - d) To calculate the per-second rate of a metric  

---

## **Section 2: True or False**  

6. **PromQL supports arithmetic, comparison, and logical operators.**  
7. **The `histogram_quantile()` function is used to compute percentiles from histogram buckets.**  
8. **The `rate()` function can be used to calculate CPU usage over time.**  
9. **Alerts in Prometheus are configured directly within PromQL queries.**  
10. **The `sum()` operator is used to compute the total of a time-series metric across labels.**  

---

## **Section 3: Fill in the Blanks**  

11. **PromQL is the query language used to retrieve and analyze ______ data stored in Prometheus.**  
12. **A ______ vector in PromQL represents a series of data points over a time range.**  
13. **The function used to calculate an instantaneous per-second rate is ______.**  
14. **To modify label values in PromQL, we use the function ______.**  
15. **In an alert rule configuration, the `expr` field defines the ______ for triggering the alert.**  

---

## **Section 4: Code Output Questions**  

16. **What will be the result of the following PromQL query?**  
   ```promql
   cpu_usage_percentage > 80
   ```
   - a) Returns all CPU metrics  
   - b) Filters metrics where CPU usage exceeds 80%  
   - c) Computes the total CPU usage  
   - d) Calculates the 80th percentile of CPU usage  

17. **What happens when this query is executed?**  
   ```promql
   sum(http_requests_total) by (service)
   ```
   - a) Counts the total number of HTTP requests per service  
   - b) Filters only successful HTTP requests  
   - c) Computes the average request rate  
   - d) Returns an error  

18. **What does the following PromQL query do?**  
   ```promql
   histogram_quantile(0.95, rate(http_request_duration_seconds_bucket[5m]))
   ```
   - a) Returns the total request count  
   - b) Computes the 95th percentile of request latency  
   - c) Calculates the maximum response time  
   - d) Sums up all request durations  

---

## **Section 5: Practical Questions**  

19. **Write a PromQL query to get the total memory usage across all instances.**  
   ```promql
   # Your query here
   ```

20. **Modify the following alert rule to trigger when CPU usage exceeds 90% for more than 1 minute.**  
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
   ✅ **Modify the YAML to reflect the new condition.**  

21. **Write a PromQL query that calculates the average request rate per second over the last 10 minutes, grouped by service.**  
   ```promql
   # Your query here
   ```

22. **Describe the difference between `rate()` and `increase()` functions in PromQL. Provide an example where each would be used.**  

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 PromQL & Monitoring Expert!  
- **15-19 Correct** → 💡 Strong Understanding of PromQL & Prometheus  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review Observability Basics  

---

Would you like **hands-on PromQL queries** to test in a real Prometheus setup? 🚀