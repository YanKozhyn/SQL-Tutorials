-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM  orders o (for left join was customers.c)
-- -- LEFT JOIN orders o -- all records from left (in this case table customers) will return
-- 	RIGHT JOIN customers c -- all record from right (in this case table orders) will return
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id 

SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id
    
