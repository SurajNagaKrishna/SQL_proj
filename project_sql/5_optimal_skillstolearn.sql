WITH top_paying_jobs AS(    
    SELECT 
        cd.name,
        job_id,
        job_title,
        job_title_short,
        salary_year_avg  as salary
        
    FROM    
        job_postings_fact 
    LEFT JOIN company_dim AS cd ON  cd.company_id=job_postings_fact.company_id
    WHERE 
        job_title_short LIKE 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND 
        job_location='Anywhere'
    ORDER  BY  
        salary_year_avg DESC
    LIMIT 10
)
SELECT 
    skills,
    AVG(salary) AS TOPPAYING,
    count(*) as Demand
FROM    
    top_paying_jobs
INNER JOIN  skills_job_dim ON skills_job_dim.job_id=top_paying_jobs.job_id
INNER JOIN  skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id

GROUP BY
    skills
ORDER BY
     Demand DESC,
     toppaying DESC
LIMIT 5
 
/*
Key Summary: Most Optimal Skills for High-Paying Data Analyst Jobs
SQL is the most optimal skill, appearing in the highest number of top-paying jobs while maintaining a strong average salary.
Python ranks second, showing that programming and data analysis capabilities are highly valued in premium analyst roles.
Tableau is the leading visualization tool among top-paying jobs, indicating strong demand for data storytelling and dashboarding skills.
R, Snowflake, and Excel also appear frequently, demonstrating the importance of statistical analysis, cloud data platforms, and business reporting.
The results show that employers value a combination of data extraction (SQL), analysis (Python/R), visualization (Tableau), and cloud technologies (Snowflake).
*/
