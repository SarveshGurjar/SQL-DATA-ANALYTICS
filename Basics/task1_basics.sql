-- Active: 1767624501376@@127.0.0.1@3306
 -- Task 1: Basics: SELECT & FLITERING
 CREATE DATABASE employees;
USE employees;
CREATE TABLE employees (
    Empid INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoinedDate DATE
);

INSERT INTO Employees VALUES
(1, 'Alice', 'IT', 60000, '2022-01-15'),
(2, 'Bob', 'Sales', 45000, '2021-03-10'),
(3, 'Charlie', 'HR', 50000, '2020-07-20'),
(4, 'Diana', 'IT', 70000, '2022-06-25'),
(5, 'Evan', 'Sales', 48000, '2019-11-30');

-- Query to select all employees from the IT department
SELECT * FROM Employees;
SELECT * NAME, Salary FROM Employees;
SELECT * FROM Employees WHERE DEPARTMENT = 'IT';
SELECT * FROM Employees WHERE Salary > 50000;