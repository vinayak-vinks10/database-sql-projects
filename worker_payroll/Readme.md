# Worker Payroll & Attendance System (SQL)

## About
This is a **beginner to intermediate level SQL project**.
The goal of this project is to practice **SQL operators, joins, calculations, and real-world logic** using worker payroll data.

The project manages:
- Worker details
- Monthly attendance
- Salary calculation based on attendance

---

## Tech Used
- MySQL
- SQL
- VS Code

---

## Project Structure
sql-worker-payroll-project/
- setup.sql   (database, tables, sample data)
- queries.sql (all queries with human-readable comments)
- README.md

---

## Database Overview
**Database Name:** `worker_payroll_db`

### Tables Used
- **workers**
  - Stores worker information like department, daily wage, and status
- **attendance**
  - Stores monthly attendance for each worker

Workers and attendance are connected using `worker_id`.

---

## How to Run the Project
1. Open MySQL and connect to your server
2. Run `setup.sql` once to create database and tables
3. Run queries from `queries.sql` one by one to understand operations

---

## SQL Concepts Practiced
- JOIN (workers + attendance)
- Arithmetic operators (salary calculation)
- Comparison and logical operators
- CASE statement
- Aggregate functions (COUNT, AVG)
- Subqueries
- UPDATE and DELETE operations

---

## Learning Outcome
After this project, I gained confidence in:
- Writing meaningful SQL queries
- Working with multiple tables
- Applying SQL logic to real-world problems
- Understanding payroll-style calculations

---

## Future Improvements
- Add Views for salary reports
- Add Triggers for automatic updates
- Add more months of attendance data

---

## Author
Your Name  
SQL Learner
