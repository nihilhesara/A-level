-- 6 Q1 a
SELECT AVG(salary) AS 'Average Salary' FROM employees;

-- 6 Q1 b
SELECT first_name, salary
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);

-- 6 Q2 
SELECT MIN(salary) "Minimum", MAX(salary) AS "Maximum", AVG(salary) AS "Average"
FROM employees
WHERE job_id IN (907,908,909)
AND (hire_date >= '2017-01-01' AND hire_date <= '2017-12-31')

-- 6 Q3


-- 6 Q4
