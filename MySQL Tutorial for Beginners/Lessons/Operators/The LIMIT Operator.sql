-- SELECT *
-- FROM customers
-- LIMIT 6, 3
-- -- page 1: 1 - 3
-- -- page 2: 4 - 6 
-- -- page 3: 7 - 9

-- get the top three loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3
