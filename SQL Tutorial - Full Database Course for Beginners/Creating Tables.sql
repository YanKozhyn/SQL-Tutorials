-- CREATE DATABASE sql_yanthebest;

-- use sql_yanthebest;

CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
	-- PRIMARY KEY(student_id) at the same that I wrote in 6 lines
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);