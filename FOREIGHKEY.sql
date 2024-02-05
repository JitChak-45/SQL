CREATE DATABASE IF NOT EXISTS collage;
USE collage;

CREATE TABLE IF NOT EXISTS dept(
id INT PRIMARY KEY,
dept_name VARCHAR(20)
);
INSERT INTO dept
VALUES
(101,"ENGLISH"),
(102,"PHYSICS");

SET SQL_SAFE_UPDATES=0;

UPDATE dept
SET id=111
WHERE dept_name="PHYSICS";


SELECT * FROM dept;

CREATE TABLE IF NOT EXISTS teacher(
id INT PRIMARY KEY,
name VARCHAR(20),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(1,"Prabir",101),
(2,"Srabanti",102);

SELECT * FROM teacher;
