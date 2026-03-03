-- ============================================================
-- HR ANALYTICS – EMPLOYEE ATTRITION ANALYSIS
-- Author: Akshay Sharma
-- Database: MySQL
-- Dataset: IBM HR Analytics (1470 Employees)
-- Description: SQL queries to analyze employee attrition trends
-- ============================================================

USE hr_analytics;

-- ============================================================
-- 1️. Total Employees
-- ============================================================

SELECT 
    COUNT(*) AS total_employees
FROM employees;


-- ============================================================
-- 2️. Total Attrition Count
-- ============================================================

SELECT 
    COUNT(*) AS total_attrition
FROM employees
WHERE attrition = 1;


-- ============================================================
-- 3️. Overall Attrition Rate (%)
-- ============================================================

SELECT 
    ROUND(
        SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) 
        / COUNT(*) * 100, 
    2) AS attrition_rate_percent
FROM employees;


-- ============================================================
-- 4️. Attrition Rate by Department
-- ============================================================

SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
    2) AS attrition_rate_percent
FROM employees
GROUP BY department
ORDER BY attrition_rate_percent DESC;


-- ============================================================
-- 5️. Attrition Rate by Salary Slab
-- ============================================================

SELECT 
    salaryslab,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
    2) AS attrition_rate_percent
FROM employees
GROUP BY salaryslab
ORDER BY attrition_rate_percent DESC;


-- ============================================================
-- 6️. Attrition Rate by Experience Group
-- ============================================================

SELECT 
    experiencegroup,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
    2) AS attrition_rate_percent
FROM employees
GROUP BY experiencegroup
ORDER BY attrition_rate_percent DESC;


-- ============================================================
-- 7️. High-Risk Segment Analysis (Department + Salary Slab)
-- ============================================================

SELECT 
    department,
    salaryslab,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
    2) AS attrition_rate_percent
FROM employees
GROUP BY department, salaryslab
ORDER BY attrition_rate_percent DESC;