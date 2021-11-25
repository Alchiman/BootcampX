-- SELECT students.name AS student, AVG(assignment_submissions.duration) AS avarage_assignment_duration
-- FROM assignment_submissions 
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY student
-- ORDER BY avarage_assignment_duration DESC

SELECT students.id,  students.name, cohorts.name AS cohort_name
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
LIMIT 5;