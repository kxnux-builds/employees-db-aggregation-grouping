-- =====================================================================
-- Employees Database Aggregate Functions and Grouping
-- =====================================================================

-- =====================================================================
-- CREATE DATABASE
-- =====================================================================

DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- =====================================================================
-- CREATE TABLE
-- =====================================================================

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    gender ENUM('Male','Female') NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    age INT NOT NULL,
    experience INT NOT NULL
);

-- =====================================================================
-- INSERT SAMPLE DATA
-- =====================================================================

INSERT INTO Employees
(first_name,last_name,department,gender,salary,age,experience)
VALUES
('Joy','Raj','IT','Male',65000,28,4),
('Arpita','Khan','HR','Female',45000,30,6),
('Mou','Mondal','Finance','Female',55000,32,8),
('Sonia','Das','Marketing','Female',48000,27,3),
('Avi','Roy','Operations','Male',30000,24,2),
('Olivia','Sinha','Sales','Female',52000,29,5),
('Rahul','Sharma','IT','Male',70000,35,10),
('Priya','Gupta','HR','Female',47000,31,7),
('Rohan','Patel','Finance','Male',75000,40,12),
('Sneha','Roy','Sales','Female',51000,26,4),
('Karan','Singh','IT','Male',68000,33,9),
('Neha','Paul','Marketing','Female',58000,29,6);

-- =====================================================================
-- DISPLAY ALL RECORDS
-- =====================================================================

SELECT * FROM Employees;

-- =====================================================================
-- AGGREGATE FUNCTIONS
-- =====================================================================

-- Total Employees
SELECT COUNT(*) AS Total_Employees
FROM Employees;

-- Total Salary
SELECT SUM(salary) AS Total_Salary
FROM Employees;

-- Average Salary
SELECT ROUND(AVG(salary),2) AS Average_Salary
FROM Employees;

-- Highest Salary
SELECT MAX(salary) AS Highest_Salary
FROM Employees;

-- Lowest Salary
SELECT MIN(salary) AS Lowest_Salary
FROM Employees;

-- Average Age
SELECT ROUND(AVG(age),2) AS Average_Age
FROM Employees;

-- Total Experience
SELECT SUM(experience) AS Total_Experience
FROM Employees;

-- =====================================================================
-- GROUP BY : DEPARTMENT
-- =====================================================================

-- Employee Count
SELECT
    department,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department;

-- Total Salary
SELECT
    department,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department;

-- Average Salary
SELECT
    department,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department;

-- Highest Salary
SELECT
    department,
    MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department;

-- Lowest Salary
SELECT
    department,
    MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY department;

-- Average Age
SELECT
    department,
    ROUND(AVG(age),2) AS Average_Age
FROM Employees
GROUP BY department;

-- Average Experience
SELECT
    department,
    ROUND(AVG(experience),2) AS Average_Experience
FROM Employees
GROUP BY department;

-- =====================================================================
-- GROUP BY : GENDER
-- =====================================================================

-- Employee Count
SELECT
    gender,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY gender;

-- Average Salary
SELECT
    gender,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY gender;

-- Total Salary
SELECT
    gender,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY gender;

-- =====================================================================
-- HAVING CLAUSE
-- =====================================================================

-- Departments having more than 2 employees

SELECT
    department,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;

-- Departments with average salary greater than 50000

SELECT
    department,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- Departments with total salary greater than 100000

SELECT
    department,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- Departments having highest salary greater than 65000

SELECT
    department,
    MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 65000;

-- Departments having total experience greater than 10 years

SELECT
    department,
    SUM(experience) AS Total_Experience
FROM Employees
GROUP BY department
HAVING SUM(experience) > 10;

-- =====================================================================
-- ORDER BY WITH GROUP BY
-- =====================================================================

-- Average Salary (Highest First)

SELECT
    department,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department
ORDER BY Average_Salary DESC;

-- Total Salary (Highest First)

SELECT
    department,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
ORDER BY Total_Salary DESC;

-- Employee Count (Highest First)

SELECT
    department,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
ORDER BY Employee_Count DESC;

-- =====================================================================
-- ADVANCED PRACTICE QUERIES
-- =====================================================================

-- Department with the highest average salary

SELECT
    department,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department
ORDER BY Average_Salary DESC
LIMIT 1;

-- Employees earning above company average salary

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM Employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employees
);

-- Employee count by age

SELECT
    age,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY age
ORDER BY age;

-- =====================================================================
-- COMPLETE DEPARTMENT REPORT
-- =====================================================================

SELECT
    department,
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary,
    ROUND(AVG(age),2) AS Average_Age,
    SUM(experience) AS Total_Experience
FROM Employees
GROUP BY department
ORDER BY department;

-- =====================================================================
-- COMPLETE GENDER REPORT
-- =====================================================================

SELECT
    gender,
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY gender;

-- =====================================================================
-- COMPANY SUMMARY REPORT
-- =====================================================================

SELECT
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary,
    ROUND(AVG(age),2) AS Average_Age,
    SUM(experience) AS Total_Experience
FROM Employees;

-- =====================================================================
-- END OF PROJECT
-- =====================================================================