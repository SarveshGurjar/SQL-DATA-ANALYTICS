-- Active: 1767624501376@@127.0.0.1@3306@employees

-- Task 7 : Window Functions 

-- 1. Salary rank within each department
SELECT
    Name,
    Department,
    Salary,
    RANK() OVER (
        PARTITION BY Department
        ORDER BY Salary DESC
    ) AS Dept_Salary_Rank
FROM Employees;

-- 2. Row number fro each employee by joining date
SELECT
    Name,
    Department,
    JoinedDate,
    ROW_NUMBER() OVER (
        ORDER BY JoinedDate
    ) AS joining_order
FROM Employees;

-- 3. Dense rank for salary
SELECT
    Name,
    Department,
    Salary,
    DENSE_RANK() OVER (
        ORDER BY Salary DESC
    ) AS Overall_Salary_Rank
FROM Employees;