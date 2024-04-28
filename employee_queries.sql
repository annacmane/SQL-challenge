-- EMPLOYEE QUERIES
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name,
     employees.sex, salary.salary
FROM employees
JOIN salaries AS salary
ON employees.emp_no = salary.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986'
ORDER BY hire_date ASC
;

-- 3. List the manager of each department along with their department number, department name, 
--    employee number, last name, and first name.
SELECT managers.dept_no, departments.dept_name, managers.emp_no, employees.last_name, employees.first_name
FROM dept_manager as managers
JOIN employees
ON employees.emp_no = managers.emp_no
JOIN departments
ON managers.dept_no = departments.dept_no
ORDER BY dept_no
;

-- 4. List the department number for each employee along with that employee’s employee number, 
--    last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY dept_no
;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules 
--    and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'
;

-- 6. List each employee in the Sales department, including their employee number, 
--    last name, and first name.
SELECT dept_emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
FROM dept_emp
JOIN employees AS emp
ON dept_emp.emp_no = emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no ASC
;

-- 7. List each employee in the Sales and Development departments, 
--	  including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
FROM dept_emp
JOIN employees AS emp
ON dept_emp.emp_no = emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development'
ORDER BY emp_no ASC
;

-- 8. List the frequency counts, in descending order, of all the employee last names 
--    (that is, how many employees share each last name).
SELECT last_name, COUNT(emp_no) AS "Frequency of Last Name"
FROM employees
GROUP BY last_name
ORDER BY count(emp_no) DESC
;