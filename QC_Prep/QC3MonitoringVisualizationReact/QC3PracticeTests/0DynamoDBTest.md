### **DynamoDB Knowledge Test**

This test evaluates your understanding of **AWS DynamoDB** concepts, including table creation, querying, indexing, and data operations.

---

### **Section 1: Multiple Choice (Choose the Best Answer)**  
1. What type of database is **DynamoDB**?  
   a) Relational Database  
   b) Key-Value & Document Store  
   c) Columnar Database  
   d) Graph Database  

2. What is required when creating a DynamoDB table?  
   a) Primary Key  
   b) Sort Key  
   c) Secondary Index  
   d) Predefined Schema  

3. Which primary key type allows multiple items to share the same partition key?  
   a) Simple Primary Key  
   b) Composite Primary Key  
   c) Global Secondary Index  
   d) Local Secondary Index  

4. What is the difference between **Provisioned** and **On-Demand** mode in DynamoDB?  
   a) Provisioned mode scales automatically, while On-Demand mode does not  
   b) On-Demand mode automatically adjusts capacity, while Provisioned mode requires manual settings  
   c) On-Demand mode is cheaper for high-traffic applications  
   d) Both modes require setting read/write capacity  

5. Which operation is more efficient for retrieving data in DynamoDB?  
   a) Scan  
   b) Query  
   c) Delete Item  
   d) Update Item  

---

### **Section 2: True or False**  
6. A **Partition Key** is always required when defining a DynamoDB table.  
7. A **Scan** operation is more efficient than a **Query** operation.  
8. A **Global Secondary Index (GSI)** allows queries across multiple partitions.  
9. DynamoDB automatically scales to handle traffic without any configuration.  
10. **Local Secondary Indexes (LSI)** allow you to create alternate sorting strategies within the same partition.  

---

### **Section 3: Fill in the Blanks**  
11. The **two types of primary keys** in DynamoDB are ________ and ________.  
12. In DynamoDB, a single record is called an ________.  
13. To retrieve an item using the **partition key**, you should use the ________ operation.  
14. The **AWS SDK for Python** used to interact with DynamoDB is called ________.  
15. The `put_item` method is used to ________ an item in the table.  

---

### **Section 4: Code Output Questions**  

16. What is the expected output of this TypeScript code?  

   ```typescript
   let id: number | string;
   id = "42";
   console.log(typeof id);
   ```
   a) number  
   b) string  
   c) undefined  
   d) object  

17. What happens when this Python code executes?  

   ```python
   import boto3

   dynamodb = boto3.resource('dynamodb')
   table = dynamodb.Table('Users')

   table.put_item(
       Item={
           'UserID': '123',
           'Name': 'Alice',
           'Age': 25
       }
   )
   ```
   a) Inserts an item into the **Users** table  
   b) Updates an existing item  
   c) Deletes an item from the table  
   d) Throws an error  

18. What will happen when this **update_item** method runs?  

   ```python
   table.update_item(
       Key={'UserID': '123'},
       UpdateExpression="SET Age = :newAge",
       ExpressionAttributeValues={':newAge': 26}
   )
   ```
   a) Adds a new attribute called `Age`  
   b) Updates `Age` to 26 if UserID = 123 exists  
   c) Deletes the item if Age is not set  
   d) Returns an error since updates are not allowed in DynamoDB  

---

### **Section 5: Code Challenges**  
19. **Write Python code to create a DynamoDB table named "Orders" with an OrderID as the partition key.**  
   ```python
   import boto3

   # Your code here
   ```

20. **Write a Python function to retrieve all items from the "Users" table where Age is greater than 30 using a Scan operation.**  
   ```python
   def get_users_over_30():
       # Your code here
   ```

21. **Write a Python function that deletes a user from the "Users" table given a UserID.**  
   ```python
   def delete_user(user_id):
       # Your code here
   ```

22. **Modify the below code to use a Query operation instead of Scan.**  

   ```python
   response = table.scan(
       FilterExpression="Age > :age",
       ExpressionAttributeValues={":age": 30}
   )
   ```

---

### **Scoring Guide**
- **20-22 Correct** → 🎉 **DynamoDB Expert!**  
- **15-19 Correct** → 💡 **Solid DynamoDB Knowledge**  
- **10-14 Correct** → 🛠 **Needs More Practice**  
- **0-9 Correct** → 📖 **Time to Review the Basics**  

---

Would you like an **answer key** or further explanations? 🚀