Here is a **Python 3 - Date & Time Test** based on the information you provided. The test includes **multiple-choice questions (MCQs), fill-in-the-blanks, true/false, and coding exercises** to assess comprehension.

---

### **Python 3 - Date & Time Test**

#### **Section 1: Multiple Choice Questions (MCQs)**
**1.** What does the function `time.time()` return?  
   a) The current local time in human-readable format  
   b) The number of seconds elapsed since 12:00 AM, January 1, 1970 (epoch)  
   c) The CPU execution time of the program  
   d) The UTC time as a struct_time object  

**2.** Which of the following modules is commonly used for handling time in Python?  
   a) `datetime`  
   b) `time`  
   c) `calendar`  
   d) All of the above  

**3.** What is the valid range for **tm_mon** in a `time.struct_time` object?  
   a) 0 to 11  
   b) 1 to 12  
   c) 1 to 31  
   d) 0 to 23  

**4.** What does the function `time.sleep(5)` do?  
   a) Pauses execution for 5 milliseconds  
   b) Pauses execution for 5 seconds  
   c) Prints the time after 5 seconds  
   d) Converts 5 seconds into struct_time format  

**5.** What does `time.strftime("%Y-%m-%d %H:%M:%S")` return?  
   a) The time in epoch format  
   b) The time in "YYYY-MM-DD HH:MM:SS" format  
   c) A tuple representing the current time  
   d) None of the above  

---

#### **Section 2: Fill in the Blanks**
**6.** The method `_________()` is used to convert a time expressed in seconds since the epoch to a struct_time in UTC.  

**7.** The function `time.asctime()` returns the time as a ______________ string in a human-readable format.  

**8.** In a `time.struct_time` object, the **day of the week** is represented by an integer where Monday is represented as `____`.  

**9.** The function `time.mktime()` converts a **struct_time** tuple into a ____________.  

**10.** The `calendar` module allows us to print a full calendar for a given month using the method `____________`.  

---

#### **Section 3: True or False**
**11.** `time.ctime()` returns the current time in a **UTC format**. (True/False)  

**12.** The function `time.gmtime()` always sets the DST flag (`tm_isdst`) to **0**. (True/False)  

**13.** The `time.altzone` function returns the **offset of the local DST timezone** in seconds **west** of UTC. (True/False)  

**14.** The function `time.clock()` is still used in modern versions of Python to measure execution time. (True/False)  

**15.** The `strftime()` function is used to format a time structure into a **human-readable string**. (True/False)  

---

#### **Section 4: Coding Questions**
**16.** Write a Python program to get the current time in human-readable format using `asctime()`.  
```python
import time
# Your code here
```

**17.** Write a Python program to print the current time in the format: **"YYYY-MM-DD HH:MM:SS"** using `strftime()`.  
```python
import time
# Your code here
```

**18.** Write a Python program to print a **calendar for January 2025** using the `calendar` module.  
```python
import calendar
# Your code here
```

**19.** Convert the following `struct_time` tuple into seconds using `mktime()`:  
```python
import time
t = (2025, 3, 10, 14, 30, 45, 0, 69, 0)
# Your code here
```

**20.** Write a Python program that pauses execution for **3 seconds** using the `sleep()` function.  
```python
import time
# Your code here
```

---

This test covers **concepts, functions, and methods** related to Python's `time` and `calendar` modules. Let me know if you’d like any modifications or explanations! 🚀