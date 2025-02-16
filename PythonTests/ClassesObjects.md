**Python Classes and Objects - Test**

**Multiple Choice Questions:**
1. What is the primary purpose of a class in Python?
   a) To execute a function once
   b) To store a collection of related functions
   c) To create objects with attributes and methods
   d) To execute a script in a structured way

2. What does the `self` keyword represent in a class?
   a) A reference to the instance of the class
   b) A reference to the class itself
   c) A placeholder for future attributes
   d) A reserved Python keyword

3. What is the special method `__init__()` used for?
   a) To destroy an instance of a class
   b) To define static methods
   c) To initialize instance variables
   d) To create class methods

4. How do you create an instance of a class named `Car`?
   a) `Car.new()`
   b) `Car.create()`
   c) `Car.instance()`
   d) `car = Car()`

5. What is an instance variable?
   a) A variable shared among all instances of a class
   b) A variable specific to each instance of a class
   c) A variable that cannot be modified
   d) A variable declared outside any class

**True/False Questions:**
6. A class variable is unique to each instance of a class. _(True/False)_
7. The `__init__` method is optional in a class definition. _(True/False)_
8. A static method can access and modify instance variables. _(True/False)_
9. `@classmethod` methods can be accessed using the class name. _(True/False)_
10. Inner classes in Python are required to be instantiated inside the outer class. _(True/False)_

**Short Answer Questions:**
11. What is the difference between an instance variable and a class variable?
12. How do you define a class method in Python?
13. How does a constructor (`__init__`) help in object initialization?
14. Explain how to create and use an inner class.
15. What is the primary use of `@staticmethod` in Python?

**Code-Based Questions:**
16. Write a Python class `Student` that includes:
   - Attributes: `name` (string) and `marks` (integer)
   - A method `display()` that prints the name and marks

17. Modify the `Student` class to include:
   - A constructor that accepts `name` and `marks` as arguments
   - A method `calculate_grade()` that prints "First Grade" if marks are 600 or more, "Second Grade" if 500 or more, "Third Grade" if 350 or more, and "Failed" otherwise

18. Write a Python class `BankAccount` with:
   - Attributes: `account_holder`, `balance`
   - Methods: `deposit(amount)`, `withdraw(amount)`, and `display_balance()`
   - Ensure that a withdrawal cannot exceed the balance

19. Implement a class method in a class `Bird` with a class variable `wings = 2`, and a method `fly(name)` that prints `"<name> flies with 2 wings"`.

20. Create a class `Employee` with an instance method `display()`, and then create a static method that calculates the square of a given number.

---

**End of Test**

