### **SQL Fundamentals Test**  
🚀 *This test assesses your understanding of key SQL concepts, database structures, and relational integrity.*

---

### **Section 1: Multiple Choice Questions (MCQs)**
**1. What is SQL primarily used for?**  
a) Designing user interfaces  
b) Managing and querying relational databases  
c) Writing operating systems  
d) Creating network protocols  

**2. Which of the following best defines a database?**  
a) A structured collection of data stored electronically  
b) A programming language  
c) A hardware device for storing files  
d) A network protocol  

**3. What does RDBMS stand for?**  
a) Relational Database Management System  
b) Random Data Management System  
c) Redundant Database Management System  
d) Reactive Database Management Software  

**4. Which SQL constraint ensures that a column contains only unique values, but allows NULLs?**  
a) PRIMARY KEY  
b) FOREIGN KEY  
c) UNIQUE  
d) CHECK  

**5. In a relational database, what is the purpose of a foreign key?**  
a) To uniquely identify each row in a table  
b) To link records between two tables  
c) To ensure automatic numbering of records  
d) To store encrypted data  

**6. Which of the following is NOT a valid SQL data type?**  
a) INTEGER  
b) STRING  
c) VARCHAR  
d) BOOLEAN  

**7. What is the primary goal of database normalization?**  
a) To speed up database performance  
b) To reduce data redundancy and ensure consistency  
c) To encrypt sensitive information  
d) To allow unrestricted data duplication  

**8. A table contains the following fields: `order_id`, `product_id`, `customer_id`. Together, `order_id` and `product_id` form a unique identifier for each row. What kind of key is this?**  
a) Primary Key  
b) Foreign Key  
c) Composite Key  
d) Unique Key  

---

### **Section 2: Fill in the Blanks**
**9.** The ________ operator is used to enforce referential integrity between two tables by ensuring that values in the foreign key column match values in the referenced table’s primary key column.  

**10.** A ________ is a visual representation of database entities and their relationships, commonly used in data modeling.  

**11.** In a relational database, a table is made up of ________ (rows) and ________ (columns).  

**12.** The process of structuring a database to minimize redundancy and dependency by dividing large tables into smaller ones is called ________.  

**13.** The ________ constraint automatically assigns a unique numeric value to a column for each new record inserted into the table.  

---

### **Section 3: True or False**
**14.** A schema defines the structure of a database, including tables, columns, and constraints. (**True/False**)  

**15.** A composite key consists of two or more attributes that together uniquely identify a record. (**True/False**)  

**16.** The PRIMARY KEY constraint allows multiple NULL values in the column. (**True/False**)  

**17.** In a many-to-many relationship, an intermediate table is often required to manage the relationship between two entities. (**True/False**)  

**18.** The UNIQUE key constraint is the same as a primary key but allows NULL values. (**True/False**)  

---

### **Section 4: Short Answer Questions**
**19.** What is the main difference between a **primary key** and a **unique key**?  

**20.** Define **referential integrity** and provide an example of how it is enforced in SQL.  

**21.** What are the **three main normal forms (1NF, 2NF, 3NF)** in database normalization?  

**22.** Explain the difference between **multiplicity** and **cardinality** in relational databases.  

**23.** What is an **ERD (Entity-Relationship Diagram)** and why is it useful in database design?  

---

### **Section 5: Coding Questions**
**24.** Write an SQL statement to create a `Customers` table with the following columns:
- `id` (Primary Key, auto-incrementing)
- `name` (VARCHAR 50, cannot be NULL)
- `email` (VARCHAR 100, unique)
- `created_at` (DATE, defaults to current date)  

**25.** Write an SQL statement to create a `Orders` table with:
- `order_id` as the Primary Key
- `customer_id` as a Foreign Key referencing `Customers(id)`
- `order_date` as a DATE column  

**26.** Write an SQL query to retrieve all customers whose name starts with 'A'.  

**27.** Write an SQL query to find all orders placed by a specific customer with `customer_id = 5`.  

**28.** Write an SQL query to count how many orders each customer has placed, sorted in descending order.  

---

### **Bonus Question**
**29.** A **secondary key** (or alternate key) is another unique identifier for a record besides the primary key. Give an example of when a secondary key might be useful in a real-world application.  

---

### **Final Thoughts**
This test covers **foundational SQL concepts** and practical applications. Would you like **detailed explanations for the answers** or **more advanced SQL queries**? 🚀