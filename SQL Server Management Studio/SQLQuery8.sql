SELECT * FROM dbo.student
WHERE tot_cred > 120
ORDER BY dept_name ASC,
tot_cred DESC,
name ASC