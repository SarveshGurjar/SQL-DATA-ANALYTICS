-- Active: 1767624501376@@127.0.0.1@3306@employees

-- Task 6 : CASE WHEN for Analytics

-- 1. Salary category for each employee
SELECT 
    Name,
    Department,
    Salary,
    CASE
        WHEN Salary >= 70000 THEN 'High'
        WHEN Salary BETWEEN 50000 AND 69999 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM Employees;

-- 2. Bonus eligibility 
SELECT
    Name,
    Department,
    Salary,
    CASE 
        WHEN Department = 'IT' AND Salary >= 60000 THEN 'Eligible'
        ELSE  'Not Eligible'
    END AS Bonus_Eligibility
FROM Employees;
