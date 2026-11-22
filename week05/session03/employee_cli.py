from employee_tools import add_employee, find_employee, list_employees


def main():
    employees = []
    print("Employee records demo. Fictional data only.")
    print("Records disappear when this program ends.")

    while True:
        print("\n1 Add employee | 2 List employees | 3 Find | 4 Exit | 5 Total")
        choice = input("Choose 1, 2, 3, 4 or 5: ").strip()

        if choice == "1":
            employee_id = input("Employee ID: ")
            name = input("Name: ")
            department = input("Department: ")
            message = add_employee(employees, employee_id, name, department)
            print(message)

        elif choice == "2":
            list_employees(employees)

        elif choice == "3":
            employee_id = input("Employee ID to find: ")
            employee = find_employee(employees, employee_id)

            if employee is None:
                print("Employee not found.")
            else:
                print(f"{employee['id']} | {employee['name']} | "
                      f"{employee['department']}")

        elif choice == "4":
            print("Goodbye. Demo records have not been saved.")
            break

        elif choice == "5":
            print("Total employees:", len(employees))

        else:
            print("Choose 1, 2, 3, 4 or 5.")


if __name__ == "__main__":
    main()