CREATE TABLE branch (
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(20),
    mrg_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mrg_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);
-- WHEN WE'll DELETE - set null

DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;

SELECT *
FROM employee;

CREATE TABLE branch_supplier (
	branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);
-- delete row cuz PK can`t be NULL!!

DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;