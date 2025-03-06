# **Grafana Dashboard Knowledge Test**  

This test evaluates your understanding of **Grafana dashboards**, including **best practices, visualization, dashboard management, and reporting**.  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **Which of the following is NOT a supported Grafana visualization type?**  
   - a) Graph  
   - b) Gauge  
   - c) Heatmap  
   - d) Pie Chart  

2. **What is the first step to creating a new dashboard in Grafana?**  
   - a) Click "Configuration" → "Data Sources"  
   - b) Click "+" (Create) → "Dashboard"  
   - c) Click "Settings" → "Permissions"  
   - d) Click "Export" → "Download JSON"  

3. **Which query format is used for Prometheus data sources in Grafana?**  
   - a) SQL  
   - b) PromQL  
   - c) JSON  
   - d) REST API  

4. **Which visualization type is best suited for showing logs in Grafana?**  
   - a) Gauge  
   - b) Logs Panel  
   - c) Table  
   - d) Heatmap  

5. **Which best practice should be followed when creating a Grafana dashboard?**  
   - a) Use a single panel for all system metrics  
   - b) Store all dashboards in one folder for simplicity  
   - c) Group related metrics into focused dashboards  
   - d) Set all panels to refresh manually to save resources  

---

## **Section 2: True or False**  

6. **Grafana dashboards store time-series data within the application.**  
7. **Grafana allows users to create variables that dynamically filter data in dashboards.**  
8. **Color coding in Grafana visualizations can help indicate system health at a glance.**  
9. **Annotations in Grafana can be used to mark key system events, such as deployments or failures.**  
10. **PDF and CSV reports can be generated automatically from Grafana dashboards.**  

---

## **Section 3: Fill in the Blanks**  

11. **To create a dashboard in Grafana, you must first select a ______ source.**  
12. **A common PromQL query to measure HTTP request rates is: ______.**  
13. **To organize dashboards efficiently, they should be grouped into ______.**  
14. **To schedule email reports in Grafana, navigate to ______ and select a dashboard.**  
15. **Role-Based Access Control (RBAC) in Grafana includes the roles ______, ______, and ______.**  

---

## **Section 4: Code Output & Configuration Questions**  

16. **What will be the result of this PromQL query in a Grafana panel?**  
   ```promql
   rate(http_requests_total[5m])
   ```
   - a) The total number of HTTP requests  
   - b) The rate of HTTP requests per second over the last 5 minutes  
   - c) The average response time of HTTP requests  
   - d) A list of failed requests  

17. **Which SQL query retrieves time-series metrics from a PostgreSQL data source in Grafana?**  
   ```sql
   SELECT time, value FROM metrics_table WHERE $__timeFilter(time)
   ```
   - a) Retrieves all metrics for the selected time range  
   - b) Computes the total sum of metrics in the table  
   - c) Displays only the latest value in the table  
   - d) Filters only error logs  

18. **What will happen if you execute this JSON request to Grafana's annotation API?**  
   ```json
   {
     "time": 1678995600000,
     "text": "Database Migration Deployed",
     "tags": ["deployment"]
   }
   ```
   - a) Creates a new Grafana panel  
   - b) Deletes old annotations from the database  
   - c) Marks a deployment event on the dashboard timeline  
   - d) Refreshes all visualizations in Grafana  

---

## **Section 5: Practical Configuration Questions**  

19. **Modify the following YAML structure to create a variable that filters dashboard metrics by instance.**  
   ```yaml
   variables:
     - name: instance
       query: ______
   ```

20. **Write the command to export a Grafana dashboard as a JSON file.**  
   ```sh
   # Your command here
   ```

21. **Modify the following `grafana.ini` configuration to enable scheduled PDF reports.**  
   ```ini
   [reports]
   enabled = ____
   default_schedule = ____
   ```

22. **Write the steps to add a new user with `Editor` permissions in Grafana.**  

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 Grafana Dashboard Expert!  
- **15-19 Correct** → 💡 Strong Understanding of Grafana Dashboards  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review Grafana Basics  

---

Would you like **hands-on Grafana exercises** to set up dashboards and alerts? 🚀