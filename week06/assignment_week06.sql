-- WEEK 6 ASSIGNMENT: EQUIPMENT REGISTER

-- PART A: READ DATA

-- A1: List all departments alphabetically
SELECT department_id, department_name
FROM departments
ORDER BY department_name ASC;

-- A2: Active employees in department 10
SELECT employee_code, full_name
FROM employees
WHERE department_id = 10
AND active = TRUE;

-- A3: Count active employees
SELECT COUNT(*) AS active_employees
FROM employees
WHERE active = TRUE;

-- A4: List all employees, newest starter first
SELECT employee_code, full_name, start_date
FROM employees
ORDER BY start_date DESC;

-- A5: Employees who started on or after 1 March 2026
SELECT employee_code, full_name, start_date
FROM employees
WHERE start_date >= '2026-03-01'
ORDER BY start_date ASC;

-- A6: Count employees in Logistics
SELECT COUNT(*) AS logistics_employees
FROM employees
WHERE department_id = 30;


-- PART B: CREATE EQUIPMENT TABLE

CREATE TABLE equipment (
    asset_tag VARCHAR(20) PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    serial_number VARCHAR(50) NOT NULL UNIQUE,
    employee_code VARCHAR(20) NOT NULL
        REFERENCES employees(employee_code) ON DELETE RESTRICT,
    issued_date DATE NOT NULL,
    returned BOOLEAN NOT NULL DEFAULT FALSE
);


-- PART C: INSERT EQUIPMENT

BEGIN;

INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date)
VALUES
('AST001', 'Laptop', 'SN-1001', 'EMP001', '2026-01-12'),
('AST002', 'Monitor', 'SN-1002', 'EMP001', '2026-01-12'),
('AST003', 'Laptop', 'SN-1003', 'EMP002', '2026-02-02'),
('AST005', 'Laptop', 'SN-1005', 'EMP004', '2026-04-06');

INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date, returned)
VALUES
('AST004', 'Headset', 'SN-1004', 'EMP003', '2026-03-09', TRUE);

COMMIT;

-- C1: Display all equipment
SELECT *
FROM equipment
ORDER BY asset_tag;

-- C2: Count all equipment
SELECT COUNT(*) AS total_items
FROM equipment;

-- C3: Count items not returned
SELECT COUNT(*) AS unreturned_items
FROM equipment
WHERE returned = FALSE;

-- C4: Items held by EMP001
SELECT asset_tag, item_name, serial_number
FROM equipment
WHERE employee_code = 'EMP001';


-- PART D: CHANGE SAFELY

-- D1: Mark AST003 as returned
BEGIN;

UPDATE equipment
SET returned = TRUE
WHERE asset_tag = 'AST003';

SELECT *
FROM equipment
WHERE asset_tag = 'AST003';

COMMIT;

-- Count items not returned
SELECT COUNT(*) AS unreturned_items
FROM equipment
WHERE returned = FALSE;


-- D2: Delete headset AST004
BEGIN;

DELETE FROM equipment
WHERE asset_tag = 'AST004';

SELECT COUNT(*) AS total_items
FROM equipment;

COMMIT;


-- D3: Missing WHERE drill
BEGIN;

UPDATE equipment
SET returned = TRUE;

SELECT COUNT(*)
FROM equipment
WHERE returned = TRUE;

ROLLBACK;

SELECT COUNT(*)
FROM equipment
WHERE returned = TRUE;


-- D4.1: Duplicate asset tag (expected error)
INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date)
VALUES
('AST001', 'Mouse', 'SN-2001', 'EMP002', '2026-05-04');


-- D4.2: Duplicate serial number (expected error)
INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date)
VALUES
('AST006', 'Mouse', 'SN-1001', 'EMP002', '2026-05-04');


-- D4.3: Invalid employee code (expected error)
INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date)
VALUES
('AST007', 'Mouse', 'SN-2007', 'EMP777', '2026-05-04');


-- D4.4: NULL item name (expected error)
INSERT INTO equipment
(asset_tag, item_name, serial_number, employee_code, issued_date)
VALUES
('AST008', NULL, 'SN-2008', 'EMP002', '2026-05-04');


-- D4: Final equipment count
SELECT COUNT(*) AS total_items
FROM equipment;


-- D5: Attempt to delete EMP001
BEGIN;

DELETE FROM employees
WHERE employee_code = 'EMP001';

-- If the DELETE fails, run ROLLBACK separately.
ROLLBACK;


-- PART E: FINAL CHECKS

SELECT COUNT(*) FROM departments;

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM equipment;