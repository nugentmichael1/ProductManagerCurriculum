### **Utility Types in TypeScript** 🚀

TypeScript provides **Utility Types** to make it easier to manipulate types without needing to redefine them from scratch. These built-in types allow **partial modification**, **immutability**, **selecting specific properties**, and more.

---

## **1️⃣ Partial<T> – Makes All Properties Optional**
### **Description:**  
The `Partial<T>` utility makes all properties of a given type **optional**. It’s useful when you want to create a new type where updating only some fields is allowed.

### **Example:**
```typescript
interface User {
  id: number;
  name: string;
  email: string;
}

// Create a Partial version of User
const updateUser: Partial<User> = {
  name: "Alice", // id and email are optional
};
```
🔹 **Use Case:** Useful for **update operations** where not all fields need to be modified.

---

## **2️⃣ Readonly<T> – Prevents Modifying Properties**
### **Description:**  
The `Readonly<T>` utility makes **all properties immutable** (cannot be reassigned after initialization).

### **Example:**
```typescript
interface Car {
  brand: string;
  year: number;
}

// Create a Readonly version of Car
const myCar: Readonly<Car> = {
  brand: "Toyota",
  year: 2022,
};

myCar.brand = "Honda"; // ❌ Error: Cannot assign to 'brand' because it is a read-only property.
```
🔹 **Use Case:** Useful for **constants** or ensuring an object remains unchanged.

---

## **3️⃣ Record<K, T> – Creates an Object Type with Specified Keys**
### **Description:**  
The `Record<K, T>` utility **maps a set of keys (`K`) to a value type (`T`)**. It's useful for defining objects with a fixed set of keys.

### **Example:**
```typescript
type UserRoles = "admin" | "editor" | "viewer";

// Create a record where each role has a boolean permission
const permissions: Record<UserRoles, boolean> = {
  admin: true,
  editor: true,
  viewer: false,
};
```
🔹 **Use Case:** Used when you need **consistent object keys**, such as mapping configurations.

---

## **4️⃣ Pick<T, K> – Selects Specific Properties**
### **Description:**  
The `Pick<T, K>` utility **extracts a subset of properties** from an existing type.

### **Example:**
```typescript
interface User {
  id: number;
  name: string;
  email: string;
}

// Pick only 'id' and 'name' from User
type UserSummary = Pick<User, "id" | "name">;

const user: UserSummary = {
  id: 1,
  name: "Alice",
};
```
🔹 **Use Case:** Useful for **returning specific data** without exposing the full object.

---

## **5️⃣ Omit<T, K> – Removes Specific Properties**
### **Description:**  
The `Omit<T, K>` utility **removes specific properties** from a given type.

### **Example:**
```typescript
interface User {
  id: number;
  name: string;
  email: string;
}

// Omit 'email' from User
type UserWithoutEmail = Omit<User, "email">;

const user: UserWithoutEmail = {
  id: 1,
  name: "Alice",
};
```
🔹 **Use Case:** Useful for **hiding sensitive data** like passwords or emails in API responses.

---

### **🚀 Summary of Utility Types**
| Utility Type | Description | Example Use Case |
|-------------|-------------|----------------|
| **Partial<T>** | Makes all properties optional | Updating only specific fields in an object |
| **Readonly<T>** | Prevents modifying properties | Ensuring a config object remains unchanged |
| **Record<K, T>** | Defines a type with fixed keys | Storing role-based permissions |
| **Pick<T, K>** | Selects specific properties | Exposing only certain fields in an API |
| **Omit<T, K>** | Removes specific properties | Hiding sensitive data from responses |

Would you like examples of **combining** these utility types? 🚀