-- UPDATE invoices
-- SET 
-- 	payment_total = invoice_total * 0.5,
--     payment_date = due_date;
-- -- WHERE client_id IN
-- -- 			(SELECT client_id
-- -- 			FROM clients 
-- -- 			WHERE state IN ('CA', 'NY'))
-- WHERE payment_date IS NULL

USE sql_store;

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN
			(SELECT customer_id
			FROM customers
			WHERE points > 3000)


