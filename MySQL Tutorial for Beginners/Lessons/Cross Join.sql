-- SELECT 
-- 	c.first_name AS customer,
--     p.name AS product
-- FROM customers c, products p
-- -- CROSS JOIN products p 
-- ORDER BY c.first_name

-- Do a cross join between shippers and products
-- 		 the implicit syntax
-- 		and then using the explicit syntax

-- SELECT 
-- 	sh.name AS shipper,
--    p.name AS product
-- FROM shippers sh, products p
-- ORDER BY shipper_id

SELECT 
 	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p
ORDER BY shipper_id

