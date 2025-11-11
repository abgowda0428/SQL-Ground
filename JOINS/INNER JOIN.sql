USE MyDatabase;
GO

SELECT T2.emp_name, T1.department_name, T2.job_title
FROM departments T1
INNER JOIN employees T2
ON T1.department_id = T2.department_id


SELECT T2.emp_name, T1.location, T2.city
FROM departments T1
INNER JOIN employees T2
ON T1.department_id = T2.department_id
AND T1.location = T2.city	

SELECT T2.emp_name, T1.department_name, T2.manager_id
FROM departments T1
INNER JOIN employees T2
ON T1.department_id = T2.department_id

SELECT T1.emp_name,T2.department_name
FROM employees T1
LEFT JOIN departments T2
ON T1.department_id = T2.department_id