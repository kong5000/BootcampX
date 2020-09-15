SELECT name, email, id, cohort_id
FROM students
WHERE phone IS NULL
OR email NOT LIKE('%gmail.com%')