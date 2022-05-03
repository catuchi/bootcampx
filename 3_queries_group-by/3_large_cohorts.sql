SELECT cohorts.name as cohort_name, COUNT(students.name) as student_count
FROM cohorts
INNER JOIN students
ON cohort_id = cohorts.id 
GROUP BY cohorts.name
HAVING COUNT(cohorts.name) >= 18
ORDER BY student_count ASC;