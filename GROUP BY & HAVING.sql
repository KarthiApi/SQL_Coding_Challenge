CREATE DATABASE COMPANY;

USE COMPANY;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) CHECK (salary >= 0),
    hire_date DATE
);

INSERT INTO Employees (employee_name, department, salary, hire_date) VALUES
('Arun', 'IT', 60000, '2024-01-10'),
('Meena', 'IT', 65000, '2023-03-15'),
('Rahul', 'HR', 45000, '2022-07-20'),
('Divya', 'HR', 47000, '2023-05-18'),
('Kiran', 'Sales', 50000, '2024-02-01');


SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 10;