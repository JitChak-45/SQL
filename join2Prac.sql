CREATE DATABASE IF NOT EXISTS education1;
USE education1;

CREATE TABLE IF NOT EXISTS student(
stu_id INT PRIMARY KEY,
name VARCHAR(10)
);

INSERT INTO student (stu_id,name) 
VALUES 
(101,"Jit"),
(102,"Samriddhi"),
(103,"Ipsita");

SELECT * FROM student;

CREATE TABLE IF NOT EXISTS course(
id INT PRIMARY KEY,
course VARCHAR(10)
);

INSERT INTO course 
(id,course)
VALUES
(102,"English"),
(103,"Bengali"),
(104,"Physics"),
(105,"Chemistry");

SELECT * FROM course;

SELECT * 
FROM student AS s
INNER JOIN course AS c
ON s.stu_id=c.id;

SELECT s.stu_id AS student_id,s.name AS name,c.course AS course
FROM student AS s
LEFT JOIN course AS c
ON s.stu_id=c.id;

SELECT c.id AS student_id,s.name AS name,c.course AS course
FROM student AS s
RIGHT JOIN course AS c
ON s.stu_id=c.id;


SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.stu_id=c.id
UNION
SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.stu_id=c.id;

SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.stu_id=c.id
WHERE c.id IS NULL;

SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.stu_id=c.id
WHERE s.stu_id IS NULL;

SELECT s.stu_id
FROM student AS s
UNION
SELECT c.id
FROM course AS c;

SELECT s.stu_id
FROM student AS s
UNION ALL
SELECT c.id
FROM course AS c;
 

CREATE TABLE IF NOT EXISTS employee(
id INT PRIMARY KEY,
name VARCHAR(20),
manager_id INT );

INSERT INTO employee
(id,name,manager_id)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

SELECT a.name AS manager,b.name AS employee 
FROM employee AS a
JOIN employee AS b
ON a.id=b.manager_id;

