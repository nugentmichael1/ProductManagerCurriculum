# **TypeScript Concepts Guide** 🚀  

This guide covers essential **TypeScript features** for robust and type-safe development, including:  
✅ **Classes & Generics**  
✅ **Casting & Utility Types**  
✅ **Type Guards & `keyof`**  
✅ **Decorators & Compiler Options**  

---

## **1️⃣ Classes in TypeScript**
### **🔹 Defining a Class**
TypeScript **supports OOP (Object-Oriented Programming)** with `class`, `constructor`, and `access modifiers` (`public`, `private`, `protected`).

```ts
class Person {
  private age: number; // Only accessible within the class
  public name: string; // Accessible anywhere

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  getAge(): number {
    return this.age;
  }
}

const person = new Person("Alice", 30);
console.log(person.name); // ✅ "Alice"
console.log(person.getAge()); // ✅ 30
console.log(person.age); // ❌ Error (private)
```

---

## **2️⃣ Basic Generics**
### **🔹 What are Generics?**
Generics **allow type flexibility** while ensuring type safety.

```ts
function identity<T>(value: T): T {
  return value;
}

console.log(identity<string>("Hello")); // "Hello"
console.log(identity<number>(42)); // 42
```
- `<T>` is a **type placeholder**.
- It is **inferred automatically** when used.

---

## **3️⃣ Array Generics**
You can specify **array types** with generics:

```ts
function getFirst<T>(arr: Array<T>): T {
  return arr[0];
}

console.log(getFirst<number>([10, 20, 30])); // 10
console.log(getFirst<string>(["a", "b", "c"])); // "a"
```

Alternatively, using shorthand notation:
```ts
const numbers: number[] = [1, 2, 3];
const strings: string[] = ["apple", "banana"];
```

---

## **4️⃣ Casting (`as` and `< >`)**
### **🔹 Type Assertions**
Casting allows treating a variable as a specific type.

```ts
let value: any = "Hello";
let strLength = (value as string).length;
console.log(strLength); // 5
```

Using angle bracket syntax:
```ts
let num = <number>value; // ❌ Error: Cannot convert string to number
```
**Use `as` over `< >` to avoid conflicts with JSX.**

---

## **5️⃣ Utility Types**
TypeScript provides **built-in utility types** to manipulate types.

| Utility Type | Description |
|--------------|------------|
| `Partial<T>` | Makes all properties optional |
| `Readonly<T>` | Prevents modifying properties |
| `Record<K, T>` | Creates an object type with specified keys |
| `Pick<T, K>` | Selects specific properties |
| `Omit<T, K>` | Removes specific properties |

🔹 **Example:**
```ts
interface User {
  id: number;
  name: string;
  email: string;
}

type ReadonlyUser = Readonly<User>;
const user: ReadonlyUser = { id: 1, name: "Alice", email: "a@example.com" };
user.name = "Bob"; // ❌ Error: Readonly

type PartialUser = Partial<User>; // All properties optional
```

---

## **6️⃣ `keyof` (Key Lookup Types)**
`keyof` extracts **keys of an object type**.

```ts
type User = {
  id: number;
  name: string;
};

type UserKeys = keyof User; // "id" | "name"

function getValue<T, K extends keyof T>(obj: T, key: K) {
  return obj[key];
}

const user = { id: 1, name: "Alice" };
console.log(getValue(user, "name")); // "Alice"
```

---

## **7️⃣ Decorators**
Decorators are **metadata annotations** for classes & methods.  
✅ **They require `experimentalDecorators` in `tsconfig.json`**.

```ts
function Logger(constructor: Function) {
  console.log(`Class ${constructor.name} was initialized.`);
}

@Logger
class Car {
  constructor(public brand: string) {}
}
```

💡 **Common decorators:**
- `@Component()` (Angular)
- `@Injectable()`
- `@Controller()`

---

## **8️⃣ Functions**
### **🔹 Function Types**
```ts
function greet(name: string): string {
  return `Hello, ${name}!`;
}
```
**Arrow function with types:**
```ts
const multiply = (a: number, b: number): number => a * b;
```

---

## **9️⃣ `as const`**
`as const` makes an object **fully immutable**.

```ts
const user = {
  name: "Alice",
  age: 30,
} as const;

user.age = 31; // ❌ Error: Cannot assign to 'age' because it is a read-only property.
```

---

## **🔟 Type Guards**
Type guards **narrow types at runtime**.

```ts
function isString(value: unknown): value is string {
  return typeof value === "string";
}

function printLength(value: unknown) {
  if (isString(value)) {
    console.log(value.length); // ✅ Safe access
  }
}
```

---

## **1️⃣1️⃣ Interface vs Type**
| Feature | `interface` | `type` |
|---------|------------|--------|
| **Extension** | ✅ `extends` | ✅ Uses `&` (intersection) |
| **Declaration Merging** | ✅ Yes | ❌ No |
| **Best For** | OOP & class structures | Complex unions & utility types |

---

## **1️⃣2️⃣ TSX (TypeScript + JSX)**
TSX (`.tsx`) is TypeScript’s extension for **React JSX**.

```tsx
import React from "react";

type Props = { name: string };

const Hello: React.FC<Props> = ({ name }) => <h1>Hello, {name}</h1>;

export default Hello;
```

---

## **1️⃣3️⃣ TS Config Basics**
### **🔹 Initialize TypeScript Project**
```bash
tsc --init
```
Creates `tsconfig.json`.

### **🔹 Key Compiler Options**
| Option | Description |
|--------|-------------|
| `strict` | Enables strict type checking |
| `target` | Specifies ECMAScript version |
| `module` | Defines module system (`CommonJS`, `ES6`) |

---

## **1️⃣4️⃣ Compiler Options**
### **🔹 `strict`**
Enables strict type-checking.
```json
{
  "strict": true
}
```

### **🔹 `target`**
Sets ECMAScript version:
```json
{
  "target": "ES6"
}
```

---

## **1️⃣5️⃣ `tsc` (TypeScript Compiler)**
### **🔹 Compile a File**
```bash
tsc app.ts
```

### **🔹 Watch Mode (`--watch`)**
```bash
tsc --watch
```

---

## **🔹 Summary**
✅ **Classes** support OOP with access modifiers.  
✅ **Generics** provide reusable type-safe functions.  
✅ **Casting (`as`)** helps enforce types dynamically.  
✅ **Utility Types (`Partial`, `Readonly`)** simplify object structures.  
✅ **Decorators** enable metadata for classes.  
✅ **`keyof` & Type Guards** improve runtime safety.  
✅ **TSX** supports TypeScript with JSX for React.  
✅ **`tsconfig.json`** controls compilation settings.  

Would you like **hands-on TypeScript coding examples?** 🚀