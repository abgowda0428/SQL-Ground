--CREATE DATABASE TEST;
USE TEST

GO

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    gender VARCHAR(10),
    salary INT,
    experience INT
);

GO

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 'Bangalore', 'Male', 55000, 4),
(2, 'Riya', 'IT', 'Bangalore', 'Female', 60000, 5),
(3, 'Kiran', 'HR', 'Bangalore', 'Male', 35000, 2),
(4, 'Neha', 'Finance', 'Mumbai', 'Female', 45000, 3),
(5, 'Arjun', 'IT', 'Mumbai', 'Male', 70000, 6),
(6, 'Divya', 'Finance', 'Mumbai', 'Female', 48000, 4),
(7, 'Manoj', 'HR', 'Delhi', 'Male', 30000, 1),
(8, 'Sneha', 'IT', 'Delhi', 'Female', 52000, 3),
(9, 'Rohit', 'Finance', 'Delhi', 'Male', 40000, 3),
(10,'Priya', 'HR', 'Bangalore', 'Female', 37000, 2),
(11,'Sameer', 'IT', 'Bangalore', 'Male', 65000, 6),
(12,'Kavya', 'Finance', 'Mumbai', 'Female', 43000, 1);

GO;


-- Table Data
SELECT department FROM employees


-- Q1
SELECT
department ,
SUM(salary) AS [Total Salary By Dept]
FROM employees
GROUP BY department;


-- Q2
SELECT 
department,
SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 150000;

-- Q3
SELECT
COUNT(emp_id) AS [Total Emp in City],
city
FROM employees
GROUP BY city;

-- Q4
SELECT 
city,
AVG(salary) AS Avg_Salary
FROM employees
GROUP BY city;


-- Q5
SELECT
department,
COUNT(emp_id) AS Total_EmP
FROM employees
GROUP BY department
HAVING COUNT(emp_id) > 3;