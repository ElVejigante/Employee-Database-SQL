--Table Schema
--Order: departments, titles, employees, dept_manager, dept_emp, salaries
--departments
DROP TABLE departments;

CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

SELECT * FROM departments;

--titles
DROP TABLE titles;

CREATE TABLE titles (
	title_id CHAR(5) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

SELECT * FROM titles;

--employees
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id CHAR(5) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE
);

SELECT * FROM employees;

--dept_manager
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no CHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

--dept_emp

--salaries