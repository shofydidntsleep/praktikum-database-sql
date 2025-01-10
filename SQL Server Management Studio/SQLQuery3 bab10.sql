SELECT dept_name, COUNT(*) AS jumlah_mahasiswa
FROM student
WHERE tot_cred > 100
GROUP BY dept_name;

SELECT
  t.course_id,
  COUNT(*) AS jumlah_mahasiswa
FROM
  takes t
JOIN
  student s ON t.ID = s.ID
WHERE
  t.year = 2006
GROUP BY
  t.course_id;