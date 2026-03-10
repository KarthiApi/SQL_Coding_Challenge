USE Students;

CREATE TABLE Students2 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Students2 (student_id, student_name, email, city) VALUES
(1, 'Arun Kumar', 'arun@gmail.com', 'Chennai'),
(2, 'Priya Sharma', 'priya@gmail.com', 'Bangalore'),
(3, 'Rahul Verma', 'rahul@gmail.com', 'Delhi'),
(4, 'Sneha Reddy', 'sneha@gmail.com', 'Hyderabad');

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT
);


INSERT INTO Courses (course_id, course_name, duration_months) VALUES
(101, 'SQL', 2),
(102, 'Python', 3),
(103, 'Power BI', 2),
(104, 'Data Science', 6);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1001, 1, 101, '2026-01-10'),
(1002, 1, 102, '2026-01-15'),
(1003, 2, 103, '2026-02-01'),
(1004, 3, 101, '2026-02-10');


SELECT 
    s.student_id,
    s.student_name,
    c.course_name
FROM Students2 s
LEFT JOIN Enrollments e 
    ON s.student_id = e.student_id
LEFT JOIN Courses c
    ON e.course_id = c.course_id;
    
    
    
    
    SELECT 
    s.student_id,
    s.student_name,
    c.course_name
FROM Students2 s
RIGHT JOIN Enrollments e 
    ON s.student_id = e.student_id
RIGHT JOIN Courses c
    ON e.course_id = c.course_id;