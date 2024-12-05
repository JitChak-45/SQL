CREATE DATABASE IF NOT EXISTS college4;
USE college4;

CREATE TABLE IF NOT EXISTS student(
roll INT PRIMARY KEY,
name VARCHAR(25),
marks INT NOT NULL,
grades VARCHAR(1),
city VARCHAR(25)
);

INSERT INTO student
(roll,name,marks,grades,city)
VALUES
(1,"ANIL",78,"C","PUNE"),
(2,"BHUMIKA",93,"A","MUMBAI"),
(3,"CHETAN",85,"B","MUMBAI"),
(4,"DHRUV",96,"A","DELHI"),
(5,"EMANUEL",12,"F","DELHI"),
(6,"FARAH",82,"B","DELHI");

SELECT * FROM STUDENT;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 20;

ALTER TABLE STUDENT
DROP COLUMN age;

ALTER TABLE student
RENAME TO STUDENT;

ALTER TABLE STUDENT
MODIFY age VARCHAR(2);

INSERT INTO STUDENT VALUES (8,"OOMEN",88,"A","THANE",100);

ALTER TABLE STUDENT
CHANGE age stu_age INT;

ALTER TABLE STUDENT
CHANGE name full_name VARCHAR(10);

SET SQL_SAFE_UPDATES=0;

DELETE FROM STUDENT
WHERE marks<80;

ALTER TABLE STUDENT 
DROP COLUMN grades;

TRUNCATE TABLE STUDENT;

