USE Company;

SELECT 
    employee_id,
    employee_name,
    hire_date,
    ROUND(DATEDIFF(NOW(), hire_date) / 365, 2) AS tenure_years
FROM Employees;


SELECT 
    employee_id,
    employee_name,
    hire_date,
    YEAR(NOW()) - YEAR(hire_date) AS tenure_years
FROM Employees;



SELECT 
    employee_id,
    employee_name,
    hire_date,
    TIMESTAMPDIFF(YEAR, hire_date, NOW()) AS tenure_years
FROM Employees;