# **Grafana Knowledge Test**  

This test evaluates your understanding of **Grafana concepts**, including **data integration, authentication, configuration, and visualization**.  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **Which of the following is NOT a supported Grafana data source?**  
   - a) Prometheus  
   - b) MySQL  
   - c) Kubernetes  
   - d) Elasticsearch  

2. **Which visualization type in Grafana is best for displaying time-series data?**  
   - a) Logs Panel  
   - b) Gauge  
   - c) Graph Panel  
   - d) Table  

3. **Where do you go in Grafana to add a new data source?**  
   - a) Dashboards > Create Dashboard  
   - b) Configuration > Data Sources  
   - c) Explore > Query Editor  
   - d) Settings > Authentication  

4. **Which query language is used when fetching data from Prometheus in Grafana?**  
   - a) SQL  
   - b) PromQL  
   - c) JSONPath  
   - d) REST API  

5. **Which of the following authentication methods does Grafana NOT support?**  
   - a) Basic Auth  
   - b) OAuth  
   - c) SSH Key Authentication  
   - d) LDAP  

---

## **Section 2: True or False**  

6. **Grafana stores time-series data internally and does not require an external data source.**  
7. **After adding a data source, you need to manually fetch data before visualizing it on a dashboard.**  
8. **Grafana allows anonymous access by enabling a setting in the `grafana.ini` file.**  
9. **PromQL queries can be used in Grafana to extract and visualize data from Prometheus.**  
10. **To apply configuration changes in Grafana, you must restart the Grafana server.**  

---

## **Section 3: Fill in the Blanks**  

11. **Grafana is primarily used for ______ and monitoring time-series data.**  
12. **To add a Prometheus data source, the URL should typically be set to ______.**  
13. **The default admin credentials for a fresh Grafana installation are username: ______ and password: ______.**  
14. **To enable GitHub OAuth authentication in Grafana, you must modify the ______ file.**  
15. **To restart Grafana after making configuration changes, use the command ______.**  

---

## **Section 4: Code Output & Configuration Questions**  

16. **What does this PromQL query return when used in a Grafana panel?**  
   ```promql
   sum(rate(http_requests_total[5m])) by (instance)
   ```
   - a) The total number of HTTP requests across all instances  
   - b) The rate of HTTP requests per instance over 5 minutes  
   - c) The average latency of HTTP requests  
   - d) A count of failed HTTP requests  

17. **What does the following SQL query return when used with a MySQL data source in Grafana?**  
   ```sql
   SELECT time, value FROM metrics_table WHERE $__timeFilter(time)
   ```
   - a) All metrics from the database  
   - b) Metrics filtered by the dashboard’s time range  
   - c) The total count of rows in `metrics_table`  
   - d) A real-time stream of metrics updates  

18. **What will happen if you set the following in `grafana.ini`?**  
   ```ini
   [server]
   http_port = 3001
   ```
   - a) Grafana will run on port **3001** instead of the default **3000**  
   - b) Grafana will switch to HTTPS mode  
   - c) Grafana will fail to start due to a port conflict  
   - d) The configuration will be ignored unless an admin role is assigned  

---

## **Section 5: Practical Configuration Questions**  

19. **Modify the following YAML configuration to connect Grafana to a PostgreSQL database named `metrics_db` running on `localhost:5432` with the user `grafana`.**  
   ```yaml
   data_sources:
     - name: MyDatabase
       type: postgres
       access: proxy
       url: localhost:5432
       database: ____
       user: ____
       secureJsonData:
         password: "my_secure_password"
   ```

20. **Write the command to restart Grafana on a Linux system.**  
   ```sh
   # Your command here
   ```

21. **Modify the following `grafana.ini` snippet to enable anonymous access with the default role set to `Viewer`.**  
   ```ini
   [auth.anonymous]
   enabled = ____
   org_role = ____
   ```

22. **Write the command to add a user named `developer` with `Editor` permissions in Grafana.**  

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 Grafana Expert!  
- **15-19 Correct** → 💡 Strong Understanding of Grafana  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review Grafana Basics  

---

Would you like **hands-on Grafana dashboard exercises** to test in a real environment? 🚀