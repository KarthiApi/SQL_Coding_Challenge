USE karthi;
CREATE TABLE patients (
    Patient_id INT AUTO_INCREMENT PRIMARY KEY,
    Patient_name VARCHAR(100) NOT NULL,
    Age INT  NOT NULL,
    Gender CHAR(10 ) NOT NULL,
    Admission_Date DATE NOT NULL
    
);



