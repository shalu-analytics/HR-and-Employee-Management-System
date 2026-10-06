use tutedude_projects;

# Medium Level Questions

-- 14. Display employee names along with their department numbers.

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    de.dept_no
FROM t_employees e
JOIN t_dept_emp de
    ON e.emp_no = de.emp_no;
    
-- 15. Display employee names and department names.
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
FROM t_employees e
JOIN t_dept_emp de
    ON e.emp_no = de.emp_no
JOIN t_departments d
    ON de.dept_no = d.dept_no;
    
-- 16. Find the number of employees in each department.
SELECT 
    d.dept_name,
    COUNT(de.emp_no) AS employee_count
FROM t_departments d
JOIN t_dept_emp de
    ON d.dept_no = de.dept_no
GROUP BY d.dept_name;

-- 17. Find departments having more than 20,000 employees.
SELECT 
    d.dept_name,
    COUNT(de.emp_no) AS employee_count
FROM t_departments d
JOIN t_dept_emp de
    ON d.dept_no = de.dept_no
GROUP BY d.dept_name
HAVING COUNT(de.emp_no) > 20000;

-- 18. Find the average salary by employee gender.
SELECT 
    e.gender,
    AVG(s.salary) AS average_salary
FROM t_employees e
JOIN t_salaries s
    ON e.emp_no = s.emp_no
GROUP BY e.gender;

-- 19. Find the highest salary for each employee.
SELECT 
    emp_no,
    MAX(salary) AS highest_salary
FROM t_salaries
GROUP BY emp_no;

-- 20. Find employees whose salary is greater than 80,000.
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    s.salary
FROM t_employees e
JOIN t_salaries s 
     ON e.emp_no = s.emp_no
WHERE salary > 80000;

-- 21. Find the top 10 highest-paid employees
SELECT 
     e.emp_no,
     e.first_name,
     e.last_name,
     s.salary
FROM t_employees e
JOIN t_salaries s 
     ON e.emp_no = s.emp_no
ORDER BY s.salary DESC
LIMIT 10;

-- 22 Find the number of employees hired each year.
SELECT 
    YEAR(hire_date) AS hire_year,
    COUNT(*) AS employee_count
FROM t_employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year;

-- 23. Find the department with the highest number of employees
SELECT 
    d.dept_name,
    COUNT(de.emp_no) AS employee_count
FROM t_departments d
JOIN t_dept_emp de
    ON d.dept_no = de.dept_no
GROUP BY d.dept_name
ORDER BY employee_count DESC
LIMIT 1;

-- 24. Display department managers with department names.
SELECT 
    d.dept_name,
    e.emp_no,
    e.first_name,
    e.last_name
FROM t_dept_manager dm
JOIN t_departments d
    ON dm.dept_no = d.dept_no
JOIN t_employees e
    ON dm.emp_no = e.emp_no;
    
-- 25. Find the average salary for each department
SELECT 
    d.dept_name,
    AVG(s.salary) AS avg_salary
FROM t_departments d
JOIN t_dept_emp de
    ON d.dept_no = de.dept_no
JOIN t_salaries s
    ON de.emp_no = s.emp_no
GROUP BY d.dept_name;