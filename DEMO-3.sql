create database SA 
use SA

CREATE TABLE stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);

INSERT INTO stud(reg_no,name,department,year) VALUES 
(111,'XXX','CSE',4),
(122,'YYY','AI&DS',3),
(124,'ZZZ','IT',2),
(130,'ABC','CS',1);

SELECT * FROM stud;
UPDATE stud
SET name='yasar',
department='MBA',
year=3 WHERE reg_no = 130;

INSERT INTO stud(reg_no,name,department,year)
VALUES (145,'asdh','BBA',3);
SELECT * FROM stud;

ALTER TABLE stud
ADD phone_num VARCHAR(13);

UPDATE stud
 SET phone_num = '987654321' WHERE reg_no = 111;
 
 UPDATE stud
 SET phone_num = '7896543216' WHERE reg_no = 122;
 
 UPDATE stud
 SET phone_num = '9876512345' WHERE reg_no = 124;
 
 UPDATE stud
 SET phone_num = '987654321' WHERE reg_no = 130;
 
 UPDATE stud
 SET phone_num = '6789054321' WHERE reg_no = 145;
 
 SELECT COUNT(*) AS tot_student FROM stud;
 
 SELECT MAX(year) AS max_yr FROM stud;
 
 SELECT MIN(year) AS min_yr FROM stud;
 
 SELECT AVG(year) AS av_yr FROM stud;
 
SELECT * FROM stud 
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM stud;

SELECT LOWER(department) AS dep_lor FROM stud;

SELECT UPPER(name) AS name_up FROM stud;
 
SELECT LOWER(name) AS name_up FROM stud;

SELECT LEFT(name,2) AS srt FROM stud; 

SELECT name,LENGTH(name) AS name_ln FROM stud;

SELECT CONCAT(NAME,' - ',department) AS combine FROM stud;

SELECT name,year,year + 1 As nx_yr FROM stud;

SELECT reg_no,MOD(reg_no,2) AS odr FROM stud;

ALTER TABLE stud
Add Data_Detail DATE;

SELECT * FROM stud;

UPDATE stud SET data_Detail='2021-08-18' WHERE reg_no=111;

UPDATE stud SET data_Detail='2021-09-18' WHERE reg_no=122;

UPDATE stud SET data_Detail='2021-08-09' WHERE reg_no=124;

UPDATE stud SET data_Detail='2020-08-18' WHERE reg_no=130;

UPDATE stud SET data_Detail='2021-07-18' WHERE reg_no=145;

SELECT CURDATE();

SELECT CURTIME();

SELECT reg_no,name,year(data_Detail) AS yr FROM stud;