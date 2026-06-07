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
    top_paying_jobs.*,
    skills
FROM    
    top_paying_jobs
INNER JOIN  skills_job_dim ON skills_job_dim.job_id=top_paying_jobs.job_id
INNER JOIN  skills_dim ON skills_dim.skill_id=skills_job_dim.skill_id
ORDER BY 
    salary DESC




/*
Data Analyst Jobs
SQL is the most important skill — it appeared in 100% of the jobs.
Python is the second most valuable skill, appearing in almost every job.
Tableau is the most common visualization tool and appeared more often than Power BI.
High-paying analyst roles increasingly require data science skills such as Python, Pandas, and NumPy.
Cloud technologies like Snowflake, AWS, and Azure are common in top-paying positions, showing that modern analysts work with large cloud-based datasets.
Some jobs also require big data tools such as Databricks and PySpark, indicating overlap with data engineering.
The most powerful skill combination is:
SQL
Python
Tableau
Excel
Snowflake
Key Takeaway

Top-paying Data Analyst jobs are no longer just about Excel and dashboards. Companies are looking for analysts who can query data (SQL), analyze data (Python), visualize insights (Tableau), and work with cloud platforms (Snowflake/AWS/Azure).
[
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "sql"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "python"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "r"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "azure"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "databricks"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "aws"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "pandas"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "pyspark"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "jupyter"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "excel"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "tableau"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "power bi"
 },
 {
  "name": "AT&T",
  "job_id": 552322,
  "job_title": "Associate Director- Data Insights",
  "job_title_short": "Data Analyst",
  "salary": "255829.5",
  "skills": "powerpoint"
 },
 {
  "name": "Pinterest Job Advertisements",
  "job_id": 99305,
  "job_title": "Data Analyst, Marketing",
  "job_title_short": "Data Analyst",
  "salary": "232423.0",
  "skills": "sql"
 },
 {
  "name": "Pinterest Job Advertisements",
  "job_id": 99305,
  "job_title": "Data Analyst, Marketing",
  "job_title_short": "Data Analyst",
  "salary": "232423.0",
  "skills": "python"
 },
 {
  "name": "Pinterest Job Advertisements",
  "job_id": 99305,
  "job_title": "Data Analyst, Marketing",
  "job_title_short": "Data Analyst",
  "salary": "232423.0",
  "skills": "r"
 },
 {
  "name": "Pinterest Job Advertisements",
  "job_id": 99305,
  "job_title": "Data Analyst, Marketing",
  "job_title_short": "Data Analyst",
  "salary": "232423.0",
  "skills": "hadoop"
 },
 {
  "name": "Pinterest Job Advertisements",
  "job_id": 99305,
  "job_title": "Data Analyst, Marketing",
  "job_title_short": "Data Analyst",
  "salary": "232423.0",
  "skills": "tableau"
 },
 {
  "name": "Uclahealthcareers",
  "job_id": 1021647,
  "job_title": "Data Analyst (Hybrid/Remote)",
  "job_title_short": "Data Analyst",
  "salary": "217000.0",
  "skills": "sql"
 },
 {
  "name": "Uclahealthcareers",
  "job_id": 1021647,
  "job_title": "Data Analyst (Hybrid/Remote)",
  "job_title_short": "Data Analyst",
  "salary": "217000.0",
  "skills": "crystal"
 },
 {
  "name": "Uclahealthcareers",
  "job_id": 1021647,
  "job_title": "Data Analyst (Hybrid/Remote)",
  "job_title_short": "Data Analyst",
  "salary": "217000.0",
  "skills": "oracle"
 },
 {
  "name": "Uclahealthcareers",
  "job_id": 1021647,
  "job_title": "Data Analyst (Hybrid/Remote)",
  "job_title_short": "Data Analyst",
  "salary": "217000.0",
  "skills": "tableau"
 },
 {
  "name": "Uclahealthcareers",
  "job_id": 1021647,
  "job_title": "Data Analyst (Hybrid/Remote)",
  "job_title_short": "Data Analyst",
  "salary": "217000.0",
  "skills": "flow"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "sql"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "python"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "go"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "snowflake"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "pandas"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "numpy"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "excel"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "tableau"
 },
 {
  "name": "SmartAsset",
  "job_id": 168310,
  "job_title": "Principal Data Analyst (Remote)",
  "job_title_short": "Data Analyst",
  "salary": "205000.0",
  "skills": "gitlab"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "sql"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "python"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "azure"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "aws"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "oracle"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "snowflake"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "tableau"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "power bi"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "sap"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "jenkins"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "bitbucket"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "atlassian"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "jira"
 },
 {
  "name": "Inclusively",
  "job_id": 731368,
  "job_title": "Director, Data Analyst - HYBRID",
  "job_title_short": "Data Analyst",
  "salary": "189309.0",
  "skills": "confluence"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "sql"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "python"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "r"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "git"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "bitbucket"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "atlassian"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "jira"
 },
 {
  "name": "Motional",
  "job_id": 310660,
  "job_title": "Principal Data Analyst, AV Performance Analysis",
  "job_title_short": "Data Analyst",
  "salary": "189000.0",
  "skills": "confluence"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "sql"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "python"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "go"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "snowflake"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "pandas"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "numpy"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "excel"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "tableau"
 },
 {
  "name": "SmartAsset",
  "job_id": 1749593,
  "job_title": "Principal Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "186000.0",
  "skills": "gitlab"
 },
 {
  "name": "Get It Recruit - Information Technology",
  "job_id": 387860,
  "job_title": "ERM Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "184000.0",
  "skills": "sql"
 },
 {
  "name": "Get It Recruit - Information Technology",
  "job_id": 387860,
  "job_title": "ERM Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "184000.0",
  "skills": "python"
 },
 {
  "name": "Get It Recruit - Information Technology",
  "job_id": 387860,
  "job_title": "ERM Data Analyst",
  "job_title_short": "Data Analyst",
  "salary": "184000.0",
  "skills": "r"
 }
]
*/
