CREATE DATABASE IF NOT EXISTS Department;
USE Department;
DROP DATABASE Department;
CREATE TABLE IF NOT EXISTS Department(
id INT PRIMARY KEY,
dept VARCHAR(10) NOT NULL);

CREATE TABLE IF NOT EXISTS Faculty(
id INT PRIMARY KEY,
name VARCHAR(10) NOT NULL,
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES Department(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO Department
(dept,id)
VALUES
("ENGLISH",101),
("MATH",102),
("ELECTRIC",103),
("MECHANICAL",104);

INSERT INTO Faculty
(name,id,dept_id)
VALUES
("Jit",1,101),
("Mama",2,104),
("Bapu",3,103),
("Mintu",4,104);

SELECT * FROM Department;

SELECT * FROM Faculty;

SELECT *
FROM Faculty f
JOIN Department d
ON f.dept_id=d.id;

SELECT f.id AS id,f.name AS name,d.id AS "Department id",d.dept AS "Department name"
FROM Faculty f
LEFT JOIN Department d
ON f.dept_id=d.id
ORDER BY f.id DESC;


UPDATE Department
SET dept="CSE"
WHERE dept="MATH";

UPDATE Faculty
SET dept_id=102
WHERE dept_id=104 AND name="Mintu";

UPDATE Department
SET id=111
WHERE id=102;

