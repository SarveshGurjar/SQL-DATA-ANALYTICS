-- Active: 1767624501376@@127.0.0.1@3306@employees

/*
CASE STUDY: Employee Analytics

Objectieve:
Analyze employee data to understand salary distribution,
department performance, and hiring trends to support HR decisions.
*/

-- Q1. How many employees fall into each salary category?

SELECT
    CASE 
        WHEN Salary >= 70000 THEN 'High' 
        WHEN Salary BETWEEN 50000 AND 69999 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category,
    COUNT(*) AS Employee_Count
FROM employees
GROUP BY Salary_Category;
 
 -- Insight: Majority of employees fall into the Medium salary range.


 -- Q2. Who  is the highest-paid employee in each department?

SELECT *
FROM (
    SELECT
        Name,
        Department,
        Salary,
        RANK() OVER (
            PARTITION BY Department
            ORDER BY Salary DESC
        )   AS Salary_Rank
    FROM employees
) ranked
WHERE Salary_Rank = 1;

-- Insight: IT department has the highest salary ceiling.

-- Q3. How many employees joined each year?

SELECT
    YEAR(JoinedDate) AS Join_Year,
    COUNT(*) AS Total_Joined
FROM employees
GROUP BY Join_Year
ORDER BY Join_Year;

-- Insight: Hiring peaked in 2021, likely due to company expansion.

-- Q4. What is the average salary by department?

SELECT
    Department,
    AVG(Salary) AS Avg_Salary
FROM employees
GROUP BY Department;
ORDER BY Avg_Salary DESC;


-- Insight: IT department offers the highest average salary.


/*
FINAL SUMMARY:
- Salary is concentrated in the Medium range
- IT department leads in compensation
- Hiring trend shows company growth
This analysis can help HR in budgeting and workforce planning.
*/
