-- create tables for each CSV

-- create table for titles
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- create table for employees
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30),   -- can be changed due to transferring departments, promotions, etc
	birth_date VARCHAR(50) NOT NULL,
	first_name VARCHAR(30),     -- first name can be changed (ie. legally changed first name)
	last_name VARCHAR(30),      -- last name can be changed (ie. last name changed by marriage)
	sex VARCHAR(10),            -- can be changed on individual's preferred pronouns
	hire_date VARCHAR(50) NOT NULL, 
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- create table for departments
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- create table to dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30),        -- can change due to transferring departments, promotions, etc
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- create table for dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR(30),        -- can change due to transferring departments, promotions, etc
	emp_no INT NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- create table for salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,                 -- can change due to promotions, pay raises, etc
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- BEFORE MOVING ONTO FILE employees_queries.sql :
-- you MUST import the files in SQL-challenge/data in the order 
-- that the tables were created:
-- 1. titles
-- 2. employees
-- 3. departments
-- 4. dept_emp
-- 5. dept_managers
-- 6. salaries
-- To do so, in postgreSQL, locate the folder "Tables" in database
-- employeesSQL/Schemas/Tables and right clicking the table names in
-- the order as shown above, clicking Import/Export Data... and 
-- attaching the corresponding file from SQL-challenge/data