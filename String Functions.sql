
USE Company;

SELECT UPPER(employee_name) AS Employee_name_upper
FROM Employees;

SELECT LOWER(employee_name) AS Employee_name_upper
FROM Employees;

SELECT SUBSTRING(employee_name, 1, 3) AS short_name
FROM Employees;


SELECT CONCAT(employee_name, ' ', department) AS employee_department
FROM Employees;


