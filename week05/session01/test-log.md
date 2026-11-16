# Week 5 Session 1: Employee Profile Test Log

## Test 1: Empty Employee ID

**Inputs:**
- Employee ID: Empty (pressed Enter)
- Name: Sharon Cole
- Department: Software Engineering

**Expected Output:**
Invalid Employee ID. ID must contain at least 3 characters.

**Actual Output:**
Invalid Employee ID. ID must contain at least 3 characters.

**Result:** Passed.

---

## Test 2: Employee ID with fewer than 3 characters

**Inputs:**
- Employee ID: E1
- Name: Sharon Cole
- Department: Software Engineering

**Expected Output:**
Invalid Employee ID. ID must contain at least 3 characters.

**Actual Output:**
Invalid Employee ID. ID must contain at least 3 characters.

**Result:** Passed.

---

## Test 3: Valid Employee ID

**Inputs:**
- Employee ID: EMP
- Name: Sharon Cole
- Department: Software Engineering

**Expected Output:**
Employee Profile Summary

Employee ID: EMP  
Name: Sharon Cole  
Department: Software Engineering

Demo only. Nothing is stored after this run.

**Actual Output:**
The program displayed the Employee Profile Summary with the correct employee ID, name and department, followed by the demo-only message.

**Result:** Passed.

---

## Test 4: Invalid Name

**Inputs:**
- Employee ID: EMP001
- Name: A
- Department: Software Engineering

**Expected Output:**
Invalid Name. Name must contain at least 2 characters.

**Actual Output:**
The program displayed the invalid name message. The employee summary did not appear.

**Result:** Passed.

---

## Test 5: Department Containing Only Spaces

**Inputs:**
- Employee ID: EMP001
- Name: Sharon Cole
- Department: Two spaces

**Expected Output:**
Invalid Department. Department cannot be empty.

**Actual Output:**
The program displayed the invalid department message. The employee summary did not appear.

**Result:** Passed.

---

## Overall Result

All five required tests were completed successfully.

The program correctly validates the Employee ID first, followed by the name and department. It displays the employee summary only when all inputs are valid.

The program uses input(), strip(), len(), if, elif and else to validate user input.

Demo only. Nothing is stored after this run.