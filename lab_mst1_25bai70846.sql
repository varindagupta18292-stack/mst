CREATE DATABASE management;
USE management;
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100)  UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) NOT NULL DEFAULT 'IT',
    salary DECIMAL(10,2) 
);
INSERT INTO Employee
(employee_id, name, email, age, department, salary)
VALUES
(101, 'Varinda', 'Varinda@gmail.com', 22, 'IT', 50000),
(102, 'Manya', 'Manya@gmail.com', 25, 'HR', 45000),
(103, 'Priya', 'priya@gmail.com', 24, 'IT', 60000),
(104, 'Ananya', 'Ananya@gmail.com', 28, 'Sales', 55000),
(105, 'Payal', 'Payal@gmail.com', 30, 'IT', 70000);

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE salary > 55000;

UPDATE Employee
SET salary = salary + 5000
WHERE department = 'IT';
SELECT * FROM Employee
WHERE department = 'IT';

DELETE FROM Employee
WHERE employee_id = 105;
SELECT * FROM Employee;
ALTER TABLE Employee
ADD phone_no VARCHAR(10);
SELECT * FROM Employee;
TRUNCATE TABLE Employee;
SELECT * FROM Employee;
