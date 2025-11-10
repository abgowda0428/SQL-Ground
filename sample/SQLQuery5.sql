-- Querying on Customer Table

/* 
Multi-Line Comment
*/


SELECT * FROM customers


-- SCORES NOT EQUAL TO ZERO

SELECT *
FROM customers
WHERE score != 0;

-- Retrive the Customers from Germany

SELECT first_name,country
FROM customers
WHERE country = 'Germany'

