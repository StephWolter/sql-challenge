-- Drop table if exists
DROP TABLE if exists departments;
DROP TABLE if exists department_employees;
DROP TABLE if exists department_manager;
DROP TABLE if exists employees;
DROP TABLE if exists salaries;
DROP TABLE if exists titles;


-- Create new table for employees.csv
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name	VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT *
From employees;


-- Create new table for salaries.csv
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

SELECT *
From salaries;


-- Create new for departments.csv
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT *
From departments;

-- Create new table for dept_emp.csv
CREATE TABLE department_employees (
	emp_no INT,
	emp_title_id VARCHAR
);

SELECT *
From department_employees;

-- Create new table for dept_manager.csv
CREATE TABLE department_manager (
	dept_no VARCHAR,
	emp_no INT
);

SELECT *
From department_manager;




-- Create new table titles.csv
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

SELECT *
From titles;