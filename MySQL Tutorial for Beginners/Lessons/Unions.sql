-- SELECT 
-- 	order_id,
--     order_date,
--     'Active' AS status
-- FROM orders
-- WHERE order_date >= '2019-01-01'

-- UNION

-- SELECT 
-- 	order_id,
--     order_date,
--     'Actived' AS status
-- FROM orders
-- WHERE order_date < '2019-01-01';

-- SELECT first_name  AS full_name
-- FROM customers
-- UNION
-- SELECT name
-- FROM shippers

-- SELECT first_name, last_name
-- FROM customers
-- UNION								-- error
-- SELECT name
-- FROM shippers

SELECT 
	customer_id,
    first_name,
    points,
    'BRONZE' AS type
FROM customers
WHERE points < 2000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'SILVER' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'GOLD' AS type
FROM customers
WHERE points >= 3000
ORDER BY first_name