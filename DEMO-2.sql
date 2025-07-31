-- 1. Create the database
CREATE DATABASE EMPloy;
USE EMPloy;

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    experience INT
);

INSERT INTO emp (emp_id, name, department, experience)
VALUES 
(130, 'Muzamil', 'IT', 2),
(123, 'Yasar', 'SW', 3),
(432, 'Kumaran', 'AI', 4);

UPDATE emp
SET name = 'MUZA', department = 'WEB DEVELOPER'
WHERE emp_id = 130;

ALTER TABLE emp ADD salary DECIMAL(10,2);

UPDATE emp SET salary = 150000 WHERE emp_id = 130;
UPDATE emp SET salary = 200000 WHERE emp_id = 123;
UPDATE emp SET salary = 250000 WHERE emp_id = 432;

ALTER TABLE emp
ADD blood_group VARCHAR(5),
ADD address VARCHAR(255),
ADD phone_no VARCHAR(15);

UPDATE emp
SET blood_group = 'O+',
    address = 'Chennai, Tamil Nadu',
    phone_no = '9080372439'
WHERE emp_id = 130;

UPDATE emp
SET blood_group = 'A+',
    address = 'Coimbatore, Tamil Nadu',
    phone_no = '9876543210'
WHERE emp_id = 123;

UPDATE emp
SET blood_group = 'B+',
    address = 'Salem, Tamil Nadu',
    phone_no = '9123456780'
WHERE emp_id = 432;

SELECT * FROM emp;
