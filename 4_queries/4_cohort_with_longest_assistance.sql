
SELECT cohorts.name , AVG(completed_at - started_at) AS avarage_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avarage_assistance_time DESC
LIMIT 1; 