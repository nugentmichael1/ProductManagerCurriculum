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

4. **What is the main difference between a controlled and an uncontrolled component?**  
   a) Controlled components store their state in the DOM, while uncontrolled components use React state  
   b) Controlled components use React state, while uncontrolled components rely on the DOM for state  
   c) Controlled components can only be used with hooks, while uncontrolled components require class components  
   d) There is no difference between controlled and uncontrolled components  

5. **Which hook would you use to store a reference to a DOM element without causing re-renders?**  
   a) `useEffect`  
   b) `useContext`  
   c) `useState`  
   d) `useRef`  

6. **What is a Higher Order Component (HOC)?**  
   a) A function that creates a new stateful component  
   b) A component that calls another component inside `useEffect`  
   c) A function that takes a component and returns an enhanced component  
   d) A function used to create context providers  

7. **Which hook is commonly used for optimizing expensive calculations in React?**  
   a) `useReducer`  
   b) `useMemo`  
   c) `useRef`  
   d) `useEffect`  

8. **What is the primary purpose of `useEffect`?**  
   a) To manage component state  
   b) To handle side effects, such as data fetching and event listeners  
   c) To replace class components  
   d) To memoize expensive calculations  

9. **Which of the following is true about `useReducer`?**  
   a) It replaces the need for `useEffect`  
   b) It is an alternative to `useState` for managing complex state logic  
   c) It cannot be used in function components  
   d) It is used to access the value from a context  

10. **Which testing library is commonly used for unit testing React components?**  
   a) Mocha  
   b) Jest  
   c) Selenium  
   d) Postman  

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

## **Section 3: Short Answer Questions**  
(Answer briefly)

21. **What are some common use cases for React Context?**  
22. **How does a controlled component differ from an uncontrolled component in React?**  
23. **What is the purpose of `useMemo` and `useCallback`, and how do they help optimize performance?**  
24. **What is the role of `useReducer` in managing state, and when would you use it instead of `useState`?**  
25. **Describe a real-world scenario where you would use `useRef`.**  

---

## **Section 4: Scenario-Based Questions**  
(Answer in a few sentences)

26. **You are building a React form where the user inputs their name and email. Should you use a controlled or uncontrolled component, and why?**  

27. **You want to apply global theming across your React application. What approach should you take using React Context?**  

28. **Your application is experiencing performance issues due to unnecessary function re-renders. Which hook can you use to optimize this, and how would you implement it?**  

29. **A button in your React component should display the last value of `count` before it was updated. Which hook would you use, and how would you implement it?**  

30. **A navigation bar needs to be styled using Material UI, and its buttons should navigate between pages using React Router. How would you implement this?**  

---

This practice test covers **React Context, Controlled vs. Uncontrolled Components, HOCs, Hooks, Testing, and Material UI integration with React Router**. Let me know if you want modifications or additional topics! 🚀