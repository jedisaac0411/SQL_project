WITH demand_skills AS (
    SELECT 
        skills_dim.skills,
        skills_dim.skill_id,
        COUNT(skills_dim.skills) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON 
    job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON
    skills_dim.skill_id = skills_job_dim.skill_id
    WHERE
        job_postings_fact.job_title_short LIKE '%Data%Analyst%' AND
        job_postings_fact.salary_year_avg IS NOT NULL 
        AND job_location = 'Los Angeles, CA'
    GROUP BY
        skills_dim.skill_id
),
    ave_salary AS (
    SELECT 
        skills_dim.skill_id,
        ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS ave_sal
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON 
    job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON
    skills_dim.skill_id = skills_job_dim.skill_id
    WHERE
        job_postings_fact.job_title_short LIKE '%Data%Analyst%' AND
        job_postings_fact.salary_year_avg IS NOT NULL 
        AND job_location = 'Los Angeles, CA'
    GROUP BY
        skills_dim.skill_id
    )

SELECT 
demand_skills.skill_id,
    demand_skills.skills,
    demand_skills.demand_count,
    ave_salary.ave_sal
FROM 
    demand_skills
INNER JOIN ave_salary ON
    demand_skills.skill_id = ave_salary.skill_id
WHERE
    demand_skills.demand_count >= 10
ORDER BY
    ave_salary.ave_sal DESC,
    demand_skills.demand_count DESC


