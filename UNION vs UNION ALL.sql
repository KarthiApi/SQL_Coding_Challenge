USE Company;

CREATE TABLE Current_Employees (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE Past_Employees (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50)
);


SELECT emp_id, emp_name, department
FROM Current_Employees
UNION
SELECT emp_id, emp_name, department
FROM Past_Employees;


SELECT emp_id, emp_name, department
FROM Current_Employees
UNION ALL
SELECT emp_id, emp_name, department
FROM Past_Employees;