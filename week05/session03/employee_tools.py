employees = []


def validate_employee(employee_id, name, department):
    if len(employee_id.strip()) < 3:
        return "Employee ID must have at least 3 characters."

    if len(name.strip()) < 2:
        return "Name must have at least 2 characters."

    if department.strip() == "":
        return "Department is required."

    return ""


def list_employees(employees):
    if len(employees) == 0:
        print("No employees in this run.")
        return

    for employee in employees:
        print(employee)


def find_employee(employees, employee_id):
    target = employee_id.strip().upper()

    for employee in employees:
        if employee["id"] == target:
            return employee

    return None


def add_employee(employees, employee_id, name, department):
    error = validate_employee(employee_id, name, department)

    if error != "":
        return error

    clean_id = employee_id.strip().upper()

    if find_employee(employees, clean_id) is not None:
        return "That employee ID already exists."

    employee = {
        "id": clean_id,
        "name": name.strip(),
        "department": department.strip(),
    }

    employees.append(employee)

    return "Added for this run only."

def count_department(employees, department):
    count = 0

    for employee in employees:
        if employee["department"].strip().lower() == department.strip().lower():
            count += 1

    return count

