--Table Schema
--Order: departments, titles, employees, dept_manager, dept_emp, employees, salaries
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
	emp_title_id CHAR(5) FOREIGN KEY,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE
);