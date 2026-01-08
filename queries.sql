-- view all employees
SELECT *
FROM employees;
-- employees with department
SELECT e.emp_id,
    e.name,
    e.salary,
    d.dept_name
FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id;
-- update salary
UPDATE employees
SET salary = salary + 5000
WHERE dept_id = 1;
-- delete employee
DELETE FROM employees
WHERE emp_id = 2;