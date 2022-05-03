-- join students to assistance_requests
SELECT students.name as name, COUNT(assistance_requests.*) as total_assistance_requests
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;