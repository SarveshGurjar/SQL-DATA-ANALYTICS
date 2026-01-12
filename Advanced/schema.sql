-- Active: 1768199360161@@127.0.0.1@3306@employees

/*
================================================================
Employee Performance & Salary Analytics
Purpose: This schema models a simplified HR analytics system.
        Tables are normalized to enable advanced analysis
        such as salary growth, performance comparison,
        and promotion alignment.
================================================================
*/

-- Master employee table
CREATE Table analytics_employees (
    employee_Id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    joining_year INT NOT NULL
);


-- Salary history table(year-wise salary records)
CREATE Table analytics_salaries (
    employee_id INT,
    year INT,
    salary int not null,
    PRIMARY KEY (employee_id, year),
    Foreign Key (employee_id) REFERENCES analytics_employees(employee_id)
);


-- Annual performance reviews scores
CREATE Table analytics_performance_reviews (
    employee_id INT,
    year INT,
    performance_score INT check (performance_score BETWEEN 1 AND 5),
    Foreign Key (employee_id) REFERENCES analytics_employees(employee_id)
);


-- Promotions history
CREATE TABLE analytics_promotions (
    employee_id INT,
    promotion_year INT,
    new_title VARCHAR(50),
    Foreign Key (employee_id) REFERENCES analytics_employees(employee_id)
);