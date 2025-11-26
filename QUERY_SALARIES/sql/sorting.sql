-- Ascending order by default
SELECT  
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd;


-- Descending order by default
SELECT  
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC;



-- Sort by salary_in_usd DESC and employee_residence ascending
SELECT  
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC,
    employee_residence ASC;