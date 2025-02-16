### **Python File Operations Test**

#### **Section 1: Multiple Choice Questions (MCQs)**  

**1.** What does the `open()` function return when used in Python?  
   a) A string representing the file's content  
   b) A file object  
   c) The file size  
   d) A list of file names  

**2.** What mode should be used to open a file for **both reading and writing**, overwriting if it exists?  
   a) `'r'`  
   b) `'a'`  
   c) `'w+'`  
   d) `'rb+'`  

**3.** Which method is used to close a file after performing operations on it?  
   a) `file.stop()`  
   b) `file.close()`  
   c) `file.end()`  
   d) `file.quit()`  

**4.** What will happen if you try to open a file that does not exist in `'r'` mode?  
   a) A new file will be created  
   b) The file will open normally  
   c) A `FileNotFoundError` will be raised  
   d) Nothing will happen  

**5.** What does the `'b'` in file modes like `'wb'` or `'rb'` stand for?  
   a) Binary  
   b) Buffering  
   c) Backup  
   d) Basic  

---

#### **Section 2: Fill in the Blanks**  

**6.** The function `__________()` is used to read the entire content of a file as a string.  

**7.** The method `__________()` reads a file line by line and returns a list containing all lines.  

**8.** To move the file pointer to a specific location, we use `__________()` method.  

**9.** To create a new directory in Python, we use `os.__________()`.  

**10.** The `with` statement ensures that a file is properly __________ even if an error occurs during processing.  

---

#### **Section 3: True or False**  

**11.** The mode `'a'` is used to append data to a file without erasing existing content. (True/False)  

**12.** The `flush()` method is used to clear the file’s content before writing new data. (True/False)  

**13.** When using `pickle` to store Python objects in a file, the data is stored in text format. (True/False)  

**14.** The `readline()` method reads the entire file at once. (True/False)  

**15.** A binary file stores data in the form of bytes instead of characters. (True/False)  

---

#### **Section 4: Coding Questions**  

**16.** Write a Python program to **open a file in write mode**, take user input, write it to the file, and close the file.  
```python
# Your code here
```

**17.** Write a Python program that **reads the first 10 characters** of a text file named `"example.txt"`.  
```python
# Your code here
```

**18.** Write a Python program to **read a file line by line** and print each line separately.  
```python
# Your code here
```

**19.** Write a Python program that **checks whether a file exists** before attempting to read it.  
```python
# Your code here
```

**20.** Write a Python program to **copy an image file** `"source.jpg"` to `"copy.jpg"` in binary mode.  
```python
# Your code here
```

---

### **Bonus Section: Advanced File Handling**

#### **Section 5: Advanced File Handling Questions**  

**21.** Write a Python program that **uses the `with` statement** to open and read a file named `"data.txt"`.  
```python
# Your code here
```

**22.** Write a Python program to **use `pickle` to serialize and store a dictionary into a binary file**.  
```python
# Your code here
```

**23.** Write a Python program to **unpickle** the dictionary from the binary file and print its contents.  
```python
# Your code here
```

**24.** Write a Python program to **list all files in the current directory** using `os` module.  
```python
# Your code here
```

**25.** Write a Python program that **zips multiple text files** into a file named `"archive.zip"`.  
```python
# Your code here
```

---

This test evaluates **file handling, reading/writing text and binary files, error handling, directories, serialization (`pickle`), and compression (`zipfile`)**. Let me know if you need modifications! 🚀