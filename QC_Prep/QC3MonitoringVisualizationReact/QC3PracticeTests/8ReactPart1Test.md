# **React & Front-End UI Knowledge Test**  

This test evaluates your understanding of **React fundamentals, UI concepts, JSX, state, props, event handling, theming, and Material UI icons.**  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **Which of the following is NOT a feature of React?**  
   - a) Component-Based Architecture  
   - b) Virtual DOM  
   - c) Two-Way Data Binding by Default  
   - d) Declarative UI  

2. **What is the main benefit of using a Single Page Application (SPA)?**  
   - a) It reduces the need for React Router  
   - b) It requires no JavaScript  
   - c) It dynamically updates the page without full reloads  
   - d) It cannot use APIs  

3. **Which of the following correctly defines a React functional component?**  
   - a)  
     ```jsx
     class Welcome extends Component {
       render() {
         return <h1>Welcome</h1>;
       }
     }
     ```  
   - b)  
     ```jsx
     function Welcome() {
       return <h1>Welcome</h1>;
     }
     ```  
   - c)  
     ```jsx
     const Welcome = new Component("Welcome");  
     ```  
   - d)  
     ```jsx
     function Welcome() {
       console.log("Welcome");
     }
     ```  

4. **Which React event handler is used for detecting user input in a text field?**  
   - a) `onInput`  
   - b) `onKeyDown`  
   - c) `onChange`  
   - d) `onHover`  

5. **What is the purpose of using keys in React lists?**  
   - a) To apply styles to list items  
   - b) To uniquely identify elements for efficient rendering  
   - c) To bind data dynamically  
   - d) To update all components simultaneously  

---

## **Section 2: True or False**  

6. **JSX requires that elements must have a single parent element.**  
7. **A prop can be modified inside the component that receives it.**  
8. **The `useState` hook allows functional components to manage state.**  
9. **React allows inline CSS styling using JavaScript objects.**  
10. **Material UI icons can only be used with Material-UI components.**  

---

## **Section 3: Fill in the Blanks**  

11. **React applications typically use ______ for routing in Single Page Applications.**  
12. **In a React component, props are ______ and cannot be modified.**  
13. **The ______ hook is used to define and update state in functional components.**  
14. **To use JSX inside a React file, we must import ______ from React.**  
15. **A theming system in Material-UI is implemented using the `______` component.**  

---

## **Section 4: Code Output & Error Detection**  

16. **What will be the output of the following JSX code?**  
   ```jsx
   const name = "React";
   const element = <h1>Hello, {name}!</h1>;
   console.log(element);
   ```
   - a) `"Hello, React!"`  
   - b) `Hello, React!`  
   - c) `{name}`  
   - d) `Undefined`  

17. **What will happen if this React component runs?**  
   ```jsx
   function Greeting({ name }) {
     return <h1>Hello, {name.toUpperCase()}!</h1>;
   }
   ```
   - a) It will display `HELLO, NAME!`  
   - b) It will return an error if `name` is not provided  
   - c) It will display `Hello, undefined!`  
   - d) It will always show `Hello, React!`  

18. **What is the expected behavior of this `useState` hook usage?**  
   ```jsx
   function Counter() {
     const [count, setCount] = useState(0);
     return <button onClick={() => setCount(count + 1)}>Click Me</button>;
   }
   ```
   - a) The button does not change  
   - b) The button updates and displays the new count each time it's clicked  
   - c) The count resets every time the button is clicked  
   - d) The function will throw an error  

---

## **Section 5: Practical Application Questions**  

19. **Write a simple React component that accepts a `title` prop and displays it inside an `<h1>` tag.**  
   ```jsx
   function Title({ title }) {
     // Your implementation
   }
   ```

20. **Modify the following code to correctly update state using `useState`.**  
   ```jsx
   function Counter() {
     let count = 0;
     return <button onClick={() => count++}>Click Me</button>;
   }
   ```

21. **Convert the following JSX snippet into a component called `WelcomeMessage` that accepts `name` as a prop.**  
   ```jsx
   <h1>Welcome, John!</h1>
   ```

22. **Write a React component that renders a list of items dynamically from an array of strings.**  
   ```jsx
   const items = ["Item 1", "Item 2", "Item 3"];

   function ItemList() {
     // Your implementation
   }
   ```

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 React & Front-End Expert!  
- **15-19 Correct** → 💡 Strong Understanding of React  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review React Basics  

---

Would you like **hands-on React project exercises** to apply these concepts? 🚀