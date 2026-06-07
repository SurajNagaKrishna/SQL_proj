SELECT 
    cd.name,
    job_title,
    job_title_short,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
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
