# **TypeScript Advanced Concepts Knowledge Test**  

This test evaluates your understanding of **TypeScript features**, including **classes, generics, utility types, decorators, compiler options, and TypeScript with React (TSX).**  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **What access modifier makes a class property only accessible inside the class?**  
   - a) `public`  
   - b) `private`  
   - c) `protected`  
   - d) `readonly`  

2. **What is the main purpose of Generics in TypeScript?**  
   - a) To create functions with fixed types  
   - b) To allow flexibility while maintaining type safety  
   - c) To enforce strict typing for every function  
   - d) To define constant values in an application  

3. **Which TypeScript utility type ensures that object properties cannot be modified?**  
   - a) `Partial<T>`  
   - b) `Readonly<T>`  
   - c) `Record<K, T>`  
   - d) `Pick<T, K>`  

4. **Which of the following correctly uses the `keyof` operator?**  
   ```ts
   type User = {
     id: number;
     name: string;
   };
   ```
   - a) `type UserKeys = keyof "id" | "name";`  
   - b) `type UserKeys = keyof User;`  
   - c) `type UserKeys = User.keys;`  
   - d) `type UserKeys = keyof typeof User;`  

5. **Which decorator is used to log when a class is initialized?**  
   - a) `@Component()`  
   - b) `@Injectable()`  
   - c) `@Logger`  
   - d) `@Controller()`  

---

## **Section 2: True or False**  

6. **A `protected` property in a TypeScript class can only be accessed inside the class and its subclasses.**  
7. **Generics in TypeScript must always be explicitly defined when calling a function.**  
8. **The `as const` keyword makes an object fully immutable.**  
9. **Declaration merging is supported with both `type` and `interface`.**  
10. **The TypeScript compiler (`tsc`) can be run in watch mode using the `--watch` flag.**  

---

## **Section 3: Fill in the Blanks**  

11. **In TypeScript, a function that accepts a type parameter uses the syntax `<T>` to define a ______.**  
12. **The TypeScript decorator system requires the compiler option `______` to be enabled in `tsconfig.json`.**  
13. **The `Readonly<T>` utility type prevents modifying an object's properties after ______.**  
14. **A TypeScript file that supports JSX is typically saved with the extension `______`.**  
15. **The TypeScript compiler command to generate JavaScript from `app.ts` is `______`.**  

---

## **Section 4: Code Output & Error Detection**  

16. **What will be the output of the following TypeScript code?**  
   ```ts
   function identity<T>(value: T): T {
     return value;
   }
   console.log(identity<string>("Hello"));
   ```
   - a) `"Hello"`  
   - b) `Hello`  
   - c) `Error: Generic function requires a specific type`  
   - d) `undefined`  

17. **Which of the following will cause an error?**  
   ```ts
   const user = {
     name: "Alice",
     age: 30
   } as const;
   ```
   - a) `user.name = "Bob";`  
   - b) `console.log(user.age);`  
   - c) `const newUser = { ...user };`  
   - d) `console.log(typeof user);`  

18. **What does the following TypeScript function return?**  
   ```ts
   function isString(value: unknown): value is string {
     return typeof value === "string";
   }
   console.log(isString("TypeScript"));
   ```
   - a) `true`  
   - b) `false`  
   - c) `TypeError: Cannot check unknown type`  
   - d) `undefined`  

---

## **Section 5: Practical TypeScript Questions**  

19. **Write a generic function `reverseArray<T>` that reverses an array of any type.**  
   ```ts
   function reverseArray<T>(arr: T[]): T[] {
     // Your implementation
   }
   ```

20. **Modify the following code to ensure `Person` properties are immutable using a utility type.**  
   ```ts
   interface Person {
     name: string;
     age: number;
   }
   ```

21. **Write a TypeScript function that accepts an object and a key (from that object) and returns the key's value using `keyof`.**  
   ```ts
   function getValue<T, K extends keyof T>(obj: T, key: K): T[K] {
     // Your implementation
   }
   ```

22. **Modify the TypeScript configuration snippet to enable experimental decorators and set the compilation target to ES6.**  
   ```json
   {
     "experimentalDecorators": ____,
     "target": ____
   }
   ```

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 TypeScript Expert!  
- **15-19 Correct** → 💡 Strong Understanding of TypeScript  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review TypeScript Basics  

---

Would you like **hands-on TypeScript exercises** with real-world applications? 🚀