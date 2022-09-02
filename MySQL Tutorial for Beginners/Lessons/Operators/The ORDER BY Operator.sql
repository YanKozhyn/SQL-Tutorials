-- SELECT birth_date, last_name, 10 AS points
-- FROM customers
-- ORDER BY 1,2 DESC

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC 