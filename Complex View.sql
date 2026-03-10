
USE Company;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

INSERT INTO Departments (dept_id, dept_name)
VALUES 
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary_amount DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);





CREATE VIEW Employee_Full_Details AS
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,
    s.salary_amount
FROM Employees e
INNER JOIN Departments d 
    ON e.department_id = d.department_id
INNER JOIN Salaries s 
    ON e.employee_id = s.employee_id;