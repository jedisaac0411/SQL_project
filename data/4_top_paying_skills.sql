SELECT 
    skills_dim.skills,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS ave_sal
FROM job_postings_fact
INNER JOIN skills_job_dim ON 
job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON
skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_postings_fact.job_title_short LIKE '%Data%Analyst%' AND
    job_postings_fact.salary_year_avg IS NOT NULL AND
    job_location = 'Los Angeles, CA'
GROUP BY
    skills_dim.skills
ORDER BY
    ave_sal DESC
LIMIT 20