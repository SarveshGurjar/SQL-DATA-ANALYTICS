-- Active: 1767624501376@@127.0.0.1@3306@employees
-- Task 2 : Basics: Aggregate FUNCTIONS

-- Average salary 

SELECT AVG(Salary) AS Average_Salary 
FROM Employees;

-- Total employees 
SELECT COUNT(*) AS Total_Employees 
FROM Employees;

-- Employees per department
SELECT Department, COUNT(*) AS Deptcount
FROM Employees
GROUP BY Department;

-- Maximum salary per department
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department;