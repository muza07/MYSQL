CREATE DATABASE IF NOT EXISTS EMPL;
USE EMPL;
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
UPDATE emp
SET salary = '150000' WHERE emp_id = 130;
UPDATE emp
SET salary = '200000' WHERE emp_id = 123;
UPDATE emp
SET salary = '250000' WHERE emp_id = 432;
SELECT * FROM emp;



