SELECT *
INTO copy_instructor_225150207111002
FROM instructor WHERE 1=0

SELECT *
FROM copy_instructor_225150207111002;

INSERT INTO copy_instructor_225150207111002 (ID, name, dept_name, salary)
VALUES ('11111', 'Jean', 'Psychology', 234578),
('11112', 'Bill', 'Comp. Sci.', 98720),
('11113', 'Bob', 'Languages', 76090),
('11114', 'David', 'Physics', 56734),
('11115', 'Neil', 'Astronomy', 102378);
SELECT * FROM copy_instructor_225150207111002

UPDATE copy_instructor_225150207111002
SET name ='Donald'
WHERE ID = '11114'
SELECT * FROM copy_instructor_225150207111002

UPDATE copy_instructor_225150207111002 SET salary = 95000
SELECT * FROM copy_instructor_225150207111002

DELETE FROM copy_instructor_225150207111002
WHERE name = 'Bob'
SELECT * FROM copy_instructor_225150207111002

INSERT INTO copy_instructor_225150207111002
SELECT * FROM instructor
WHERE salary >100000

SELECT * FROM copy_instructor_225150207111002