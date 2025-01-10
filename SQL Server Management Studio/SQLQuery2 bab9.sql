SELECT *
FROM course
WHERE credits <> 3;

SELECT *
FROM course
WHERE course_id >= 140;

SELECT s.ID AS student_id, s.name, c.title AS course, t.grade
FROM takes t
JOIN student s ON t.ID = s.ID
JOIN course c ON t.course_id = c.course_id
WHERE CHARINDEX('C', t.grade) > 0;

SELECT s.ID AS student_id, s.name, t.semester, t.year, c.title AS course, t.grade
FROM takes t
JOIN student s ON t.ID = s.ID
JOIN course c ON t.course_id = c.course_id
WHERE s.name = 'Colin' AND t.semester = 'Spring' AND (t.year = 2007 OR t.year = 2008);

 SELECT *, salary * 0.05 as tax, Salary- (salary*0.05) as paid
 FROM instructor

 SELECT *, salary * 0.05 as tax, Salary- (salary*0.05) as paid
 FROM instructor
 WHERE salary- (salary* 0.05) < 50000

 SELECT *, 2 * salary + 300 as salary_with_bonus
 FROM instructor

  SELECT *, 2 * (salary + 300) as salary_with_bonus
 FROM instructor

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'instructor';

SELECT
  id AS instructor_id,
  name,
  ROUND(salary - (salary * 0.05), 2) AS net_salary
FROM
  instructor;

  SELECT
  CONCAT(name, ' is a student of ', dept_name) AS student_info
FROM
  student;

  SELECT
  name + ' is a student of ' + dept_name AS student_info
FROM
  student;

