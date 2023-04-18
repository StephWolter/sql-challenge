-- for reference to check tables
SELECT * from department_employees;
SELECT * from department_manager;
SELECT * from departments;
SELECT * from employees;
SELECT * from salaries;
SELECT * from titles;

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, 
  e.last_name, 
  e.first_name, 
  e.sex, 
  s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE date_part('year',hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT m.emp_no, m.dept_no, d.dept_name, e.last_name, e.first_name
FROM department_manager as m
LEFT JOIN departments as d ON
m.dept_no = d.dept_no
LEFT JOIN employees as e ON
m.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM department_employees as de
LEFT JOIN departments as d ON 
d.dept_no = de.emp_title_id
JOIN employees as e ON
de.emp_no = e.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules'
AND LEFT(last_name,1) = 'B';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp_no, last_name, first_name
FROM employees 
WHERE emp_no IN
	(SELECT emp_no
	FROM department_employees
	WHERE emp_title_id IN
		(SELECT emp_title_id
		FROM department_employees
		JOIN departments ON
		department_employees.emp_title_id = departments.dept_no
		WHERE dept_name = 'Sales')
	);
	
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN department_employees as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
de.emp_title_id = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "count of last names"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;