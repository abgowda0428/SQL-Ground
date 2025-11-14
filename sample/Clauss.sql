USE MyDatabase;
GO

SELECT *
FROM customers
ORDER BY country ASC,
		score DESC;


SELECT 
	country,
	COUNT(ID) AS [TOTAL_NO_CUSTOMER],
	SUM(score) AS [TOTAL_SCORES]
FROM customers
GROUP BY country

GO

SELECT 
	country,
	SUM(score) AS [Total Score]
FROM customers
WHERE score != 0
GROUP BY country
HAVING SUM(score) > 430;


SELECT DISTINCT country
FROM customers;