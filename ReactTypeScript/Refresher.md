Here’s a **React + TypeScript refresher** that covers the **fundamentals, common patterns, and best practices** to get you back up to speed quickly.

---

## **1️⃣ Setting Up a React + TypeScript Project**
If you’re starting a new project, use Vite for a fast setup:
```bash
npm create vite@latest my-app --template react-ts
cd my-app
npm install
npm run dev
```

Or using Create React App (slower):
```bash
npx create-react-app my-app --template typescript
```

---

## **2️⃣ Basic TypeScript in React**
### **a) Typing Props**
Props are passed to a component as an object. You define a TypeScript interface or type to enforce structure.

```tsx
type ButtonProps = {
  text: string;
  onClick: () => void;
};

const Button: React.FC<ButtonProps> = ({ text, onClick }) => {
  return <button onClick={onClick}>{text}</button>;
};
```

### **b) Typing State with `useState`**
When using `useState`, **explicitly type the state** if TypeScript can’t infer it.

```tsx
import { useState } from "react";

const Counter = () => {
  const [count, setCount] = useState<number>(0);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </div>
  );
};
```

### **c) Typing Events**
When handling events, **TypeScript requires specific types**.

```tsx
const InputField = () => {
  const [value, setValue] = useState<string>("");

  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setValue(event.target.value);
  };

  return <input type="text" value={value} onChange={handleChange} />;
};
```

---

## **3️⃣ Components & Props Best Practices**
### **a) Default Props & Optional Props**
```tsx
type UserProfileProps = {
  name: string;
  age?: number; // Optional
};

const UserProfile: React.FC<UserProfileProps> = ({ name, age = 18 }) => {
  return (
    <div>
      <h2>{name}</h2>
      <p>Age: {age}</p>
    </div>
  );
};
```

### **b) Children Props**
```tsx
type ContainerProps = {
  children: React.ReactNode;
};

const Container: React.FC<ContainerProps> = ({ children }) => {
  return <div className="container">{children}</div>;
};
```

---

## **4️⃣ Handling API Calls with Axios**
```tsx
import { useEffect, useState } from "react";
import axios from "axios";

type User = {
  id: number;
  name: string;
  email: string;
};

const UserList = () => {
  const [users, setUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    axios.get<User[]>("https://jsonplaceholder.typicode.com/users")
      .then((response) => setUsers(response.data))
      .finally(() => setLoading(false));
  }, []);

  return (
    <div>
      {loading ? <p>Loading...</p> : users.map(user => <p key={user.id}>{user.name}</p>)}
    </div>
  );
};
```

---

## **5️⃣ React Context API + TypeScript**
Context API is useful for state management.

### **a) Creating a Context**
```tsx
import { createContext, useContext, useState } from "react";

type AuthContextType = {
  isAuthenticated: boolean;
  login: () => void;
  logout: () => void;
};

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export const AuthProvider = ({ children }: { children: React.ReactNode }) => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  const login = () => setIsAuthenticated(true);
  const logout = () => setIsAuthenticated(false);

  return (
    <AuthContext.Provider value={{ isAuthenticated, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) throw new Error("useAuth must be used within an AuthProvider");
  return context;
};
```

### **b) Using Context in Components**
```tsx
const Navbar = () => {
  const { isAuthenticated, login, logout } = useAuth();

  return (
    <nav>
      {isAuthenticated ? (
        <button onClick={logout}>Logout</button>
      ) : (
        <button onClick={login}>Login</button>
      )}
    </nav>
  );
};
```

---

## **6️⃣ React Router with TypeScript**
```tsx
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";

const Home = () => <h1>Home</h1>;
const About = () => <h1>About</h1>;

const App = () => {
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
};

export default App;
```

---

## **7️⃣ Type-Safe Forms with React Hook Form**
React Hook Form makes form handling easier and type-safe.

```tsx
import { useForm } from "react-hook-form";

type FormData = {
  username: string;
  email: string;
};

const SignupForm = () => {
  const { register, handleSubmit } = useForm<FormData>();

  const onSubmit = (data: FormData) => console.log(data);

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      <input {...register("username")} placeholder="Username" />
      <input {...register("email")} placeholder="Email" />
      <button type="submit">Submit</button>
    </form>
  );
};
```

---

## **8️⃣ Custom Hooks in TypeScript**
```tsx
import { useState, useEffect } from "react";

const useFetch = <T,>(url: string) => {
  const [data, setData] = useState<T | null>(null);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    fetch(url)
      .then((res) => res.json())
      .then((data: T) => setData(data))
      .finally(() => setLoading(false));
  }, [url]);

  return { data, loading };
};

const App = () => {
  const { data, loading } = useFetch<{ title: string }>(
    "https://jsonplaceholder.typicode.com/todos/1"
  );

  return <div>{loading ? "Loading..." : data?.title}</div>;
};
```

---

## **9️⃣ Performance Optimizations**
### **Memoization with `useMemo`**
```tsx
const expensiveCalculation = (num: number) => {
  console.log("Calculating...");
  return num * 2;
};

const MemoExample = ({ number }: { number: number }) => {
  const result = useMemo(() => expensiveCalculation(number), [number]);

  return <p>Result: {result}</p>;
};
```

### **Optimizing Functions with `useCallback`**
```tsx
const Parent = () => {
  const handleClick = useCallback(() => {
    console.log("Clicked!");
  }, []);

  return <Child onClick={handleClick} />;
};

const Child = ({ onClick }: { onClick: () => void }) => {
  return <button onClick={onClick}>Click me</button>;
};
```

---

## **🔹 Summary**
This refresher covered:
✅ Props, state, events  
✅ API calls with Axios  
✅ Context API  
✅ React Router  
✅ Forms with React Hook Form  
✅ Custom Hooks  
✅ Performance optimizations

Would you like me to focus more on a specific area? 🚀