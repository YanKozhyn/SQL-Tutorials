-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id,
--     sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
-- 	ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id

SELECT 
	o.order_date,
    o.order_id,
    c.first_name AS customer,
    sh.name AS shipper,
    os.name AS status
FROM customers c
JOIN orders o
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON os.order_status_id = o.status
    ORDER BY os.name

