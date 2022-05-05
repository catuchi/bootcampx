SELECT assignments.id as id, assignments.day as day, assignments.chapter as chapter, assignments.name as name,
COUNT(assistance_requests.assignment_id) as number_of_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY number_of_requests DESC