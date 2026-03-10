use company;

CREATE VIEW Employee_Department_View AS
SELECT employee_name, department
FROM Employees;

SELECT * FROM Employee_Department_View;

