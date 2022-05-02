SELECT SUM(duration) as total_assignment_duration
FROM assignment_submissions
INNER JOIN students ON student_id = students.id
WHERE students.name LIKE 'Ibrahim Schimmel';