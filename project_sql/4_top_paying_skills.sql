/*
Answer: What are the top skills based on salary?
--Look at the average salary associated with each skill for Data Analyst positions
--Focuses on roles with specified salaries, regardless of location
--Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id =skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25

/*
Big Data and Distributed Computing:

PySpark: Leading the list with an average salary of $208,172, highlighting the high demand for expertise in big data processing.
Couchbase and Elasticsearch: Both associated with NoSQL databases and search engine technologies, indicating the value of handling and analyzing large, unstructured data sets.
Version Control and Collaboration Tools:

Bitbucket and GitLab: High salaries of $189,155 and $154,500, respectively, show the importance of version control systems and collaboration tools in managing code and data projects.
Data Science and Machine Learning:

Watson and DataRobot: Platforms focused on machine learning and AI have substantial average salaries, suggesting the value placed on AI-driven insights.
Jupyter, Pandas, Numpy, and Scikit-learn: Core tools in the data science stack, essential for data analysis, manipulation, and machine learning, all commanding high salaries.
Programming Languages:

Swift and Golang: While typically associated with mobile app development and backend systems, their presence indicates the versatility and high demand for these languages.
Scala: Known for its use in big data processing frameworks like Apache Spark, showing the blend of programming and big data skills.
Cloud and DevOps:

Kubernetes and GCP (Google Cloud Platform): Essential for managing and orchestrating containers and cloud-based services, reflecting the trend towards cloud-native applications.
Jenkins and Airflow: Tools for continuous integration and workflow automation are crucial in maintaining efficient data pipelines.
Business Intelligence and Analytics:

MicroStrategy and PostgreSQL: Indicating a demand for skills in BI platforms and relational database management systems for complex analytics and reporting.
Collaboration and Productivity:

Notion and Atlassian: Tools for project management and collaboration, emphasizing the importance of organizing and streamlining workflows in data projects.
Overall, the highest-paying skills highlight a blend of expertise in big data processing, machine learning, cloud computing, and DevOps, coupled with essential tools for collaboration and version control. The trend underscores the importance of an integrated skill set that combines technical prowess with tools that facilitate efficient and scalable data analysis and management.

[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]
*/