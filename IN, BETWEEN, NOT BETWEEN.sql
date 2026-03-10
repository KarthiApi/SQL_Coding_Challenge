CREATE DATABASE STUDENTS;

USE STUDENTS;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    gpa DECIMAL(3,2) CHECK (gpa BETWEEN 0.00 AND 4.00)
);

INSERT INTO Students (student_name, course_name, gpa) VALUES
('Arun', 'Data Science', 3.8),
('Meena', 'Computer Science', 3.5),
('Rahul', 'Mathematics', 2.9),
('Divya', 'Physics', 3.2),
('Kiran', 'Data Science', 2.4),
('Sneha', 'Computer Science', 3.9);
SELECT *
FROM Students
WHERE course_name IN ('Data Science', 'Computer Science')
AND gpa BETWEEN 3.2 AND 4.0;


SELECT *
FROM Students
WHERE gpa BETWEEN 3.0 AND 3.8;

SELECT *
FROM Students
WHERE gpa NOT BETWEEN 2.5 AND 3.5;