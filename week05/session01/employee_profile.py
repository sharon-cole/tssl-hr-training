employee_id = input("Enter Employee ID: ")
name = input("Enter Employee Name: ")
department = input("Enter Department: ")

employee_id = employee_id.strip()
name = name.strip()
department = department.strip()

if len(employee_id) < 3:
    print("Invalid Employee ID. ID must contain at least 3 characters.")

elif len(name) < 2:
    print("Invalid Name. Name must contain at least 2 characters.")

elif len(department) == 0:
    print("Invalid Department. Department cannot be empty.")

else:
    print("\nEmployee Profile Summary")
    print("Employee ID:", employee_id)
    print("Name:", name)
    print("Department:", department)

print("\nDemo only. Nothing is stored after this run.")