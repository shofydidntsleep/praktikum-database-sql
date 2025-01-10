SELECT * FROM dbo.student;

SELECT name, dept_name
FROM student;

SELECT *
FROM dbo.student
WHERE tot_cred > 100;

SELECT *
FROM student, department

SELECT *
FROM course left outer join prereq
ON course.course_id=prereq.course_id


SELECT student.name AS student_name, instructor.name AS instructor_name
FROM student
JOIN instructor ON student.dept_name= instructor.dept_name;

SELECT *
FROM student
JOIN instructor ON student.dept_name= instructor.dept_name;

SELECT s.name student_name, i.name instructor_name
FROM student s
JOIN instructor i ON s.dept_name = i.dept_name;

