SELECT cohorts.name, avg(completed_at - started_at) as average_assitance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON  students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assitance_time