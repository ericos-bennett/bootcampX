SELECT SUM(assignment_submissions.duration) AS total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
WHERE cohorts.name = 'FEB12';