SELECT ID, semester, course_id
FROM takes
WHERE ID LIKE '10%' AND grade = 'A' AND year = 2002;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'instructor';

SELECT DISTINCT d.dept_name
FROM instructor i
JOIN department d ON i.dept_name = d.dept_name
JOIN course c ON i.dept_name = c.dept_name
WHERE i.salary > 54000 AND c.credits > 3;

-- Example query with intentional error
SELECT * FROM instructor;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'course';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'instructor';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'course';

SELECT DISTINCT i.*
FROM instructor i
WHERE NOT EXISTS (
    SELECT 1
    FROM course c
    WHERE c.dept_name = i.dept_name
);

SELECT c.course_id, c.title, c.dept_name, c.credits
FROM course c
JOIN instructor i ON c.dept_name = i.dept_name
JOIN teaches t ON c.course_id = t.course_id
GROUP BY c.course_id, c.title, c.dept_name, c.credits
HAVING COUNT(DISTINCT i.ID) >= 2;

SELECT TOP 1 s.ID, s.name, COUNT(*) AS total_A_grades
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE t.grade = 'A'
GROUP BY s.ID, s.name
ORDER BY total_A_grades DESC;
