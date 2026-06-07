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
    
/*
Top Skills Based on Salary

SQL, Python, and Tableau not only appear frequently in top-paying jobs but are also associated with the highest salaries.
Skills such as Snowflake, AWS, Azure, and Databricks appear less frequently but are often linked to premium-paying positions, indicating strong value in cloud and big-data environments.
Traditional analyst skills (Excel, Tableau, SQL) remain important, while technical skills (Python, cloud platforms, data engineering tools) help unlock higher salary ranges.
The combination of high demand and high salary suggests that SQL and Python offer the strongest return on learning investment.
*/