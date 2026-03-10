USE students;

CREATE TABLE Students1 (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL
);


INSERT INTO Courses (course_name) VALUES
('Data Science'),
('Computer Science'),
('Mathematics');

INSERT INTO Students1 (student_name, course_id) VALUES
('Arun', 1),
('Meena', 2),
('Rahul', 3),
('Divya', 2),
('Kiran', NULL);   -- Not enrolled


SELECT 
    s.student_id,
    s.student_name,
    c.course_name
FROM Students1 s
INNER JOIN Courses c
ON s.course_id = c.course_id;