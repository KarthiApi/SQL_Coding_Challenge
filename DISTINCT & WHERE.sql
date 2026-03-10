CREATE DATABASE University;

USE University;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'Computer Science'),
(2, 'Mechanical Engineering'),
(3, 'Civil Engineering'),
(4, 'Electrical Engineering'),
(5, 'Commerce');

ALTER TABLE Departments
DROP PRIMARY KEY;

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'Biotechnology');

SELECT DISTINCT DepartmentName
FROM Departments;

SELECT DISTINCT DepartmentID
FROM Departments
WHERE DepartmentID>1;

