USE TEST;

SELECT * FROM employees;

SELECT
city,
gender,
SUM(salary)
FROM employees
GROUP BY city,gender;

SELECT
department,
MAX(salary)
FROM employees
GROUP BY department;


SELECT
AVG(experience),
department
FROM employees
GROUP BY department
HAVING AVG(salary) > 3;

SELECT
city,
department,
SUM(salary)
FROM employees
GROUP BY city, department;

SELECT
city,
SUM(salary) AS [AVERAGE SALARY]
FROM employees
WHERE department = 'IT'
GROUP BY city
HAVING SUM(salary) > 10000;

SELECT
city,
MIN(salary) AS MIN_SALARY
FROM employees
GROUP BY city;

SELECT
department,
MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 10000;

SELECT 
    department,
    gender,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department, gender;
