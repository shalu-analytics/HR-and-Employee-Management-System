# 📊 TuteDude SQL Projects --- Employee Database Analysis

A SQL practice and data analysis project based on an **Employee Management Database**.\
This project is designed to strengthen SQL skills through **Basic, Medium, and Advanced level analytical questions** using multiple related
tables.

------------------------------------------------------------------------

## 📌 Project Overview

The database `tutedude_projects` contains employee-related information
such as:

-   Employee personal details
-   Department information
-   Department managers
-   Employee-to-department assignments
-   Employee salary history

The project focuses on writing SQL queries to retrieve, filter,
aggregate, join, and analyze relational data.

------------------------------------------------------------------------

## 🗄️ Database Structure

**Database Name:** `tutedude_projects`

### Tables

  \#   Table              Purpose
  ---- ------------------ -------------------------------------------------
  1    `t_employees`      Stores employee personal and employment details
  2    `t_departments`    Stores department information
  3    `t_dept_manager`   Maps employees to department manager roles
  4    `t_dept_emp`       Maps employees to departments
  5    `t_salaries`       Stores employee salary history

------------------------------------------------------------------------

## 🔗 Table Relationships

``` text
                 ┌──────────────────┐
                 │   t_employees    │
                 │------------------│
                 │ PK: emp_no       │
                 └────────┬─────────┘
                          │
              ┌───────────┼────────────┐
              │           │            │
              ▼           ▼            ▼
     ┌──────────────┐ ┌──────────────┐ ┌──────────────┐
     │ t_dept_emp   │ │t_dept_manager│ │ t_salaries  │
     │--------------│ │--------------│ │--------------│
     │ emp_no       │ │ emp_no       │ │ emp_no       │
     │ dept_no      │ │ dept_no      │ │ salary       │
     │ from_date    │ │ from_date    │ │ from_date    │
     │ to_date      │ │ to_date      │ │ to_date      │
     └──────┬───────┘ └──────┬───────┘ └──────────────┘
            │                 │
            └────────┬────────┘
                     ▼
            ┌──────────────────┐
            │  t_departments   │
            │------------------│
            │ PK: dept_no      │
            │ dept_name        │
            └──────────────────┘
```

### Key Relationships

-   `t_employees.emp_no` → employee identifier
-   `t_departments.dept_no` → department identifier
-   `t_dept_emp.emp_no` → employee
-   `t_dept_emp.dept_no` → department
-   `t_dept_manager.emp_no` → manager employee
-   `t_dept_manager.dept_no` → managed department
-   `t_salaries.emp_no` → employee salary history

> **Note:** The supplied SQL file creates all 5 tables and contains
> sample records for `t_employees`. The remaining tables are created in
> the schema but do not contain INSERT statements in the supplied file.

------------------------------------------------------------------------

# 📋 Table Details

## 1. `t_employees`

Stores employee information.

  Column         Description
  -------------- -----------------------------
  `emp_no`       Unique employee number
  `birth_date`   Employee date of birth
  `first_name`   First name
  `last_name`    Last name
  `gender`       Employee gender
  `hire_date`    Date the employee was hired

------------------------------------------------------------------------

## 2. `t_departments`

Stores department information.

  Column        Description
  ------------- --------------------------
  `dept_no`     Unique department number
  `dept_name`   Department name

------------------------------------------------------------------------

## 3. `t_dept_manager`

Stores department manager assignments.

  Column        Description
  ------------- ---------------------------
  `emp_no`      Manager's employee number
  `dept_no`     Department number
  `from_date`   Start date of management
  `to_date`     End date of management

------------------------------------------------------------------------

## 4. `t_dept_emp`

Stores employee department assignments.

  Column        Description
  ------------- -----------------------
  `emp_no`      Employee number
  `dept_no`     Department number
  `from_date`   Assignment start date
  `to_date`     Assignment end date

------------------------------------------------------------------------

## 5. `t_salaries`

Stores employee salary history.

  Column        Description
  ------------- ----------------------------
  `emp_no`      Employee number
  `salary`      Employee salary
  `from_date`   Salary validity start date
  `to_date`     Salary validity end date

------------------------------------------------------------------------

# 🎯 SQL Practice Questions

The questions are divided into three difficulty levels.

------------------------------------------------------------------------

# 🟢 Basic Level --- 10 Questions

Focus: `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, `LIKE`, `COUNT`, basic
date filtering.

### Q1. Display all employees.

Retrieve all columns from `t_employees`.

### Q2. Display employee number, first name and last name.

Show `employee number`,`first_name` and `last_name` of all employees.

### Q3. Find employees with gender `M`.

Display the employee number and name of all male employees.

### Q4. Find employees hired after 1995.

Display employees whose `hire_date` is after `1995-01-01`.

### Q5. Find employees hired before 1995.

Display employee details for employees hired before `1995-01-01`.

### Q6. Sort employees by hire date.

Display employees ordered from earliest to latest hire date.

### Q7. Find employees whose first name starts with `A`.

Use the `LIKE` operator.

### Q8. Find employees whose last name contains `a`.

Use pattern matching with `LIKE`.

### Q9. Count the total number of employees.

Return the total employee count.

### Q10. Display unique genders.

Use `DISTINCT` to display the different values available in the `gender`
column.

------------------------------------------------------------------------

# 🟡 Medium Level --- 10 Questions

Focus: `JOIN`, `GROUP BY`, aggregate functions, date functions,
subqueries.

### Q11. Display employees with their department numbers.

Join `t_employees` and `t_dept_emp`.

### Q12. Display employee names with department names.

Join: - `t_employees` - `t_dept_emp` - `t_departments`

Return employee name and department name.

### Q13. Count employees in each department.

Show `dept_no` and the number of employees assigned to each department.

### Q14. Find departments having more than 5 employees.

Use `GROUP BY` and `HAVING`.

### Q15. Find the average salary.

Calculate the average salary from `t_salaries`.

### Q16. Find the highest salary.

Return the maximum salary from `t_salaries`.

### Q17. Find the lowest salary.

Return the minimum salary from `t_salaries`.

### Q18. Display employee salary information.

Join `t_employees` and `t_salaries` and display: - Employee number -
Employee name - Salary

### Q19. Find employees with salary greater than the average salary.

Use a subquery to calculate the average salary first.

### Q20. Count employees by gender.

Use `GROUP BY gender` to calculate the number of employees in each
gender category.

------------------------------------------------------------------------

# 🔴 Advanced Level --- 10 Questions

Focus: multiple joins, subqueries, CTEs, window functions, ranking,
salary analysis, and business-style insights.

### Q21. Find the highest-paid employee.

Return the employee number, employee name, and highest salary.

### Q22. Find the top 5 highest-paid employees.

Display employee number, name, and salary, ordered from highest to
lowest salary.

### Q23. Find the average salary by department.

Join employee, department assignment, and salary tables and calculate
average salary for each department.

### Q24. Find departments whose average salary is greater than the overall average salary.

Compare each department's average salary with the overall company
average using a subquery or CTE.

### Q25. Rank employees based on salary.

Use the `RANK()` window function to rank employees from highest to
lowest salary.

### Q26. Find the second-highest salary.

Solve the problem using a subquery, `DENSE_RANK()`, or another
appropriate SQL approach.

### Q27. Find the highest-paid employee in each department.

Use a window function such as `ROW_NUMBER()` or `RANK()` after joining
employee, department, and salary data.

### Q28. Find employees who have changed departments.

Identify employees appearing with more than one distinct `dept_no` in
`t_dept_emp`.

### Q29. Find the current department manager for each department.

Use the manager assignment dates to identify the active/latest manager
records according to the available date logic.

### Q30. Create an employee salary analysis report.

Create a result containing:

-   Employee number
-   Employee name
-   Department
-   Salary
-   Salary rank
-   Department average salary
-   Difference between employee salary and department average

Use joins, aggregate functions, CTEs/subqueries, and window functions
where appropriate.

------------------------------------------------------------------------

# 🛠️ SQL Concepts Covered

This project can be used to practice:

-   `SELECT`
-   `WHERE`
-   `ORDER BY`
-   `DISTINCT`
-   `LIKE`
-   `COUNT()`
-   `SUM()`
-   `AVG()`
-   `MIN()`
-   `MAX()`
-   `GROUP BY`
-   `HAVING`
-   `INNER JOIN`
-   `LEFT JOIN`
-   Multiple-table joins
-   Subqueries
-   Common Table Expressions (`WITH`)
-   `CASE`
-   Date functions
-   `RANK()`
-   `DENSE_RANK()`
-   `ROW_NUMBER()`
-   Aggregate functions
-   Data analysis using SQL

------------------------------------------------------------------------

# 🚀 How to Run

### 1. Open MySQL

Open MySQL Workbench, MySQL CLI, or another MySQL-compatible
environment.

### 2. Create the database

``` sql
CREATE DATABASE tutedude_projects;
USE tutedude_projects;
```

### 3. Run the SQL file

Execute the `tutedude_projects.sql` file.

### 4. Verify the tables

``` sql
SHOW TABLES;
```

Expected tables:

``` text
t_dept_emp
t_dept_manager
t_departments
t_employees
t_salaries
```

### 5. Start solving the questions

Solve the Basic → Medium → Advanced questions using SQL queries.

------------------------------------------------------------------------

# 📁 Project Structure

``` text
tutedude-sql-project/
│
├── tutedude_projects.sql
├── README.md
│
└── queries/
    ├── basic_queries.sql
    ├── medium_queries.sql
    └── advanced_queries.sql
```

------------------------------------------------------------------------

# 📊 Project Goals

The main goals of this project are to:

-   Understand relational database structure
-   Practice SQL from beginner to advanced level
-   Work with multiple related tables
-   Perform employee and salary analysis
-   Build confidence with joins and aggregations
-   Practice advanced SQL window functions
-   Prepare for SQL interviews and data analyst roles

------------------------------------------------------------------------

# 💼 Skills Demonstrated

**SQL \| MySQL \| Data Analysis \| Joins \| Aggregations \| Subqueries
\| CTEs \| Window Functions \| Data Cleaning \| Relational Databases**

------------------------------------------------------------------------

# 👨‍💻 Author

**Shalu Songara**

This project was created as part of SQL learning and practical data
analytics practice.

------------------------------------------------------------------------

## ⭐ If you find this project useful

Feel free to ⭐ star the repository and use the questions for your own
SQL practice.
