CREATE USER 'junior_analyst'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT ON company_database.* 
TO 'junior_analyst'@'localhost';

REVOKE SELECT ON company_database.* 
FROM 'junior_analyst'@'localhost';