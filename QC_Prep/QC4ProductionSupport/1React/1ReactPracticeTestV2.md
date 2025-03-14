# **React Practice Test**

## **Section 1: Multiple Choice Questions (MCQs)**  
(Choose the correct answer)

1. **What is the primary purpose of React Context?**  
   a) To replace Redux entirely  
   b) To manage and share state globally without prop drilling  
   c) To create reusable UI components  
   d) To handle side effects in React components  

2. **Which of the following correctly initializes a React Context?**  
   a) `const MyContext = useContext("default")`  
   b) `const MyContext = React.createContext("default")`  
   c) `const MyContext = new ContextProvider()`  
   d) `const MyContext = React.useState("default")`  

3. **Which React hook is used to access a value from a Context?**  
   a) `useState()`  
   b) `useEffect()`  
   c) `useContext()`  
   d) `useReducer()`  

4. **Which hook would you use to store a reference to a DOM element without causing re-renders?**  
   a) `useEffect`  
   b) `useContext`  
   c) `useState`  
   d) `useRef`  

5. **What is a Higher Order Component (HOC)?**  
   a) A function that creates a new stateful component  
   b) A component that calls another component inside `useEffect`  
   c) A function that takes a component and returns an enhanced component  
   d) A function used to create context providers  

6. **Which hook is commonly used for optimizing expensive calculations in React?**  
   a) `useReducer`  
   b) `useMemo`  
   c) `useRef`  
   d) `useEffect`  

7. **What is the primary purpose of `useEffect`?**  
   a) To manage component state  
   b) To handle side effects, such as data fetching and event listeners  
   c) To replace class components  
   d) To memoize expensive calculations  

8. **Which of the following is true about `useReducer`?**  
   a) It replaces the need for `useEffect`  
   b) It is an alternative to `useState` for managing complex state logic  
   c) It cannot be used in function components  
   d) It is used to access the value from a context  

9. **Which testing library is commonly used for unit testing React components?**  
   a) Mocha  
   b) Jest  
   c) Selenium  
   d) Postman  

10. **Which React feature is best suited for passing data deeply through a component tree without prop drilling?**  
    a) Props  
    b) Redux  
    c) Context API  
    d) State  

---

## **Section 2: True or False**  
(Write "True" or "False")

11. **React Context is a suitable replacement for Redux in all cases.**  
12. **An uncontrolled component’s state is managed by React rather than the DOM.**  
13. **A Higher Order Component (HOC) is a pattern used to reuse component logic.**  
14. **`useMemo` is used to prevent unnecessary re-renders of a function.**  
15. **`useEffect` runs before the component renders by default.**  
16. **React Testing Library is used to test React components in isolation.**  
17. **`useRef` can be used to store a previous state value across renders.**  
18. **Material UI provides prebuilt UI components for React applications.**  
19. **React Router can be used with Material UI’s `Button` component to create navigation links.**  
20. **End-to-End (E2E) testing focuses on testing individual functions in a component.**  

---

## **Section 3: Coding Problems**  
(Write a functionally correct React code snippet)

21. **Create a simple React Context for managing a theme (light/dark) and provide it to a component.**  

22. **Write a controlled component for an input field where the user’s input is stored in state and displayed in a paragraph below the input field.**  

23. **Create a custom hook called `usePrevious` that stores the previous state value and returns it.**  

24. **Write a Higher Order Component (HOC) that logs the rendering of a wrapped component.**  

25. **Write a functional component that uses `useEffect` to fetch and display data from an API (`https://jsonplaceholder.typicode.com/posts/1`). Show the title in an `<h2>` tag.**  

---

## **Section 4: Debugging & Optimization**  
(Fix the following code snippets)

26. **Fix the bug in this `useEffect` implementation:**
   ```jsx
   function Timer() {
     const [count, setCount] = useState(0);

     useEffect(() => {
       setInterval(() => {
         setCount(count + 1);
       }, 1000);
     }, []);

     return <p>Count: {count}</p>;
   }
   ```
   _What’s wrong with this code? Fix it._

---

27. **Fix the incorrect usage of a controlled input component:**
   ```jsx
   function InputComponent() {
     const [text, setText] = useState();

     return (
       <input 
         type="text" 
         value={text} 
         onChange={(e) => setText(e.target.value)}
       />
     );
   }
   ```
   _What’s wrong with this code? Fix it._

---

28. **Fix the issue in this React Router setup where the navigation buttons don’t work correctly:**
   ```jsx
   import { BrowserRouter as Router, Route, Link } from "react-router-dom";

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
           <button component={Link} to="/">Home</button>
           <button component={Link} to="/about">About</button>
         </nav>
         <Route path="/" element={<Home />} />
         <Route path="/about" element={<About />} />
       </Router>
     );
   }
   ```
   _Identify the problem and fix it._

---

29. **Fix the `useRef` implementation so that clicking the button focuses on the input field:**
   ```jsx
   function FocusInput() {
     const inputRef = useRef();

     return (
       <div>
         <input ref={inputRef} type="text" />
         <button onClick={inputRef.focus}>Focus Input</button>
       </div>
     );
   }
   ```
   _What’s wrong with this code? Fix it._

---

30. **Fix the issue with missing dependencies in this `useEffect` dependency array:**
   ```jsx
   function Counter() {
     const [count, setCount] = useState(0);

     useEffect(() => {
       console.log(`Count is now: ${count}`);
     }, []);

     return (
       <div>
         <p>Count: {count}</p>
         <button onClick={() => setCount(count + 1)}>Increase</button>
       </div>
     );
   }
   ```
   _What’s wrong with this code? Fix it._

---

### **Conclusion**
This test covers **React Context, Controlled & Uncontrolled Components, Hooks, HOCs, Testing, React Router, and Debugging Common Issues** with a mix of **MCQs, True/False, Coding Problems, and Debugging Tasks**.

Let me know if you need more variations or additional difficulty levels! 🚀