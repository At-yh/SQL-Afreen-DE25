SELECT 
    *
FROM 
    data_jobs;


-- Schema namespace
SELECT
    *
FROM
    main.data_jobs;


-- fully qualified name
SELECT
    *
FROM
    data_jobs.main.data_jobs;

-- Limint clause choosed how many rows to return
SELECT
    *
FROM
    data_jobs;
LIMIT 
    5;

-- offset   
SELECT
    *
FROM
    data_jobs;
OFFSET 
    2;

desc data_jobs;


-- select specified columns (also column projection)
SELECT
    work_year,
    job_title,
    salary_in_usd,
    company_location
FROM
    data_jobs;


-- selectt all columns except those specified in Exclude
SELECT
    * EXCLUDE (salary, work_year)
FROM
    data_jobs;


SELECT DISTINCT
    employment_type
FROM 
    data_jobbs;


SELECT DISTINCT
    experience_level
FROM 
    data_jobbs;