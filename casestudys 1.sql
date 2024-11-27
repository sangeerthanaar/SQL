use EMS;

CREATE TABLE Departments(
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);
select*from Departments;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    salary INT NOT NULL CHECK (salary > 30000),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);
select*from employees;

   create table Projects(  
     pro_id INT Primary Key Auto_Increment,
     pro_name VARCHAR(50)Not Null,
     budget INT Not Null
     Check (Budget > 10000));
     select*from Projects;
     
    CREATE TABLE Employee_Projects (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(pro_id)
);
select*from Employee_Projects;

CREATE TABLE Attendance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    date DATE NOT NULL,
    status_attends VARCHAR(10) CHECK (status_attends IN ('Present', 'Absent', 'On Leave'))
);
select*from Attendance;

INSERT INTO Departments (id, department_name)VALUES
  (1, 'Human Resources'),
  (2, 'Finance'),
  (3, 'IT'),
  (4, 'Sales'),
  (5, 'Marketing');
  select*from Departments;

INSERT INTO Employees (emp_id, emp_name, age, gender, salary, department_id) VALUES
(1, 'John Doe', 34, 'Male', 10000, 4),
(2, 'Jane Smith', 32, 'Female', 15000, 2),
(3, 'Alice Johnson', 42, 'Male', 19000, 1),
(4, 'Bob Brown', 33, 'Male', 20000, 3),
(5, 'Charlie Davis', 24, 'Male', 25000, 5);
ALTER TABLE Employees DROP CONSTRAINT employees_chk_1;

select*from employees;

INSERT INTO Projects (pro_id, pro_name, budget)VALUES
  (1, 'Employee Management System', 1000),
  (2, 'Marketing Campaign',800),
  (3, 'ERP Implementation',200);
select*from Projects;

ALTER TABLE Projects
DROP CONSTRAINT projects_chk_1;

INSERT INTO Employee_Projects (employee_id, project_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1),
  (5, 2);
select*from Employee_Projects;
INSERT INTO Attendance (id, employee_id, date, status_attends)VALUES
  (1, 1, '2024-11-01', 'Present'),
  (2, 2, '2024-11-01', 'On Leave'),
  (3, 3, '2024-11-01', 'Present'),
  (4, 4, '2024-11-01', 'Absent'),
  (5, 5, '2024-11-01', 'Present');

select*from Attendance;
SELECT * FROM employees;
SELECT e.*
FROM employees e
JOIN departments d ON emp_id = d.id
WHERE d.department_name = 'IT';

SELECT * 
FROM projects
WHERE budget > 50000;

SELECT e.emp_name, p.pro_name
FROM employees e
JOIN employee_projects ep ON e.emp_id = e.emp_id
JOIN projects p ON p.pro_id = p.pro_id;

SELECT d.department_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.id= e.department_id
GROUP BY d.department_name;

SELECT * 
FROM employees
WHERE salary > 50000;

SELECT * FROM attendance 
WHERE employee_id = 3;

UPDATE employees
SET salary = salary *2000
WHERE department_id= '1';

UPDATE employees
SET salary = salary *14000
WHERE department_id= '2';

select*from Employees;

UPDATE employees
SET department_id= '0'
WHERE emp_id = 12345;

DELETE FROM employees 
WHERE emp_id = '12345' 
  AND department = 'Resigned';



DELETE FROM employees WHERE emp_id = 12345 AND status = 'Resigned';




