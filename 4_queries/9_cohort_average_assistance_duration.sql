SELECT AVG(avg_cohort_assistance_time) as cohort_average_assistance_duration
FROM (SELECT SUM(completed_at - started_at) as avg_cohort_assistance_time, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY avg_cohort_assistance_time ASC) as total_averge