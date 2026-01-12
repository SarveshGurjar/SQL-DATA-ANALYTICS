-- Active: 1767624501376@@127.0.0.1@3306@employees

-- Task 4: Joins

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Manager VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'IT', 'RAMESH'),
(2, 'Sales', 'SURESH'),
(3, 'HR', 'Mahesh');

-- INNER JOIN
SELECT e.Name, e.Department, d.Manager
FROM Employees e
LEFT JOIN Departments d 
ON e.Department = d.DeptName;