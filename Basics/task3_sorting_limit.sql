-- Active: 1767624501376@@127.0.0.1@3306@employees

-- Task 3: Sorting and Limit

-- Sort by salary (hightest first)
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Top 3 highest paid employees
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 3;

-- Oldest employees (by JoinedDate)
SELECT * FROM Employees
ORDER BY JoinedDate ASC;