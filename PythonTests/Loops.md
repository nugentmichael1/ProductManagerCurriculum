### **Test: Python Loops**  
**Total Marks:** 20  
**Instructions:** Answer the following questions carefully.  

---

### **Section 1: Multiple Choice Questions (MCQs)** (2 marks each)

**1. What will be the output of the following code?**  
```python
count = 0
while count < 3:
    print(count, end=' ')
    count += 1
```
   a) `0 1 2`  
   b) `1 2 3`  
   c) `0 1 2 3`  
   d) `0 1`  

**2. What happens when an `else` block is used with a `while` loop?**  
   a) The `else` block executes only if an exception occurs inside the loop.  
   b) The `else` block executes only if the loop terminates normally (i.e., condition becomes False).  
   c) The `else` block runs even if a `break` statement is encountered.  
   d) The `else` block is ignored by Python.  

**3. What will be the output of the following code?**  
```python
for letter in 'Python': 
    if letter == 'h':
        break
    print(letter, end=' ')
```
   a) `P y t`  
   b) `P y t o n`  
   c) `P y t h o n`  
   d) `P y`  

**4. What does the `continue` statement do inside a loop?**  
   a) It stops the loop execution completely.  
   b) It skips the current iteration and moves to the next iteration.  
   c) It returns a value from the loop.  
   d) It executes the next statement outside the loop.  

**5. What does the following nested loop print?**  
```python
for i in range(3):
    for j in range(2):
        print(f'({i}, {j})', end=' ')
```
   a) `(0, 0) (0, 1) (1, 0) (1, 1) (2, 0) (2, 1)`  
   b) `(0, 0) (1, 1) (2, 2)`  
   c) `(0, 1) (1, 2) (2, 3)`  
   d) `(0, 0) (1, 0) (2, 0) (0, 1) (1, 1) (2, 1)`  

---

### **Section 2: True/False** (1 mark each)  

**6.** The `while` loop executes at least once, even if the condition is initially False. **(True/False)**  

**7.** A `for` loop can iterate over strings, lists, tuples, and ranges. **(True/False)**  

**8.** The `range()` function generates values from `0` to `n`, including `n`. **(True/False)**  

**9.** A `break` statement terminates the loop immediately and transfers control to the next statement outside the loop. **(True/False)**  

**10.** A `pass` statement inside a loop causes an immediate termination of the loop. **(True/False)**  

---

### **Section 3: Fill in the Blanks** (1 mark each)

**11.** The keyword `______` is used to skip the current iteration of a loop and continue with the next one.  

**12.** The `______` function in Python generates a sequence of numbers, commonly used in loops.  

**13.** The `______` statement is used inside a loop to terminate it immediately.  

**14.** A `for` loop with `enumerate()` provides both the `______` and the `______` of each item in an iterable.  

**15.** The `______` loop is best used when the number of iterations is not known in advance, whereas a `______` loop is used when the number of iterations is predetermined.  

---

### **Section 4: Short Answer Questions** (2 marks each)  

**16.** Write a Python `while` loop to print the numbers from `1` to `5`.  

**17.** What will be the output of the following code? Explain.  
```python
i = 1
while i < 5:
    print(i, end=' ')
    i += 2
```

**18.** What is the difference between `break` and `continue` statements in loops? Provide an example for each.  

**19.** Given the following list:  
```python
fruits = ['apple', 'banana', 'cherry']
```
Write a `for` loop to print each fruit along with its index.  

**20.** Write a nested loop to generate the following output:  
```
*
* *
* * *
* * * *
* * * * *
```

---

### **End of Test**
Let me know if you need modifications or a more advanced challenge! 🚀