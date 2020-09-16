
SELECT avg(duration) as average_total_duration
FROM(
  SELECT SUM(completed_at -  started_at) as duration
  FROM cohorts
  JOIN students ON students.cohort_id = cohorts.id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
) temp
