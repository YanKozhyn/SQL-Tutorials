-- SELECT *
-- FROM customers
-- -- WHERE state = 'VA' OR state = 'GA' OR state = 'FL'
-- -- WHERE state IN ('VA', 'FL', 'GA');
-- WHERE state NOT IN ('VA', 'FL', 'GA');

-- Return products with
-- 		quantity in stock equal to 49,38,72

SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72)