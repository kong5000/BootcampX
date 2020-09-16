SELECT COUNT(assistance_requests.*) as total_assisstances, name
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name