-- Drop table if exists
DROP TABLE if exists departments;
DROP TABLE if exists department_employees;
DROP TABLE if exists department_manager;
DROP TABLE if exists employees;
DROP TABLE if exists salaries;
DROP TABLE if exists titles;


-- Create new for departments.csv
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

SELECT *
From departments;

-- Create new table for dept_emp.csv
CREATE TABLE department_employees (
	emp_no INT,
	emp_title_id VARCHAR(30)
);

SELECT *
From department_employees;

-- Create new table for dept_manager.csv
CREATE TABLE department_manager (
	dept_no VARCHAR(30),
	emp_no INT
);

SELECT *
From department_manager;

-- Create new table for employees.csv
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name	VARCHAR(30),
	sex VARCHAR(1),
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

-- Create new table titles.csv
CREATE TABLE titles (
	title_id VARCHAR(30),
	title VARCHAR(30)
);

SELECT *
From titles;