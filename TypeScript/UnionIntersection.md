### **TypeScript: Types & Interfaces in Relation to Unions and Intersections**

In TypeScript, **types (`type`) and interfaces (`interface`)** are used to define the shape of objects, but they handle **unions (`|`) and intersections (`&`)** differently.

---

## **1️⃣ Unions (`|`): One of Many Possible Types**
A **union type** allows a variable to hold **one of multiple types**.

### **Using `type` with Unions**
With `type`, we can create a union of multiple types:
```ts
type StringOrNumber = string | number;

let value: StringOrNumber;

value = "Hello";  // ✅ Allowed
value = 42;       // ✅ Allowed
value = true;     // ❌ Error: 'boolean' is not assignable to 'string | number'
```

### **Using `interface` with Unions**
Unlike `type`, **`interface` does NOT support unions directly** at the root level. However, it can be used inside properties.

🚫 **This is NOT valid TypeScript:**
```ts
interface StringOrNumber {  // ❌ Error: An interface cannot be a union
  value: string | number;
}
```
✅ **Correct approach using a type alias:**
```ts
type StringOrNumber = string | number;
```
✅ **Alternative: Using interface inside a union**
```ts
interface Text {
  type: "text";
  content: string;
}

interface Image {
  type: "image";
  src: string;
}

type Media = Text | Image; // ✅ Union using type alias

const item: Media = { type: "text", content: "Hello" }; // ✅ Allowed
```
👉 **Key takeaway:**  
- **Use `type` when you need a union** (since interfaces don't support unions at the top level).  

---

## **2️⃣ Intersections (`&`): Combining Types**
An **intersection type** (`&`) merges multiple types into one, requiring all properties to be present.

### **Using `type` with Intersections**
```ts
type Person = { name: string };
type Employee = { company: string };

type Worker = Person & Employee;  // ✅ Intersection

const worker: Worker = {
  name: "Alice",
  company: "TechCorp"
}; // ✅ Allowed
```

### **Using `interface` with Intersections**
Interfaces **support intersections** using `extends`:
```ts
interface Person {
  name: string;
}

interface Employee {
  company: string;
}

interface Worker extends Person, Employee {} // ✅ Intersection via extension

const worker: Worker = {
  name: "Alice",
  company: "TechCorp"
}; // ✅ Allowed
```
Alternatively, you can use `&` with interfaces:
```ts
type Worker = Person & Employee;
```
👉 **Key takeaway:**  
- **Interfaces use `extends` to combine multiple interfaces.**  
- **Both `type` and `interface` support intersections.**

---

## **3️⃣ When to Use `type` vs `interface` for Unions & Intersections**
| Feature          | `type` | `interface` |
|-----------------|--------|-------------|
| **Unions (`|`)** | ✅ Supported | 🚫 Not supported at root level |
| **Intersections (`&`)** | ✅ Supported | ✅ Supported (via `extends`) |
| **Extensibility** | ❌ Cannot be extended | ✅ Can use `extends` |
| **Merging** | ❌ Cannot merge later | ✅ Can merge using declaration merging |

### **💡 When to use what?**
- Use **`type` for unions** (`A | B`).
- Use **`interface` for extending** (`interface A extends B`).
- Use **either `type` or `interface` for intersections** (`A & B`).

Would you like a coding example comparing `type` and `interface` in a real-world scenario? 🚀