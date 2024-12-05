CREATE DATABASE IF NOT EXISTS students;
USE students;

CREATE TABLE student (
    rollNo INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL
);

INSERT INTO student 
(rollno, name, marks) 
VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

SELECT AVG(marks)
FROM student;

SELECT name AS student_name
FROM student
WHERE marks>(SELECT AVG(marks)
FROM student);

SELECT s.name AS Name,s.rollNo AS Roll
FROM (SELECT * FROM student WHERE rollNo%2=0) AS s;

SELECT name,rollNo
FROM student
WHERE rollNo IN (102,104,106);

SELECT name,rollNo
FROM student
WHERE rollNo IN (SELECT rollNo FROM student WHERE rollNo%2=0);





