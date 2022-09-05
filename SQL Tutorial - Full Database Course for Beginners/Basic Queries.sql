SELECT s.name, s.major
FROM student s
ORDER BY name DESC;

SELECT s.name, s.major
FROM student s
ORDER BY student_id DESC;

SELECT *
FROM student 
ORDER BY student_id DESC;

SELECT *
FROM student 
ORDER BY student_id ASC;

SELECT *
FROM student 
ORDER BY major, student_id;

SELECT *
FROM student 
ORDER BY student_id DESC
LIMIT 2;

SELECT *
FROM student 
WHERE major = 'Biology' ;

SELECT name, major
FROM student 
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT name, major
FROM student 
WHERE major = 'Chemistry' OR name = 'Kate';

SELECT *
FROM student 
WHERE student_id <= 3;

SELECT *
FROM student 
WHERE student_id <= 3 AND name <> 'Jack';

SELECT *
FROM student 
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student 
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;
