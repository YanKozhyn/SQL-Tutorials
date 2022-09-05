-- Find names of all employees who have
-- sold over 30,000 to a single client
SELECT e.first_name, e.last_name
FROM employee e
WHERE e.emp_id IN (
	SELECT ww.emp_id
	FROM works_with ww
	WHERE ww.total_sales > 30000
);

-- Find all clients who are handled by the branch
-- that Michael Scott manages
-- Assume you know Michael's ID
SELECT c.client_name
FROM client c 
WHERE c.branch_id = (
	SELECT b.branch_id
	FROM branch b
	WHERE b.mgr_id = 102
    
);



