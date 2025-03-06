# **TypeScript Guide** 🚀  

TypeScript is a **strongly typed** superset of JavaScript that adds **static typing** to help catch errors at compile time. This guide covers:  
✅ **What is TypeScript?**  
✅ **JavaScript vs. TypeScript**  
✅ **Why & How Should I Use TypeScript?**  
✅ **TypeScript Compiler & Installation**  
✅ **Simple & Special Types**  
✅ **Object Types, Type Aliases, Interfaces**  
✅ **Union Types, Tuples, Enums, Readonly Interfaces**  

---

## **1️⃣ What is TypeScript?**  
TypeScript is a **statically typed superset** of JavaScript that compiles down to plain JavaScript.  
- Developed by **Microsoft**.  
- Helps catch **errors at compile-time** instead of runtime.  
- Provides **interfaces, generics, and static typing**.  
- Supports **modern JavaScript (ES6+) features**.

---

## **2️⃣ JavaScript vs. TypeScript**  
| Feature | JavaScript | TypeScript |
|---------|-----------|------------|
| **Typing** | Dynamic (loosely typed) | Static (strongly typed) |
| **Compilation** | Interpreted at runtime | Compiled before execution |
| **Error Detection** | Errors appear at runtime | Errors detected at compile time |
| **OOP Support** | Limited | Interfaces, generics, and strong OOP features |
| **Code Readability** | Less structured | More maintainable & readable |

🔹 **Example (JavaScript vs. TypeScript)**  

✅ **JavaScript (No Type Safety)**  
```js
function add(a, b) {
  return a + b;
}
console.log(add(5, "10")); // "510" (unexpected behavior)
```

✅ **TypeScript (Static Typing)**  
```ts
function add(a: number, b: number): number {
  return a + b;
}
console.log(add(5, "10")); // ❌ ERROR: Argument of type 'string' is not assignable to parameter of type 'number'
```

---

## **3️⃣ Why & How Should I Use TypeScript?**
### **🔹 Why Use TypeScript?**
✅ **Catches errors early** at compile time.  
✅ **Improves code maintainability** and readability.  
✅ **Supports modern JavaScript** with additional features.  
✅ **Helps with large-scale applications** by enforcing structure.

### **🔹 How to Use TypeScript**
1. **Install TypeScript**  
   ```bash
   npm install -g typescript
   ```
2. **Create a TypeScript file (`.ts`)**
   ```ts
   const message: string = "Hello, TypeScript!";
   console.log(message);
   ```
3. **Compile to JavaScript**  
   ```bash
   tsc filename.ts
   ```
   - Generates `filename.js`
4. **Run JavaScript in Node.js or Browser**
   ```bash
   node filename.js
   ```

---

## **4️⃣ TypeScript Compiler & Installation**
### **🔹 Install TypeScript Globally**
```bash
npm install -g typescript
```

### **🔹 Check TypeScript Version**
```bash
tsc -v
```

### **🔹 Compile TypeScript to JavaScript**
```bash
tsc filename.ts
```

### **🔹 Initialize a TypeScript Project (`tsconfig.json`)**
```bash
tsc --init
```

---

## **5️⃣ Simple Types**
TypeScript has basic types to ensure **type safety**.

| Type | Example |
|------|---------|
| **string** | `"Hello"` |
| **number** | `42` |
| **boolean** | `true` or `false` |
| **any** | Can hold any type (avoid using it) |
| **void** | Used in functions that don't return values |

🔹 **Example:**
```ts
let username: string = "Alice";
let age: number = 30;
let isAdmin: boolean = true;
```

---

## **6️⃣ Special Types**
| Type | Description |
|------|-------------|
| **`any`** | Turns off type checking (not recommended) |
| **`unknown`** | Similar to `any`, but must be type-checked before use |
| **`never`** | Used for functions that never return (e.g., throw errors) |
| **`void`** | Used for functions that don’t return values |

🔹 **Example:**
```ts
function logMessage(): void {
  console.log("This function returns nothing.");
}

function throwError(): never {
  throw new Error("This function never returns.");
}
```

---

## **7️⃣ Object Types**
Objects in TypeScript can have **defined properties with specific types**.

```ts
let user: { name: string; age: number } = {
  name: "Alice",
  age: 25,
};
```

---

## **8️⃣ Type Aliases & Interfaces**
Both `type` and `interface` define object structures.

✅ **Type Alias:**
```ts
type User = {
  name: string;
  age: number;
};
```

✅ **Interface:**
```ts
interface User {
  name: string;
  age: number;
}
```

🔹 **Key Differences**  
- `interface` supports **extension (`extends`)**.  
- `type` supports **unions (`|`) and intersections (`&`)**.  

✅ **Extending an Interface**
```ts
interface Admin extends User {
  role: string;
}
```

---

## **9️⃣ Union Types**
Union types allow variables to **hold multiple types**.

```ts
let id: number | string;
id = 42;   // ✅ Valid
id = "42"; // ✅ Valid
```

✅ **Example with Functions**
```ts
function printId(id: number | string) {
  console.log(`ID: ${id}`);
}
```

---

## **🔟 Tuples**
Tuples define **fixed-length arrays** with specified types.

```ts
let person: [string, number];
person = ["Alice", 30]; // ✅ Valid
person = [30, "Alice"]; // ❌ Error
```

✅ **Using Tuples with Enums**
```ts
enum Role { Admin, User }
let userRole: [string, Role] = ["Alice", Role.Admin];
```

---

## **1️⃣1️⃣ String Enums**
Enums define **named constants** for better readability.

```ts
enum Direction {
  Up = "UP",
  Down = "DOWN",
  Left = "LEFT",
  Right = "RIGHT",
}
console.log(Direction.Up); // "UP"
```

---

## **1️⃣2️⃣ Numeric Enums**
Numeric enums start at `0` (default) or can be assigned values.

```ts
enum Status {
  Success = 200,
  NotFound = 404,
  Error = 500,
}
console.log(Status.Success); // 200
```

---

## **1️⃣3️⃣ Readonly Interface**
The `readonly` modifier makes properties **immutable**.

```ts
interface User {
  readonly id: number;
  name: string;
}

let user: User = { id: 1, name: "Alice" };
user.name = "Bob"; // ✅ Allowed
user.id = 2;       // ❌ Error: Cannot assign to 'id' because it is a read-only property.
```

---

## **🔹 Summary**
✅ **TypeScript adds static typing, improving maintainability.**  
✅ **TypeScript compiles to JavaScript and is backward compatible.**  
✅ **Use `type` and `interface` for object definitions.**  
✅ **Union types, tuples, and enums add flexibility.**  
✅ **Readonly interfaces protect immutable properties.**  

Would you like a **hands-on coding example in TypeScript?** 🚀