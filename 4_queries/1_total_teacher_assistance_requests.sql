-- join teachers entity to assistance_requests entity
SELECT teachers.name as name, count(assistance_requests.*)
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;