CREATE DATABASE IF NOT EXISTS college3;
USE college3;

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

SELECT * FROM student;

SELECT city FROM student;

SELECT DISTINCT city FROM student;

SELECT marks,name 
FROM 
student;

SELECT name,roll,grades,city
FROM student
WHERE marks-10>=80;

SELECT name
FROM student
WHERE city="MUMBAI" AND marks>=80;

SELECT *
FROM student
WHERE city="MUMBAI" OR marks>=80;

 SELECT *
 FROM student 
 WHERE city IN ("MUMBAI","DELHI");
 

 
 
 
SELECT *
FROM student 
WHERE city NOT IN ("MUMBAI","DELHI");
 
 
 SELECT * FROM student;
 
 
 
SELECT * 
 FROM student
 WHERE marks>75 AND city="DELHI"
 LIMIT 3;
 
SELECT *
FROM student
ORDER BY city DESC;

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student
WHERE city="MUMBAI";


SELECT AVG(marks)
FROM student
WHERE city="PUNE";

SELECT AVG(marks),city
FROM student
GROUP BY city
ORDER BY AVG(marks) ASC;


SELECT grades,COUNT(roll) AS STUDENTS
FROM student
GROUP BY grades
ORDER BY grades ASC;


SELECT city,COUNT(roll)
FROM student
WHERE grades="A"
GROUP BY city
HAVING MAX(marks)>=93
ORDER BY city DESC;

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET grades="A"
WHERE grades="O";

SELECT * FROM student;

UPDATE student
SET marks=33,grades="D"
WHERE roll=5;

UPDATE student
SET marks=marks+1;

DELETE FROM student
WHERE marks<36;

SELECT *
FROM student
WHERE name='' OR '1'='1';


