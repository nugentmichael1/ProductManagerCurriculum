### **SQL Joins, Transactions, and Aggregate Functions Test**  
🚀 *This test assesses your knowledge of SQL joins, aggregate functions, transactions, and ACID properties.*

---

### **Section 1: Multiple Choice Questions (MCQs)**  
**1. What does an SQL **JOIN** do?**  
a) Creates a new table  
b) Combines rows from two or more tables based on a related column  
c) Deletes duplicate records  
d) Converts a table into a view  

**2. Which of the following is NOT an SQL aggregate function?**  
a) SUM()  
b) AVG()  
c) COUNT()  
d) GROUP()  

**3. The **HAVING** clause is used in SQL to:**  
a) Filter results before grouping  
b) Filter results after grouping  
c) Apply constraints to table columns  
d) Sort query results  

**4. Which SQL **JOIN** returns only matching rows from both tables?**  
a) INNER JOIN  
b) LEFT JOIN  
c) RIGHT JOIN  
d) FULL OUTER JOIN  

**5. What is the purpose of an SQL alias (`AS` keyword)?**  
a) To permanently rename a column  
b) To temporarily rename a column or table for readability  
c) To delete a column from a query  
d) To create an index  

**6. Which **JOIN** creates a **Cartesian product** of two tables?**  
a) INNER JOIN  
b) CROSS JOIN  
c) LEFT JOIN  
d) RIGHT JOIN  

**7. What is the key difference between **Equi Join** and **Theta Join**?**  
a) Equi Join uses only the `=` operator, whereas Theta Join uses any comparison operator (`>`, `<`, `!=`, etc.)  
b) Theta Join is a type of INNER JOIN, while Equi Join is a type of OUTER JOIN  
c) Equi Join always returns more rows than Theta Join  
d) Theta Join is only used in PostgreSQL  

**8. What is the purpose of a **transaction** in SQL?**  
a) To manage user roles and permissions  
b) To execute multiple SQL statements as a single unit of work  
c) To create database views  
d) To delete multiple tables at once  

**9. Which of the following is NOT a property of ACID transactions?**  
a) Atomicity  
b) Consistency  
c) Interactivity  
d) Durability  

**10. If an SQL transaction is interrupted before completion, which command should be used to cancel changes?**  
a) COMMIT  
b) SAVEPOINT  
c) ROLLBACK  
d) TRUNCATE  

---

### **Section 2: Fill in the Blanks**  
**11.** The **SUM()**, **AVG()**, and **COUNT()** functions are examples of SQL ________ functions.  

**12.** The **GROUP BY** clause is used to group rows that have the same values in a specified column and is often used with ________ functions.  

**13.** The **HAVING** clause is similar to the **WHERE** clause, but it is specifically used with ________ functions.  

**14.** The `INNER JOIN` only returns rows where there is a ________ in both tables.  

**15.** A **LEFT JOIN** returns all rows from the ________ table and only matching rows from the right table.  

**16.** A **CROSS JOIN** creates a ________ product of the two tables, combining every row from one table with every row from another.  

**17.** ACID stands for **Atomicity, Consistency, Isolation, and ________**.  

**18.** The SQL command `ROLLBACK` is used to undo changes made during a ________.  

---

### **Section 3: True or False**  
**19.** An alias (`AS`) can be used to rename columns but not tables. (**True/False**)  

**20.** A CROSS JOIN is functionally identical to an INNER JOIN. (**True/False**)  

**21.** An OUTER JOIN always returns more rows than an INNER JOIN. (**True/False**)  

**22.** The **COMMIT** statement is used to save all changes made in the current transaction. (**True/False**)  

**23.** The ACID properties ensure that transactions in a database system are **reversible**. (**True/False**)  

---

### **Section 4: Short Answer Questions**  
**24.** What is the main difference between the `WHERE` and `HAVING` clauses in SQL?  

**25.** Explain the difference between **INNER JOIN** and **FULL OUTER JOIN**.  

**26.** What is the role of a **CROSS JOIN**, and when would it be useful?  

**27.** Define **ACID properties** in SQL and explain why they are important.  

**28.** Give an example of a **Theta Join** and explain how it differs from an **Equi Join**.  

---

### **Section 5: SQL Coding Questions**  
**29.** Write an SQL query to retrieve the total number of employees in each department using `COUNT()` and `GROUP BY`.  

**30.** Write an SQL query to retrieve the maximum salary from an `Employees` table.  

**31.** Write an SQL query to list customers who have placed **at least 3 orders**, using `HAVING`.  

**32.** Write an SQL query to join `Orders` and `Customers` tables using an INNER JOIN and display `customer_name` and `order_date`.  

**33.** Write an SQL query to find all employees whose salary is greater than the department's average salary (using a subquery).  

---

### **Bonus Question**  
**34.** Explain the difference between `SAVEPOINT` and `ROLLBACK` in SQL transactions.  

---

### **Final Thoughts**  
This test covers **SQL joins, aggregate functions, transactions, and ACID compliance**. Would you like **detailed explanations for the answers** or **practice exercises** on any specific topic? 🚀