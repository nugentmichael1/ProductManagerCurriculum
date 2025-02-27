Here is a well-structured test on **Classes and Objects in Python** with proper formatting.

---

# **Python Test: Classes and Objects**

## **Section 1: Multiple Choice Questions (MCQs)**
**(2 points each)**

**1.** What is the purpose of the `__init__()` method in a Python class?  
   a) It is a method that gets called when an object is deleted.  
   b) It initializes the instance variables when an object is created.  
   c) It is used to define the destructor of a class.  
   d) It is used to define static methods.  

**2.** How do you create an instance of a class named `Student`?  
   a) `Student s = new Student()`  
   b) `s = Student()`  
   c) `s = Student.create()`  
   d) `s = Student.new()`  

**3.** What is the output of the following code?
   ```python
   class Sample:
       x = 10

   s1 = Sample()
   s2 = Sample()
   s1.x += 5
   print(s2.x)
   ```
   a) `10`  
   b) `15`  
   c) `5`  
   d) `Error`  

**4.** Which of the following is true about instance variables in Python?  
   a) They are shared among all instances of a class.  
   b) They are defined inside the class and accessed directly using the class name.  
   c) They are unique to each instance of the class.  
   d) They cannot be changed once initialized.  

**5.** What is the correct way to call an instance method named `talk()` of an object `s1`?  
   a) `Student.talk()`  
   b) `s1.talk()`  
   c) `talk(s1)`  
   d) `Student().talk()`  

---

## **Section 2: True or False**
**(1 point each)**

**6.** The `self` variable is automatically passed to all instance methods in Python.  

**7.** The `__init__` method is called automatically when an object is created.  

**8.** A class variable is created inside the constructor using `self.var_name`.  

**9.** Static methods cannot access instance variables.  

**10.** The `classmethod` decorator allows a method to access only instance variables.  

---

## **Section 3: Fill in the Blanks**
**(2 points each)**

**11.** The special method `__________` is used to initialize instance variables in a class.  

**12.** The keyword `__________` is used to define a class in Python.  

**13.** A method that does not require access to instance variables is called a `__________` method.  

**14.** To define a class variable, we use `__________` inside the class but outside any method.  

**15.** The `__________` decorator is used to define a method that belongs to the class rather than instances.  

---

## **Section 4: Coding Questions**
**(5 points each)**

**16.** Write a Python program to create a `Car` class with instance variables `brand`, `model`, and `year`. Include a method `display()` that prints the car details. Create an object and call `display()`.  

**17.** Modify the `Student` class below so that it takes the `name` and `marks` as parameters when creating an object. Also, create an instance and display the details.
   ```python
   class Student:
       def __init__(self):
           self.name = "Default"
           self.marks = 0

       def display(self):
           print(f"Student Name: {self.name}, Marks: {self.marks}")
   ```

**18.** Create a `BankAccount` class with a constructor that initializes `balance`. Implement a `deposit()` and `withdraw()` method. Ensure that withdrawals do not exceed the balance.  

**19.** Define a `Bird` class with a class variable `wings = 2`. Create a class method `fly()` that prints the number of wings for a given bird. Use the `@classmethod` decorator.  

**20.** Create a class `MathOperations` with a static method `square(num)` that returns the square of a number. Call the static method using the class name.  

---

### **Scoring Guide**
- **Each MCQ**: 2 points  
- **Each True/False**: 1 point  
- **Each Fill in the Blank**: 2 points  
- **Each Coding Question**: 5 points  

**Total Marks: 50**

---

This test is now well-structured with clear formatting and sectioning. Let me know if you need any modifications! 🚀