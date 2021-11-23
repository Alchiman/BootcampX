SELECT students.name AS student, AVG(assignment_submissions.duration) AS avarage_assignment_duration, AVG(assignments.duration) AS avarage_estimated_duration
FROM assignments 
JOIN assignment_submissions ON assignment_submissions.assignment_id = assignments.id 
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG (assignments.duration)
ORDER BY avarage_assignment_duration
