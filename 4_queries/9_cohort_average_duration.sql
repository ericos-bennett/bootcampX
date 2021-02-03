SELECT AVG(average_by_cohort) AS average_total_duration
FROM (
  SELECT SUM(completed_at - started_at) AS average_by_cohort
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
) AS average_by_cohort;
