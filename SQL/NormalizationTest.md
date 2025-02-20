Here’s a **Database Normalization Test** to assess understanding of normal forms and their application. 🚀

---

## **Database Normalization Test**
### **Instructions:**
- Select the **best answer** for multiple-choice questions.
- Answer **True/False** where required.
- Solve normalization **case studies** where needed.

---

### **Section 1: Multiple-Choice Questions**
#### **1. What is the main goal of database normalization?**
   a) To store data in a single table for easy access  
   b) To eliminate redundancy and improve data integrity  
   c) To increase query complexity  
   d) To ensure the database is optimized for high-speed writes  

#### **2. Which of the following is NOT a normal form?**
   a) 1NF  
   b) 3NF  
   c) BCNF  
   d) 5NF  
   e) 6NF  
   f) 7NF  

#### **3. A relation is in 1NF if:**
   a) It has a primary key  
   b) It has no transitive dependencies  
   c) It contains only atomic values  
   d) It has no repeating groups and no partial dependencies  

#### **4. Which normal form ensures that there are no partial dependencies?**
   a) 1NF  
   b) 2NF  
   c) 3NF  
   d) BCNF  

#### **5. A table is in **Boyce-Codd Normal Form (BCNF)** if:**
   a) It is in 3NF and every determinant is a candidate key  
   b) It has no functional dependencies  
   c) It has at most two attributes  
   d) It has no repeating groups  

#### **6. Transitive dependencies must be removed to achieve which normal form?**
   a) 1NF  
   b) 2NF  
   c) 3NF  
   d) 4NF  

#### **7. In which normal form are multi-valued dependencies eliminated?**
   a) 2NF  
   b) 3NF  
   c) 4NF  
   d) 5NF  

#### **8. If a table has redundant data that can be broken down using **join decomposition**, which normal form should be applied?**
   a) 1NF  
   b) 2NF  
   c) 3NF  
   d) 5NF  

#### **9. A table has attributes (OrderID, ProductID, ProductName, SupplierID, SupplierName). What is the biggest normalization issue here?**
   a) The table is not in 1NF  
   b) The table has partial dependencies  
   c) The table has transitive dependencies  
   d) There is no issue with this table  

---

### **Section 2: True or False**
#### **10. A relation in 2NF must also be in 1NF.**  
✅ **True** | ❌ **False**  

#### **11. BCNF is always stronger than 3NF.**  
✅ **True** | ❌ **False**  

#### **12. A table can be in 3NF but not in 2NF.**  
✅ **True** | ❌ **False**  

#### **13. Every table in BCNF is also in 4NF.**  
✅ **True** | ❌ **False**  

#### **14. A table in 5NF ensures that **all** redundancy is eliminated.**  
✅ **True** | ❌ **False**  

---

### **Section 3: Normalization Case Study**
#### **15. Identify the highest normal form of the following table:**
| OrderID | CustomerID | CustomerName | ProductID | ProductName | Quantity |
|---------|-----------|-------------|-----------|-------------|----------|
| 1001    | 1         | John Doe    | 200       | Laptop      | 1        |
| 1002    | 2         | Jane Smith  | 201       | Keyboard    | 2        |
| 1003    | 1         | John Doe    | 202       | Monitor     | 1        |

- **Is this table in 1NF? Why or why not?**
- **What normalization issues do you see?**
- **Which normal form should it be converted into and how?**

---

### **Bonus Challenge:**
#### **16. Normalize the following table into at least 3NF.**
| StudentID | StudentName | CourseID | CourseName | Professor | ProfessorOffice |
|-----------|------------|----------|------------|-----------|----------------|
| 1         | Alice      | C101     | Database   | Dr. Smith | Room 203       |
| 2         | Bob        | C102     | Networks   | Dr. Lee   | Room 301       |
| 3         | Alice      | C101     | Database   | Dr. Smith | Room 203       |

- **What dependencies exist in this table?**
- **Break this into smaller tables to achieve 3NF.**

---

### **Would you like the answer key for this test? 🚀**