DROP TABLE student;

CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE, 
    major VARCHAR(20)  DEFAULT 'undecided',
    PRIMARY KEY(student_id) 
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name, major) VALUES(3, 'Claire', 'Chemistry');
INSERT INTO student VALUES(4, 'Emily', 'Physics');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');
INSERT INTO student(student_id, name) VALUES(6, 'Yan');
INSERT INTO student(name, major) VALUES('Alex', 'Computer Science');

SELECT * FROM student;