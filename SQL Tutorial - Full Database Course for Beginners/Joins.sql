INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
	ON employee.emp_id = branch.mgr_id;
    
-- include all employees
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee  
LEFT JOIN branch
	ON employee.emp_id = branch.mgr_id;
    
-- include all branch
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
	ON employee.emp_id = branch.mgr_id;

-- FULL OUTER JOIN combaine LEFT AND RIGHT JOIN
