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
    count(*) as Demand
FROM    
    top_paying_jobs
INNER JOIN  skills_job_dim ON skills_job_dim.job_id=top_paying_jobs.job_id
INNER JOIN  skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
GROUP BY
    skills
ORDER BY
     Demand DESC


/*
Most In-Demand Skills for Data Analysts

SQL is the most demanded skill, appearing in all analyzed job postings.
Python and Tableau follow closely, indicating strong demand for data analysis and visualization capabilities.
R, Snowflake, Pandas, and Excel remain valuable skills for analytics workflows.
Cloud technologies such as AWS and Azure are increasingly appearing in analyst roles.
The results suggest that employers seek analysts who can extract data (SQL), analyze data (Python/R), visualize insights (Tableau/Power BI), and work with modern cloud data platforms.
Key Takeaway

SQL, Python, and Tableau form the core skill set for Data Analysts, while cloud and data platform skills provide an additional competitive advantage.
*/
