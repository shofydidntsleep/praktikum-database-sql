SELECT sec_id
FROM section;

-- Example: Inserting a new section 'A1' for the 'Game Programming' course
INSERT INTO section (course_id, sec_id, semester, year)
VALUES (
    (SELECT TOP 1 course_id FROM course WHERE title = 'Game Programming'),
    'A1',
    'Spring',
    2023
);

-- Select specific columns from the 'section' table
SELECT course_id, sec_id, semester, year
FROM section;

SELECT *
FROM course
WHERE title = 'Game Programming';

-- Check if the data for "Game Programming" by "Manber" exists in the 'takes' table
SELECT *
FROM takes
WHERE
    ID = (SELECT TOP 1 ID FROM student WHERE name = 'Manber') -- Subquery to get Manber's ID
    AND
    course_id = (SELECT TOP 1 course_id FROM course WHERE title = 'Game Programming'); -- Subquery to get Game Programming's ID


-- nomor 1
INSERT INTO takes (ID, course_id, sec_id, semester, year, grade)
VALUES (
    (SELECT TOP 1 ID FROM student WHERE name = 'Manber'), -- Subquery to get Manber's ID
    (SELECT TOP 1 course_id FROM course WHERE title = 'Game Programming'), -- Subquery to get Game Programming's ID
    'A1', -- Replace with a valid section ID
    'Spring', -- Replace with the appropriate semester
    2023, -- Replace with the appropriate year
    'A' -- Replace with the appropriate grade
);

-- Check no 1
SELECT *
FROM takes
WHERE
    ID = (SELECT TOP 1 ID FROM student WHERE name = 'Manber') -- Subquery to get Manber's ID
    AND
    course_id = (SELECT TOP 1 course_id FROM course WHERE title = 'Game Programming') -- Subquery to get Game Programming's ID
    AND
    sec_id = 'A1'; -- Replace with the section ID you used in the INSERT statement

