-- SELECT *
-- FROM customers
-- WHERE phone IS NOT NULL

-- Get the orders that are not shipped
SELECT * 
FROM orders
WHERE shipped_date IS NULL