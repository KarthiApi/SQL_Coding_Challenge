USE university;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT,
    Email VARCHAR(100)
);

INSERT INTO Students (StudentID, StudentName, DepartmentID, Email)
VALUES
(1, 'Arun Kumar', 1, 'arun@gmail.com'),
(2, 'Priya Sharma', 2, NULL),
(3, 'Rahul Verma', 1, 'rahul@yahoo.com'),
(4, 'Sneha Reddy', 3, NULL),
(5, 'Vikram Singh', 2, 'vikram@hotmail.com');


SELECT *
FROM Students
WHERE Email IS NULL;

SELECT * FROM Students
WHERE Email IS NOT NULL;