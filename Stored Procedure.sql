Use Company;
CREATE TABLE Employees1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    hire_date DATE
);
INSERT INTO Employees1 (emp_id, emp_name, department, salary, hire_date) VALUES
(101, 'Arun Kumar', 'HR', 45000, '2021-06-10'),
(102, 'Priya Sharma', 'IT', 60000, '2020-03-15'),
(103, 'Rahul Verma', 'Finance', 55000, '2019-11-20'),
(104, 'Sneha Reddy', 'IT', 65000, '2022-01-05'),
(105, 'Karthik Raj', 'Marketing', 50000, '2018-08-12');



DROP PROCEDURE IF EXISTS GetEmployeeByID;

DELIMITER //

CREATE PROCEDURE GetEmployeeByID(IN p_employee_id INT)
BEGIN
    SELECT *
    FROM Employees1
    WHERE employee_id = p_employee_id;
END //

DELIMITER ;

SELECT *
FROM Employees1
where emp_id=101;
