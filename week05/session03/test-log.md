# Week 5 Session 3 — Employee Menu App Test Log

**Project:** Employee Menu App  
**File tested:** `employee_cli.py`

| Test | Action / Input | Expected Result | Actual Result | Status |
|---|---|---|---|---|
| 1 | Selected option 2 when the list was empty. | No employees in this run. | No employees in this run. | Passed |
| 2 | Selected option 3 and searched for EMP999. | Employee not found. | Employee not found. | Passed |
| 3 | Selected option 1 and entered EMP004, name A, department HR. | Name must have at least 2 characters. | Name must have at least 2 characters. | Passed |
| 4 | Added EMP001, Ada Demo, Engineering. | Added for this run only. | Employee added successfully. | Passed |
| 5 | Tried adding emp001, Another Demo, HR. | That employee ID already exists. | That employee ID already exists. | Passed |
| 6 | Added EMP002, Bola Demo, HR. | Added for this run only. | Employee added successfully. | Passed |
| 7 | Selected option 3 and searched for EMP002. | EMP002 \| Bola Demo \| HR | EMP002 \| Bola Demo \| HR | Passed |
| 8 | Selected option 2 to list employees. | Both employee records should appear. | Both employee records appeared correctly. | Passed |
| 9 | Selected option 5. | Total employees: 2 | Total employees: 2 | Passed |
| 10 | Entered invalid choice 9. | Choose 1, 2, 3, 4 or 5. | Invalid choice was rejected and the menu appeared again. | Passed |
| 11 | Selected option 4. | Program should exit. | Program exited successfully. | Passed |
| 12 | Restarted the program and selected option 5. | Total employees: 0 | Total employees: 0 | Passed |

**Conclusion:** All 12 required tests were completed successfully. The employee menu app performed as expected.