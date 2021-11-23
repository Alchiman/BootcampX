SELECT name, email, phone 
FROM students 
WHERE end_date IS NOT NULL
and github IS NULL;