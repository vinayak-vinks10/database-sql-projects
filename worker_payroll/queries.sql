/* =====================================================
 Worker Payroll & Attendance Project
 File: queries.sql
 Purpose: Practice SQL operators, joins, calculations
 ===================================================== */
-- 1. View all workers
-- This query shows complete worker information
SELECT *
FROM workers;
-- 2. View all attendance records
-- Helps to understand monthly attendance data
SELECT *
FROM attendance;
-- 3. Join workers with attendance
-- This query combines worker details with attendance
SELECT w.worker_id,
    w.name,
    w.department,
    a.month,
    a.days_present
FROM workers w
    JOIN attendance a ON w.worker_id = a.worker_id;
-- 4. Calculate monthly salary
-- Salary = daily_wage * days_present
-- This is the main payroll logic
SELECT w.name,
    w.department,
    a.days_present,
    w.daily_wage,
    (a.days_present * w.daily_wage) AS monthly_salary
FROM workers w
    JOIN attendance a ON w.worker_id = a.worker_id;
-- 5. Use CASE operator
-- Categorize workers based on daily wage
SELECT name,
    daily_wage,
    CASE
        WHEN daily_wage >= 1000 THEN 'High Paid'
        ELSE 'Normal Paid'
    END AS salary_category
FROM workers;
-- 6. Logical operator example (AND)
-- Find active workers earning more than 900
SELECT *
FROM workers
WHERE status = 'Active'
    AND daily_wage > 900;
-- 7. Comparison operator
-- Workers whose daily wage is greater than 1000
SELECT *
FROM workers
WHERE daily_wage > 1000;
-- 8. Aggregate function with GROUP BY
-- Count total workers in each department
SELECT department,
    COUNT(*) AS total_workers
FROM workers
GROUP BY department;
-- 9. Aggregate calculation
-- Find average daily wage of all workers
SELECT AVG(daily_wage) AS average_daily_wage
FROM workers;
-- 10. Subquery example
-- Workers earning more than average daily wage
SELECT name,
    daily_wage
FROM workers
WHERE daily_wage > (
        SELECT AVG(daily_wage)
        FROM workers
    );
-- 11. UPDATE operation with calculation
-- Increase daily wage of IT department workers by 100
UPDATE workers
SET daily_wage = daily_wage + 100
WHERE department = 'IT';
-- 12. DELETE operation
-- Remove inactive workers from the system
DELETE FROM workers
WHERE status = 'Inactive';
-- 13. Final check after update and delete
-- Always verify data after changes
SELECT *
FROM workers;