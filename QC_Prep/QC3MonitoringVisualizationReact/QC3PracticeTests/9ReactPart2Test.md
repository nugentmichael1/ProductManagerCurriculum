# **React Advanced Concepts Knowledge Test**  

This test evaluates your understanding of **React rendering, routing, state management, immutability, forms, navigation, and feedback components.**  

---

## **Section 1: Multiple Choice** (Choose the best answer)  

1. **Which of the following triggers a re-render in a React component?**  
   - a) Changing the DOM directly  
   - b) Updating state using `useState`  
   - c) Console logging inside `render()`  
   - d) Importing another component  

2. **Which hook is required for managing component state in functional components?**  
   - a) `useEffect`  
   - b) `useMemo`  
   - c) `useState`  
   - d) `useReducer`  

3. **Why should React state updates be immutable?**  
   - a) To prevent unnecessary re-renders  
   - b) To allow child components to update parent state  
   - c) Because React only works with primitive values  
   - d) To prevent functions from executing inside components  

4. **Which package must be installed to handle routing in a React application?**  
   - a) `react-redux`  
   - b) `react-router-dom`  
   - c) `react-navigation`  
   - d) `react-route`  

5. **What does `e.preventDefault()` do inside a form submission handler?**  
   - a) Prevents React from throwing errors  
   - b) Stops the default page refresh when submitting a form  
   - c) Clears form inputs automatically  
   - d) Blocks JavaScript execution inside the form  

---

## **Section 2: True or False**  

6. **React's Virtual DOM allows for direct modification of DOM elements.**  
7. **The `useState` hook can store arrays and objects, not just primitive values.**  
8. **React Router’s `<Link>` component performs a full-page reload when clicked.**  
9. **Child components in React can modify the parent component’s state directly.**  
10. **Feedback components, such as loaders and snackbars, improve user experience by providing immediate responses.**  

---

## **Section 3: Fill in the Blanks**  

11. **In React, re-rendering occurs when ______ or ______ change.**  
12. **To prevent full-page reloads while navigating between components, we use the `<______>` component from React Router.**  
13. **To avoid mutating state, you should use the ______ operator when updating arrays or objects.**  
14. **When a form is controlled, its input values are stored in ______ rather than the DOM.**  
15. **A component that shares state between multiple child components is practicing ______.**  

---

## **Section 4: Code Output & Error Detection**  

16. **What will be the output when clicking the button?**  
   ```jsx
   import { useState } from "react";

   function Counter() {
     const [count, setCount] = useState(0);
     return (
       <div>
         <p>Count: {count}</p>
         <button onClick={() => setCount(count + 1)}>Increase</button>
       </div>
     );
   }
   ```
   - a) The page refreshes and count remains 0  
   - b) The count increases by 1 each time the button is clicked  
   - c) The button stops working after one click  
   - d) The code throws an error  

17. **What will happen if this form component runs?**  
   ```jsx
   function FormExample() {
     const [name, setName] = useState("");

     return (
       <form>
         <input type="text" value={name} />
         <p>You entered: {name}</p>
       </form>
     );
   }
   ```
   - a) The input field will be editable  
   - b) The input field will not allow typing  
   - c) The name variable will update automatically  
   - d) The form will submit without issues  

18. **What will be displayed when clicking the button in this routing setup?**  
   ```jsx
   import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";

   function Home() {
     return <h1>Home Page</h1>;
   }

   function About() {
     return <h1>About Page</h1>;
   }

   function App() {
     return (
       <Router>
         <nav>
           <Link to="/">Home</Link>
           <Link to="/about">About</Link>
         </nav>
         <Routes>
           <Route path="/" element={<Home />} />
           <Route path="/about" element={<About />} />
         </Routes>
       </Router>
     );
   }
   ```
   - a) Clicking "About" will navigate to the about page without reloading the page  
   - b) Clicking "About" will cause a full-page reload  
   - c) The navigation will not work  
   - d) The application will throw an error  

---

## **Section 5: Practical Application Questions**  

19. **Modify the following code to correctly update state using `useState`.**  
   ```jsx
   function Counter() {
     let count = 0;
     return <button onClick={() => count++}>Click Me</button>;
   }
   ```

20. **Write a function that prevents form submission and logs the input value to the console.**  
   ```jsx
   function SubmitForm() {
     const [email, setEmail] = useState("");

     const handleSubmit = (e) => {
       // Your implementation
     };

     return (
       <form onSubmit={handleSubmit}>
         <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} />
         <button type="submit">Submit</button>
       </form>
     );
   }
   ```

21. **Fix the following routing code to ensure the links navigate properly without reloading the page.**  
   ```jsx
   function Navbar() {
     return (
       <nav>
         <a href="/">Home</a>
         <a href="/about">About</a>
       </nav>
     );
   }
   ```

22. **Write a React component that displays a loading spinner while data is being fetched.**  
   ```jsx
   function Loader() {
     // Your implementation
   }
   ```

---

## **Scoring Guide**  
- **20-22 Correct** → 🎉 React & SPA Expert!  
- **15-19 Correct** → 💡 Strong Understanding of React  
- **10-14 Correct** → 🛠 Needs More Practice  
- **0-9 Correct** → 📖 Time to Review React Concepts  

---

Would you like **real-world React project exercises** to apply these concepts? 🚀