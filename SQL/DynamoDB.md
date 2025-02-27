## **DynamoDB Overview**
DynamoDB is a **fully managed NoSQL database service** provided by AWS. It is designed for **high scalability, low-latency access, and automatic replication** across multiple regions. Unlike traditional relational databases, DynamoDB uses **key-value and document storage models**, making it ideal for applications requiring high throughput and flexible schemas.

---

## **1. Creating Your First DynamoDB Table**
To store data in DynamoDB, you must first **create a table**. A table consists of **items (similar to rows in relational databases), attributes (columns), and primary keys (unique identifiers for each item).**

### **Steps to Create a DynamoDB Table:**
1. **Define a Table Name** (e.g., `"Users"`).
2. **Specify a Primary Key**, which can be:
   - **Simple Primary Key (Partition Key only)**: A unique identifier for each item.
   - **Composite Primary Key (Partition Key + Sort Key)**: Enables multiple items to share the same partition key while being uniquely identified by a sort key.
3. **Define Attribute Definitions** (attributes used in the primary key).
4. **Configure Provisioned or On-Demand Throughput**:
   - **Provisioned Mode**: Manually set read/write capacity.
   - **On-Demand Mode**: AWS automatically adjusts capacity.

### **Example Table Creation (Python Boto3)**
```python
import boto3

dynamodb = boto3.client('dynamodb')

response = dynamodb.create_table(
    TableName='Users',
    AttributeDefinitions=[
        {'AttributeName': 'UserID', 'AttributeType': 'S'}
    ],
    KeySchema=[
        {'AttributeName': 'UserID', 'KeyType': 'HASH'}
    ],
    ProvisionedThroughput={
        'ReadCapacityUnits': 5,
        'WriteCapacityUnits': 5
    }
)
print("Table created:", response['TableDescription']['TableName'])
```
This creates a **Users table** with `UserID` as the **partition key**.

---

## **2. Basic Terminology**
Understanding DynamoDB requires familiarity with its core concepts:

| **Term**        | **Definition** |
|----------------|--------------|
| **Table**      | A collection of items (similar to a table in relational databases). |
| **Item**       | A single record (equivalent to a row in relational databases). |
| **Attribute**  | A key-value pair within an item (equivalent to a column). |
| **Primary Key**| A unique identifier for each item in the table. |
| **Partition Key (Hash Key)** | Determines in which partition data is stored. |
| **Sort Key (Range Key)** | Optional second part of the primary key, allowing multiple items per partition key. |
| **Global Secondary Index (GSI)** | An alternate key to query data efficiently across partitions. |
| **Local Secondary Index (LSI)** | An index that allows querying data within the same partition. |

### **Example Table: `Users`**
| **UserID (PK)** | **Name** | **Age** | **Email** |
|----------------|---------|--------|-----------|
| `123`         | Alice   | 25     | alice@email.com |
| `456`         | Bob     | 30     | bob@email.com |

- **UserID** is the **Partition Key**.
- **Attributes like Name, Age, and Email** store user information.

---

## **3. Adding, Updating, and Deleting Items**
### **Adding an Item (`put_item`)**
To insert an item into a DynamoDB table:

```python
table = dynamodb.Table('Users')

table.put_item(
    Item={
        'UserID': '123',
        'Name': 'Alice',
        'Age': 25,
        'Email': 'alice@email.com'
    }
)
```
- This **inserts or replaces** an item with the `UserID = 123`.

### **Updating an Item (`update_item`)**
To update an existing item:

```python
table.update_item(
    Key={'UserID': '123'},
    UpdateExpression="SET Age = :newAge",
    ExpressionAttributeValues={':newAge': 26}
)
```
- Updates `Age` to `26` for `UserID = 123`.

### **Deleting an Item (`delete_item`)**
To delete an item:

```python
table.delete_item(Key={'UserID': '123'})
```
- Deletes the user with `UserID = 123`.

---

## **4. Querying and Scanning Tables**
DynamoDB provides **two primary ways** to retrieve data: **Query** and **Scan**.

### **Query (`query()`) – Efficient**
- **Used to retrieve items based on the partition key**.
- Can filter using the **sort key and other attributes**.
- **Faster and more efficient than `scan()`**.

```python
response = table.query(
    KeyConditionExpression="UserID = :user_id",
    ExpressionAttributeValues={":user_id": "123"}
)
print(response["Items"])
```
- Retrieves all items where `UserID = 123`.

### **Scan (`scan()`) – Expensive**
- **Reads the entire table** to find matching items.
- **Slower and less efficient** for large datasets.

```python
response = table.scan(
    FilterExpression="Age > :age",
    ExpressionAttributeValues={":age": 25}
)
print(response["Items"])
```
- Retrieves all users older than 25 **but scans the whole table**.

---

## **Final Thoughts**
| **Operation**       | **Best Use Case** |
|-------------------|----------------|
| **Create Table** | Setting up a new database table. |
| **Put Item** | Inserting or replacing an item. |
| **Update Item** | Modifying attributes of an existing item. |
| **Delete Item** | Removing an item from the table. |
| **Query** | Efficiently retrieving items based on partition keys. |
| **Scan** | Retrieving items without knowing the partition key (less efficient). |

Would you like additional details on **indexing strategies, access patterns, or cost optimization** in DynamoDB? 🚀