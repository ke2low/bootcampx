SELECT students.name as student, sum(duration) / count(duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;