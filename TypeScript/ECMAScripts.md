## **What is ECMAScript (ES)?**
**ECMAScript (ES)** is a standard that defines the core features and syntax of **JavaScript**. It is maintained by the **ECMA International organization**, specifically the **TC39 committee**.

### **📜 History of ECMAScript**
- **1997 (ES1)** → First version, established the basics of JavaScript.
- **2009 (ES5)** → Introduced `strict mode`, JSON support, `Array.map()`, `forEach()`, etc.
- **2015 (ES6/ES2015)** → Major update! Introduced **let/const, arrow functions, classes, modules, promises, and more**.
- **2016+ (ES2016-ES2023)** → Yearly updates adding new features.

---

## **📌 ES6 (ECMAScript 2015) - The Big Update**
ES6, or ECMAScript 2015, introduced major JavaScript improvements, including:
✅ `let` & `const` (block-scoped variables)  
✅ Arrow Functions (`() => {}`)  
✅ Classes (`class Person {}`)  
✅ Modules (`export` & `import`)  
✅ Template Literals (``Hello, ${name}!``)  
✅ Destructuring (`const { name } = obj;`)  
✅ Promises (`new Promise()`)  
✅ Default Parameters (`function greet(name = "Guest") {}`)  

```js
const greet = (name = "Guest") => `Hello, ${name}!`;
console.log(greet("Alice")); // "Hello, Alice!"
```

---

## **📌 ES2016 (ECMAScript 2016) - Small but Important**
ES2016 added two key features:

### **1️⃣ Array `includes()` Method**
✅ Allows checking if an array contains a specific value.
```js
let numbers = [1, 2, 3, 4];
console.log(numbers.includes(3)); // ✅ true
console.log(numbers.includes(5)); // ❌ false
```

### **2️⃣ Exponentiation Operator (`**`)**
✅ A new way to write exponents (`Math.pow()` alternative).
```js
console.log(2 ** 3); // ✅ 8 (2^3)
console.log(10 ** 2); // ✅ 100
```

---

## **📌 ES2017 (ECMAScript 2017) - Async/Await**
The biggest addition in ES2017 was **async/await**, which made working with Promises much easier.

```js
async function fetchData() {
  let data = await fetch("https://api.example.com/data");
  console.log(await data.json());
}
fetchData();
```
✅ No more `.then()` chaining!  
✅ Makes asynchronous code **look synchronous**.

---

## **📌 ES2018 to ES2023 - Key Features**
🔹 **ES2018** → Rest/Spread in Objects, `Promise.prototype.finally()`, Regex improvements  
🔹 **ES2019** → `Array.flat()`, `Array.flatMap()`, `Object.fromEntries()`  
🔹 **ES2020** → `BigInt`, `Nullish Coalescing (??)`, `Optional Chaining (?.)`  
🔹 **ES2021** → `String.replaceAll()`, WeakRefs  
🔹 **ES2022** → `class static blocks`, `Top-Level Await`  
🔹 **ES2023** → `Array.toSorted()`, `Array.toSpliced()`, `Array.with()`  

---

## **🔹 Summary**
- **ECMAScript (ES) is the standard behind JavaScript.**
- **ES6 (2015) was a huge update** introducing modern JavaScript.
- **ES2016+ introduced yearly updates**, adding small but powerful features like `includes()`, `async/await`, optional chaining (`?.`), and more.

Would you like a deep dive into any specific ECMAScript features? 🚀