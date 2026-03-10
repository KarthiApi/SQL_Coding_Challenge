Use Students;

DELIMITER //

CREATE FUNCTION GetFullName(
    f_name VARCHAR(100),
    l_name VARCHAR(100)
)
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN
    RETURN CONCAT(f_name, ' ', l_name);
END //

DELIMITER ;


SELECT GetFullName('Arun', 'Kumar') AS Full_Name;

SELECT 
    student_id,
    GetFullName(student_id, Student_name) AS Full_Name
FROM Students1;