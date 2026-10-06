use tutedude_projects;

# Basic Level Questions

-- 1. Display all employees.
SELECT *
FROM t_employees;

-- 2. Display employee number, first name and last name.
SELECT emp_no, first_name, last_name
FROM t_employees;

-- 3. Find all male employees
SELECT *
FROM t_employees
WHERE gender = 'M';

-- 4. Find all female employees.
SELECT *
FROM t_employees
WHERE gender = 'F';

-- 5. Count total number of employees.
SELECT COUNT(*) AS total_employees
FROM t_employees;

-- 6. Display employees hired after 2000
SELECT *
FROM t_employees
WHERE hire_date >= '2000-01-01';

-- 7. Display employees ordered by first name.
SELECT *
FROM t_employees
ORDER BY first_name;

-- 8. Display the 10 oldest employees based on birth date
SELECT *
FROM t_employees
ORDER BY birth_date
LIMIT 10;

-- 9. Find the highest salary
SELECT MAX(salary) AS highest_salary
FROM t_salaries;

-- 10. Find the average salary.
SELECT AVG(salary) AS average_salary
FROM t_salaries;

-- 11. Find the total salary paid
SELECT SUM(salary) AS total_salary
FROM t_salaries;

-- 12. Find employees whose first name starts with 'A'.
SELECT *
FROM t_employees
WHERE first_name LIKE 'A%';

-- 13. Find employees whose first name contains 'an'
SELECT *
FROM t_employees
WHERE first_name LIKE '%an%';