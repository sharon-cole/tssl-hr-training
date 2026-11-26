# WEEK 6 ASSIGNMENT ANSWERS

## PART A: READ DATA

A1. Listed all 4 departments alphabetically by department name.

A2. Returned 1 active employee in department 10.

A3. The number of active employees is 3.

A4. Listed all 4 employees, newest starter first.

A5. Returned 2 employees who started on or after 1 March 2026.

A6. The number of employees in Logistics is 1.

## PART B: EQUIPMENT TABLE

Created the equipment table with the required columns and constraints.

The asset_tag column is the primary key.
The serial_number column has a UNIQUE constraint.
The employee_code column references the employees table.
The returned column has a default value of FALSE.

## PART C: INSERT AND COMMIT

Five equipment records were successfully inserted and committed.

Total equipment: 5.

Items not returned: 4.

Items held by EMP001: 2.

AST004 was inserted with returned = TRUE.
The other four records had returned = FALSE.

The records remained in the database after committing.

## PART D: CHANGE SAFELY

D1. Updated AST003 to returned = TRUE and committed.

D2. Deleted AST004 and committed.
The total equipment count became 4.

D3. The UPDATE without WHERE temporarily affected all 4 remaining records.
The count before ROLLBACK was 4.
The count after ROLLBACK was 1.

D4.1. Duplicate asset tag AST001 was rejected by the PRIMARY KEY constraint.

D4.2. Duplicate serial number SN-1001 was rejected by the UNIQUE constraint.

D4.3. Invalid employee code EMP777 was rejected by the FOREIGN KEY constraint.

D4.4. NULL item_name was rejected by the NOT NULL constraint.

D4 final count: 4.

D5. Deleting EMP001 was rejected because equipment records reference that employee. The ON DELETE RESTRICT constraint prevents the deletion.

## PART E: FINAL COUNTS

Departments: 4.

Employees: 4.

Equipment: 4.

## WRITTEN QUESTIONS

1. A primary key uniquely identifies each row and cannot contain NULL values. The asset_tag column is the primary key. A UNIQUE column also prevents duplicate values, but serial_number is not the primary key.

2. The equipment.employee_code column references employees.employee_code to ensure that equipment is assigned only to employees who exist in the employees table.

3. Running SELECT with the same WHERE condition before UPDATE or DELETE helps confirm which records will be affected and prevents accidental changes.

4. Once a transaction has been committed, ROLLBACK cannot undo it because the changes have been permanently saved. A new transaction would be needed to make corrections.

5. An UPDATE affecting zero rows is not necessarily an error. It means no records matched the WHERE condition, so nothing was changed