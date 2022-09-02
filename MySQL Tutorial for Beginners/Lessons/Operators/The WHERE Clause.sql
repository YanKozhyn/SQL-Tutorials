-- >, >=, <, <=, =, !=, <> 

-- SELECT * 
-- FROM customers
-- WHERE points > 3000
-- WHERE state = 'VA'
-- WHERE state != 'VA' at the same -> WHERE state <> 'VA'
-- WHERE birth_date > '1999-01-01';

-- Get the orders placed this year(2019)
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01'
