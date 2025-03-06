Here’s a **TypeScript Test** based on the information provided. It includes **multiple-choice, true/false, fill-in-the-blank, and coding questions** to assess knowledge of TypeScript concepts.

---

# **TypeScript Knowledge Test**  

## **Section 1: Multiple Choice** (Choose the best answer)

1. **Who developed TypeScript?**  
   - a) Google  
   - b) Microsoft  
   - c) Facebook  
   - d) Apple  

2. **Which of the following best describes TypeScript?**  
   - a) A replacement for JavaScript  
   - b) A statically typed superset of JavaScript  
   - c) A framework like React  
   - d) A version of JavaScript that runs only in the browser  

3. **Which command is used to install TypeScript globally?**  
   - a) `npm install typescript`  
   - b) `npm install -g typescript`  
   - c) `tsc install -g typescript`  
   - d) `install -g typescript`  

4. **Which TypeScript type ensures a variable can hold multiple types?**  
   - a) `any`  
   - b) `unknown`  
   - c) `union`  
   - d) `enum`  

5. **What is the default starting value of a numeric enum in TypeScript?**  
   - a) 1  
   - b) 0  
   - c) -1  
   - d) Undefined  

---

## **Section 2: True or False**  

6. **TypeScript must be compiled before running in the browser.**  
7. **The `any` type provides better type safety than `unknown`.**  
8. **Tuples in TypeScript enforce the number and type of elements in an array.**  
9. **TypeScript interfaces can be extended using the `extends` keyword.**  
10. **Once a property is marked as `readonly`, it cannot be changed after object creation.**  

---

## **Section 3: Fill in the Blanks**  

11. TypeScript is a **_______ typed superset** of JavaScript.  
12. The **TypeScript compiler command** is `______`.  
13. **_________ and __________** are the two main ways to define object structures in TypeScript.  
14. The `readonly` keyword ensures that a property **__________.**  
15. To create a new TypeScript configuration file, the command used is `________`.  

---

## **Section 4: Code Output Questions**  
_What is the output of the following TypeScript snippets?_

16. **What is the output of the following TypeScript code?**
   ```ts
   let id: number | string;
   id = "42";
   console.log(typeof id);
   ```
   - a) `number`  
   - b) `string`  
   - c) `undefined`  
   - d) `object`  

17. **What happens when this TypeScript code is compiled?**
   ```ts
   function add(a: number, b: string): number {
     return a + b;
   }
   ```
   - a) The function compiles successfully  
   - b) Compilation error  
   - c) Runtime error  
   - d) The function returns `NaN`  

18. **What is the output of the following code?**
   ```ts
   enum Role { Admin, User }
   let userRole: [string, Role] = ["Alice", Role.Admin];
   console.log(userRole);
   ```
   - a) `["Alice", 1]`  
   - b) `["Alice", "Admin"]`  
   - c) `["Alice", 0]`  
   - d) Compilation error  

---

## **Section 5: Code Challenges**  

19. **Write a TypeScript function that takes a `string` or `number` and returns its length.**  
   ```ts
   function getLength(value: string | number): number {
     // Your code here
   }
   ```

20. **Create a `Person` interface with `name` (string) and `age` (number), then define an object using it.**  
   ```ts
   interface Person {
     // Define properties
   }

   const user: Person = {
     // Define values
   };
   ```

21. **Write a function that never returns a value and throws an error.**
   ```ts
   function throwError(message: string): never {
     // Your code here
   }
   ```

22. **Create a `readonly` interface `Car` with properties `brand` (string) and `year` (number), then try to modify a property.**
   ```ts
   interface Car {
     // Define properties
   }

   const myCar: Car = {
     brand: "Toyota",
     year: 2022
   };

   myCar.brand = "Honda"; // What happens here?
   ```

---

## **Scoring Guide**
- **20-22 Correct** → 🎉 TypeScript Master!  
- **15-19 Correct** → 💡 Solid TypeScript Understanding  
- **10-14 Correct** → 🛠 Needs Some Practice  
- **0-9 Correct** → 📖 Time to Review the Basics  

---

Let me know if you’d like modifications or explanations for any questions! 🚀