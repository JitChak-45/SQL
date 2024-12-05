CREATE DATABASE IF NOT EXISTS college2;
USE college2;
CREATE TABLE IF NOT EXISTS student(
rollNo INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO student
(name,rollNo)
VALUES
("Jit",101),
("Soham",102);
INSERT INTO student VALUES (103,"vablai");

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS cognizant;
USE cognizant;
CREATE TABLE IF NOT EXISTS employee(
id INT PRIMARY KEY,
name VARCHAR(25),
salary INT NOT NULL);

INSERT INTO employee 
(id,name,salary)
 VALUES
 (1,"Adam",24000),
 (2,"Bob",28000),
 (3,"Charles",23000);
 
 
 SELECT * FROM employee;
 
 CREATE TABLE IF NOT EXISTS student2(
 id Int,
 name Varchar(20),
 age INT NOT NULL,
 PRIMARY KEY (id,name)
 );
 
 INSERT INTO student2
 (id,name,age)
 VALUES
 (1,"JIT",23),
 (2,"BOB",22),
 (1,"HARAMI",22);
 
 SELECT * FROM student2;
  
INSERT INTO student2 VALUES (1,"JIT",20);

CREATE TABLE test(
id INT PRIMARY KEY,
name VARCHAR(20));

INSERT INTO test VALUES(1,"JIT");
INSERT INTO test VALUES(2,"IPSITA");

SELECT * FROM test;

CREATE TABLE IF NOT EXISTS test2(
cust_id INT,
FOREIGN KEY (cust_id) REFERENCES test(id)
);
CREATE TABLE IF NOT EXISTS chk_def(
id INT PRIMARY KEY,
salary INT DEFAULT 25000,
age INT CHECK (age>=23),
city VARCHAR(20),
CONSTRAINT cityCheck CHECK (city !="BIHAR")
);

INSERT INTO chk_def (id,city) VALUES (1,"KOLKATA");
INSERT INTO chk_def (id,salary,city) VALUES (2,32000,"ASANSOL");
INSERT INTO chk_def (id,salary,city) VALUES (3,22000,"BIHAR");
SELECT * FROM chk_def;

 


