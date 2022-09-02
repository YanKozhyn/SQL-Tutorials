-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'b%' start with b
-- WHERE last_name LIKE '%b%' b is anywhere
-- WHERE last_name LIKE '%y' end with y
-- WHERE last_name LIKE '_____y' word with any 5 char and end with y
-- WHERE last_name LIKE 'b____y'  word with any 4 char and end with y and start with b

-- % any number of characters
-- _ single character

-- Get the customer whose
-- 		addresses contain TRAIL or AVENUE
-- 		phone numbers end with 9

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR 
	  address LIKE '%avenue%'
-- WHERE phone LIKE '%9'