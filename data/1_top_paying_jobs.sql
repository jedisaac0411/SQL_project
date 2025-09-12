/*
What are the top paying data analyst jobs?
Identify the top 10 highest-paying Data analyst roles that are available in
LA
Why? Highlight the top-paying opportunities for Data Analysts,
offering insights 
*/

SELECT
    job_title_short,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    job_location,
    company_dim.name
FROM job_postings_fact
LEFT JOIN company_dim ON
    job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short LIKE '%Data%Analyst%'
    AND salary_year_avg IS NOT NULL
    AND job_location =  'Los Angeles, CA'
ORDER BY
    salary_year_avg DESC
LIMIT 10