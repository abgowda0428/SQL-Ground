USE TEST;
GO

SELECT * FROM employees;

SELECT  
	department,
	AVG(salary)
FROM employees
WHERE city = 'Bangalore'
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY AVG(salary) DESC;

