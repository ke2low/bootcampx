SELECT cohorts.name as cohort, count(*) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions on assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY count(*) DESC;