CREATE DATABASE IF NOT EXISTS customer1;
USE customer1;

CREATE TABLE IF NOT EXISTS payment(
cust_id INT PRIMARY KEY,
cust_name VARCHAR(20),
mode VARCHAR(20) NOT NULL,
city VARCHAR(20)
);



INSERT INTO payment
(cust_id,cust_name,mode,city)
VALUES
(1,"Olivia Barrett","NetBanking","Portland"),
(2, "Liam Johnson", "Credit Card", "Seattle"),
(3, "Emma Martinez", "Cash", "Denver"),
(4, "Noah Smith", "Debit Card", "Austin"),
(5, "Ava Davis", "NetBanking", "Miami"),
(6, "Isabella Garcia", "UPI", "Phoenix"),
(7, "Ethan Brown", "PayPal", "San Francisco"),
(8, "Sophia Wilson", "Credit Card", "New York"),
(9, "James Miller", "Cash", "Chicago"),
(10, "Mia Martinez", "Debit Card", "Los Angeles");

SELECT mode,count(mode)
FROM payment
GROUP BY mode
ORDER BY count(mode) DESC;