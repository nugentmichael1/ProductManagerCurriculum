### **Python 3 - Exceptions Handling Test**

#### **Section 1: Multiple Choice Questions (MCQs)**
**1.** What happens when an exception is not handled in Python?  
   a) The program ignores the exception and continues running.  
   b) The program terminates immediately with an error message.  
   c) The program enters an infinite loop.  
   d) The program restarts from the beginning.  

**2.** Which of the following exceptions is raised when you try to divide a number by zero?  
   a) `ArithmeticError`  
   b) `ZeroDivisionError`  
   c) `ValueError`  
   d) `TypeError`  

**3.** Which keyword is used to handle exceptions in Python?  
   a) `catch`  
   b) `handle`  
   c) `except`  
   d) `throw`  

**4.** What will be the output of the following code?
   ```python
   try:
       num = int("Hello")
   except ValueError:
       print("Invalid input")
   ```
   a) `Invalid input`  
   b) `Hello`  
   c) `None`  
   d) `TypeError`  

**5.** What is the purpose of the `finally` block in exception handling?  
   a) It runs only if an exception occurs.  
   b) It runs only if no exception occurs.  
   c) It always runs, whether an exception occurs or not.  
   d) It prevents an exception from being raised.  

---

#### **Section 2: True or False**
**6.** The `try` block must always be followed by an `except` block.  
**7.** The `else` block in a `try-except` statement runs only if an exception is raised.  
**8.** The `raise` keyword is used to manually trigger an exception in Python.  
**9.** `IndexError` occurs when trying to access an index that does not exist in a list.  
**10.** User-defined exceptions in Python must inherit from the built-in `Exception` class.  

---

#### **Section 3: Fill in the Blanks**
**11.** The exception `__________` is raised when an invalid key is accessed in a dictionary.  
**12.** The `__________` clause executes only if no exceptions occur in the `try` block.  
**13.** The `__________` method in the `sys` module provides information about the last raised exception.  
**14.** The exception `__________` is raised when an identifier is not found in the local or global namespace.  
**15.** A `__________` error occurs when indentation is incorrect in Python code.  

---

#### **Section 4: Coding Questions**
**16.** Write a Python program that takes a number from the user and prints its reciprocal. If the user enters `0`, handle the exception and print an error message.  

**17.** Given the following dictionary:
   ```python
   data = {"name": "Alice", "age": 25}
   ```
   Write a Python program that tries to access the key `"city"`, and if it doesn’t exist, handle the exception gracefully.  

**18.** Write a function `divide_numbers(a, b)` that takes two numbers and returns their division. Handle the case when `b` is `0` using a `try-except` block.  

**19.** Define a custom exception class `NegativeNumberError` and write a Python function that raises this exception if a user inputs a negative number.  

**20.** Modify the following code to catch multiple exceptions (`ValueError` and `ZeroDivisionError` separately) and print an appropriate message for each case:
   ```python
   num = int(input("Enter a number: "))
   result = 100 / num
   print(result)
   ```

---

### **Scoring Guide**
- **Each MCQ**: 2 points  
- **Each True/False**: 1 point  
- **Each Fill in the Blank**: 2 points  
- **Each Coding Question**: 5 points  

**Total Marks: 50**  

Let me know if you want any changes! 🚀