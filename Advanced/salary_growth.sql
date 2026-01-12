-- Active: 1768199360161@@127.0.0.1@3306@employees

/*
Objective:
Calculate year-over-year salary growth for each employee
to identify compensation trends and growth patterns.
*/


-- Note:
-- Query written for PostgreSQL 9.5 compatibility.
-- Filtering on window function results handled via CTE.

WITH salary_cte AS (
    SELECT 
        employee_id,
        year,
        salary,
        LAG(salary) OVER (
            PARTITION BY employee_id
            ORDER BY year
        ) AS previous_salary
    FROM analytics_salaries
)
SELECT *
FROM salary_cte
WHERE previous_salary IS NOT NULL
LIMIT 100;