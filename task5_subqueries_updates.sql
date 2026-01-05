-- Active: 1767624501376@@127.0.0.1@3306@employees

-- Task 5: Subqueries and Updates

SELECT * 
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- Give 10% hike to IT department
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

-- Delete employees who joined before 2010
DELETE FROM employees
WHERE join_date < '2020-01-01';