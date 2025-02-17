### **SQL Sublanguages and Operations Test**  
🚀 *This test assesses your understanding of SQL sublanguages, commands, and constraints.*

---

### **Section 1: Multiple Choice Questions (MCQs)**  
**1. Which of the following SQL sublanguages is used for defining and modifying database schemas?**  
a) DDL  
b) DML  
c) DCL  
d) TCL  

**2. Which SQL sublanguage is used for retrieving data from a database?**  
a) DML  
b) DQL  
c) TCL  
d) DCL  

**3. Which of the following SQL commands is classified under DML (Data Manipulation Language)?**  
a) CREATE  
b) DELETE  
c) GRANT  
d) COMMIT  

**4. The **DROP** statement in SQL is used to:**  
a) Delete all rows from a table but keep the structure intact.  
b) Remove a table along with all its data permanently.  
c) Delete only specific rows from a table.  
d) Create a new table in the database.  

**5. What does the **TRUNCATE** command do?**  
a) Removes a table from the database permanently.  
b) Deletes all records from a table but retains the structure.  
c) Deletes only specific records from a table.  
d) Drops a column from a table.  

**6. Which SQL constraint ensures that a column’s values follow a certain condition?**  
a) UNIQUE  
b) CHECK  
c) DEFAULT  
d) FOREIGN KEY  

**7. In SQL, the **AUTO_INCREMENT** feature is typically used for:**  
a) Assigning unique values automatically to a primary key column.  
b) Updating multiple records in a table.  
c) Creating foreign key relationships.  
d) Applying referential integrity constraints.  

**8. The **CASCADE** option in foreign keys ensures that:**  
a) No changes are allowed to the referenced primary key.  
b) When a referenced record is updated or deleted, corresponding changes occur in related tables.  
c) The foreign key column allows NULL values.  
d) Data integrity constraints are ignored.  

---

### **Section 2: Fill in the Blanks**  
**9.** The SQL sublanguage used to grant and revoke permissions on a database is called ________.  

**10.** ________ ensures that a column automatically assigns a value if none is provided.  

**11.** The ________ clause in SQL is used to filter records retrieved in a `SELECT` query.  

**12.** The `UPDATE` statement modifies existing records in a table, and it is part of the ________ SQL sublanguage.  

**13.** The **INSERT** statement is used to ________ new records into a table.  

**14.** The `CHECK` constraint is used to ensure that values in a column meet a specified ________.  

**15.** The **CASCADE** option in foreign keys helps maintain ________ integrity when deleting or updating related records.  

---

### **Section 3: True or False**  
**16.** DCL (Data Control Language) includes commands like `GRANT` and `REVOKE` to manage user privileges. (**True/False**)  

**17.** The `TRUNCATE` statement removes only a specific set of records based on conditions in the `WHERE` clause. (**True/False**)  

**18.** The `DEFAULT` constraint ensures that if no value is provided for a column, a predefined value is assigned. (**True/False**)  

**19.** A table can have multiple columns with the `AUTO_INCREMENT` attribute. (**True/False**)  

**20.** The `CASCADE` option allows updates or deletions in a parent table to automatically affect child tables. (**True/False**)  

---

### **Section 4: Short Answer Questions**  
**21.** What is the purpose of the **DDL** sublanguage in SQL?  

**22.** Define **TCL (Transaction Control Language)** and provide an example of how it is used.  

**23.** Explain the difference between the **CREATE**, **DROP**, and **TRUNCATE** statements.  

**24.** What is the function of the **CHECK** constraint in SQL? Give an example.  

**25.** Describe a scenario where the **CASCADE** option in a foreign key constraint would be useful.  

---

### **Section 5: SQL Coding Questions**  
**26.** Write an SQL statement to create a `Products` table with the following columns:  
- `product_id` (Primary Key, auto-incrementing)  
- `name` (VARCHAR 100, cannot be NULL)  
- `price` (DECIMAL, must be greater than 0 using CHECK constraint)  
- `stock` (INTEGER, defaults to 0)  

**27.** Write an SQL query to insert a new product into the `Products` table with:  
- `name = 'Laptop'`  
- `price = 1200.50`  

**28.** Write an SQL query to update the `price` of a product to `999.99` where the `product_id` is `5`.  

**29.** Write an SQL query to delete all products that have `stock = 0`.  

**30.** Write an SQL query to retrieve all products that cost more than `$500`, sorted by price in descending order.  

---

### **Bonus Question**  
**31.** Explain the difference between the **INSERT INTO** and **UPDATE** statements. Provide an example for each.  

---

### **Final Thoughts**  
This test covers **SQL sublanguages, constraints, data modification, and transaction control**. Would you like **answer explanations** or **practice queries** for further study? 🚀